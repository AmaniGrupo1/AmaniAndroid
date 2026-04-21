package j$.time.format;

import j$.time.chrono.Chronology;
import j$.time.chrono.IsoChronology;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalField;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes19.dex */
class DateTimeTextProvider {
    private static final ConcurrentMap<Map.Entry<TemporalField, Locale>, Object> CACHE = new ConcurrentHashMap(16, 0.75f, 2);
    private static final Comparator<Map.Entry<String, Long>> COMPARATOR = new Comparator<Map.Entry<String, Long>>() { // from class: j$.time.format.DateTimeTextProvider.1
        @Override // java.util.Comparator
        public int compare(Map.Entry<String, Long> obj1, Map.Entry<String, Long> obj2) {
            return obj2.getKey().length() - obj1.getKey().length();
        }
    };
    private static final DateTimeTextProvider INSTANCE = new DateTimeTextProvider();

    DateTimeTextProvider() {
    }

    static DateTimeTextProvider getInstance() {
        return INSTANCE;
    }

    public String getText(TemporalField field, long value, TextStyle style, Locale locale) {
        Object store = findStore(field, locale);
        if (store instanceof LocaleStore) {
            return ((LocaleStore) store).getText(value, style);
        }
        return null;
    }

    public String getText(Chronology chrono, TemporalField field, long value, TextStyle style, Locale locale) {
        if (chrono == IsoChronology.INSTANCE || !(field instanceof ChronoField)) {
            return getText(field, value, style, locale);
        }
        return null;
    }

    public Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField field, TextStyle style, Locale locale) {
        Object store = findStore(field, locale);
        if (store instanceof LocaleStore) {
            return ((LocaleStore) store).getTextIterator(style);
        }
        return null;
    }

    public Iterator<Map.Entry<String, Long>> getTextIterator(Chronology chrono, TemporalField field, TextStyle style, Locale locale) {
        if (chrono == IsoChronology.INSTANCE || !(field instanceof ChronoField)) {
            return getTextIterator(field, style, locale);
        }
        return null;
    }

    private Object findStore(TemporalField field, Locale locale) {
        Map.Entry<TemporalField, Locale> entryCreateEntry = createEntry(field, locale);
        Object store = CACHE.get(entryCreateEntry);
        if (store == null) {
            CACHE.putIfAbsent(entryCreateEntry, createStore(field, locale));
            return CACHE.get(entryCreateEntry);
        }
        return store;
    }

    private static int toWeekDay(int calWeekDay) {
        if (calWeekDay == 1) {
            return 7;
        }
        return calWeekDay - 1;
    }

    private Object createStore(TemporalField field, Locale locale) {
        Map<java.time.format.TextStyle, Map<Long, String>> styleMap = new HashMap<>();
        if (field == ChronoField.ERA) {
            DateFormatSymbols symbols = DateFormatSymbols.getInstance(locale);
            Map<Long, String> fullMap = new HashMap<>();
            Map<Long, String> narrowMap = new HashMap<>();
            String[] eraSymbols = symbols.getEras();
            for (int i = 0; i < eraSymbols.length; i++) {
                if (!eraSymbols[i].isEmpty()) {
                    fullMap.put(Long.valueOf(i), eraSymbols[i]);
                    narrowMap.put(Long.valueOf(i), firstCodePoint(eraSymbols[i]));
                }
            }
            if (!fullMap.isEmpty()) {
                styleMap.put(TextStyle.FULL, fullMap);
                styleMap.put(TextStyle.SHORT, fullMap);
                styleMap.put(TextStyle.NARROW, narrowMap);
            }
            return new LocaleStore(styleMap);
        }
        if (field == ChronoField.MONTH_OF_YEAR) {
            DateFormatSymbols symbols2 = DateFormatSymbols.getInstance(locale);
            DesugarDateTimeTextProviderHelper.populateMonthStyleMap(styleMap, symbols2, locale);
            return new LocaleStore(styleMap);
        }
        if (field == ChronoField.DAY_OF_WEEK) {
            DateFormatSymbols symbols3 = DateFormatSymbols.getInstance(locale);
            DesugarDateTimeTextProviderHelper.populateDayOfWeekStyleMap(styleMap, symbols3, locale);
            return new LocaleStore(styleMap);
        }
        if (field == ChronoField.AMPM_OF_DAY) {
            DateFormatSymbols symbols4 = DateFormatSymbols.getInstance(locale);
            Map<Long, String> fullMap2 = new HashMap<>();
            Map<Long, String> narrowMap2 = new HashMap<>();
            String[] amPmSymbols = symbols4.getAmPmStrings();
            for (int i2 = 0; i2 < amPmSymbols.length; i2++) {
                if (!amPmSymbols[i2].isEmpty()) {
                    fullMap2.put(Long.valueOf(i2), amPmSymbols[i2]);
                    narrowMap2.put(Long.valueOf(i2), firstCodePoint(amPmSymbols[i2]));
                }
            }
            if (!fullMap2.isEmpty()) {
                styleMap.put(TextStyle.FULL, fullMap2);
                styleMap.put(TextStyle.SHORT, fullMap2);
                styleMap.put(TextStyle.NARROW, narrowMap2);
            }
            return new LocaleStore(styleMap);
        }
        return "";
    }

    private static String firstCodePoint(String string) {
        return string.substring(0, Character.charCount(string.codePointAt(0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <A, B> Map.Entry<A, B> createEntry(A text, B field) {
        return new AbstractMap.SimpleImmutableEntry(text, field);
    }

    static final class LocaleStore {
        private final Map<TextStyle, List<Map.Entry<String, Long>>> parsable;
        private final Map<TextStyle, Map<Long, String>> valueTextMap;

        /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        LocaleStore(Map<TextStyle, Map<Long, String>> map) {
            this.valueTextMap = map;
            HashMap map2 = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<TextStyle, Map<Long, String>> entry : map.entrySet()) {
                Map<String, Map.Entry<String, Long>> reverse = new HashMap<>();
                for (Map.Entry<Long, String> entry2 : entry.getValue().entrySet()) {
                    if (reverse.put(entry2.getValue(), DateTimeTextProvider.createEntry(entry2.getValue(), entry2.getKey())) != null) {
                    }
                    while (r5.hasNext()) {
                    }
                }
                ArrayList arrayList2 = new ArrayList(reverse.values());
                Collections.sort(arrayList2, DateTimeTextProvider.COMPARATOR);
                map2.put(entry.getKey(), arrayList2);
                arrayList.addAll(arrayList2);
                map2.put(null, arrayList);
            }
            Collections.sort(arrayList, DateTimeTextProvider.COMPARATOR);
            this.parsable = map2;
        }

        String getText(long value, TextStyle style) {
            Map<Long, String> map = this.valueTextMap.get(style);
            if (map != null) {
                return map.get(Long.valueOf(value));
            }
            return null;
        }

        Iterator<Map.Entry<String, Long>> getTextIterator(TextStyle style) {
            List<Map.Entry<String, Long>> list = this.parsable.get(style);
            if (list != null) {
                return list.iterator();
            }
            return null;
        }
    }
}
