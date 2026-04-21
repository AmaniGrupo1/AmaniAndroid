package androidx.media3.common;

import android.media.AudioAttributes;
import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioAttributes {
    public final int allowedCapturePolicy;
    public final int contentType;
    public final int flags;
    public final boolean hapticChannelsMuted;
    public final boolean isContentSpatialized;
    private android.media.AudioAttributes platformAudioAttributes;
    public final int spatializationBehavior;
    public final int usage;
    public static final AudioAttributes DEFAULT = new Builder().build();
    private static final String FIELD_CONTENT_TYPE = Util.intToStringMaxRadix(0);
    private static final String FIELD_FLAGS = Util.intToStringMaxRadix(1);
    private static final String FIELD_USAGE = Util.intToStringMaxRadix(2);
    private static final String FIELD_ALLOWED_CAPTURE_POLICY = Util.intToStringMaxRadix(3);
    private static final String FIELD_SPATIALIZATION_BEHAVIOR = Util.intToStringMaxRadix(4);
    private static final String FIELD_IS_CONTENT_SPATIALIZED = Util.intToStringMaxRadix(5);
    private static final String FIELD_HAPTIC_CHANNELS_MUTED = Util.intToStringMaxRadix(6);

    @Deprecated
    public static final class AudioAttributesV21 {
        public final android.media.AudioAttributes audioAttributes;

        private AudioAttributesV21(android.media.AudioAttributes audioAttributes) {
            this.audioAttributes = audioAttributes;
        }
    }

    public static final class Builder {
        private int contentType = 0;
        private int flags = 0;
        private int usage = 1;
        private int allowedCapturePolicy = 1;
        private int spatializationBehavior = 0;
        private boolean isContentSpatialized = false;
        private boolean hapticChannelsMuted = true;

        public Builder setContentType(int contentType) {
            this.contentType = contentType;
            return this;
        }

        public Builder setFlags(int flags) {
            this.flags = flags;
            return this;
        }

        public Builder setUsage(int usage) {
            this.usage = usage;
            return this;
        }

        public Builder setAllowedCapturePolicy(int allowedCapturePolicy) {
            this.allowedCapturePolicy = allowedCapturePolicy;
            return this;
        }

        public Builder setSpatializationBehavior(int spatializationBehavior) {
            this.spatializationBehavior = spatializationBehavior;
            return this;
        }

        public Builder setIsContentSpatialized(boolean isContentSpatialized) {
            this.isContentSpatialized = isContentSpatialized;
            return this;
        }

        public Builder setHapticChannelsMuted(boolean hapticChannelsMuted) {
            this.hapticChannelsMuted = hapticChannelsMuted;
            return this;
        }

        public AudioAttributes build() {
            return new AudioAttributes(this.contentType, this.flags, this.usage, this.allowedCapturePolicy, this.spatializationBehavior, this.isContentSpatialized, this.hapticChannelsMuted);
        }
    }

    public static AudioAttributes fromPlatformAudioAttributes(android.media.AudioAttributes audioAttributes) {
        Builder builder = new Builder().setContentType(audioAttributes.getContentType()).setFlags(audioAttributes.getFlags()).setUsage(audioAttributes.getUsage());
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setAllowedCapturePolicy(audioAttributes.getAllowedCapturePolicy());
            builder.setHapticChannelsMuted(audioAttributes.areHapticChannelsMuted());
        }
        if (Build.VERSION.SDK_INT >= 32) {
            builder.setSpatializationBehavior(audioAttributes.getSpatializationBehavior());
            builder.setIsContentSpatialized(audioAttributes.isContentSpatialized());
        }
        return builder.build();
    }

    private AudioAttributes(int contentType, int flags, int usage, int allowedCapturePolicy, int spatializationBehavior, boolean isContentSpatialized, boolean hapticChannelsMuted) {
        this.contentType = contentType;
        this.flags = flags;
        this.usage = usage;
        this.allowedCapturePolicy = allowedCapturePolicy;
        this.spatializationBehavior = spatializationBehavior;
        this.isContentSpatialized = isContentSpatialized;
        this.hapticChannelsMuted = hapticChannelsMuted;
    }

    @Deprecated
    public AudioAttributesV21 getAudioAttributesV21() {
        return new AudioAttributesV21(getPlatformAudioAttributes());
    }

    public android.media.AudioAttributes getPlatformAudioAttributes() {
        if (this.platformAudioAttributes == null) {
            AudioAttributes.Builder builder = new AudioAttributes.Builder().setContentType(this.contentType).setFlags(this.flags).setUsage(this.usage);
            if (Build.VERSION.SDK_INT >= 29) {
                Api29.setAllowedCapturePolicy(builder, this.allowedCapturePolicy);
                Api29.setHapticChannelsMuted(builder, this.hapticChannelsMuted);
            }
            if (Build.VERSION.SDK_INT >= 32) {
                Api32.setSpatializationBehavior(builder, this.spatializationBehavior);
                Api32.setIsContentSpatialized(builder, this.isContentSpatialized);
            }
            this.platformAudioAttributes = builder.build();
        }
        return this.platformAudioAttributes;
    }

    public int getVolumeControlStream() {
        return getStreamTypeInternal();
    }

    @Deprecated
    public int getStreamType() {
        return getStreamTypeInternal();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AudioAttributes other = (AudioAttributes) obj;
        if (this.contentType == other.contentType && this.flags == other.flags && this.usage == other.usage && this.allowedCapturePolicy == other.allowedCapturePolicy && this.spatializationBehavior == other.spatializationBehavior && this.isContentSpatialized == other.isContentSpatialized && this.hapticChannelsMuted == other.hapticChannelsMuted) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((17 * 31) + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy) * 31) + this.spatializationBehavior) * 31) + (this.isContentSpatialized ? 1 : 0)) * 31) + (this.hapticChannelsMuted ? 1 : 0);
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.contentType != 0) {
            bundle.putInt(FIELD_CONTENT_TYPE, this.contentType);
        }
        if (this.flags != 0) {
            bundle.putInt(FIELD_FLAGS, this.flags);
        }
        if (this.usage != 1) {
            bundle.putInt(FIELD_USAGE, this.usage);
        }
        if (this.allowedCapturePolicy != 1) {
            bundle.putInt(FIELD_ALLOWED_CAPTURE_POLICY, this.allowedCapturePolicy);
        }
        if (this.spatializationBehavior != 0) {
            bundle.putInt(FIELD_SPATIALIZATION_BEHAVIOR, this.spatializationBehavior);
        }
        if (this.isContentSpatialized) {
            bundle.putBoolean(FIELD_IS_CONTENT_SPATIALIZED, this.isContentSpatialized);
        }
        if (!this.hapticChannelsMuted) {
            bundle.putBoolean(FIELD_HAPTIC_CHANNELS_MUTED, this.hapticChannelsMuted);
        }
        return bundle;
    }

    public static AudioAttributes fromBundle(Bundle bundle) {
        Builder builder = new Builder();
        if (bundle.containsKey(FIELD_CONTENT_TYPE)) {
            builder.setContentType(bundle.getInt(FIELD_CONTENT_TYPE));
        }
        if (bundle.containsKey(FIELD_FLAGS)) {
            builder.setFlags(bundle.getInt(FIELD_FLAGS));
        }
        if (bundle.containsKey(FIELD_USAGE)) {
            builder.setUsage(bundle.getInt(FIELD_USAGE));
        }
        if (bundle.containsKey(FIELD_ALLOWED_CAPTURE_POLICY)) {
            builder.setAllowedCapturePolicy(bundle.getInt(FIELD_ALLOWED_CAPTURE_POLICY));
        }
        if (bundle.containsKey(FIELD_SPATIALIZATION_BEHAVIOR)) {
            builder.setSpatializationBehavior(bundle.getInt(FIELD_SPATIALIZATION_BEHAVIOR));
        }
        if (bundle.containsKey(FIELD_IS_CONTENT_SPATIALIZED)) {
            builder.setIsContentSpatialized(bundle.getBoolean(FIELD_IS_CONTENT_SPATIALIZED));
        }
        if (bundle.containsKey(FIELD_HAPTIC_CHANNELS_MUTED)) {
            builder.setHapticChannelsMuted(bundle.getBoolean(FIELD_HAPTIC_CHANNELS_MUTED));
        }
        return builder.build();
    }

    private int getStreamTypeInternal() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                int platformStreamType = getPlatformAudioAttributes().getVolumeControlStream();
                if (platformStreamType == Integer.MIN_VALUE) {
                    return 3;
                }
                return platformStreamType;
            } catch (RuntimeException e) {
                return 3;
            }
        }
        if ((this.flags & 1) == 1) {
            return 1;
        }
        switch (this.usage) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    private static final class Api29 {
        private Api29() {
        }

        public static void setAllowedCapturePolicy(AudioAttributes.Builder builder, int allowedCapturePolicy) {
            builder.setAllowedCapturePolicy(allowedCapturePolicy);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setHapticChannelsMuted(AudioAttributes.Builder builder, boolean hapticChannelsMuted) {
            builder.setHapticChannelsMuted(hapticChannelsMuted);
        }
    }

    private static final class Api32 {
        private Api32() {
        }

        public static void setSpatializationBehavior(AudioAttributes.Builder builder, int spatializationBehavior) {
            builder.setSpatializationBehavior(spatializationBehavior);
        }

        public static void setIsContentSpatialized(AudioAttributes.Builder builder, boolean isContentSpatialized) {
            builder.setIsContentSpatialized(isContentSpatialized);
        }
    }
}
