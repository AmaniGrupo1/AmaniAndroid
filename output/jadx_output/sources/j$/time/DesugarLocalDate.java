package j$.time;

import j$.time.zone.ZoneRules;
import java.util.Objects;
import java.util.function.LongFunction;
import java.util.stream.LongStream;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes19.dex */
public final class DesugarLocalDate {
    public static final LocalDate EPOCH = LocalDate.of(1970, 1, 1);
    private static final int SECONDS_PER_DAY = 86400;

    /* JADX INFO: renamed from: j$.time.DesugarLocalDate$0, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass0 {
        public static /* synthetic */ long m(long j, int i) {
            return Math.floorDiv(j, i);
        }
    }

    /* JADX INFO: renamed from: j$.time.DesugarLocalDate$1, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass1 implements LongFunction {
        @Override // java.util.function.LongFunction
        public final Object apply(long j) {
            return LocalDate.ofEpochDay(j);
        }
    }

    private DesugarLocalDate() {
    }

    public static Stream<LocalDate> datesUntil(LocalDate receiver, LocalDate endExclusive) {
        long end = endExclusive.toEpochDay();
        long start = receiver.toEpochDay();
        if (end < start) {
            throw new IllegalArgumentException(endExclusive + " < " + receiver);
        }
        return LongStream.range(start, end).mapToObj(new AnonymousClass1());
    }

    public static Stream<LocalDate> datesUntil(final LocalDate receiver, LocalDate endExclusive, Period step) {
        long maxAddMonths;
        long addMonths;
        if (step.isZero()) {
            throw new IllegalArgumentException("step is zero");
        }
        long end = endExclusive.toEpochDay();
        final long start = receiver.toEpochDay();
        long until = end - start;
        final long months = step.toTotalMonths();
        final long days = step.getDays();
        if ((months < 0 && days > 0) || (months > 0 && days < 0)) {
            throw new IllegalArgumentException("period months and days are of opposite sign");
        }
        if (until == 0) {
            return Stream.empty();
        }
        int sign = (months > 0 || days > 0) ? 1 : -1;
        if ((sign < 0) ^ (until < 0)) {
            throw new IllegalArgumentException(endExclusive + (sign < 0 ? " > " : " < ") + receiver);
        }
        if (months == 0) {
            return LongStream.rangeClosed(0L, (until - ((long) sign)) / days).mapToObj(new LongFunction() { // from class: j$.time.DesugarLocalDate.2
                @Override // java.util.function.LongFunction
                public final Object apply(long j) {
                    return DesugarLocalDate.lambda$datesUntil$0(start, days, j);
                }
            });
        }
        long steps = ((until * 1600) / ((48699 * months) + (1600 * days))) + 1;
        long addMonths2 = months * steps;
        long addDays = days * steps;
        if (months > 0) {
            maxAddMonths = getProlepticMonth(LocalDate.MAX) - getProlepticMonth(receiver);
        } else {
            maxAddMonths = getProlepticMonth(receiver) - getProlepticMonth(LocalDate.MIN);
        }
        if (((long) sign) * addMonths2 <= maxAddMonths) {
            addMonths = addMonths2;
            if ((receiver.plusMonths(addMonths2).toEpochDay() + addDays) * ((long) sign) >= ((long) sign) * end) {
            }
            return LongStream.rangeClosed(0L, steps).mapToObj(new LongFunction() { // from class: j$.time.DesugarLocalDate.3
                @Override // java.util.function.LongFunction
                public final Object apply(long j) {
                    return DesugarLocalDate.lambda$datesUntil$1(receiver, months, days, j);
                }
            });
        }
        addMonths = addMonths2;
        steps--;
        long addMonths3 = addMonths - months;
        long addDays2 = addDays - days;
        if (((long) sign) * addMonths3 > maxAddMonths || (receiver.plusMonths(addMonths3).toEpochDay() + addDays2) * ((long) sign) >= ((long) sign) * end) {
            steps--;
        }
        return LongStream.rangeClosed(0L, steps).mapToObj(new LongFunction() { // from class: j$.time.DesugarLocalDate.3
            @Override // java.util.function.LongFunction
            public final Object apply(long j) {
                return DesugarLocalDate.lambda$datesUntil$1(receiver, months, days, j);
            }
        });
    }

    static /* synthetic */ LocalDate lambda$datesUntil$0(long start, long days, long n) {
        return LocalDate.ofEpochDay((n * days) + start);
    }

    static /* synthetic */ LocalDate lambda$datesUntil$1(LocalDate receiver, long months, long days, long n) {
        return receiver.plusMonths(months * n).plusDays(days * n);
    }

    public static long toEpochSecond(LocalDate receiver, LocalTime time, ZoneOffset offset) {
        Objects.requireNonNull(time, "time");
        Objects.requireNonNull(offset, "offset");
        long secs = (receiver.toEpochDay() * 86400) + ((long) time.toSecondOfDay());
        return secs - ((long) offset.getTotalSeconds());
    }

    public static LocalDate ofInstant(Instant instant, ZoneId zone) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zone, "zone");
        ZoneRules rules = zone.getRules();
        ZoneOffset offset = rules.getOffset(instant);
        long localSecond = instant.getEpochSecond() + ((long) offset.getTotalSeconds());
        long localEpochDay = AnonymousClass0.m(localSecond, SECONDS_PER_DAY);
        return LocalDate.ofEpochDay(localEpochDay);
    }

    private static long getProlepticMonth(LocalDate receiver) {
        int year = receiver.getYear();
        int month = receiver.getMonthValue();
        return ((((long) year) * 12) + ((long) month)) - 1;
    }
}
