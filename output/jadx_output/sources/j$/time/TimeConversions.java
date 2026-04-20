package j$.time;

/* JADX INFO: loaded from: classes19.dex */
public class TimeConversions {
    private TimeConversions() {
    }

    public static java.time.ZoneOffset convert(ZoneOffset zoneOffset) {
        if (zoneOffset == null) {
            return null;
        }
        return java.time.ZoneOffset.of(zoneOffset.getId());
    }

    public static ZoneOffset convert(java.time.ZoneOffset zoneOffset) {
        if (zoneOffset == null) {
            return null;
        }
        return ZoneOffset.of(zoneOffset.getId());
    }

    public static java.time.LocalDateTime convert(LocalDateTime localDateTime) {
        if (localDateTime == null) {
            return null;
        }
        return java.time.LocalDateTime.of(localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth(), localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), localDateTime.getNano());
    }

    public static LocalDateTime convert(java.time.LocalDateTime localDateTime) {
        if (localDateTime == null) {
            return null;
        }
        return LocalDateTime.of(localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth(), localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), localDateTime.getNano());
    }

    public static java.time.Period convert(Period period) {
        if (period == null) {
            return null;
        }
        return java.time.Period.of(period.getYears(), period.getMonths(), period.getDays());
    }

    public static Period convert(java.time.Period period) {
        if (period == null) {
            return null;
        }
        return Period.of(period.getYears(), period.getMonths(), period.getDays());
    }

    public static java.time.LocalTime convert(LocalTime localTime) {
        if (localTime == null) {
            return null;
        }
        return java.time.LocalTime.ofNanoOfDay(localTime.toNanoOfDay());
    }

    public static LocalTime convert(java.time.LocalTime localTime) {
        if (localTime == null) {
            return null;
        }
        return LocalTime.ofNanoOfDay(localTime.toNanoOfDay());
    }

    public static java.time.ZonedDateTime convert(ZonedDateTime zonedDateTime) {
        if (zonedDateTime == null) {
            return null;
        }
        return java.time.ZonedDateTime.of(zonedDateTime.getYear(), zonedDateTime.getMonthValue(), zonedDateTime.getDayOfMonth(), zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond(), zonedDateTime.getNano(), convert(zonedDateTime.getZone()));
    }

    public static ZonedDateTime convert(java.time.ZonedDateTime zonedDateTime) {
        if (zonedDateTime == null) {
            return null;
        }
        return ZonedDateTime.of(zonedDateTime.getYear(), zonedDateTime.getMonthValue(), zonedDateTime.getDayOfMonth(), zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond(), zonedDateTime.getNano(), convert(zonedDateTime.getZone()));
    }

    public static java.time.ZoneId convert(ZoneId zoneId) {
        if (zoneId == null) {
            return null;
        }
        return java.time.ZoneId.of(zoneId.getId());
    }

    public static ZoneId convert(java.time.ZoneId zoneId) {
        if (zoneId == null) {
            return null;
        }
        return ZoneId.of(zoneId.getId());
    }

    public static java.time.MonthDay convert(MonthDay monthDay) {
        if (monthDay == null) {
            return null;
        }
        return java.time.MonthDay.of(monthDay.getMonthValue(), monthDay.getDayOfMonth());
    }

    public static MonthDay convert(java.time.MonthDay monthDay) {
        if (monthDay == null) {
            return null;
        }
        return MonthDay.of(monthDay.getMonthValue(), monthDay.getDayOfMonth());
    }

    public static java.time.Instant convert(Instant instant) {
        if (instant == null) {
            return null;
        }
        return java.time.Instant.ofEpochSecond(instant.getEpochSecond(), instant.getNano());
    }

    public static Instant convert(java.time.Instant instant) {
        if (instant == null) {
            return null;
        }
        return Instant.ofEpochSecond(instant.getEpochSecond(), instant.getNano());
    }

    public static java.time.LocalDate convert(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        return java.time.LocalDate.of(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
    }

    public static LocalDate convert(java.time.LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        return LocalDate.of(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
    }

    public static java.time.Duration convert(Duration duration) {
        if (duration == null) {
            return null;
        }
        return java.time.Duration.ofSeconds(duration.getSeconds(), duration.getNano());
    }

    public static Duration convert(java.time.Duration duration) {
        if (duration == null) {
            return null;
        }
        return Duration.ofSeconds(duration.getSeconds(), duration.getNano());
    }
}
