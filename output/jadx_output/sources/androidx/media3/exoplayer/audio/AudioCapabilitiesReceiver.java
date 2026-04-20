package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioCapabilitiesReceiver {
    private AudioAttributes audioAttributes;
    private AudioCapabilities audioCapabilities;
    private final AudioDeviceCallback audioDeviceCallback;
    private final Context context;
    private final ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver;
    private final Handler handler;
    private final BroadcastReceiver hdmiAudioPlugBroadcastReceiver;
    private final Listener listener;
    private boolean registered;
    private AudioDeviceInfo routedDevice;
    private SpatializerWrapper spatializer;

    public interface Listener {
        void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities);
    }

    @Deprecated
    public AudioCapabilitiesReceiver(Context context, Listener listener) {
        this(context, listener, AudioAttributes.DEFAULT, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AudioCapabilitiesReceiver(Context context, Listener listener, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.listener = (Listener) Preconditions.checkNotNull(listener);
        this.audioAttributes = audioAttributes;
        this.routedDevice = audioDeviceInfo;
        this.handler = Util.createHandlerForCurrentOrMainLooper();
        this.audioDeviceCallback = new AudioDeviceCallback();
        this.hdmiAudioPlugBroadcastReceiver = new HdmiAudioPlugBroadcastReceiver();
        Uri externalSurroundSoundGlobalSettingUri = AudioCapabilities.getExternalSurroundSoundGlobalSettingUri();
        this.externalSurroundSoundSettingObserver = externalSurroundSoundGlobalSettingUri != null ? new ExternalSurroundSoundSettingObserver(this.handler, applicationContext.getContentResolver(), externalSurroundSoundGlobalSettingUri) : null;
    }

    public void overrideCapabilities(AudioCapabilities audioCapabilities) {
        onNewAudioCapabilities(audioCapabilities);
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (Objects.equals(audioAttributes, this.audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(this.context, audioAttributes, this.routedDevice, getSpatializerChannelMasks()));
    }

    public void setRoutedDevice(AudioDeviceInfo routedDevice) {
        if (Objects.equals(routedDevice, this.routedDevice)) {
            return;
        }
        this.routedDevice = routedDevice;
        onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(this.context, this.audioAttributes, this.routedDevice, getSpatializerChannelMasks()));
    }

    public AudioCapabilities register() {
        if (this.registered) {
            return (AudioCapabilities) Preconditions.checkNotNull(this.audioCapabilities);
        }
        this.registered = true;
        if (this.externalSurroundSoundSettingObserver != null) {
            this.externalSurroundSoundSettingObserver.register();
        }
        AudioManagerCompat.getAudioManager(this.context).registerAudioDeviceCallback(this.audioDeviceCallback, this.handler);
        if (Build.VERSION.SDK_INT >= 32 && this.spatializer == null) {
            boolean deviceIsTv = Util.isTv(this.context);
            this.spatializer = new SpatializerWrapper(this.context, new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateCurrentAudioCapabilities();
                }
            }, Boolean.valueOf(deviceIsTv));
        }
        Intent stickyIntent = this.context.registerReceiver(this.hdmiAudioPlugBroadcastReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.handler);
        List<Integer> spatializerChannelMasks = getSpatializerChannelMasks();
        this.audioCapabilities = AudioCapabilities.getCapabilitiesInternal(this.context, stickyIntent, this.audioAttributes, this.routedDevice, spatializerChannelMasks);
        return this.audioCapabilities;
    }

    public void unregister() {
        if (!this.registered) {
            return;
        }
        this.audioCapabilities = null;
        AudioManagerCompat.getAudioManager(this.context).unregisterAudioDeviceCallback(this.audioDeviceCallback);
        if (Build.VERSION.SDK_INT >= 32 && this.spatializer != null) {
            this.spatializer.release();
            this.spatializer = null;
        }
        this.context.unregisterReceiver(this.hdmiAudioPlugBroadcastReceiver);
        if (this.externalSurroundSoundSettingObserver != null) {
            this.externalSurroundSoundSettingObserver.unregister();
        }
        this.registered = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Integer> getSpatializerChannelMasks() {
        if (Build.VERSION.SDK_INT >= 32 && this.spatializer != null) {
            return this.spatializer.getSpatializedChannelMasks();
        }
        return ImmutableList.of();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewAudioCapabilities(AudioCapabilities newAudioCapabilities) {
        if (this.registered && !newAudioCapabilities.equals(this.audioCapabilities)) {
            this.audioCapabilities = newAudioCapabilities;
            this.listener.onAudioCapabilitiesChanged(newAudioCapabilities);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentAudioCapabilities() {
        List<Integer> spatializerChannelMasks = getSpatializerChannelMasks();
        onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(this.context, this.audioAttributes, this.routedDevice, spatializerChannelMasks));
    }

    private final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        private HdmiAudioPlugBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                List<Integer> spatializerChannelMasks = AudioCapabilitiesReceiver.this.getSpatializerChannelMasks();
                AudioCapabilitiesReceiver.this.onNewAudioCapabilities(AudioCapabilities.getCapabilitiesInternal(context, intent, AudioCapabilitiesReceiver.this.audioAttributes, AudioCapabilitiesReceiver.this.routedDevice, spatializerChannelMasks));
            }
        }
    }

    private final class ExternalSurroundSoundSettingObserver extends ContentObserver {
        private final ContentResolver resolver;
        private final Uri settingUri;

        public ExternalSurroundSoundSettingObserver(Handler handler, ContentResolver resolver, Uri settingUri) {
            super(handler);
            this.resolver = resolver;
            this.settingUri = settingUri;
        }

        public void register() {
            this.resolver.registerContentObserver(this.settingUri, false, this);
        }

        public void unregister() {
            this.resolver.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            AudioCapabilitiesReceiver.this.updateCurrentAudioCapabilities();
        }
    }

    private final class AudioDeviceCallback extends android.media.AudioDeviceCallback {
        private AudioDeviceCallback() {
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesAdded(AudioDeviceInfo[] addedDevices) {
            AudioCapabilitiesReceiver.this.updateCurrentAudioCapabilities();
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesRemoved(AudioDeviceInfo[] removedDevices) {
            if (Util.contains(removedDevices, AudioCapabilitiesReceiver.this.routedDevice)) {
                AudioCapabilitiesReceiver.this.routedDevice = null;
            }
            AudioCapabilitiesReceiver.this.updateCurrentAudioCapabilities();
        }
    }
}
