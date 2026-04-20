package androidx.media3.exoplayer;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes21.dex */
public final class ScrubbingModeParameters {
    public static final ScrubbingModeParameters DEFAULT = new Builder().build();
    public final boolean allowSkippingKeyFrameReset;
    public final boolean allowSkippingMediaCodecFlush;
    public final ImmutableSet<Integer> disabledTrackTypes;
    public final Double fractionalSeekToleranceAfter;
    public final Double fractionalSeekToleranceBefore;

    @Deprecated
    public final boolean isMediaCodecFlushEnabled;
    public final boolean shouldEnableDynamicScheduling;
    public final boolean shouldIncreaseCodecOperatingRate;
    public final boolean useDecodeOnlyFlag;

    public static final class Builder {
        private boolean allowSkippingKeyFrameReset;
        private boolean allowSkippingMediaCodecFlush;
        private ImmutableSet<Integer> disabledTrackTypes;
        private Double fractionalSeekToleranceAfter;
        private Double fractionalSeekToleranceBefore;
        private boolean shouldEnableDynamicScheduling;
        private boolean shouldIncreaseCodecOperatingRate;
        private boolean useDecodeOnlyFlag;

        public Builder() {
            this.disabledTrackTypes = ImmutableSet.of(1, 5);
            this.shouldIncreaseCodecOperatingRate = true;
            this.allowSkippingMediaCodecFlush = true;
            this.allowSkippingKeyFrameReset = true;
            this.shouldEnableDynamicScheduling = true;
            this.useDecodeOnlyFlag = true;
        }

        private Builder(ScrubbingModeParameters scrubbingModeParameters) {
            this.disabledTrackTypes = scrubbingModeParameters.disabledTrackTypes;
            this.fractionalSeekToleranceBefore = scrubbingModeParameters.fractionalSeekToleranceBefore;
            this.fractionalSeekToleranceAfter = scrubbingModeParameters.fractionalSeekToleranceAfter;
            this.shouldIncreaseCodecOperatingRate = scrubbingModeParameters.shouldIncreaseCodecOperatingRate;
            this.allowSkippingMediaCodecFlush = scrubbingModeParameters.allowSkippingMediaCodecFlush;
            this.allowSkippingKeyFrameReset = scrubbingModeParameters.allowSkippingKeyFrameReset;
            this.shouldEnableDynamicScheduling = scrubbingModeParameters.shouldEnableDynamicScheduling;
            this.useDecodeOnlyFlag = scrubbingModeParameters.useDecodeOnlyFlag;
        }

        public Builder setDisabledTrackTypes(Set<Integer> disabledTrackTypes) {
            this.disabledTrackTypes = ImmutableSet.copyOf((Collection) disabledTrackTypes);
            return this;
        }

        public Builder setFractionalSeekTolerance(Double toleranceBefore, Double toleranceAfter) {
            boolean z = true;
            Preconditions.checkArgument((toleranceBefore == null) == (toleranceAfter == null));
            Preconditions.checkArgument(toleranceBefore == null || (toleranceBefore.doubleValue() >= 0.0d && toleranceBefore.doubleValue() <= 1.0d));
            if (toleranceAfter != null && (toleranceAfter.doubleValue() < 0.0d || toleranceAfter.doubleValue() > 1.0d)) {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.fractionalSeekToleranceBefore = toleranceBefore;
            this.fractionalSeekToleranceAfter = toleranceAfter;
            return this;
        }

        public Builder setShouldIncreaseCodecOperatingRate(boolean shouldIncreaseCodecOperatingRate) {
            this.shouldIncreaseCodecOperatingRate = shouldIncreaseCodecOperatingRate;
            return this;
        }

        public Builder setShouldEnableDynamicScheduling(boolean shouldEnableDynamicScheduling) {
            this.shouldEnableDynamicScheduling = shouldEnableDynamicScheduling;
            return this;
        }

        @Deprecated
        public Builder setIsMediaCodecFlushEnabled(boolean isMediaCodecFlushEnabled) {
            this.allowSkippingMediaCodecFlush = !isMediaCodecFlushEnabled;
            return this;
        }

        public Builder setAllowSkippingMediaCodecFlush(boolean allowSkippingMediaCodecFlush) {
            this.allowSkippingMediaCodecFlush = allowSkippingMediaCodecFlush;
            return this;
        }

        public Builder setAllowSkippingKeyFrameReset(boolean allowSkippingKeyFrameReset) {
            this.allowSkippingKeyFrameReset = allowSkippingKeyFrameReset;
            return this;
        }

        public Builder setUseDecodeOnlyFlag(boolean useDecodeOnlyFlag) {
            this.useDecodeOnlyFlag = useDecodeOnlyFlag;
            return this;
        }

        public ScrubbingModeParameters build() {
            return new ScrubbingModeParameters(this);
        }
    }

    private ScrubbingModeParameters(Builder builder) {
        this.disabledTrackTypes = builder.disabledTrackTypes;
        this.fractionalSeekToleranceBefore = builder.fractionalSeekToleranceBefore;
        this.fractionalSeekToleranceAfter = builder.fractionalSeekToleranceAfter;
        this.shouldIncreaseCodecOperatingRate = builder.shouldIncreaseCodecOperatingRate;
        this.isMediaCodecFlushEnabled = !builder.allowSkippingMediaCodecFlush;
        this.allowSkippingMediaCodecFlush = builder.allowSkippingMediaCodecFlush;
        this.allowSkippingKeyFrameReset = builder.allowSkippingKeyFrameReset;
        this.shouldEnableDynamicScheduling = builder.shouldEnableDynamicScheduling;
        this.useDecodeOnlyFlag = builder.useDecodeOnlyFlag;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object o) {
        if (!(o instanceof ScrubbingModeParameters)) {
            return false;
        }
        ScrubbingModeParameters that = (ScrubbingModeParameters) o;
        return this.disabledTrackTypes.equals(that.disabledTrackTypes) && this.allowSkippingMediaCodecFlush == that.allowSkippingMediaCodecFlush && this.allowSkippingKeyFrameReset == that.allowSkippingKeyFrameReset && Objects.equals(this.fractionalSeekToleranceBefore, that.fractionalSeekToleranceBefore) && Objects.equals(this.fractionalSeekToleranceAfter, that.fractionalSeekToleranceAfter) && this.shouldIncreaseCodecOperatingRate == that.shouldIncreaseCodecOperatingRate && this.shouldEnableDynamicScheduling == that.shouldEnableDynamicScheduling && this.useDecodeOnlyFlag == that.useDecodeOnlyFlag;
    }

    public int hashCode() {
        return Objects.hash(this.disabledTrackTypes, this.fractionalSeekToleranceBefore, this.fractionalSeekToleranceAfter, Boolean.valueOf(this.shouldIncreaseCodecOperatingRate), Boolean.valueOf(this.allowSkippingMediaCodecFlush), Boolean.valueOf(this.allowSkippingKeyFrameReset), Boolean.valueOf(this.shouldEnableDynamicScheduling), Boolean.valueOf(this.useDecodeOnlyFlag));
    }
}
