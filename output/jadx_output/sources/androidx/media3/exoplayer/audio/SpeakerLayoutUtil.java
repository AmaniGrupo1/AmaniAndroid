package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.media.AudioDeviceInfo;
import android.media.AudioProfile;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes21.dex */
final class SpeakerLayoutUtil {
    private static final ImmutableList<Integer> DEFAULT_CHANNEL_MASK = ImmutableList.of(12);
    private static final String TAG = "SpeakerLayoutUtil";

    private SpeakerLayoutUtil() {
    }

    public static ImmutableList<Integer> getLoudspeakerLayoutChannelMasks(AudioDeviceInfo audioDeviceInfo) {
        if (DeviceTypeUtil.isBluetoothDevice(audioDeviceInfo.getType())) {
            return getChannelMasksForBluetooth();
        }
        if (DeviceTypeUtil.isBuiltInEarpiece(audioDeviceInfo.getType())) {
            return ImmutableList.of(4);
        }
        if (DeviceTypeUtil.isBuiltInSpeaker(audioDeviceInfo.getType())) {
            return getChannelMasksForBuiltInSpeakers(audioDeviceInfo);
        }
        if (Build.VERSION.SDK_INT >= 31 && DeviceTypeUtil.isHdmiArc(audioDeviceInfo.getType())) {
            return getChannelMasksForHdmiArc(audioDeviceInfo);
        }
        if (Build.VERSION.SDK_INT >= 31 && DeviceTypeUtil.isHdmiEarc(audioDeviceInfo.getType())) {
            return getChannelMasksForHdmiEarc(audioDeviceInfo);
        }
        if (Build.VERSION.SDK_INT >= 31 && DeviceTypeUtil.isUsbDevice(audioDeviceInfo.getType())) {
            return getChannelMasksForUsb(audioDeviceInfo);
        }
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForBluetooth() {
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForBuiltInSpeakers(AudioDeviceInfo audioDeviceInfo) {
        int builtInChannelMask;
        if (Build.VERSION.SDK_INT >= 36 && (builtInChannelMask = audioDeviceInfo.getSpeakerLayoutChannelMask()) != 0 && builtInChannelMask != 1) {
            return ImmutableList.of(Integer.valueOf(builtInChannelMask));
        }
        Log.w(TAG, "Built-in speaker's getSpeakerLayoutChannelMask not usable, defaulting to stereo.");
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForHdmiArc(AudioDeviceInfo audioDeviceInfo) {
        ImmutableList<Integer> channelMasksFromAudioProfiles = getChannelMasksFromPcmAudioProfiles(audioDeviceInfo);
        if (!channelMasksFromAudioProfiles.isEmpty()) {
            return channelMasksFromAudioProfiles;
        }
        ImmutableList<Integer> channelMasks = AudioDescriptorUtil.getAllLpcmChannelMasksFromPcmSads(audioDeviceInfo.getAudioDescriptors());
        if (!channelMasks.isEmpty()) {
            return channelMasks;
        }
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForHdmiEarc(AudioDeviceInfo audioDeviceInfo) {
        ImmutableList<Integer> channelMasksFromAudioProfiles = getChannelMasksFromPcmAudioProfiles(audioDeviceInfo);
        if (!channelMasksFromAudioProfiles.isEmpty()) {
            return channelMasksFromAudioProfiles;
        }
        List<AudioDescriptor> audioDescriptors = audioDeviceInfo.getAudioDescriptors();
        if (Build.VERSION.SDK_INT >= 34) {
            ImmutableList<Integer> channelMasksFromSadbs = AudioDescriptorUtil.getAllChannelMasksFromSadbs(audioDescriptors);
            if (!channelMasksFromSadbs.isEmpty()) {
                return channelMasksFromSadbs;
            }
        }
        ImmutableList<Integer> channelMasksFromSads = AudioDescriptorUtil.getAllLpcmChannelMasksFromPcmSads(audioDescriptors);
        if (!channelMasksFromSads.isEmpty()) {
            return channelMasksFromSads;
        }
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksForUsb(AudioDeviceInfo audioDeviceInfo) {
        ImmutableList<Integer> channelMasksFromAudioProfiles = getChannelMasksFromPcmAudioProfiles(audioDeviceInfo);
        if (!channelMasksFromAudioProfiles.isEmpty()) {
            return channelMasksFromAudioProfiles;
        }
        return DEFAULT_CHANNEL_MASK;
    }

    private static ImmutableList<Integer> getChannelMasksFromPcmAudioProfiles(AudioDeviceInfo audioDeviceInfo) {
        List<AudioProfile> audioProfiles = audioDeviceInfo.getAudioProfiles();
        TreeSet<Integer> channelMasks = new TreeSet<>((Comparator<? super Integer>) Comparator.comparing(new Function() { // from class: androidx.media3.exoplayer.audio.SpeakerLayoutUtil$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(Integer.bitCount(((Integer) obj).intValue()));
            }
        }).reversed());
        for (AudioProfile audioProfile : audioProfiles) {
            if (audioProfile.getEncapsulationType() != 1 && Util.isEncodingLinearPcm(audioProfile.getFormat())) {
                int[] masks = audioProfile.getChannelMasks();
                for (int mask : masks) {
                    channelMasks.add(Integer.valueOf(mask));
                }
            }
        }
        return ImmutableList.copyOf((Collection) channelMasks);
    }
}
