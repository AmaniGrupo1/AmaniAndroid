package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.ComparableTimeMark;

/* JADX INFO: compiled from: TimeSource.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006J\n\u0010\u0002\u001a\u00020\u0003H¦\u0080\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeSource;", "", "markNow", "Lkotlin/time/TimeMark;", "WithComparableMarks", "Monotonic", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TimeSource {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: TimeSource.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u00020\u0003H¦\u0080\u0004¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/TimeSource;", "markNow", "Lkotlin/time/ComparableTimeMark;", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface WithComparableMarks extends TimeSource {
        @Override // kotlin.time.TimeSource
        ComparableTimeMark markNow();
    }

    TimeMark markNow();

    /* JADX INFO: compiled from: TimeSource.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\nB\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u0005H\u0096\u0080\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\n\u0010\b\u001a\u00020\tH\u0096\u0080\u0004¨\u0006\u000b"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource$WithComparableMarks;", "<init>", "()V", "markNow", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "toString", "", "ValueTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Monotonic implements WithComparableMarks {
        public static final Monotonic INSTANCE = new Monotonic();

        private Monotonic() {
        }

        @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
            return ValueTimeMark.m10011boximpl(m10010markNowz9LOYto());
        }

        @Override // kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ TimeMark markNow() {
            return ValueTimeMark.m10011boximpl(m10010markNowz9LOYto());
        }

        /* JADX INFO: renamed from: markNow-z9LOYto, reason: not valid java name */
        public long m10010markNowz9LOYto() {
            return MonotonicTimeSource.INSTANCE.m10005markNowz9LOYto();
        }

        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }

        /* JADX INFO: compiled from: TimeSource.kt */
        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001B\u0015\b@\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u00020\tH\u0096\u0080\u0004¢\u0006\u0004\b\n\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tH\u0096\u0082\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tH\u0096\u0082\u0004¢\u0006\u0004\b\u0010\u0010\u000eJ\u0011\u0010\u0011\u001a\u00020\u0012H\u0096\u0080\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0015\u001a\u00020\u0012H\u0096\u0080\u0004¢\u0006\u0004\b\u0016\u0010\u0014J\u0019\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0001H\u0096\u0082\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\u001a\u0010\u000eJ\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\u0014\u0010\u001f\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010 HÖ\u0083\u0004J\n\u0010!\u001a\u00020\u001cHÖ\u0081\u0004J\n\u0010\"\u001a\u00020#HÖ\u0081\u0004R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0084\b¢\u0006\u0004\n\u0002\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006$"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/ComparableTimeMark;", "reading", "", "Lkotlin/time/ValueTimeMarkReading;", "constructor-impl", "(J)J", "J", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "plus", "duration", "plus-LRDsOJo", "(JJ)J", "minus", "minus-LRDsOJo", "hasPassedNow", "", "hasPassedNow-impl", "(J)Z", "hasNotPassedNow", "hasNotPassedNow-impl", "other", "minus-UwyO8pc", "(JLkotlin/time/ComparableTimeMark;)J", "minus-6eNON_k", "compareTo", "", "compareTo-6eNON_k", "(JJ)I", "equals", "", "hashCode", "toString", "", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
        @JvmInline
        public static final class ValueTimeMark implements ComparableTimeMark {
            private final long reading;

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ ValueTimeMark m10011boximpl(long j) {
                return new ValueTimeMark(j);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            public static long m10014constructorimpl(long j) {
                return j;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m10016equalsimpl(long j, Object obj) {
                return (obj instanceof ValueTimeMark) && j == ((ValueTimeMark) obj).getReading();
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m10017equalsimpl0(long j, long j2) {
                return j == j2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m10020hashCodeimpl(long j) {
                return Long.hashCode(j);
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m10025toStringimpl(long j) {
                return "ValueTimeMark(reading=" + j + ')';
            }

            @Override // kotlin.time.ComparableTimeMark
            public boolean equals(Object other) {
                return m10016equalsimpl(this.reading, other);
            }

            @Override // kotlin.time.ComparableTimeMark
            public int hashCode() {
                return m10020hashCodeimpl(this.reading);
            }

            public String toString() {
                return m10025toStringimpl(this.reading);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
            public final /* synthetic */ long getReading() {
                return this.reading;
            }

            /* JADX INFO: renamed from: compareTo-impl, reason: not valid java name */
            public static int m10013compareToimpl(long arg0, ComparableTimeMark other) {
                Intrinsics.checkNotNullParameter(other, "other");
                return m10011boximpl(arg0).compareTo(other);
            }

            @Override // java.lang.Comparable
            public /* bridge */ int compareTo(ComparableTimeMark other) {
                return ComparableTimeMark.DefaultImpls.compareTo(this, other);
            }

            @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
            /* JADX INFO: renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ ComparableTimeMark mo9882minusLRDsOJo(long duration) {
                return m10011boximpl(m10026minusLRDsOJo(duration));
            }

            @Override // kotlin.time.TimeMark
            /* JADX INFO: renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo9882minusLRDsOJo(long duration) {
                return m10011boximpl(m10026minusLRDsOJo(duration));
            }

            @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
            /* JADX INFO: renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ ComparableTimeMark mo9884plusLRDsOJo(long duration) {
                return m10011boximpl(m10027plusLRDsOJo(duration));
            }

            @Override // kotlin.time.TimeMark
            /* JADX INFO: renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo9884plusLRDsOJo(long duration) {
                return m10011boximpl(m10027plusLRDsOJo(duration));
            }

            private /* synthetic */ ValueTimeMark(long reading) {
                this.reading = reading;
            }

            /* JADX INFO: renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
            public static long m10015elapsedNowUwyO8pc(long arg0) {
                return MonotonicTimeSource.INSTANCE.m10004elapsedFrom6eNON_k(arg0);
            }

            @Override // kotlin.time.TimeMark
            /* JADX INFO: renamed from: elapsedNow-UwyO8pc */
            public long mo9881elapsedNowUwyO8pc() {
                return m10015elapsedNowUwyO8pc(this.reading);
            }

            /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
            public static long m10024plusLRDsOJo(long arg0, long duration) {
                return MonotonicTimeSource.INSTANCE.m10002adjustReading6QKq23U(arg0, duration);
            }

            /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
            public long m10027plusLRDsOJo(long duration) {
                return m10024plusLRDsOJo(this.reading, duration);
            }

            /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
            public static long m10022minusLRDsOJo(long arg0, long duration) {
                return MonotonicTimeSource.INSTANCE.m10002adjustReading6QKq23U(arg0, Duration.m9937unaryMinusUwyO8pc(duration));
            }

            /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
            public long m10026minusLRDsOJo(long duration) {
                return m10022minusLRDsOJo(this.reading, duration);
            }

            /* JADX INFO: renamed from: hasPassedNow-impl, reason: not valid java name */
            public static boolean m10019hasPassedNowimpl(long arg0) {
                return !Duration.m9919isNegativeimpl(m10015elapsedNowUwyO8pc(arg0));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasPassedNow() {
                return m10019hasPassedNowimpl(this.reading);
            }

            /* JADX INFO: renamed from: hasNotPassedNow-impl, reason: not valid java name */
            public static boolean m10018hasNotPassedNowimpl(long arg0) {
                return Duration.m9919isNegativeimpl(m10015elapsedNowUwyO8pc(arg0));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasNotPassedNow() {
                return m10018hasNotPassedNowimpl(this.reading);
            }

            @Override // kotlin.time.ComparableTimeMark
            /* JADX INFO: renamed from: minus-UwyO8pc */
            public long mo9883minusUwyO8pc(ComparableTimeMark other) {
                Intrinsics.checkNotNullParameter(other, "other");
                return m10023minusUwyO8pc(this.reading, other);
            }

            /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
            public static long m10023minusUwyO8pc(long arg0, ComparableTimeMark other) {
                Intrinsics.checkNotNullParameter(other, "other");
                if (!(other instanceof ValueTimeMark)) {
                    throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) m10025toStringimpl(arg0)) + " and " + other);
                }
                return m10021minus6eNON_k(arg0, ((ValueTimeMark) other).getReading());
            }

            /* JADX INFO: renamed from: minus-6eNON_k, reason: not valid java name */
            public static final long m10021minus6eNON_k(long arg0, long other) {
                return MonotonicTimeSource.INSTANCE.m10003differenceBetweenfRLX17w(arg0, other);
            }

            /* JADX INFO: renamed from: compareTo-6eNON_k, reason: not valid java name */
            public static final int m10012compareTo6eNON_k(long arg0, long other) {
                return Duration.m9892compareToLRDsOJo(m10021minus6eNON_k(arg0, other), Duration.INSTANCE.m9988getZEROUwyO8pc());
            }
        }
    }

    /* JADX INFO: compiled from: TimeSource.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
