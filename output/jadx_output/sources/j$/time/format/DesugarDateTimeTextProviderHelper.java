package j$.time.format;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes19.dex */
public class DesugarDateTimeTextProviderHelper {
    public static void populateMonthStyleMap(Map<TextStyle, Map<Long, String>> map, DateFormatSymbols dateFormatSymbols, Locale loc) {
        int numMonth = dateFormatSymbols.getMonths().length;
        Map<Long, String> longStandAloneMap = new LinkedHashMap<>();
        Map<Long, String> narrowStandAloneMap = new LinkedHashMap<>();
        Map<Long, String> shortStandAloneMap = new LinkedHashMap<>();
        for (long i = 1; i <= numMonth; i++) {
            String longName = computeStandaloneMonthName(i, "LLLL", loc);
            longStandAloneMap.put(Long.valueOf(i), longName);
            narrowStandAloneMap.put(Long.valueOf(i), firstCodePoint(longName));
            String shortName = computeStandaloneMonthName(i, "LLL", loc);
            shortStandAloneMap.put(Long.valueOf(i), shortName);
        }
        if (numMonth > 0) {
            map.put(TextStyle.FULL_STANDALONE, longStandAloneMap);
            map.put(TextStyle.NARROW_STANDALONE, narrowStandAloneMap);
            map.put(TextStyle.SHORT_STANDALONE, shortStandAloneMap);
            map.put(TextStyle.FULL, longStandAloneMap);
            map.put(TextStyle.NARROW, narrowStandAloneMap);
            map.put(TextStyle.SHORT, shortStandAloneMap);
        }
    }

    private static String computeStandaloneMonthName(long id, String standalonePattern, Locale loc) {
        TimeZone legacyUtc = TimeZone.getTimeZone("UTC");
        SimpleDateFormat writer = new SimpleDateFormat(standalonePattern, loc);
        writer.setTimeZone(legacyUtc);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(legacyUtc);
        calendar.set(0, (int) id, 0, 0, 0, 0);
        Date legacy = calendar.getTime();
        return writer.format(legacy);
    }

    private static String firstCodePoint(String string) {
        return string.substring(0, Character.charCount(string.codePointAt(0)));
    }

    private static String lastCodePoint(String rawText) {
        int n = rawText.length();
        int codePoint = rawText.codePointBefore(n);
        return new StringBuilder().appendCodePoint(codePoint).toString();
    }

    public static void populateDayOfWeekStyleMap(Map<TextStyle, Map<Long, String>> map, DateFormatSymbols dateFormatSymbols, Locale loc) {
        int numDaysOfWeek = dateFormatSymbols.getWeekdays().length;
        Map<Long, String> longStandAloneMap = new LinkedHashMap<>();
        Map<Long, String> narrowStandAloneMap = new LinkedHashMap<>();
        Map<Long, String> shortStandAloneMap = new LinkedHashMap<>();
        boolean useLastCodePointAsNarrowName = loc == Locale.SIMPLIFIED_CHINESE || loc == Locale.TRADITIONAL_CHINESE;
        for (long i = 1; i <= numDaysOfWeek; i++) {
            String longName = computeStandaloneDayOfWeekName(i, "cccc", loc);
            longStandAloneMap.put(Long.valueOf(i), longName);
            narrowStandAloneMap.put(Long.valueOf(i), useLastCodePointAsNarrowName ? lastCodePoint(longName) : firstCodePoint(longName));
            String shortName = computeStandaloneDayOfWeekName(i, "ccc", loc);
            shortStandAloneMap.put(Long.valueOf(i), shortName);
        }
        if (numDaysOfWeek > 0) {
            map.put(TextStyle.FULL_STANDALONE, longStandAloneMap);
            map.put(TextStyle.NARROW_STANDALONE, narrowStandAloneMap);
            map.put(TextStyle.SHORT_STANDALONE, shortStandAloneMap);
            map.put(TextStyle.FULL, longStandAloneMap);
            map.put(TextStyle.NARROW, narrowStandAloneMap);
            map.put(TextStyle.SHORT, shortStandAloneMap);
        }
    }

    private static String computeStandaloneDayOfWeekName(long id, String standalonePattern, Locale loc) {
        TimeZone legacyUtc = TimeZone.getTimeZone("UTC");
        SimpleDateFormat writer = new SimpleDateFormat(standalonePattern, loc);
        writer.setTimeZone(legacyUtc);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(legacyUtc);
        calendar.set(2016, 1, (int) id, 0, 0, 0);
        Date legacy = calendar.getTime();
        return writer.format(legacy);
    }

    private DesugarDateTimeTextProviderHelper() {
    }
}
