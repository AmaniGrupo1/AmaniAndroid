package kotlin.time;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b-\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0005\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0007\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\u008a\u0004¢\u0006\u0004\b\f\u0010\r\u001a\u001d\u0010\n\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\u008a\u0004¢\u0006\u0004\b\u000e\u0010\u000f\u001a)\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0016\u001a'\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0082\u0080\u0004¢\u0006\u0002\u0010\u0019\u001a/\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0082\u0080\u0004¢\u0006\u0002\u0010\u001c\u001a\u0016\u0010\u001d\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0082\u0080\u0004\u001a\u000e\u0010\u001f\u001a\u00020\u0014*\u00020\u0006H\u0083\u0088\u0004\u001a\u000e\u0010 \u001a\u00020\u0014*\u00020\u0006H\u0083\u0088\u0004\u001a\u001a\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006H\u0083\u0088\u0004\u001a&\u0010$\u001a\u00020\u0006*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0080\u0004\u001a\u0016\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0080\u0004\u001a!\u0010'\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010(\u001a\u00020\u0012H\u0083\u0088\u0004¢\u0006\u0002\u0010)\u001a'\u0010*\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u000e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010,H\u0082\u0088\u0004¢\u0006\u0004\b-\u0010.\u001a\u0018\u0010/\u001a\u0004\u0018\u00010\u0004*\u00020\u00122\u0006\u00100\u001a\u00020\u0002H\u0082\u0080\u0004\u001a\u0018\u00101\u001a\u0004\u0018\u00010\u0004*\u00020\u00122\u0006\u00100\u001a\u00020\u0002H\u0082\u0080\u0004\u001a\u000e\u0010=\u001a\u00020\u0006*\u00020\u0006H\u0083\u0088\u0004\u001a\u000e\u0010=\u001a\u00020\u0002*\u00020\u0002H\u0083\u0088\u0004\u001a\u0012\u0010J\u001a\u00020\u00062\u0006\u0010K\u001a\u00020\u0006H\u0082\u0080\u0004\u001a\u0012\u0010L\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\u0006H\u0082\u0080\u0004\u001a\u0017\u0010N\u001a\u00020\u00012\u0006\u0010O\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\u001a\u0017\u0010Q\u001a\u00020\u00012\u0006\u0010R\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\u001a\u001f\u0010S\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002H\u0082\u0080\u0004¢\u0006\u0002\u0010V\u001a\u0017\u0010W\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\u001a\u0017\u0010X\u001a\u00020\u00012\u0006\u0010M\u001a\u00020\u0006H\u0082\u0080\u0004¢\u0006\u0002\u0010P\"\u001f\u00102\u001a\u00020\b*\u00020\u00048BX\u0082\u0084\b¢\u0006\f\u0012\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0019\u00107\u001a\u00020\u0006*\u00020\u00048BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b8\u00109\"\u0019\u0010:\u001a\u00020\u0002*\u00020\u00048BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b;\u0010<\"\u000f\u0010>\u001a\u00020\u0002X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010?\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010@\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010A\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010B\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010C\u001a\u00020\u0006X\u0082Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010D\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010E\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010F\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010G\u001a\u00020\u0006X\u0080Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010H\u001a\u00020\u0012X\u0082Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010I\u001a\u00020\u0002X\u0082Ô\b¢\u0006\u0002\n\u0000¨\u0006Y"}, d2 = {"toDuration", "Lkotlin/time/Duration;", "", "unit", "Lkotlin/time/DurationUnit;", "(ILkotlin/time/DurationUnit;)J", "", "(JLkotlin/time/DurationUnit;)J", "", "(DLkotlin/time/DurationUnit;)J", "times", "duration", "times-mvk6XK0", "(IJ)J", "times-kIfJnKk", "(DJ)J", "parseDuration", Values.VECTOR_MAP_VECTORS_KEY, "", "strictIso", "", "throwException", "(Ljava/lang/String;ZZ)J", "parseIsoStringFormat", "startIndex", "(Ljava/lang/String;IZ)J", "parseDefaultStringFormat", "hasSign", "(Ljava/lang/String;IZZ)J", "addMillisWithoutOverflow", "other", "isInfiniteMillis", "isFiniteMillis", "sameSign", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "parseFractionFallback", "endIndex", "fractionDigitsToNanos", "handleError", "message", "(ZLjava/lang/String;)J", "onInvalid", "block", "Lkotlin/Function0;", "onInvalid-ge6A_vg", "(JLkotlin/jvm/functions/Function0;)Lkotlin/time/Duration;", "defaultDurationUnitByShortNameOrNull", TtmlNode.START, "isoDurationUnitByShortNameOrNull", "fractionMultiplier", "getFractionMultiplier$annotations", "(Lkotlin/time/DurationUnit;)V", "getFractionMultiplier", "(Lkotlin/time/DurationUnit;)D", "fallbackFractionMultiplier", "getFallbackFractionMultiplier", "(Lkotlin/time/DurationUnit;)J", "shortNameLength", "getShortNameLength", "(Lkotlin/time/DurationUnit;)I", "multiplyBy10", "NANOS_IN_MILLIS", "MICROS_IN_MILLIS", "NANOS_IN_MICROS", "MAX_NANOS", "MAX_MILLIS", "MAX_NANOS_IN_MILLIS", "MILLIS_IN_SECOND", "MILLIS_IN_MINUTE", "MILLIS_IN_HOUR", "MILLIS_IN_DAY", "INFINITY_STRING", "FRACTION_LIMIT", "nanosToMillis", "nanos", "millisToNanos", "millis", "durationOfNanos", "normalNanos", "(J)J", "durationOfMillis", "normalMillis", "durationOf", "normalValue", "unitDiscriminator", "(JI)J", "durationOfNanosNormalized", "durationOfMillisNormalized", "kotlin-stdlib"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class DurationKt {
    private static final int FRACTION_LIMIT = 15;
    private static final String INFINITY_STRING = "Infinity";
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final long MICROS_IN_MILLIS = 1000;
    public static final long MILLIS_IN_DAY = 86400000;
    public static final long MILLIS_IN_HOUR = 3600000;
    public static final long MILLIS_IN_MINUTE = 60000;
    public static final long MILLIS_IN_SECOND = 1000;
    public static final long NANOS_IN_MICROS = 1000;
    public static final int NANOS_IN_MILLIS = 1000000;

    /* JADX INFO: compiled from: Duration.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            try {
                iArr[DurationUnit.MICROSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[DurationUnit.NANOSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[DurationUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[DurationUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[DurationUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[DurationUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[DurationUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static /* synthetic */ void getFractionMultiplier$annotations(DurationUnit durationUnit) {
    }

    public static final long toDuration(int $this$toDuration, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt.convertDurationUnitOverflow($this$toDuration, unit, DurationUnit.NANOSECONDS));
        }
        return toDuration($this$toDuration, unit);
    }

    public static final long toDuration(long $this$toDuration, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        long maxNsInUnit = DurationUnitKt.convertDurationUnitOverflow(MAX_NANOS, DurationUnit.NANOSECONDS, unit);
        boolean z = false;
        if ((-maxNsInUnit) <= $this$toDuration && $this$toDuration <= maxNsInUnit) {
            z = true;
        }
        if (z) {
            return durationOfNanos(DurationUnitKt.convertDurationUnitOverflow($this$toDuration, unit, DurationUnit.NANOSECONDS));
        }
        if (unit.compareTo(DurationUnit.MILLISECONDS) >= 0) {
            return durationOfMillis(((long) MathKt.getSign($this$toDuration)) * DurationUnitKt.convertDurationUnitToMilliseconds(Math.abs(RangesKt.coerceAtLeast($this$toDuration, C.TIME_UNSET)), unit));
        }
        return durationOfMillis(RangesKt.coerceIn(DurationUnitKt.convertDurationUnit($this$toDuration, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L));
    }

    public static final long toDuration(double $this$toDuration, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double valueInNs = DurationUnitKt.convertDurationUnit($this$toDuration, unit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(valueInNs)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
        }
        long nanos = MathKt.roundToLong(valueInNs);
        boolean z = false;
        if (-4611686018426999999L <= nanos && nanos < 4611686018427000000L) {
            z = true;
        }
        if (z) {
            long millis = durationOfNanos(nanos);
            return millis;
        }
        long millis2 = MathKt.roundToLong(DurationUnitKt.convertDurationUnit($this$toDuration, unit, DurationUnit.MILLISECONDS));
        return durationOfMillisNormalized(millis2);
    }

    /* JADX INFO: renamed from: times-mvk6XK0, reason: not valid java name */
    private static final long m9995timesmvk6XK0(int $this$times_u2dmvk6XK0, long duration) {
        return Duration.m9924timesUwyO8pc(duration, $this$times_u2dmvk6XK0);
    }

    /* JADX INFO: renamed from: times-kIfJnKk, reason: not valid java name */
    private static final long m9994timeskIfJnKk(double $this$times_u2dkIfJnKk, long duration) {
        return Duration.m9923timesUwyO8pc(duration, $this$times_u2dkIfJnKk);
    }

    static /* synthetic */ long parseDuration$default(String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = true;
        }
        return parseDuration(str, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long parseDuration(String value, boolean strictIso, boolean throwException) {
        int index;
        long result;
        if (value.length() == 0) {
            if (throwException) {
                throw new IllegalArgumentException("The string is empty");
            }
            return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
        }
        char firstChar = value.charAt(0);
        boolean isNegative = false;
        switch (firstChar) {
            case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                int index2 = 0 + 1;
                index = index2;
                break;
            case ',':
            default:
                index = 0;
                break;
            case '-':
                isNegative = true;
                int index3 = 0 + 1;
                index = index3;
                break;
        }
        boolean hasSign = index > 0;
        if (value.length() <= index) {
            if (throwException) {
                throw new IllegalArgumentException("No components");
            }
            return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
        }
        if (value.charAt(index) == 'P') {
            result = parseIsoStringFormat(value, index + 1, throwException);
        } else {
            if (strictIso) {
                if (throwException) {
                    throw new IllegalArgumentException("");
                }
                return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
            }
            if (StringsKt.regionMatches(value, index, INFINITY_STRING, 0, Math.max(value.length() - index, 8), true)) {
                result = Duration.INSTANCE.m9985getINFINITEUwyO8pc();
            } else {
                result = parseDefaultStringFormat(value, index, hasSign, throwException);
            }
        }
        return (!isNegative || Duration.m9898equalsimpl0(result, Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib())) ? result : Duration.m9937unaryMinusUwyO8pc(result);
    }

    /* JADX WARN: Code restructure failed: missing block: B:197:0x03ca, code lost:
    
        if (r42 != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x03d2, code lost:
    
        return kotlin.time.Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x03d8, code lost:
    
        throw new java.lang.IllegalArgumentException("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x018d, code lost:
    
        r1 = r22;
        r2 = r16;
        r10 = r1;
        r1 = r40.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0199, code lost:
    
        if (r10 == r1) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x019b, code lost:
    
        switch(r23) {
            case 43: goto L95;
            case 44: goto L94;
            case 45: goto L95;
            default: goto L94;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x019e, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01a1, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a5, code lost:
    
        if (r10 != (r20 + r1)) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01a9, code lost:
    
        r9 = r2;
        r1 = r26;
     */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0173 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0189 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final long parseIsoStringFormat(String value, int startIndex, boolean throwException) {
        int index;
        int index$iv;
        int startIndex$iv$iv;
        String $this$skipWhile$iv$iv;
        boolean isTimeComponent;
        char ch;
        int i$iv$iv;
        long result$iv;
        int index$iv2;
        long result$iv2;
        int index$iv3;
        int longStartIndex;
        int index2;
        long it;
        String $this$parseDigits$iv$iv;
        int index$iv$iv;
        int i$iv$iv2;
        int digit$iv;
        int index$iv4;
        int longStartIndex2;
        int i$iv$iv3;
        int i$iv$iv4;
        int longEndIndex;
        int i;
        String $this$skipWhile$iv$iv2;
        int index3 = startIndex;
        if (index3 == value.length()) {
            if (throwException) {
                throw new IllegalArgumentException("");
            }
            return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
        }
        long totalMillis = 0;
        long totalNanos = 0;
        boolean isTimeComponent2 = false;
        DurationUnit prevUnit = null;
        while (index3 < value.length()) {
            char ch2 = value.charAt(index3);
            if (ch2 != 'T') {
                int longStartIndex3 = index3;
                LongParser this_$iv = LongParser.INSTANCE.getIso();
                int startIndex$iv = index3;
                int sign$iv = 1;
                if (this_$iv.allowSign) {
                    index = startIndex$iv;
                    char firstChar$iv = value.charAt(index);
                    switch (firstChar$iv) {
                        case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                            int index$iv5 = index + 1;
                            index$iv = index$iv5;
                            break;
                        case '-':
                            sign$iv = -1;
                            int index$iv6 = index + 1;
                            index$iv = index$iv6;
                            break;
                    }
                    startIndex$iv$iv = index$iv;
                    $this$skipWhile$iv$iv = value;
                    while (true) {
                        isTimeComponent = isTimeComponent2;
                        ch = ch2;
                        if (startIndex$iv$iv >= $this$skipWhile$iv$iv.length()) {
                            $this$skipWhile$iv$iv2 = $this$skipWhile$iv$iv;
                            i$iv$iv = startIndex$iv$iv;
                            if ($this$skipWhile$iv$iv2.charAt(startIndex$iv$iv) == '0') {
                                startIndex$iv$iv = i$iv$iv + 1;
                                $this$skipWhile$iv$iv = $this$skipWhile$iv$iv2;
                                isTimeComponent2 = isTimeComponent;
                                ch2 = ch;
                            }
                        } else {
                            i$iv$iv = startIndex$iv$iv;
                        }
                    }
                    result$iv = 0;
                    index$iv2 = i$iv$iv;
                    while (true) {
                        result$iv2 = result$iv;
                        if (index$iv2 >= value.length()) {
                            char ch$iv = value.charAt(index$iv2);
                            if ('0' <= ch$iv && ch$iv < ':') {
                                digit$iv = ch$iv - '0';
                                if (result$iv2 <= this_$iv.overflowThreshold) {
                                    if (result$iv2 == this_$iv.overflowThreshold) {
                                        index$iv4 = index$iv2;
                                        longStartIndex2 = longStartIndex3;
                                        if (digit$iv > this_$iv.lastDigitMax) {
                                        }
                                    } else {
                                        index$iv4 = index$iv2;
                                        longStartIndex2 = longStartIndex3;
                                    }
                                    index$iv2 = index$iv4 + 1;
                                    result$iv = (result$iv2 << 3) + (result$iv2 << 1) + ((long) digit$iv);
                                    longStartIndex3 = longStartIndex2;
                                } else {
                                    index$iv4 = index$iv2;
                                    longStartIndex2 = longStartIndex3;
                                }
                            } else {
                                index$iv3 = index$iv2;
                                longStartIndex = longStartIndex3;
                            }
                        } else {
                            index$iv3 = index$iv2;
                            longStartIndex = longStartIndex3;
                        }
                    }
                    i$iv$iv3 = index$iv4;
                    while (true) {
                        int digit$iv2 = digit$iv;
                        if (i$iv$iv3 >= value.length()) {
                            char it$iv = value.charAt(i$iv$iv3);
                            i$iv$iv4 = i$iv$iv3;
                            if ('0' <= it$iv && it$iv < ':') {
                                i$iv$iv3 = i$iv$iv4 + 1;
                                digit$iv = digit$iv2;
                            }
                        } else {
                            i$iv$iv4 = i$iv$iv3;
                        }
                    }
                    int longEndIndex2 = i$iv$iv4;
                    int localSign = sign$iv;
                    index2 = longEndIndex2;
                    longEndIndex = value.length();
                    if (index2 == longEndIndex) {
                        switch (ch) {
                            case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                            case '-':
                                i = 1;
                                break;
                            case ',':
                            default:
                                i = 0;
                                break;
                        }
                        if (index2 != longStartIndex2 + i) {
                            int sign = localSign;
                            long longValue = this_$iv.overflowLimit;
                            if (value.charAt(index2) == '.') {
                                int index4 = index2 + 1;
                                FractionalParser fractionalParser = FractionalParser.INSTANCE;
                                String value$iv = value;
                                int $i$f$parse = 0;
                                String value$iv2 = value$iv;
                                int endIndex$iv$iv = Math.min(index4 + 6, value$iv2.length());
                                int result$iv$iv = 0;
                                int index$iv$iv2 = index4;
                                while (true) {
                                    if (index$iv$iv2 < endIndex$iv$iv) {
                                        int endIndex$iv$iv2 = endIndex$iv$iv;
                                        String $this$parseDigits$iv$iv2 = value$iv2;
                                        $this$parseDigits$iv$iv = value$iv;
                                        char ch$iv$iv = $this$parseDigits$iv$iv2.charAt(index$iv$iv2);
                                        if ('0' <= ch$iv$iv && ch$iv$iv < ':') {
                                            result$iv$iv = (result$iv$iv << 3) + (result$iv$iv << 1) + (ch$iv$iv - '0');
                                            index$iv$iv2++;
                                            value$iv = $this$parseDigits$iv$iv;
                                            endIndex$iv$iv = endIndex$iv$iv2;
                                            value$iv2 = $this$parseDigits$iv$iv2;
                                        }
                                    } else {
                                        $this$parseDigits$iv$iv = value$iv;
                                    }
                                }
                                int endIndex$iv$iv3 = index$iv$iv2 - index4;
                                for (int i2 = 0; i2 < 6 - endIndex$iv$iv3; i2++) {
                                    result$iv$iv = (result$iv$iv << 3) + (result$iv$iv << 1);
                                }
                                int index$iv7 = index$iv$iv2;
                                int index$iv$iv3 = result$iv$iv;
                                String $this$parseDigits$iv$iv3 = $this$parseDigits$iv$iv;
                                int maxDigits$iv$iv = $this$parseDigits$iv$iv3.length();
                                int endIndex$iv$iv4 = Math.min(index$iv7 + 9, maxDigits$iv$iv);
                                int result$iv$iv2 = 0;
                                int index$iv$iv4 = index$iv7;
                                while (true) {
                                    if (index$iv$iv4 < endIndex$iv$iv4) {
                                        int endIndex$iv$iv5 = endIndex$iv$iv4;
                                        char ch$iv$iv2 = $this$parseDigits$iv$iv3.charAt(index$iv$iv4);
                                        index$iv$iv = index$iv$iv4;
                                        if ('0' <= ch$iv$iv2 && ch$iv$iv2 < ':') {
                                            result$iv$iv2 = (result$iv$iv2 << 3) + (result$iv$iv2 << 1) + (ch$iv$iv2 - '0');
                                            index$iv$iv4 = index$iv$iv + 1;
                                            endIndex$iv$iv4 = endIndex$iv$iv5;
                                        }
                                    } else {
                                        index$iv$iv = index$iv$iv4;
                                    }
                                }
                                int i3 = 9 - (index$iv$iv - index$iv7);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    result$iv$iv2 = (result$iv$iv2 << 3) + (result$iv$iv2 << 1);
                                }
                                int index$iv8 = index$iv$iv;
                                int lowPrecisionDigits$iv = result$iv$iv2;
                                int startIndex$iv$iv2 = index$iv8;
                                String $this$skipWhile$iv$iv3 = $this$parseDigits$iv$iv;
                                int index$iv9 = startIndex$iv$iv2;
                                while (true) {
                                    int $i$f$parse2 = $i$f$parse;
                                    int $i$f$parse3 = $this$skipWhile$iv$iv3.length();
                                    if (index$iv9 < $i$f$parse3) {
                                        String $this$skipWhile$iv$iv4 = $this$skipWhile$iv$iv3;
                                        int startIndex$iv$iv3 = startIndex$iv$iv2;
                                        char it$iv2 = $this$skipWhile$iv$iv4.charAt(index$iv9);
                                        i$iv$iv2 = index$iv9;
                                        if ((('0' > it$iv2 || it$iv2 >= ':') ? (char) 0 : (char) 1) != 0) {
                                            index$iv9 = i$iv$iv2 + 1;
                                            startIndex$iv$iv2 = startIndex$iv$iv3;
                                            $this$skipWhile$iv$iv3 = $this$skipWhile$iv$iv4;
                                            $i$f$parse = $i$f$parse2;
                                        }
                                    } else {
                                        i$iv$iv2 = index$iv9;
                                    }
                                }
                                int fractionEndIndex = i$iv$iv2;
                                if (fractionEndIndex == index4 || fractionEndIndex == value.length()) {
                                    if (throwException) {
                                        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                                    }
                                    throw new IllegalArgumentException("");
                                }
                                if (value.charAt(fractionEndIndex) == 'S') {
                                    long fractionValue = (((long) index$iv$iv3) * ((long) 1000000000)) + ((long) lowPrecisionDigits$iv);
                                    totalNanos = ((long) sign) * fractionDigitsToNanos(fractionValue, DurationUnit.SECONDS);
                                    index2 = fractionEndIndex;
                                } else if (throwException) {
                                }
                            }
                            DurationUnit unit = isoDurationUnitByShortNameOrNull(value, index2);
                            if (unit == null) {
                                String str = "Unknown duration unit short name: " + value.charAt(index2);
                                if (throwException) {
                                    throw new IllegalArgumentException(str);
                                }
                                return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                            }
                            if (prevUnit != null && prevUnit.compareTo(unit) <= 0) {
                                if (throwException) {
                                    throw new IllegalArgumentException("Unexpected order of duration components");
                                }
                                return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                            }
                            prevUnit = unit;
                            if (unit == DurationUnit.DAYS) {
                                if (isTimeComponent) {
                                    if (throwException) {
                                        throw new IllegalArgumentException("");
                                    }
                                    return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                                }
                                it = ((long) sign) * DurationUnitKt.convertDurationUnitToMilliseconds(longValue, unit);
                            } else {
                                if (!isTimeComponent) {
                                    if (throwException) {
                                        throw new IllegalArgumentException("");
                                    }
                                    return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                                }
                                it = addMillisWithoutOverflow(totalMillis, ((long) sign) * DurationUnitKt.convertDurationUnitToMilliseconds(longValue, unit));
                                if (it == Duration.INVALID_RAW_VALUE) {
                                    if (throwException) {
                                        throw new IllegalArgumentException("");
                                    }
                                    return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                                }
                            }
                            totalMillis = it;
                            index3 = index2 + 1;
                            isTimeComponent2 = isTimeComponent;
                        }
                    }
                    if (throwException) {
                        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                    }
                    throw new IllegalArgumentException("");
                }
                index = startIndex$iv;
                index$iv = index;
                startIndex$iv$iv = index$iv;
                $this$skipWhile$iv$iv = value;
                while (true) {
                    isTimeComponent = isTimeComponent2;
                    ch = ch2;
                    if (startIndex$iv$iv >= $this$skipWhile$iv$iv.length()) {
                    }
                    startIndex$iv$iv = i$iv$iv + 1;
                    $this$skipWhile$iv$iv = $this$skipWhile$iv$iv2;
                    isTimeComponent2 = isTimeComponent;
                    ch2 = ch;
                }
                result$iv = 0;
                index$iv2 = i$iv$iv;
                while (true) {
                    result$iv2 = result$iv;
                    if (index$iv2 >= value.length()) {
                    }
                    index$iv2 = index$iv4 + 1;
                    result$iv = (result$iv2 << 3) + (result$iv2 << 1) + ((long) digit$iv);
                    longStartIndex3 = longStartIndex2;
                }
                i$iv$iv3 = index$iv4;
                while (true) {
                    int digit$iv22 = digit$iv;
                    if (i$iv$iv3 >= value.length()) {
                    }
                    i$iv$iv3 = i$iv$iv4 + 1;
                    digit$iv = digit$iv22;
                }
                int longEndIndex22 = i$iv$iv4;
                int localSign2 = sign$iv;
                index2 = longEndIndex22;
                longEndIndex = value.length();
                if (index2 == longEndIndex) {
                }
                if (throwException) {
                }
            } else {
                if (isTimeComponent2 || (index3 = index3 + 1) == value.length()) {
                    if (throwException) {
                        throw new IllegalArgumentException("");
                    }
                    return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                }
                isTimeComponent2 = true;
            }
        }
        return Duration.m9922plusLRDsOJo(toDuration(totalMillis, DurationUnit.MILLISECONDS), toDuration(totalNanos, DurationUnit.NANOSECONDS));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01a5, code lost:
    
        r13 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x03d8, code lost:
    
        if (r46 != false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x03e0, code lost:
    
        return kotlin.time.Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x03e6, code lost:
    
        throw new java.lang.IllegalArgumentException("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0197, code lost:
    
        r3 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x019b, code lost:
    
        if (r3 == r10) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x019d, code lost:
    
        if (r3 == r2) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x019f, code lost:
    
        if (0 == 0) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0229 A[LOOP:6: B:119:0x0227->B:120:0x0229, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x029a A[LOOP:8: B:133:0x0298->B:134:0x029a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02e7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02f8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0191 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x02de A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final long parseDefaultStringFormat(String value, int startIndex, boolean hasSign, boolean throwException) {
        char c;
        int index;
        int index$iv;
        int startIndex$iv$iv;
        String $this$skipWhile$iv$iv;
        boolean allowSpaces;
        boolean isFirstComponent;
        int i$iv$iv;
        long result$iv;
        int index$iv2;
        LongParser this_$iv;
        int index$iv3;
        char c2;
        int highPrecisionDigits$iv;
        long fractionValue;
        int endIndex$iv$iv;
        int i;
        int index$iv4;
        int endIndex$iv$iv2;
        int index$iv$iv;
        int i2;
        int index$iv5;
        int index$iv6;
        int i$iv$iv2;
        int fractionEndIndex;
        char ch$iv;
        int digit$iv;
        String value$iv;
        String $this$skipWhile$iv$iv2;
        int index$iv7;
        int i$iv$iv3;
        int longEndIndex;
        int startIndex$iv;
        String $this$skipWhile$iv$iv3;
        int index2 = startIndex;
        int length = value.length();
        boolean allowSpaces2 = !hasSign;
        if (hasSign && value.charAt(index2) == '(' && value.charAt(length - 1) == ')') {
            allowSpaces2 = true;
            index2++;
            length--;
            if (index2 == length) {
                if (throwException) {
                    throw new IllegalArgumentException("No components");
                }
                return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
            }
        }
        long totalMillis = 0;
        long totalNanos = 0;
        DurationUnit prevUnit = null;
        boolean isFirstComponent2 = true;
        while (index2 < length) {
            if (isFirstComponent2 || !allowSpaces2) {
                c = 1;
            } else {
                int i$iv = index2;
                while (true) {
                    if (i$iv < value.length()) {
                        char it = value.charAt(i$iv);
                        c = 1;
                        char it2 = it == ' ' ? (char) 1 : (char) 0;
                        if (it2 != 0) {
                            i$iv++;
                        }
                    } else {
                        c = 1;
                    }
                }
                index2 = i$iv;
            }
            boolean isFirstComponent3 = false;
            int longStartIndex = index2;
            LongParser this_$iv2 = LongParser.INSTANCE.getDefault();
            int startIndex$iv2 = index2;
            String value$iv2 = value;
            if (this_$iv2.allowSign) {
                index = startIndex$iv2;
                char firstChar$iv = value$iv2.charAt(index);
                switch (firstChar$iv) {
                    case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                        int index$iv8 = index + 1;
                        index$iv = index$iv8;
                        break;
                    case '-':
                        int index$iv9 = index + 1;
                        index$iv = index$iv9;
                        break;
                }
                startIndex$iv$iv = index$iv;
                $this$skipWhile$iv$iv = value$iv2;
                while (true) {
                    allowSpaces = allowSpaces2;
                    isFirstComponent = isFirstComponent3;
                    if (startIndex$iv$iv >= $this$skipWhile$iv$iv.length()) {
                        $this$skipWhile$iv$iv3 = $this$skipWhile$iv$iv;
                        i$iv$iv = startIndex$iv$iv;
                        if (($this$skipWhile$iv$iv3.charAt(startIndex$iv$iv) == '0' ? c : (char) 0) != 0) {
                            startIndex$iv$iv = i$iv$iv + 1;
                            $this$skipWhile$iv$iv = $this$skipWhile$iv$iv3;
                            allowSpaces2 = allowSpaces;
                            isFirstComponent3 = isFirstComponent;
                        }
                    } else {
                        i$iv$iv = startIndex$iv$iv;
                    }
                }
                result$iv = 0;
                index$iv2 = i$iv$iv;
                while (true) {
                    this_$iv = this_$iv2;
                    if (index$iv2 >= value$iv2.length()) {
                        ch$iv = value$iv2.charAt(index$iv2);
                        if ((('0' > ch$iv || ch$iv >= ':') ? (char) 0 : c) != 0) {
                            digit$iv = ch$iv - '0';
                            if (result$iv <= this_$iv.overflowThreshold) {
                                if (result$iv == this_$iv.overflowThreshold) {
                                    startIndex$iv = startIndex$iv2;
                                    value$iv = value$iv2;
                                    if (digit$iv > this_$iv.lastDigitMax) {
                                    }
                                } else {
                                    startIndex$iv = startIndex$iv2;
                                    value$iv = value$iv2;
                                }
                                result$iv = (result$iv << 3) + (result$iv << c) + ((long) digit$iv);
                                index$iv2++;
                                this_$iv2 = this_$iv;
                                value$iv2 = value$iv;
                                startIndex$iv2 = startIndex$iv;
                            } else {
                                value$iv = value$iv2;
                            }
                        } else {
                            index$iv3 = index$iv2;
                        }
                    } else {
                        index$iv3 = index$iv2;
                    }
                }
                $this$skipWhile$iv$iv2 = value$iv;
                index$iv7 = index$iv2;
                while (true) {
                    char ch$iv2 = ch$iv;
                    if (index$iv7 >= $this$skipWhile$iv$iv2.length()) {
                        char it$iv = $this$skipWhile$iv$iv2.charAt(index$iv7);
                        i$iv$iv3 = index$iv7;
                        if ((('0' > it$iv || it$iv >= ':') ? (char) 0 : c) != 0) {
                            index$iv7 = i$iv$iv3 + 1;
                            ch$iv = ch$iv2;
                        }
                    } else {
                        i$iv$iv3 = index$iv7;
                    }
                }
                longEndIndex = i$iv$iv3;
                if (longEndIndex != longStartIndex || longEndIndex == length || 1 != 0) {
                    if (throwException) {
                        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                    }
                    throw new IllegalArgumentException("");
                }
                int index3 = longEndIndex;
                result$iv = this_$iv.overflowLimit;
                long longValue = result$iv;
                char c3 = value.charAt(index3) == '.' ? c : (char) 0;
                long fractionValue2 = 0;
                if (c3 != 0) {
                    int fractionStartIndex = index3;
                    int index4 = index3 + 1;
                    FractionalParser fractionalParser = FractionalParser.INSTANCE;
                    String $this$parseDigits$iv$iv = value;
                    c2 = c3;
                    int fractionStartIndex2 = $this$parseDigits$iv$iv.length();
                    int endIndex$iv$iv3 = Math.min(index4 + 6, fractionStartIndex2);
                    int result$iv$iv = 0;
                    int index$iv$iv2 = index4;
                    while (index$iv$iv2 < endIndex$iv$iv3) {
                        int endIndex$iv$iv4 = endIndex$iv$iv3;
                        String $this$parseDigits$iv$iv2 = $this$parseDigits$iv$iv;
                        int longStartIndex2 = longStartIndex;
                        char ch$iv$iv = $this$parseDigits$iv$iv2.charAt(index$iv$iv2);
                        if ((('0' > ch$iv$iv || ch$iv$iv >= ':') ? (char) 0 : c) != 0) {
                            result$iv$iv = (result$iv$iv << 3) + (result$iv$iv << 1) + (ch$iv$iv - '0');
                            index$iv$iv2++;
                            longStartIndex = longStartIndex2;
                            endIndex$iv$iv3 = endIndex$iv$iv4;
                            $this$parseDigits$iv$iv = $this$parseDigits$iv$iv2;
                        } else {
                            endIndex$iv$iv = index$iv$iv2 - index4;
                            for (i = 0; i < 6 - endIndex$iv$iv; i++) {
                                result$iv$iv = (result$iv$iv << 3) + (result$iv$iv << 1);
                            }
                            index$iv4 = index$iv$iv2;
                            int index$iv$iv3 = result$iv$iv;
                            String $this$parseDigits$iv$iv3 = value;
                            int maxDigits$iv$iv = $this$parseDigits$iv$iv3.length();
                            endIndex$iv$iv2 = Math.min(index$iv4 + 9, maxDigits$iv$iv);
                            int result$iv$iv2 = 0;
                            index$iv$iv = index$iv4;
                            while (index$iv$iv < endIndex$iv$iv2) {
                                int endIndex$iv$iv5 = endIndex$iv$iv2;
                                long fractionValue3 = fractionValue2;
                                String $this$parseDigits$iv$iv4 = $this$parseDigits$iv$iv3;
                                char ch$iv$iv2 = $this$parseDigits$iv$iv4.charAt(index$iv$iv);
                                if ((('0' > ch$iv$iv2 || ch$iv$iv2 >= ':') ? (char) 0 : c) != 0) {
                                    result$iv$iv2 = (result$iv$iv2 << 3) + (result$iv$iv2 << 1) + (ch$iv$iv2 - '0');
                                    index$iv$iv++;
                                    $this$parseDigits$iv$iv3 = $this$parseDigits$iv$iv4;
                                    endIndex$iv$iv2 = endIndex$iv$iv5;
                                    fractionValue2 = fractionValue3;
                                } else {
                                    for (i2 = 0; i2 < 9 - (index$iv$iv - index$iv4); i2++) {
                                        result$iv$iv2 = (result$iv$iv2 << 3) + (result$iv$iv2 << 1);
                                    }
                                    index$iv5 = index$iv$iv;
                                    int lowPrecisionDigits$iv = result$iv$iv2;
                                    while (true) {
                                        int index$iv10 = index$iv5;
                                        index$iv6 = value.length();
                                        if (index$iv$iv < index$iv6) {
                                            char it$iv2 = value.charAt(index$iv$iv);
                                            i$iv$iv2 = index$iv$iv;
                                            if ((('0' > it$iv2 || it$iv2 >= ':') ? (char) 0 : c) != 0) {
                                                index$iv$iv = i$iv$iv2 + 1;
                                                index$iv5 = index$iv10;
                                            }
                                        } else {
                                            i$iv$iv2 = index$iv$iv;
                                        }
                                    }
                                    fractionEndIndex = i$iv$iv2;
                                    if (fractionEndIndex == index4 || fractionEndIndex == length) {
                                        if (throwException) {
                                            throw new IllegalArgumentException("");
                                        }
                                        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                                    }
                                    index3 = fractionEndIndex;
                                    fractionValue = (((long) index$iv$iv3) * ((long) 1000000000)) + ((long) lowPrecisionDigits$iv);
                                    highPrecisionDigits$iv = fractionStartIndex;
                                }
                            }
                            while (i2 < 9 - (index$iv$iv - index$iv4)) {
                            }
                            index$iv5 = index$iv$iv;
                            int lowPrecisionDigits$iv2 = result$iv$iv2;
                            while (true) {
                                int index$iv102 = index$iv5;
                                index$iv6 = value.length();
                                if (index$iv$iv < index$iv6) {
                                }
                                index$iv$iv = i$iv$iv2 + 1;
                                index$iv5 = index$iv102;
                            }
                            fractionEndIndex = i$iv$iv2;
                            if (fractionEndIndex == index4) {
                            }
                            if (throwException) {
                            }
                        }
                    }
                    endIndex$iv$iv = index$iv$iv2 - index4;
                    while (i < 6 - endIndex$iv$iv) {
                    }
                    index$iv4 = index$iv$iv2;
                    int index$iv$iv32 = result$iv$iv;
                    String $this$parseDigits$iv$iv32 = value;
                    int maxDigits$iv$iv2 = $this$parseDigits$iv$iv32.length();
                    endIndex$iv$iv2 = Math.min(index$iv4 + 9, maxDigits$iv$iv2);
                    int result$iv$iv22 = 0;
                    index$iv$iv = index$iv4;
                    while (index$iv$iv < endIndex$iv$iv2) {
                    }
                    while (i2 < 9 - (index$iv$iv - index$iv4)) {
                    }
                    index$iv5 = index$iv$iv;
                    int lowPrecisionDigits$iv22 = result$iv$iv22;
                    while (true) {
                        int index$iv1022 = index$iv5;
                        index$iv6 = value.length();
                        if (index$iv$iv < index$iv6) {
                        }
                        index$iv$iv = i$iv$iv2 + 1;
                        index$iv5 = index$iv1022;
                    }
                    fractionEndIndex = i$iv$iv2;
                    if (fractionEndIndex == index4) {
                    }
                    if (throwException) {
                    }
                } else {
                    c2 = c3;
                    highPrecisionDigits$iv = -1;
                    fractionValue = 0;
                }
                DurationUnit unit = defaultDurationUnitByShortNameOrNull(value, index3);
                if (unit == null) {
                    String str = "Unknown duration unit short name: " + value.charAt(index3);
                    if (throwException) {
                        throw new IllegalArgumentException(str);
                    }
                    return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                }
                if (prevUnit != null && prevUnit.compareTo(unit) <= 0) {
                    if (throwException) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                }
                prevUnit = unit;
                switch (WhenMappings.$EnumSwitchMapping$0[unit.ordinal()]) {
                    case 1:
                        totalMillis += longValue / 1000;
                        if (totalMillis <= MAX_NANOS_IN_MILLIS) {
                            totalNanos = (longValue % 1000) * 1000;
                        }
                        break;
                    case 2:
                        long j = 1000000;
                        totalMillis += longValue / j;
                        totalNanos += longValue % j;
                        break;
                    default:
                        totalMillis = addMillisWithoutOverflow(totalMillis, DurationUnitKt.convertDurationUnitToMilliseconds(longValue, unit));
                        break;
                }
                int index5 = index3 + getShortNameLength(unit);
                if (c2 == 0) {
                    index2 = index5;
                    allowSpaces2 = allowSpaces;
                    isFirstComponent2 = isFirstComponent;
                } else {
                    if (index5 < length) {
                        if (throwException) {
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
                    }
                    totalNanos += (unit.compareTo(DurationUnit.MINUTES) < 0 || index5 - highPrecisionDigits$iv <= 15) ? fractionDigitsToNanos(fractionValue, unit) : parseFractionFallback(value, highPrecisionDigits$iv, index5 - getShortNameLength(unit), unit);
                    index2 = index5;
                    allowSpaces2 = allowSpaces;
                    isFirstComponent2 = isFirstComponent;
                }
            } else {
                index = startIndex$iv2;
            }
            index$iv = index;
            startIndex$iv$iv = index$iv;
            $this$skipWhile$iv$iv = value$iv2;
            while (true) {
                allowSpaces = allowSpaces2;
                isFirstComponent = isFirstComponent3;
                if (startIndex$iv$iv >= $this$skipWhile$iv$iv.length()) {
                }
                startIndex$iv$iv = i$iv$iv + 1;
                $this$skipWhile$iv$iv = $this$skipWhile$iv$iv3;
                allowSpaces2 = allowSpaces;
                isFirstComponent3 = isFirstComponent;
            }
            result$iv = 0;
            index$iv2 = i$iv$iv;
            while (true) {
                this_$iv = this_$iv2;
                if (index$iv2 >= value$iv2.length()) {
                }
                result$iv = (result$iv << 3) + (result$iv << c) + ((long) digit$iv);
                index$iv2++;
                this_$iv2 = this_$iv;
                value$iv2 = value$iv;
                startIndex$iv2 = startIndex$iv;
            }
            $this$skipWhile$iv$iv2 = value$iv;
            index$iv7 = index$iv2;
            while (true) {
                char ch$iv22 = ch$iv;
                if (index$iv7 >= $this$skipWhile$iv$iv2.length()) {
                }
                index$iv7 = i$iv$iv3 + 1;
                ch$iv = ch$iv22;
            }
            longEndIndex = i$iv$iv3;
            if (longEndIndex != longStartIndex) {
            }
            if (throwException) {
            }
        }
        return Duration.m9922plusLRDsOJo(toDuration(totalMillis, DurationUnit.MILLISECONDS), toDuration(totalNanos, DurationUnit.NANOSECONDS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long addMillisWithoutOverflow(long $this$addMillisWithoutOverflow, long other) {
        if (!($this$addMillisWithoutOverflow == 4611686018427387903L || $this$addMillisWithoutOverflow == -4611686018427387903L)) {
            return other == 4611686018427387903L || other == -4611686018427387903L ? other : RangesKt.coerceIn($this$addMillisWithoutOverflow + other, -4611686018427387903L, 4611686018427387903L);
        }
        if (!(-4611686018427387903L < other && other < 4611686018427387903L)) {
            if (!(($this$addMillisWithoutOverflow ^ other) >= 0)) {
                return Duration.INVALID_RAW_VALUE;
            }
        }
        return $this$addMillisWithoutOverflow;
    }

    private static final boolean isInfiniteMillis(long $this$isInfiniteMillis) {
        return $this$isInfiniteMillis == 4611686018427387903L || $this$isInfiniteMillis == -4611686018427387903L;
    }

    private static final boolean isFiniteMillis(long $this$isFiniteMillis) {
        return -4611686018427387903L < $this$isFiniteMillis && $this$isFiniteMillis < 4611686018427387903L;
    }

    private static final boolean sameSign(long a, long b) {
        return (a ^ b) >= 0;
    }

    private static final long parseFractionFallback(String $this$parseFractionFallback, int startIndex, int endIndex, DurationUnit unit) {
        Intrinsics.checkNotNull($this$parseFractionFallback, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = $this$parseFractionFallback.substring(startIndex, endIndex);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return MathKt.roundToLong(Double.parseDouble(strSubstring) * getFallbackFractionMultiplier(unit));
    }

    private static final long fractionDigitsToNanos(long $this$fractionDigitsToNanos, DurationUnit unit) {
        return MathKt.roundToLong($this$fractionDigitsToNanos * getFractionMultiplier(unit));
    }

    static /* synthetic */ long handleError$default(boolean throwException, String message, int i, Object obj) {
        if ((i & 2) != 0) {
            message = "";
        }
        if (throwException) {
            throw new IllegalArgumentException(message);
        }
        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
    }

    private static final long handleError(boolean throwException, String message) {
        if (throwException) {
            throw new IllegalArgumentException(message);
        }
        return Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib();
    }

    /* JADX INFO: renamed from: onInvalid-ge6A_vg, reason: not valid java name */
    private static final Duration m9993onInvalidge6A_vg(long $this$onInvalid_u2dge6A_vg, Function0<Duration> function0) {
        return Duration.m9898equalsimpl0($this$onInvalid_u2dge6A_vg, Duration.INSTANCE.m9986getINVALIDUwyO8pc$kotlin_stdlib()) ? function0.invoke() : Duration.m9891boximpl($this$onInvalid_u2dge6A_vg);
    }

    private static final DurationUnit defaultDurationUnitByShortNameOrNull(String $this$defaultDurationUnitByShortNameOrNull, int start) {
        char first = $this$defaultDurationUnitByShortNameOrNull.charAt(start);
        char second = start < StringsKt.getLastIndex($this$defaultDurationUnitByShortNameOrNull) ? $this$defaultDurationUnitByShortNameOrNull.charAt(start + 1) : (char) 0;
        switch (first) {
            case 'd':
                return DurationUnit.DAYS;
            case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                return DurationUnit.HOURS;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                return second == 's' ? DurationUnit.MILLISECONDS : DurationUnit.MINUTES;
            case 'n':
                if (second == 's') {
                    return DurationUnit.NANOSECONDS;
                }
                return null;
            case 's':
                return DurationUnit.SECONDS;
            case 'u':
                if (second == 's') {
                    return DurationUnit.MICROSECONDS;
                }
                return null;
            default:
                return null;
        }
    }

    private static final DurationUnit isoDurationUnitByShortNameOrNull(String $this$isoDurationUnitByShortNameOrNull, int start) {
        switch ($this$isoDurationUnitByShortNameOrNull.charAt(start)) {
            case 'D':
                return DurationUnit.DAYS;
            case 'H':
                return DurationUnit.HOURS;
            case 'M':
                return DurationUnit.MINUTES;
            case 'S':
                return DurationUnit.SECONDS;
            default:
                return null;
        }
    }

    private static final double getFractionMultiplier(DurationUnit $this$fractionMultiplier) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$fractionMultiplier.ordinal()]) {
            case 1:
                return 1.0E-12d;
            case 2:
                return 1.0E-15d;
            case 3:
                return 1.0E-9d;
            case 4:
                return 1.0E-6d;
            case 5:
                return 6.0E-5d;
            case 6:
                return 0.0036d;
            case 7:
                return 0.0864d;
            default:
                throw new IllegalStateException(("Unknown unit: " + $this$fractionMultiplier).toString());
        }
    }

    private static final long getFallbackFractionMultiplier(DurationUnit $this$fallbackFractionMultiplier) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$fallbackFractionMultiplier.ordinal()]) {
            case 5:
                return 60000000000L;
            case 6:
                return 3600000000000L;
            case 7:
                return 86400000000000L;
            default:
                throw new IllegalStateException(("Invalid unit: " + $this$fallbackFractionMultiplier + " for fallback fraction multiplier").toString());
        }
    }

    private static final int getShortNameLength(DurationUnit $this$shortNameLength) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$shortNameLength.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return 2;
            default:
                return 1;
        }
    }

    private static final long multiplyBy10(long $this$multiplyBy10) {
        return ($this$multiplyBy10 << 3) + ($this$multiplyBy10 << 1);
    }

    private static final int multiplyBy10(int $this$multiplyBy10) {
        return ($this$multiplyBy10 << 3) + ($this$multiplyBy10 << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long nanosToMillis(long nanos) {
        return nanos / ((long) 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long millisToNanos(long millis) {
        return ((long) 1000000) * millis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanos(long normalNanos) {
        return Duration.INSTANCE.m9984fromRawValueUwyO8pc$kotlin_stdlib(normalNanos << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillis(long normalMillis) {
        return Duration.INSTANCE.m9984fromRawValueUwyO8pc$kotlin_stdlib((normalMillis << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOf(long normalValue, int unitDiscriminator) {
        return Duration.INSTANCE.m9984fromRawValueUwyO8pc$kotlin_stdlib((normalValue << 1) + ((long) unitDiscriminator));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanosNormalized(long nanos) {
        boolean z = false;
        if (-4611686018426999999L <= nanos && nanos < 4611686018427000000L) {
            z = true;
        }
        if (z) {
            return durationOfNanos(nanos);
        }
        return durationOfMillis(nanosToMillis(nanos));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillisNormalized(long millis) {
        boolean z = false;
        if (-4611686018426L <= millis && millis < 4611686018427L) {
            z = true;
        }
        if (z) {
            return durationOfNanos(millisToNanos(millis));
        }
        return durationOfMillis(RangesKt.coerceIn(millis, -4611686018427387903L, 4611686018427387903L));
    }
}
