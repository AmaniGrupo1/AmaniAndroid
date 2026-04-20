package androidx.media3.common.audio;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.audio.DefaultGainProvider;
import androidx.media3.common.audio.GainProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Range;
import com.google.common.collect.TreeRangeMap;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public final class DefaultGainProvider implements GainProcessor.GainProvider {
    private static final float GAIN_UNSET = -3.4028235E38f;
    private final float defaultGain;
    private final TreeRangeMap<Long, Function<Pair<Long, Integer>, Float>> gainMap;
    public static final FadeProvider FADE_IN_LINEAR = new FadeProvider() { // from class: androidx.media3.common.audio.DefaultGainProvider$$ExternalSyntheticLambda0
        @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
        public final float getGainFactorAt(long j, long j2) {
            return DefaultGainProvider.lambda$static$0(j, j2);
        }
    };
    public static final FadeProvider FADE_OUT_LINEAR = new FadeProvider() { // from class: androidx.media3.common.audio.DefaultGainProvider$$ExternalSyntheticLambda1
        @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
        public final float getGainFactorAt(long j, long j2) {
            return DefaultGainProvider.lambda$static$1(j, j2);
        }
    };
    public static final FadeProvider FADE_IN_EQUAL_POWER = new FadeProvider() { // from class: androidx.media3.common.audio.DefaultGainProvider$$ExternalSyntheticLambda2
        @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
        public final float getGainFactorAt(long j, long j2) {
            return DefaultGainProvider.lambda$static$2(j, j2);
        }
    };
    public static final FadeProvider FADE_OUT_EQUAL_POWER = new FadeProvider() { // from class: androidx.media3.common.audio.DefaultGainProvider$$ExternalSyntheticLambda3
        @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
        public final float getGainFactorAt(long j, long j2) {
            return DefaultGainProvider.lambda$static$3(j, j2);
        }
    };

    public interface FadeProvider {
        float getGainFactorAt(long j, long j2);
    }

    public static final class Builder {
        private final float defaultGain;
        private final TreeRangeMap<Long, Function<Pair<Long, Integer>, Float>> gainMap = TreeRangeMap.create();

        public Builder(float defaultGain) {
            this.defaultGain = defaultGain;
            this.gainMap.put(Range.all(), new Function() { // from class: androidx.media3.common.audio.DefaultGainProvider$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return Float.valueOf(-3.4028235E38f);
                }
            });
        }

        public Builder addFadeAt(final long positionUs, final long durationUs, final FadeProvider shape) {
            Preconditions.checkArgument(positionUs >= 0);
            Preconditions.checkArgument(durationUs > 1);
            this.gainMap.put(Range.closedOpen(Long.valueOf(positionUs), Long.valueOf(positionUs + durationUs)), new Function() { // from class: androidx.media3.common.audio.DefaultGainProvider$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return DefaultGainProvider.Builder.lambda$addFadeAt$1(positionUs, shape, durationUs, (Pair) obj);
                }
            });
            return this;
        }

        static /* synthetic */ Float lambda$addFadeAt$1(long positionUs, FadeProvider shape, long durationUs, Pair positionSampleRatePair) {
            int sampleRate = ((Integer) positionSampleRatePair.second).intValue();
            long relativeSamplePosition = ((Long) positionSampleRatePair.first).longValue() - Util.durationUsToSampleCount(positionUs, sampleRate);
            return Float.valueOf(shape.getGainFactorAt(relativeSamplePosition, Util.durationUsToSampleCount(durationUs, sampleRate)));
        }

        public DefaultGainProvider build() {
            return new DefaultGainProvider(this.gainMap, this.defaultGain);
        }
    }

    static /* synthetic */ float lambda$static$0(long index, long duration) {
        return index / duration;
    }

    static /* synthetic */ float lambda$static$1(long index, long duration) {
        return (duration - index) / duration;
    }

    static /* synthetic */ float lambda$static$2(long index, long duration) {
        return (float) Math.sin((index * 1.5707963267948966d) / duration);
    }

    static /* synthetic */ float lambda$static$3(long index, long duration) {
        return (float) Math.cos((index * 1.5707963267948966d) / duration);
    }

    private DefaultGainProvider(TreeRangeMap<Long, Function<Pair<Long, Integer>, Float>> gainMap, float defaultGain) {
        this.gainMap = TreeRangeMap.create();
        this.gainMap.putAll(gainMap);
        this.defaultGain = defaultGain;
    }

    @Override // androidx.media3.common.audio.GainProcessor.GainProvider
    public float getGainFactorAtSamplePosition(long samplePosition, int sampleRate) {
        Preconditions.checkState(sampleRate > 0);
        Preconditions.checkArgument(samplePosition >= 0);
        float gain = ((Float) ((Function) Preconditions.checkNotNull(this.gainMap.get(Long.valueOf(Util.sampleCountToDurationUs(samplePosition, sampleRate))))).apply(Pair.create(Long.valueOf(samplePosition), Integer.valueOf(sampleRate)))).floatValue();
        if (gain == -3.4028235E38f) {
            return this.defaultGain;
        }
        return gain;
    }

    @Override // androidx.media3.common.audio.GainProcessor.GainProvider
    public long isUnityUntil(long samplePosition, int sampleRate) {
        Preconditions.checkState(sampleRate > 0);
        Preconditions.checkArgument(samplePosition >= 0);
        long positionUs = Util.sampleCountToDurationUs(samplePosition, sampleRate);
        Map.Entry<Range<Long>, Function<Pair<Long, Integer>, Float>> entry = (Map.Entry) Preconditions.checkNotNull(this.gainMap.getEntry(Long.valueOf(positionUs)));
        float gainFactor = entry.getValue().apply(Pair.create(Long.valueOf(samplePosition), Integer.valueOf(sampleRate))).floatValue();
        if (gainFactor == 1.0f) {
            return 1 + samplePosition;
        }
        if (this.defaultGain != 1.0f || gainFactor != -3.4028235E38f) {
            return C.TIME_UNSET;
        }
        if (!entry.getKey().hasUpperBound()) {
            return Long.MIN_VALUE;
        }
        return Util.durationUsToSampleCount(((Long) entry.getKey().upperEndpoint()).longValue(), sampleRate);
    }
}
