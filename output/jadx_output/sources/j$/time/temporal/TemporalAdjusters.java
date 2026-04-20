package j$.time.temporal;

import j$.time.DayOfWeek;
import j$.time.LocalDate;
import java.util.Objects;
import java.util.function.UnaryOperator;

/* JADX INFO: loaded from: classes19.dex */
public final class TemporalAdjusters {
    private TemporalAdjusters() {
    }

    public static TemporalAdjuster ofDateAdjuster(final UnaryOperator<LocalDate> unaryOperator) {
        Objects.requireNonNull(unaryOperator, "dateBasedAdjuster");
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.5
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$ofDateAdjuster$0(unaryOperator, temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$ofDateAdjuster$0(UnaryOperator dateBasedAdjuster, Temporal temporal) {
        LocalDate input = LocalDate.from((TemporalAccessor) temporal);
        LocalDate output = (LocalDate) dateBasedAdjuster.apply(input);
        return temporal.with(output);
    }

    public static TemporalAdjuster firstDayOfMonth() {
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.3
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$firstDayOfMonth$1(temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$firstDayOfMonth$1(Temporal temporal) {
        return temporal.with(ChronoField.DAY_OF_MONTH, 1L);
    }

    static /* synthetic */ Temporal lambda$lastDayOfMonth$2(Temporal temporal) {
        return temporal.with(ChronoField.DAY_OF_MONTH, temporal.range(ChronoField.DAY_OF_MONTH).getMaximum());
    }

    public static TemporalAdjuster lastDayOfMonth() {
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.9
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$lastDayOfMonth$2(temporal);
            }
        };
    }

    public static TemporalAdjuster firstDayOfNextMonth() {
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.12
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$firstDayOfNextMonth$3(temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$firstDayOfNextMonth$3(Temporal temporal) {
        return temporal.with(ChronoField.DAY_OF_MONTH, 1L).plus(1L, ChronoUnit.MONTHS);
    }

    public static TemporalAdjuster firstDayOfYear() {
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.7
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$firstDayOfYear$4(temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$firstDayOfYear$4(Temporal temporal) {
        return temporal.with(ChronoField.DAY_OF_YEAR, 1L);
    }

    static /* synthetic */ Temporal lambda$lastDayOfYear$5(Temporal temporal) {
        return temporal.with(ChronoField.DAY_OF_YEAR, temporal.range(ChronoField.DAY_OF_YEAR).getMaximum());
    }

    public static TemporalAdjuster lastDayOfYear() {
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.10
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$lastDayOfYear$5(temporal);
            }
        };
    }

    public static TemporalAdjuster firstDayOfNextYear() {
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.4
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$firstDayOfNextYear$6(temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$firstDayOfNextYear$6(Temporal temporal) {
        return temporal.with(ChronoField.DAY_OF_YEAR, 1L).plus(1L, ChronoUnit.YEARS);
    }

    public static TemporalAdjuster firstInMonth(DayOfWeek dayOfWeek) {
        return dayOfWeekInMonth(1, dayOfWeek);
    }

    public static TemporalAdjuster lastInMonth(DayOfWeek dayOfWeek) {
        return dayOfWeekInMonth(-1, dayOfWeek);
    }

    public static TemporalAdjuster dayOfWeekInMonth(final int ordinal, DayOfWeek dayOfWeek) {
        Objects.requireNonNull(dayOfWeek, "dayOfWeek");
        final int dowValue = dayOfWeek.getValue();
        if (ordinal >= 0) {
            return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.0
                @Override // j$.time.temporal.TemporalAdjuster
                public final Temporal adjustInto(Temporal temporal) {
                    return TemporalAdjusters.lambda$dayOfWeekInMonth$7(dowValue, ordinal, temporal);
                }
            };
        }
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.1
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$dayOfWeekInMonth$8(dowValue, ordinal, temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$dayOfWeekInMonth$7(int dowValue, int ordinal, Temporal temporal) {
        Temporal temp = temporal.with(ChronoField.DAY_OF_MONTH, 1L);
        int curDow = temp.get(ChronoField.DAY_OF_WEEK);
        int dowDiff = ((dowValue - curDow) + 7) % 7;
        return temp.plus((int) (((long) dowDiff) + ((((long) ordinal) - 1) * 7)), ChronoUnit.DAYS);
    }

    static /* synthetic */ Temporal lambda$dayOfWeekInMonth$8(int dowValue, int ordinal, Temporal temporal) {
        Temporal temp = temporal.with(ChronoField.DAY_OF_MONTH, temporal.range(ChronoField.DAY_OF_MONTH).getMaximum());
        int curDow = temp.get(ChronoField.DAY_OF_WEEK);
        int daysDiff = dowValue - curDow;
        return temp.plus((int) (((long) (daysDiff == 0 ? 0 : daysDiff > 0 ? daysDiff - 7 : daysDiff)) - ((((long) (-ordinal)) - 1) * 7)), ChronoUnit.DAYS);
    }

    public static TemporalAdjuster next(DayOfWeek dayOfWeek) {
        final int dowValue = dayOfWeek.getValue();
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.11
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$next$9(dowValue, temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$next$9(int dowValue, Temporal temporal) {
        int calDow = temporal.get(ChronoField.DAY_OF_WEEK);
        int daysDiff = calDow - dowValue;
        return temporal.plus(daysDiff >= 0 ? 7 - daysDiff : -daysDiff, ChronoUnit.DAYS);
    }

    public static TemporalAdjuster nextOrSame(DayOfWeek dayOfWeek) {
        final int dowValue = dayOfWeek.getValue();
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.6
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$nextOrSame$10(dowValue, temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$nextOrSame$10(int dowValue, Temporal temporal) {
        int calDow = temporal.get(ChronoField.DAY_OF_WEEK);
        if (calDow == dowValue) {
            return temporal;
        }
        int daysDiff = calDow - dowValue;
        return temporal.plus(daysDiff >= 0 ? 7 - daysDiff : -daysDiff, ChronoUnit.DAYS);
    }

    public static TemporalAdjuster previous(DayOfWeek dayOfWeek) {
        final int dowValue = dayOfWeek.getValue();
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.2
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$previous$11(dowValue, temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$previous$11(int dowValue, Temporal temporal) {
        int calDow = temporal.get(ChronoField.DAY_OF_WEEK);
        int daysDiff = dowValue - calDow;
        return temporal.minus(daysDiff >= 0 ? 7 - daysDiff : -daysDiff, ChronoUnit.DAYS);
    }

    public static TemporalAdjuster previousOrSame(DayOfWeek dayOfWeek) {
        final int dowValue = dayOfWeek.getValue();
        return new TemporalAdjuster() { // from class: j$.time.temporal.TemporalAdjusters.8
            @Override // j$.time.temporal.TemporalAdjuster
            public final Temporal adjustInto(Temporal temporal) {
                return TemporalAdjusters.lambda$previousOrSame$12(dowValue, temporal);
            }
        };
    }

    static /* synthetic */ Temporal lambda$previousOrSame$12(int dowValue, Temporal temporal) {
        int calDow = temporal.get(ChronoField.DAY_OF_WEEK);
        if (calDow == dowValue) {
            return temporal;
        }
        int daysDiff = dowValue - calDow;
        return temporal.minus(daysDiff >= 0 ? 7 - daysDiff : -daysDiff, ChronoUnit.DAYS);
    }
}
