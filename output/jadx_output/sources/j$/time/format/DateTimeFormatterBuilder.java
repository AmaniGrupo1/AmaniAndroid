package j$.time.format;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.api.Endpoint;
import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.Chronology;
import j$.time.chrono.Era;
import j$.time.chrono.IsoChronology;
import j$.time.format.DateTimeTextProvider;
import j$.time.temporal.ChronoField;
import j$.time.temporal.IsoFields;
import j$.time.temporal.JulianFields;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQueries;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.ValueRange;
import j$.time.temporal.WeekFields;
import j$.time.zone.ZoneRulesProvider;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Consumer;
import kotlin.jvm.internal.CharCompanionObject;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes19.dex */
public final class DateTimeFormatterBuilder {
    static final Comparator<String> LENGTH_SORT;
    private DateTimeFormatterBuilder active;
    private final boolean optional;
    private char padNextChar;
    private int padNextWidth;
    private final DateTimeFormatterBuilder parent;
    private final List<DateTimePrinterParser> printerParsers;
    private int valueParserIndex;
    private static final TemporalQuery<ZoneId> QUERY_REGION_ONLY = new TemporalQuery() { // from class: j$.time.format.DateTimeFormatterBuilder.0
        @Override // j$.time.temporal.TemporalQuery
        public final Object queryFrom(TemporalAccessor temporalAccessor) {
            return DateTimeFormatterBuilder.lambda$static$0(temporalAccessor);
        }
    };
    private static final Map<Character, TemporalField> FIELD_MAP = new HashMap();

    interface DateTimePrinterParser {
        boolean format(DateTimePrintContext dateTimePrintContext, StringBuilder sb);

        int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i);
    }

    static {
        FIELD_MAP.put('G', ChronoField.ERA);
        FIELD_MAP.put('y', ChronoField.YEAR_OF_ERA);
        FIELD_MAP.put(Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC), ChronoField.YEAR);
        FIELD_MAP.put('Q', IsoFields.QUARTER_OF_YEAR);
        FIELD_MAP.put('q', IsoFields.QUARTER_OF_YEAR);
        FIELD_MAP.put('M', ChronoField.MONTH_OF_YEAR);
        FIELD_MAP.put('L', ChronoField.MONTH_OF_YEAR);
        FIELD_MAP.put('D', ChronoField.DAY_OF_YEAR);
        FIELD_MAP.put('d', ChronoField.DAY_OF_MONTH);
        FIELD_MAP.put('F', ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        FIELD_MAP.put('E', ChronoField.DAY_OF_WEEK);
        FIELD_MAP.put('c', ChronoField.DAY_OF_WEEK);
        FIELD_MAP.put('e', ChronoField.DAY_OF_WEEK);
        FIELD_MAP.put('a', ChronoField.AMPM_OF_DAY);
        FIELD_MAP.put('H', ChronoField.HOUR_OF_DAY);
        FIELD_MAP.put('k', ChronoField.CLOCK_HOUR_OF_DAY);
        FIELD_MAP.put('K', ChronoField.HOUR_OF_AMPM);
        FIELD_MAP.put('h', ChronoField.CLOCK_HOUR_OF_AMPM);
        FIELD_MAP.put('m', ChronoField.MINUTE_OF_HOUR);
        FIELD_MAP.put('s', ChronoField.SECOND_OF_MINUTE);
        FIELD_MAP.put('S', ChronoField.NANO_OF_SECOND);
        FIELD_MAP.put('A', ChronoField.MILLI_OF_DAY);
        FIELD_MAP.put('n', ChronoField.NANO_OF_SECOND);
        FIELD_MAP.put('N', ChronoField.NANO_OF_DAY);
        FIELD_MAP.put('g', JulianFields.MODIFIED_JULIAN_DAY);
        LENGTH_SORT = new Comparator<String>() { // from class: j$.time.format.DateTimeFormatterBuilder.2
            @Override // java.util.Comparator
            public int compare(String str1, String str2) {
                return str1.length() == str2.length() ? str1.compareTo(str2) : str1.length() - str2.length();
            }
        };
    }

    static /* synthetic */ ZoneId lambda$static$0(TemporalAccessor temporal) {
        ZoneId zone = (ZoneId) temporal.query(TemporalQueries.zoneId());
        if (zone == null || (zone instanceof ZoneOffset)) {
            return null;
        }
        return zone;
    }

    public static String getLocalizedDateTimePattern(FormatStyle dateStyle, FormatStyle timeStyle, Chronology chrono, Locale locale) {
        DateFormat format;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(chrono, "chrono");
        if (dateStyle == null && timeStyle == null) {
            throw new IllegalArgumentException("Either dateStyle or timeStyle must be non-null");
        }
        if (timeStyle == null) {
            format = DateFormat.getDateInstance(dateStyle.ordinal(), locale);
        } else if (dateStyle == null) {
            format = DateFormat.getTimeInstance(timeStyle.ordinal(), locale);
        } else {
            format = DateFormat.getDateTimeInstance(dateStyle.ordinal(), timeStyle.ordinal(), locale);
        }
        if (format instanceof SimpleDateFormat) {
            String pattern = ((SimpleDateFormat) format).toPattern();
            return DateTimeFormatterBuilderHelper.transformAndroidJavaTextDateTimePattern(pattern);
        }
        throw new UnsupportedOperationException("Can't determine pattern from " + format);
    }

    private static int convertStyle(FormatStyle style) {
        if (style == null) {
            return -1;
        }
        return style.ordinal();
    }

    public DateTimeFormatterBuilder() {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = null;
        this.optional = false;
    }

    private DateTimeFormatterBuilder(DateTimeFormatterBuilder parent, boolean optional) {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = parent;
        this.optional = optional;
    }

    public DateTimeFormatterBuilder parseCaseSensitive() {
        appendInternal(SettingsParser.SENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseCaseInsensitive() {
        appendInternal(SettingsParser.INSENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseStrict() {
        appendInternal(SettingsParser.STRICT);
        return this;
    }

    public DateTimeFormatterBuilder parseLenient() {
        appendInternal(SettingsParser.LENIENT);
        return this;
    }

    public DateTimeFormatterBuilder parseDefaulting(TemporalField field, long value) {
        Objects.requireNonNull(field, "field");
        appendInternal(new DefaultValueParser(field, value));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField field) {
        Objects.requireNonNull(field, "field");
        appendValue(new NumberPrinterParser(field, 1, 19, SignStyle.NORMAL));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField field, int width) {
        Objects.requireNonNull(field, "field");
        if (width < 1 || width > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + width);
        }
        NumberPrinterParser pp = new NumberPrinterParser(field, width, width, SignStyle.NOT_NEGATIVE);
        appendValue(pp);
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField field, int minWidth, int maxWidth, SignStyle signStyle) {
        if (minWidth == maxWidth && signStyle == SignStyle.NOT_NEGATIVE) {
            return appendValue(field, maxWidth);
        }
        Objects.requireNonNull(field, "field");
        Objects.requireNonNull(signStyle, "signStyle");
        if (minWidth < 1 || minWidth > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + minWidth);
        }
        if (maxWidth < 1 || maxWidth > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + maxWidth);
        }
        if (maxWidth < minWidth) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + maxWidth + " < " + minWidth);
        }
        NumberPrinterParser pp = new NumberPrinterParser(field, minWidth, maxWidth, signStyle);
        appendValue(pp);
        return this;
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField field, int width, int maxWidth, int baseValue) {
        Objects.requireNonNull(field, "field");
        ReducedPrinterParser pp = new ReducedPrinterParser(field, width, maxWidth, baseValue, null);
        appendValue(pp);
        return this;
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField field, int width, int maxWidth, ChronoLocalDate baseDate) {
        Objects.requireNonNull(field, "field");
        Objects.requireNonNull(baseDate, "baseDate");
        ReducedPrinterParser pp = new ReducedPrinterParser(field, width, maxWidth, 0, baseDate);
        appendValue(pp);
        return this;
    }

    private DateTimeFormatterBuilder appendValue(NumberPrinterParser pp) {
        NumberPrinterParser basePP;
        int i = this.active.valueParserIndex;
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.active;
        if (i >= 0) {
            int activeValueParser = dateTimeFormatterBuilder.valueParserIndex;
            NumberPrinterParser basePP2 = (NumberPrinterParser) this.active.printerParsers.get(activeValueParser);
            if (pp.minWidth == pp.maxWidth && pp.signStyle == SignStyle.NOT_NEGATIVE) {
                basePP = basePP2.withSubsequentWidth(pp.maxWidth);
                appendInternal(pp.withFixedWidth());
                this.active.valueParserIndex = activeValueParser;
            } else {
                basePP = basePP2.withFixedWidth();
                this.active.valueParserIndex = appendInternal(pp);
            }
            this.active.printerParsers.set(activeValueParser, basePP);
        } else {
            dateTimeFormatterBuilder.valueParserIndex = appendInternal(pp);
        }
        return this;
    }

    public DateTimeFormatterBuilder appendFraction(TemporalField field, int minWidth, int maxWidth, boolean decimalPoint) {
        if (minWidth == maxWidth && !decimalPoint) {
            appendValue(new FractionPrinterParser(field, minWidth, maxWidth, decimalPoint));
        } else {
            appendInternal(new FractionPrinterParser(field, minWidth, maxWidth, decimalPoint));
        }
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField field) {
        return appendText(field, TextStyle.FULL);
    }

    public DateTimeFormatterBuilder appendText(TemporalField field, TextStyle textStyle) {
        Objects.requireNonNull(field, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        appendInternal(new TextPrinterParser(field, textStyle, DateTimeTextProvider.getInstance()));
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField field, Map<Long, String> textLookup) {
        Objects.requireNonNull(field, "field");
        Objects.requireNonNull(textLookup, "textLookup");
        Map<Long, String> copy = new LinkedHashMap<>(textLookup);
        Map<java.time.format.TextStyle, Map<Long, String>> map = Collections.singletonMap(TextStyle.FULL, copy);
        final DateTimeTextProvider.LocaleStore store = new DateTimeTextProvider.LocaleStore(map);
        DateTimeTextProvider provider = new DateTimeTextProvider() { // from class: j$.time.format.DateTimeFormatterBuilder.1
            @Override // j$.time.format.DateTimeTextProvider
            public String getText(Chronology chrono, TemporalField field2, long value, TextStyle style, Locale locale) {
                return store.getText(value, style);
            }

            @Override // j$.time.format.DateTimeTextProvider
            public String getText(TemporalField field2, long value, TextStyle style, Locale locale) {
                return store.getText(value, style);
            }

            @Override // j$.time.format.DateTimeTextProvider
            public Iterator<Map.Entry<String, Long>> getTextIterator(Chronology chrono, TemporalField field2, TextStyle style, Locale locale) {
                return store.getTextIterator(style);
            }

            @Override // j$.time.format.DateTimeTextProvider
            public Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField field2, TextStyle style, Locale locale) {
                return store.getTextIterator(style);
            }
        };
        appendInternal(new TextPrinterParser(field, TextStyle.FULL, provider));
        return this;
    }

    public DateTimeFormatterBuilder appendInstant() {
        appendInternal(new InstantPrinterParser(-2));
        return this;
    }

    public DateTimeFormatterBuilder appendInstant(int fractionalDigits) {
        if (fractionalDigits < -1 || fractionalDigits > 9) {
            throw new IllegalArgumentException("The fractional digits must be from -1 to 9 inclusive but was " + fractionalDigits);
        }
        appendInternal(new InstantPrinterParser(fractionalDigits));
        return this;
    }

    public DateTimeFormatterBuilder appendOffsetId() {
        appendInternal(OffsetIdPrinterParser.INSTANCE_ID_Z);
        return this;
    }

    public DateTimeFormatterBuilder appendOffset(String pattern, String noOffsetText) {
        appendInternal(new OffsetIdPrinterParser(pattern, noOffsetText));
        return this;
    }

    public DateTimeFormatterBuilder appendLocalizedOffset(TextStyle style) {
        Objects.requireNonNull(style, "style");
        if (style != TextStyle.FULL && style != TextStyle.SHORT) {
            throw new IllegalArgumentException("Style must be either full or short");
        }
        appendInternal(new LocalizedOffsetIdPrinterParser(style));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneId() {
        appendInternal(new ZoneIdPrinterParser(TemporalQueries.zoneId(), "ZoneId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneRegionId() {
        appendInternal(new ZoneIdPrinterParser(QUERY_REGION_ONLY, "ZoneRegionId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneOrOffsetId() {
        appendInternal(new ZoneIdPrinterParser(TemporalQueries.zone(), "ZoneOrOffsetId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneText(TextStyle textStyle) {
        appendInternal(new ZoneTextPrinterParser(textStyle, null, false));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneText(TextStyle textStyle, Set<ZoneId> set) {
        Objects.requireNonNull(set, "preferredZones");
        appendInternal(new ZoneTextPrinterParser(textStyle, set, false));
        return this;
    }

    public DateTimeFormatterBuilder appendGenericZoneText(TextStyle textStyle) {
        appendInternal(new ZoneTextPrinterParser(textStyle, null, true));
        return this;
    }

    public DateTimeFormatterBuilder appendGenericZoneText(TextStyle textStyle, Set<ZoneId> set) {
        appendInternal(new ZoneTextPrinterParser(textStyle, set, true));
        return this;
    }

    public DateTimeFormatterBuilder appendChronologyId() {
        appendInternal(new ChronoPrinterParser(null));
        return this;
    }

    public DateTimeFormatterBuilder appendChronologyText(TextStyle textStyle) {
        Objects.requireNonNull(textStyle, "textStyle");
        appendInternal(new ChronoPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder appendLocalized(FormatStyle dateStyle, FormatStyle timeStyle) {
        if (dateStyle == null && timeStyle == null) {
            throw new IllegalArgumentException("Either the date or time style must be non-null");
        }
        appendInternal(new LocalizedPrinterParser(dateStyle, timeStyle));
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(char literal) {
        appendInternal(new CharLiteralPrinterParser(literal));
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(String literal) {
        Objects.requireNonNull(literal, "literal");
        if (!literal.isEmpty()) {
            if (literal.length() == 1) {
                appendInternal(new CharLiteralPrinterParser(literal.charAt(0)));
            } else {
                appendInternal(new StringLiteralPrinterParser(literal));
            }
        }
        return this;
    }

    public DateTimeFormatterBuilder append(DateTimeFormatter formatter) {
        Objects.requireNonNull(formatter, "formatter");
        appendInternal(formatter.toPrinterParser(false));
        return this;
    }

    public DateTimeFormatterBuilder appendOptional(DateTimeFormatter formatter) {
        Objects.requireNonNull(formatter, "formatter");
        appendInternal(formatter.toPrinterParser(true));
        return this;
    }

    public DateTimeFormatterBuilder appendPattern(String pattern) {
        Objects.requireNonNull(pattern, "pattern");
        parsePattern(pattern);
        return this;
    }

    /* JADX WARN: Incorrect condition in loop: B:27:0x004d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parsePattern(String pattern) {
        int start = 0;
        while (start < pattern.length()) {
            char cur = pattern.charAt(start);
            if ((cur >= 'A' && cur <= 'Z') || (cur >= 'a' && cur <= 'z')) {
                int pos = start + 1;
                while (pos < pattern.length() && pattern.charAt(pos) == cur) {
                    pos++;
                }
                int count = pos - start;
                if (cur == 'p') {
                    int pad = 0;
                    if (pos < pattern.length() && (((cur = pattern.charAt(pos)) >= 'A' && cur <= 'Z') || (cur >= 'a' && cur <= 'z'))) {
                        pad = count;
                        int pos2 = pos + 1;
                        while (pos2 < start && pattern.charAt(pos2) == cur) {
                            pos2++;
                        }
                        count = pos2 - pos;
                        pos = pos2;
                    }
                    if (pad == 0) {
                        throw new IllegalArgumentException("Pad letter 'p' must be followed by valid pad pattern: " + pattern);
                    }
                    padNext(pad);
                }
                TemporalField field = FIELD_MAP.get(Character.valueOf(cur));
                if (field != null) {
                    parseField(cur, count, field);
                } else if (cur == 'z') {
                    if (count > 4) {
                        throw new IllegalArgumentException("Too many pattern letters: " + cur);
                    }
                    if (count == 4) {
                        appendZoneText(TextStyle.FULL);
                    } else {
                        appendZoneText(TextStyle.SHORT);
                    }
                } else if (cur == 'V') {
                    if (count != 2) {
                        throw new IllegalArgumentException("Pattern letter count must be 2: " + cur);
                    }
                    appendZoneId();
                } else if (cur != 'v') {
                    String zero = "+0000";
                    if (cur == 'Z') {
                        if (count < 4) {
                            appendOffset("+HHMM", "+0000");
                        } else if (count == 4) {
                            appendLocalizedOffset(TextStyle.FULL);
                        } else if (count == 5) {
                            appendOffset("+HH:MM:ss", "Z");
                        } else {
                            throw new IllegalArgumentException("Too many pattern letters: " + cur);
                        }
                    } else if (cur == 'O') {
                        if (count == 1) {
                            appendLocalizedOffset(TextStyle.SHORT);
                        } else if (count == 4) {
                            appendLocalizedOffset(TextStyle.FULL);
                        } else {
                            throw new IllegalArgumentException("Pattern letter count must be 1 or 4: " + cur);
                        }
                    } else {
                        if (cur == 'X') {
                            if (count <= 5) {
                                appendOffset(OffsetIdPrinterParser.PATTERNS[(count != 1 ? 1 : 0) + count], "Z");
                            } else {
                                throw new IllegalArgumentException("Too many pattern letters: " + cur);
                            }
                        } else if (cur == 'x') {
                            if (count > 5) {
                                throw new IllegalArgumentException("Too many pattern letters: " + cur);
                            }
                            if (count == 1) {
                                zero = "+00";
                            } else if (count % 2 != 0) {
                                zero = "+00:00";
                            }
                            appendOffset(OffsetIdPrinterParser.PATTERNS[(count != 1 ? 1 : 0) + count], zero);
                        } else if (cur == 'W') {
                            if (count > 1) {
                                throw new IllegalArgumentException("Too many pattern letters: " + cur);
                            }
                            appendValue(new WeekBasedFieldPrinterParser(cur, count, count, count));
                        } else if (cur == 'w') {
                            if (count > 2) {
                                throw new IllegalArgumentException("Too many pattern letters: " + cur);
                            }
                            appendValue(new WeekBasedFieldPrinterParser(cur, count, count, 2));
                        } else if (cur == 'Y') {
                            if (count == 2) {
                                appendValue(new WeekBasedFieldPrinterParser(cur, count, count, 2));
                            } else {
                                appendValue(new WeekBasedFieldPrinterParser(cur, count, count, 19));
                            }
                        } else {
                            throw new IllegalArgumentException("Unknown pattern letter: " + cur);
                        }
                    }
                } else if (count == 1) {
                    appendGenericZoneText(TextStyle.SHORT);
                } else if (count == 4) {
                    appendGenericZoneText(TextStyle.FULL);
                } else {
                    throw new IllegalArgumentException("Wrong number of  pattern letters: " + cur);
                }
                start = pos - 1;
            } else if (cur == '\'') {
                int pos3 = start + 1;
                while (pos3 < pattern.length()) {
                    if (pattern.charAt(pos3) == '\'') {
                        if (pos3 + 1 >= pattern.length() || pattern.charAt(pos3 + 1) != '\'') {
                            break;
                        } else {
                            pos3++;
                        }
                    }
                    pos3++;
                }
                if (pos3 >= pattern.length()) {
                    throw new IllegalArgumentException("Pattern ends with an incomplete string literal: " + pattern);
                }
                String str = pattern.substring(start + 1, pos3);
                if (!str.isEmpty()) {
                    appendLiteral(str.replace("''", "'"));
                } else {
                    appendLiteral('\'');
                }
                start = pos3;
            } else if (cur == '[') {
                optionalStart();
            } else if (cur == ']') {
                if (this.active.parent == null) {
                    throw new IllegalArgumentException("Pattern invalid as it contains ] without previous [");
                }
                optionalEnd();
            } else {
                if (cur == '{' || cur == '}' || cur == '#') {
                    throw new IllegalArgumentException("Pattern includes reserved character: '" + cur + "'");
                }
                appendLiteral(cur);
            }
            start++;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0121  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parseField(char r6, int r7, j$.time.temporal.TemporalField r8) {
        /*
            Method dump skipped, instruction units count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatterBuilder.parseField(char, int, j$.time.temporal.TemporalField):void");
    }

    public DateTimeFormatterBuilder padNext(int padWidth) {
        return padNext(padWidth, ' ');
    }

    public DateTimeFormatterBuilder padNext(int padWidth, char padChar) {
        if (padWidth < 1) {
            throw new IllegalArgumentException("The pad width must be at least one but was " + padWidth);
        }
        this.active.padNextWidth = padWidth;
        this.active.padNextChar = padChar;
        this.active.valueParserIndex = -1;
        return this;
    }

    public DateTimeFormatterBuilder optionalStart() {
        this.active.valueParserIndex = -1;
        this.active = new DateTimeFormatterBuilder(this.active, true);
        return this;
    }

    public DateTimeFormatterBuilder optionalEnd() {
        if (this.active.parent == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (this.active.printerParsers.size() > 0) {
            CompositePrinterParser cpp = new CompositePrinterParser(this.active.printerParsers, this.active.optional);
            this.active = this.active.parent;
            appendInternal(cpp);
        } else {
            this.active = this.active.parent;
        }
        return this;
    }

    private int appendInternal(DateTimePrinterParser pp) {
        Objects.requireNonNull(pp, "pp");
        if (this.active.padNextWidth > 0) {
            if (pp != null) {
                pp = new PadPrinterParserDecorator(pp, this.active.padNextWidth, this.active.padNextChar);
            }
            this.active.padNextWidth = 0;
            this.active.padNextChar = (char) 0;
        }
        this.active.printerParsers.add(pp);
        this.active.valueParserIndex = -1;
        return this.active.printerParsers.size() - 1;
    }

    public DateTimeFormatter toFormatter() {
        return toFormatter(Locale.getDefault());
    }

    public DateTimeFormatter toFormatter(Locale locale) {
        return toFormatter(locale, ResolverStyle.SMART, null);
    }

    DateTimeFormatter toFormatter(ResolverStyle resolverStyle, Chronology chrono) {
        return toFormatter(Locale.getDefault(), resolverStyle, chrono);
    }

    private DateTimeFormatter toFormatter(Locale locale, ResolverStyle resolverStyle, Chronology chrono) {
        Objects.requireNonNull(locale, "locale");
        while (this.active.parent != null) {
            optionalEnd();
        }
        CompositePrinterParser pp = new CompositePrinterParser(this.printerParsers, false);
        return new DateTimeFormatter(pp, locale, DecimalStyle.STANDARD, resolverStyle, null, chrono, null);
    }

    static final class CompositePrinterParser implements DateTimePrinterParser {
        private final boolean optional;
        private final DateTimePrinterParser[] printerParsers;

        CompositePrinterParser(List<DateTimePrinterParser> list, boolean optional) {
            this((DateTimePrinterParser[]) list.toArray(new DateTimePrinterParser[list.size()]), optional);
        }

        CompositePrinterParser(DateTimePrinterParser[] printerParsers, boolean optional) {
            this.printerParsers = printerParsers;
            this.optional = optional;
        }

        public CompositePrinterParser withOptional(boolean optional) {
            if (optional == this.optional) {
                return this;
            }
            return new CompositePrinterParser(this.printerParsers, optional);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            int length = buf.length();
            if (this.optional) {
                context.startOptional();
            }
            try {
                for (DateTimePrinterParser pp : this.printerParsers) {
                    if (!pp.format(context, buf)) {
                        buf.setLength(length);
                        return true;
                    }
                }
                if (this.optional) {
                    context.endOptional();
                }
                return true;
            } finally {
                if (this.optional) {
                    context.endOptional();
                }
            }
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            if (this.optional) {
                context.startOptional();
                int pos = position;
                for (DateTimePrinterParser pp : this.printerParsers) {
                    pos = pp.parse(context, text, pos);
                    if (pos < 0) {
                        context.endOptional(false);
                        return position;
                    }
                }
                context.endOptional(true);
                return pos;
            }
            for (DateTimePrinterParser pp2 : this.printerParsers) {
                position = pp2.parse(context, text, position);
                if (position < 0) {
                    break;
                }
            }
            return position;
        }

        public String toString() {
            StringBuilder buf = new StringBuilder();
            if (this.printerParsers != null) {
                buf.append(this.optional ? "[" : "(");
                for (DateTimePrinterParser pp : this.printerParsers) {
                    buf.append(pp);
                }
                buf.append(this.optional ? "]" : ")");
            }
            return buf.toString();
        }
    }

    static final class PadPrinterParserDecorator implements DateTimePrinterParser {
        private final char padChar;
        private final int padWidth;
        private final DateTimePrinterParser printerParser;

        PadPrinterParserDecorator(DateTimePrinterParser printerParser, int padWidth, char padChar) {
            this.printerParser = printerParser;
            this.padWidth = padWidth;
            this.padChar = padChar;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            int preLen = buf.length();
            if (!this.printerParser.format(context, buf)) {
                return false;
            }
            int len = buf.length() - preLen;
            if (len > this.padWidth) {
                throw new DateTimeException("Cannot print as output of " + len + " characters exceeds pad width of " + this.padWidth);
            }
            for (int i = 0; i < this.padWidth - len; i++) {
                buf.insert(preLen, this.padChar);
            }
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            boolean strict = context.isStrict();
            if (position > text.length()) {
                throw new IndexOutOfBoundsException();
            }
            if (position == text.length()) {
                return ~position;
            }
            int endPos = this.padWidth + position;
            if (endPos > text.length()) {
                if (strict) {
                    return ~position;
                }
                endPos = text.length();
            }
            int pos = position;
            while (pos < endPos && context.charEquals(text.charAt(pos), this.padChar)) {
                pos++;
            }
            int resultPos = this.printerParser.parse(context, text.subSequence(0, endPos), pos);
            if (resultPos != endPos && strict) {
                return ~(position + pos);
            }
            return resultPos;
        }

        public String toString() {
            String str;
            DateTimePrinterParser dateTimePrinterParser = this.printerParser;
            int i = this.padWidth;
            if (this.padChar == ' ') {
                str = ")";
            } else {
                str = ",'" + this.padChar + "')";
            }
            return "Pad(" + dateTimePrinterParser + "," + i + str;
        }
    }

    enum SettingsParser implements DateTimePrinterParser {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            return true;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            switch (this) {
                case SENSITIVE:
                    context.setCaseSensitive(true);
                    return position;
                case INSENSITIVE:
                    context.setCaseSensitive(false);
                    return position;
                case STRICT:
                    context.setStrict(true);
                    return position;
                case LENIENT:
                    context.setStrict(false);
                    return position;
                default:
                    return position;
            }
        }

        @Override // java.lang.Enum
        public String toString() {
            switch (this) {
                case SENSITIVE:
                    return "ParseCaseSensitive(true)";
                case INSENSITIVE:
                    return "ParseCaseSensitive(false)";
                case STRICT:
                    return "ParseStrict(true)";
                case LENIENT:
                    return "ParseStrict(false)";
                default:
                    throw new IllegalStateException("Unreachable");
            }
        }
    }

    static class DefaultValueParser implements DateTimePrinterParser {
        private final TemporalField field;
        private final long value;

        DefaultValueParser(TemporalField field, long value) {
            this.field = field;
            this.value = value;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            if (context.getParsed(this.field) != null) {
                return position;
            }
            context.setParsedField(this.field, this.value, position, position);
            return position;
        }
    }

    static final class CharLiteralPrinterParser implements DateTimePrinterParser {
        private final char literal;

        CharLiteralPrinterParser(char literal) {
            this.literal = literal;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            buf.append(this.literal);
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            int length = text.length();
            if (position == length) {
                return ~position;
            }
            char ch = text.charAt(position);
            if (ch != this.literal && (context.isCaseSensitive() || (Character.toUpperCase(ch) != Character.toUpperCase(this.literal) && Character.toLowerCase(ch) != Character.toLowerCase(this.literal)))) {
                return ~position;
            }
            return position + 1;
        }

        public String toString() {
            if (this.literal == '\'') {
                return "''";
            }
            return "'" + this.literal + "'";
        }
    }

    static final class StringLiteralPrinterParser implements DateTimePrinterParser {
        private final String literal;

        StringLiteralPrinterParser(String literal) {
            this.literal = literal;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            buf.append(this.literal);
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            int length = text.length();
            if (position > length || position < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (!context.subSequenceEquals(text, position, this.literal, 0, this.literal.length())) {
                return ~position;
            }
            return position + this.literal.length();
        }

        public String toString() {
            String converted = this.literal.replace("'", "''");
            return "'" + converted + "'";
        }
    }

    static class NumberPrinterParser implements DateTimePrinterParser {
        static final long[] EXCEED_POINTS = {0, 10, 100, 1000, 10000, SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US, 1000000, 10000000, 100000000, C.NANOS_PER_SECOND, RealConnection.IDLE_CONNECTION_HEALTHY_NS};
        final TemporalField field;
        final int maxWidth;
        final int minWidth;
        private final SignStyle signStyle;
        final int subsequentWidth;

        NumberPrinterParser(TemporalField field, int minWidth, int maxWidth, SignStyle signStyle) {
            this.field = field;
            this.minWidth = minWidth;
            this.maxWidth = maxWidth;
            this.signStyle = signStyle;
            this.subsequentWidth = 0;
        }

        protected NumberPrinterParser(TemporalField field, int minWidth, int maxWidth, SignStyle signStyle, int subsequentWidth) {
            this.field = field;
            this.minWidth = minWidth;
            this.maxWidth = maxWidth;
            this.signStyle = signStyle;
            this.subsequentWidth = subsequentWidth;
        }

        NumberPrinterParser withFixedWidth() {
            if (this.subsequentWidth == -1) {
                return this;
            }
            return new NumberPrinterParser(this.field, this.minWidth, this.maxWidth, this.signStyle, -1);
        }

        NumberPrinterParser withSubsequentWidth(int subsequentWidth) {
            return new NumberPrinterParser(this.field, this.minWidth, this.maxWidth, this.signStyle, this.subsequentWidth + subsequentWidth);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Long valueLong = context.getValue(this.field);
            if (valueLong == null) {
                return false;
            }
            long value = getValue(context, valueLong.longValue());
            DecimalStyle decimalStyle = context.getDecimalStyle();
            String str = value == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(value));
            if (str.length() > this.maxWidth) {
                throw new DateTimeException("Field " + this.field + " cannot be printed as the value " + value + " exceeds the maximum print width of " + this.maxWidth);
            }
            String str2 = decimalStyle.convertNumberToI18N(str);
            if (value >= 0) {
                switch (this.signStyle) {
                    case EXCEEDS_PAD:
                        if (this.minWidth < 19 && value >= EXCEED_POINTS[this.minWidth]) {
                            buf.append(decimalStyle.getPositiveSign());
                        }
                        break;
                    case ALWAYS:
                        buf.append(decimalStyle.getPositiveSign());
                        break;
                }
            } else {
                switch (this.signStyle) {
                    case EXCEEDS_PAD:
                    case ALWAYS:
                    case NORMAL:
                        buf.append(decimalStyle.getNegativeSign());
                        break;
                    case NOT_NEGATIVE:
                        throw new DateTimeException("Field " + this.field + " cannot be printed as the value " + value + " cannot be negative according to the SignStyle");
                }
            }
            for (int i = 0; i < this.minWidth - str2.length(); i++) {
                buf.append(decimalStyle.getZeroDigit());
            }
            buf.append(str2);
            return true;
        }

        long getValue(DateTimePrintContext context, long value) {
            return value;
        }

        boolean isFixedWidth(DateTimeParseContext context) {
            return this.subsequentWidth == -1 || (this.subsequentWidth > 0 && this.minWidth == this.maxWidth && this.signStyle == SignStyle.NOT_NEGATIVE);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            int position2;
            boolean negative;
            boolean positive;
            int pos;
            BigInteger totalBig;
            BigInteger totalBig2;
            long total;
            long total2;
            BigInteger totalBig3;
            int length;
            int length2 = text.length();
            if (position == length2) {
                return ~position;
            }
            char sign = text.charAt(position);
            if (sign == context.getDecimalStyle().getPositiveSign()) {
                if (!this.signStyle.parse(true, context.isStrict(), this.minWidth == this.maxWidth)) {
                    return ~position;
                }
                position2 = position + 1;
                negative = false;
                positive = true;
            } else {
                char negativeSign = context.getDecimalStyle().getNegativeSign();
                SignStyle signStyle = this.signStyle;
                if (sign == negativeSign) {
                    if (!signStyle.parse(false, context.isStrict(), this.minWidth == this.maxWidth)) {
                        return ~position;
                    }
                    position2 = position + 1;
                    negative = true;
                    positive = false;
                } else {
                    if (signStyle == SignStyle.ALWAYS && context.isStrict()) {
                        return ~position;
                    }
                    position2 = position;
                    negative = false;
                    positive = false;
                }
            }
            int effMinWidth = (context.isStrict() || isFixedWidth(context)) ? this.minWidth : 1;
            int minEndPos = position2 + effMinWidth;
            if (minEndPos <= length2) {
                int effMaxWidth = ((context.isStrict() || isFixedWidth(context)) ? this.maxWidth : 9) + Math.max(this.subsequentWidth, 0);
                long total3 = 0;
                BigInteger totalBig4 = null;
                int pos2 = position2;
                int pass = 0;
                int effMaxWidth2 = effMaxWidth;
                int pos3 = pos2;
                while (pass < 2) {
                    int maxEndPos = Math.min(pos3 + effMaxWidth2, length2);
                    while (true) {
                        if (pos3 >= maxEndPos) {
                            total2 = total3;
                            totalBig3 = totalBig4;
                            length = length2;
                            break;
                        }
                        int pos4 = pos3 + 1;
                        length = length2;
                        char ch = text.charAt(pos3);
                        total2 = total3;
                        int digit = context.getDecimalStyle().convertToDigit(ch);
                        if (digit < 0) {
                            int pos5 = pos4 - 1;
                            if (pos5 >= minEndPos) {
                                totalBig3 = totalBig4;
                                pos3 = pos5;
                            } else {
                                return ~position2;
                            }
                        } else {
                            if (pos4 - position2 > 18) {
                                if (totalBig4 == null) {
                                    totalBig4 = BigInteger.valueOf(total2);
                                }
                                totalBig4 = totalBig4.multiply(BigInteger.TEN).add(BigInteger.valueOf(digit));
                                total3 = total2;
                            } else {
                                totalBig4 = totalBig4;
                                total3 = (10 * total2) + ((long) digit);
                            }
                            pos3 = pos4;
                            length2 = length;
                        }
                    }
                    if (this.subsequentWidth > 0 && pass == 0) {
                        effMaxWidth2 = Math.max(effMinWidth, (pos3 - position2) - this.subsequentWidth);
                        pos3 = position2;
                        pass++;
                        totalBig4 = null;
                        total3 = 0;
                        length2 = length;
                    } else {
                        pos = pos3;
                        totalBig = totalBig3;
                        total3 = total2;
                        break;
                    }
                }
                BigInteger bigInteger = totalBig4;
                pos = pos3;
                totalBig = bigInteger;
                if (negative) {
                    if (totalBig != null) {
                        if (totalBig.equals(BigInteger.ZERO) && context.isStrict()) {
                            return ~(position2 - 1);
                        }
                        totalBig2 = totalBig.negate();
                        total = total3;
                    } else {
                        if (total3 == 0 && context.isStrict()) {
                            return ~(position2 - 1);
                        }
                        totalBig2 = totalBig;
                        total = -total3;
                    }
                } else {
                    if (this.signStyle == SignStyle.EXCEEDS_PAD && context.isStrict()) {
                        int parseLen = pos - position2;
                        int i = this.minWidth;
                        if (positive) {
                            if (parseLen <= i) {
                                return ~(position2 - 1);
                            }
                        } else if (parseLen > i) {
                            return ~position2;
                        }
                    }
                    totalBig2 = totalBig;
                    total = total3;
                }
                if (totalBig2 != null) {
                    if (totalBig2.bitLength() > 63) {
                        totalBig2 = totalBig2.divide(BigInteger.TEN);
                        pos--;
                    }
                    return setValue(context, totalBig2.longValue(), position2, pos);
                }
                return setValue(context, total, position2, pos);
            }
            return ~position2;
        }

        int setValue(DateTimeParseContext context, long value, int errorPos, int successPos) {
            return context.setParsedField(this.field, value, errorPos, successPos);
        }

        public String toString() {
            if (this.minWidth == 1 && this.maxWidth == 19 && this.signStyle == SignStyle.NORMAL) {
                return "Value(" + this.field + ")";
            }
            if (this.minWidth == this.maxWidth && this.signStyle == SignStyle.NOT_NEGATIVE) {
                return "Value(" + this.field + "," + this.minWidth + ")";
            }
            return "Value(" + this.field + "," + this.minWidth + "," + this.maxWidth + "," + this.signStyle + ")";
        }
    }

    static final class ReducedPrinterParser extends NumberPrinterParser {
        static final LocalDate BASE_DATE = LocalDate.of(2000, 1, 1);
        private final ChronoLocalDate baseDate;
        private final int baseValue;

        ReducedPrinterParser(TemporalField field, int minWidth, int maxWidth, int baseValue, ChronoLocalDate baseDate) {
            this(field, minWidth, maxWidth, baseValue, baseDate, 0);
            if (minWidth < 1 || minWidth > 10) {
                throw new IllegalArgumentException("The minWidth must be from 1 to 10 inclusive but was " + minWidth);
            }
            if (maxWidth < 1 || maxWidth > 10) {
                throw new IllegalArgumentException("The maxWidth must be from 1 to 10 inclusive but was " + minWidth);
            }
            if (maxWidth < minWidth) {
                throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + maxWidth + " < " + minWidth);
            }
            if (baseDate == null) {
                if (!field.range().isValidValue(baseValue)) {
                    throw new IllegalArgumentException("The base value must be within the range of the field");
                }
                if (((long) baseValue) + EXCEED_POINTS[maxWidth] > SieveCacheKt.NodeLinkMask) {
                    throw new DateTimeException("Unable to add printer-parser as the range exceeds the capacity of an int");
                }
            }
        }

        private ReducedPrinterParser(TemporalField field, int minWidth, int maxWidth, int baseValue, ChronoLocalDate baseDate, int subsequentWidth) {
            super(field, minWidth, maxWidth, SignStyle.NOT_NEGATIVE, subsequentWidth);
            this.baseValue = baseValue;
            this.baseDate = baseDate;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        long getValue(DateTimePrintContext context, long value) {
            long absValue = Math.abs(value);
            int baseValue = this.baseValue;
            if (this.baseDate != null) {
                Chronology chrono = Chronology.from(context.getTemporal());
                baseValue = chrono.date(this.baseDate).get(this.field);
            }
            if (value >= baseValue && value < ((long) baseValue) + EXCEED_POINTS[this.minWidth]) {
                return absValue % EXCEED_POINTS[this.minWidth];
            }
            return absValue % EXCEED_POINTS[this.maxWidth];
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        int setValue(DateTimeParseContext context, final long value, final int errorPos, final int successPos) {
            final DateTimeParseContext dateTimeParseContext;
            long value2;
            long value3;
            int baseValue = this.baseValue;
            if (this.baseDate == null) {
                dateTimeParseContext = context;
            } else {
                Chronology chrono = context.getEffectiveChronology();
                baseValue = chrono.date(this.baseDate).get(this.field);
                dateTimeParseContext = context;
                dateTimeParseContext.addChronoChangedListener(new Consumer() { // from class: j$.time.format.DateTimeFormatterBuilder.ReducedPrinterParser.0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ReducedPrinterParser.this.m8516xdf3a601e(dateTimeParseContext, value, errorPos, successPos, (Chronology) obj);
                    }
                });
            }
            int parseLen = successPos - errorPos;
            if (parseLen == this.minWidth && value >= 0) {
                long range = EXCEED_POINTS[this.minWidth];
                long lastPart = ((long) baseValue) % range;
                long basePart = ((long) baseValue) - lastPart;
                if (baseValue > 0) {
                    value3 = basePart + value;
                } else {
                    value3 = basePart - value;
                }
                if (value3 >= baseValue) {
                    value2 = value3;
                } else {
                    value2 = value3 + range;
                }
            } else {
                value2 = value;
            }
            return dateTimeParseContext.setParsedField(this.field, value2, errorPos, successPos);
        }

        /* JADX INFO: renamed from: lambda$setValue$0$java-time-format-DateTimeFormatterBuilder$ReducedPrinterParser, reason: not valid java name */
        /* synthetic */ void m8516xdf3a601e(DateTimeParseContext context, long initialValue, int errorPos, int successPos, Chronology _unused) {
            setValue(context, initialValue, errorPos, successPos);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public ReducedPrinterParser withFixedWidth() {
            if (this.subsequentWidth == -1) {
                return this;
            }
            return new ReducedPrinterParser(this.field, this.minWidth, this.maxWidth, this.baseValue, this.baseDate, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public ReducedPrinterParser withSubsequentWidth(int subsequentWidth) {
            return new ReducedPrinterParser(this.field, this.minWidth, this.maxWidth, this.baseValue, this.baseDate, this.subsequentWidth + subsequentWidth);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        boolean isFixedWidth(DateTimeParseContext context) {
            if (!context.isStrict()) {
                return false;
            }
            return super.isFixedWidth(context);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public String toString() {
            return "ReducedValue(" + this.field + "," + this.minWidth + "," + this.maxWidth + "," + ZoneId.AnonymousClass3.m(this.baseDate, Integer.valueOf(this.baseValue)) + ")";
        }
    }

    static final class FractionPrinterParser extends NumberPrinterParser {
        private final boolean decimalPoint;

        /* JADX INFO: renamed from: j$.time.format.DateTimeFormatterBuilder$FractionPrinterParser$0, reason: invalid class name */
        /* JADX INFO: compiled from: D8$$SyntheticClass */
        public final /* synthetic */ class AnonymousClass0 {
            public static /* synthetic */ BigDecimal m(BigDecimal bigDecimal) {
                return bigDecimal.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimal.stripTrailingZeros();
            }
        }

        FractionPrinterParser(TemporalField field, int minWidth, int maxWidth, boolean decimalPoint) {
            this(field, minWidth, maxWidth, decimalPoint, 0);
            Objects.requireNonNull(field, "field");
            if (!field.range().isFixed()) {
                throw new IllegalArgumentException("Field must have a fixed set of values: " + field);
            }
            if (minWidth < 0 || minWidth > 9) {
                throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + minWidth);
            }
            if (maxWidth < 1 || maxWidth > 9) {
                throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + maxWidth);
            }
            if (maxWidth < minWidth) {
                throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + maxWidth + " < " + minWidth);
            }
        }

        FractionPrinterParser(TemporalField field, int minWidth, int maxWidth, boolean decimalPoint, int subsequentWidth) {
            super(field, minWidth, maxWidth, SignStyle.NOT_NEGATIVE, subsequentWidth);
            this.decimalPoint = decimalPoint;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public FractionPrinterParser withFixedWidth() {
            if (this.subsequentWidth == -1) {
                return this;
            }
            return new FractionPrinterParser(this.field, this.minWidth, this.maxWidth, this.decimalPoint, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public FractionPrinterParser withSubsequentWidth(int subsequentWidth) {
            return new FractionPrinterParser(this.field, this.minWidth, this.maxWidth, this.decimalPoint, this.subsequentWidth + subsequentWidth);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        boolean isFixedWidth(DateTimeParseContext context) {
            if (context.isStrict() && this.minWidth == this.maxWidth && !this.decimalPoint) {
                return true;
            }
            return false;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser, j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Long value = context.getValue(this.field);
            if (value == null) {
                return false;
            }
            DecimalStyle decimalStyle = context.getDecimalStyle();
            BigDecimal fraction = convertToFraction(value.longValue());
            if (fraction.scale() == 0) {
                if (this.minWidth > 0) {
                    if (this.decimalPoint) {
                        buf.append(decimalStyle.getDecimalSeparator());
                    }
                    for (int i = 0; i < this.minWidth; i++) {
                        buf.append(decimalStyle.getZeroDigit());
                    }
                    return true;
                }
                return true;
            }
            int outputScale = Math.min(Math.max(fraction.scale(), this.minWidth), this.maxWidth);
            String str = fraction.setScale(outputScale, RoundingMode.FLOOR).toPlainString().substring(2);
            String str2 = decimalStyle.convertNumberToI18N(str);
            if (this.decimalPoint) {
                buf.append(decimalStyle.getDecimalSeparator());
            }
            buf.append(str2);
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser, j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            int position2;
            int pos;
            int effectiveMin = (context.isStrict() || isFixedWidth(context)) ? this.minWidth : 0;
            int effectiveMax = (context.isStrict() || isFixedWidth(context)) ? this.maxWidth : 9;
            int length = text.length();
            if (position == length) {
                return effectiveMin > 0 ? ~position : position;
            }
            if (!this.decimalPoint) {
                position2 = position;
            } else {
                if (text.charAt(position) != context.getDecimalStyle().getDecimalSeparator()) {
                    return effectiveMin > 0 ? ~position : position;
                }
                position2 = position + 1;
            }
            int position3 = position2 + effectiveMin;
            if (position3 > length) {
                return ~position2;
            }
            int maxEndPos = Math.min(position2 + effectiveMax, length);
            int pos2 = position2;
            int total = 0;
            while (true) {
                if (pos2 >= maxEndPos) {
                    pos = pos2;
                    break;
                }
                int pos3 = pos2 + 1;
                char ch = text.charAt(pos2);
                int digit = context.getDecimalStyle().convertToDigit(ch);
                if (digit < 0) {
                    if (pos3 < position3) {
                        return ~position2;
                    }
                    pos = pos3 - 1;
                } else {
                    total = (total * 10) + digit;
                    pos2 = pos3;
                }
            }
            BigDecimal fraction = new BigDecimal(total).movePointLeft(pos - position2);
            long value = convertFromFraction(fraction);
            return context.setParsedField(this.field, value, position2, pos);
        }

        private BigDecimal convertToFraction(long value) {
            ValueRange range = this.field.range();
            range.checkValidValue(value, this.field);
            BigDecimal minBD = BigDecimal.valueOf(range.getMinimum());
            BigDecimal rangeBD = BigDecimal.valueOf(range.getMaximum()).subtract(minBD).add(BigDecimal.ONE);
            BigDecimal valueBD = BigDecimal.valueOf(value).subtract(minBD);
            BigDecimal fraction = valueBD.divide(rangeBD, 9, RoundingMode.FLOOR);
            return fraction.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : AnonymousClass0.m(fraction);
        }

        private long convertFromFraction(BigDecimal fraction) {
            ValueRange range = this.field.range();
            BigDecimal minBD = BigDecimal.valueOf(range.getMinimum());
            BigDecimal rangeBD = BigDecimal.valueOf(range.getMaximum()).subtract(minBD).add(BigDecimal.ONE);
            BigDecimal valueBD = fraction.multiply(rangeBD).setScale(0, RoundingMode.FLOOR).add(minBD);
            return valueBD.longValueExact();
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public String toString() {
            String decimal = this.decimalPoint ? ",DecimalPoint" : "";
            return "Fraction(" + this.field + "," + this.minWidth + "," + this.maxWidth + decimal + ")";
        }
    }

    static final class TextPrinterParser implements DateTimePrinterParser {
        private final TemporalField field;
        private volatile NumberPrinterParser numberPrinterParser;
        private final DateTimeTextProvider provider;
        private final TextStyle textStyle;

        TextPrinterParser(TemporalField field, TextStyle textStyle, DateTimeTextProvider provider) {
            this.field = field;
            this.textStyle = textStyle;
            this.provider = provider;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            String text;
            Long value = context.getValue(this.field);
            if (value == null) {
                return false;
            }
            Chronology chrono = (Chronology) context.getTemporal().query(TemporalQueries.chronology());
            if (chrono == null || chrono == IsoChronology.INSTANCE) {
                text = this.provider.getText(this.field, value.longValue(), this.textStyle, context.getLocale());
            } else {
                text = this.provider.getText(chrono, this.field, value.longValue(), this.textStyle, context.getLocale());
            }
            if (text == null) {
                return numberPrinterParser().format(context, buf);
            }
            buf.append(text);
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence parseText, int position) {
            Iterator<Map.Entry<String, Long>> it;
            int i = position;
            int length = parseText.length();
            if (i < 0 || i > length) {
                throw new IndexOutOfBoundsException();
            }
            TextStyle style = context.isStrict() ? this.textStyle : null;
            Chronology chrono = context.getEffectiveChronology();
            if (chrono == null || chrono == IsoChronology.INSTANCE) {
                it = this.provider.getTextIterator(this.field, style, context.getLocale());
            } else {
                it = this.provider.getTextIterator(chrono, this.field, style, context.getLocale());
            }
            if (it != null) {
                while (it.hasNext()) {
                    Map.Entry<String, Long> entry = it.next();
                    String itText = entry.getKey();
                    if (context.subSequenceEquals(itText, 0, parseText, i, itText.length())) {
                        return context.setParsedField(this.field, entry.getValue().longValue(), position, position + itText.length());
                    }
                    i = position;
                }
                if (this.field != ChronoField.ERA || context.isStrict()) {
                    i = position;
                } else {
                    for (Era era : chrono.eras()) {
                        String name = era.toString();
                        if (context.subSequenceEquals(name, 0, parseText, position, name.length())) {
                            return context.setParsedField(this.field, era.getValue(), position, position + name.length());
                        }
                    }
                    i = position;
                }
                if (context.isStrict()) {
                    return ~i;
                }
            }
            return numberPrinterParser().parse(context, parseText, i);
        }

        private NumberPrinterParser numberPrinterParser() {
            if (this.numberPrinterParser == null) {
                this.numberPrinterParser = new NumberPrinterParser(this.field, 1, 19, SignStyle.NORMAL);
            }
            return this.numberPrinterParser;
        }

        public String toString() {
            TextStyle textStyle = this.textStyle;
            TextStyle textStyle2 = TextStyle.FULL;
            TemporalField temporalField = this.field;
            if (textStyle == textStyle2) {
                return "Text(" + temporalField + ")";
            }
            return "Text(" + temporalField + "," + this.textStyle + ")";
        }
    }

    static final class InstantPrinterParser implements DateTimePrinterParser {
        private static final long SECONDS_0000_TO_1970 = 62167219200L;
        private static final long SECONDS_PER_10000_YEARS = 315569520000L;
        private final int fractionalDigits;

        InstantPrinterParser(int fractionalDigits) {
            this.fractionalDigits = fractionalDigits;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Long inSecs = context.getValue(ChronoField.INSTANT_SECONDS);
            Long inNanos = null;
            if (context.getTemporal().isSupported(ChronoField.NANO_OF_SECOND)) {
                inNanos = Long.valueOf(context.getTemporal().getLong(ChronoField.NANO_OF_SECOND));
            }
            if (inSecs == null) {
                return false;
            }
            long inSec = inSecs.longValue();
            int inNano = ChronoField.NANO_OF_SECOND.checkValidIntValue(inNanos != null ? inNanos.longValue() : 0L);
            if (inSec >= -62167219200L) {
                long zeroSecs = (inSec - SECONDS_PER_10000_YEARS) + SECONDS_0000_TO_1970;
                long hi = Math.floorDiv(zeroSecs, SECONDS_PER_10000_YEARS) + 1;
                LocalDateTime ldt = LocalDateTime.ofEpochSecond(Math.floorMod(zeroSecs, SECONDS_PER_10000_YEARS) - SECONDS_0000_TO_1970, 0, ZoneOffset.UTC);
                if (hi > 0) {
                    buf.append('+').append(hi);
                }
                buf.append(ldt);
                if (ldt.getSecond() == 0) {
                    buf.append(":00");
                }
            } else {
                long zeroSecs2 = inSec + SECONDS_0000_TO_1970;
                long hi2 = zeroSecs2 / SECONDS_PER_10000_YEARS;
                long lo = zeroSecs2 % SECONDS_PER_10000_YEARS;
                LocalDateTime ldt2 = LocalDateTime.ofEpochSecond(lo - SECONDS_0000_TO_1970, 0, ZoneOffset.UTC);
                int pos = buf.length();
                buf.append(ldt2);
                if (ldt2.getSecond() == 0) {
                    buf.append(":00");
                }
                if (hi2 < 0) {
                    if (ldt2.getYear() == -10000) {
                        buf.replace(pos, pos + 2, Long.toString(hi2 - 1));
                    } else if (lo == 0) {
                        buf.insert(pos, hi2);
                    } else {
                        buf.insert(pos + 1, Math.abs(hi2));
                    }
                }
            }
            if ((this.fractionalDigits < 0 && inNano > 0) || this.fractionalDigits > 0) {
                buf.append('.');
                int div = 100000000;
                int i = 0;
                while (true) {
                    if ((this.fractionalDigits != -1 || inNano <= 0) && ((this.fractionalDigits != -2 || (inNano <= 0 && i % 3 == 0)) && i >= this.fractionalDigits)) {
                        break;
                    }
                    int digit = inNano / div;
                    buf.append((char) (digit + 48));
                    inNano -= digit * div;
                    div /= 10;
                    i++;
                }
            }
            buf.append('Z');
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            int hour;
            int sec;
            int sec2;
            int nano;
            long instantSecs;
            int minDigits = this.fractionalDigits < 0 ? 0 : this.fractionalDigits;
            int maxDigits = this.fractionalDigits < 0 ? 9 : this.fractionalDigits;
            CompositePrinterParser parser = new DateTimeFormatterBuilder().append(DateTimeFormatter.ISO_LOCAL_DATE).appendLiteral('T').appendValue(ChronoField.HOUR_OF_DAY, 2).appendLiteral(AbstractJsonLexerKt.COLON).appendValue(ChronoField.MINUTE_OF_HOUR, 2).appendLiteral(AbstractJsonLexerKt.COLON).appendValue(ChronoField.SECOND_OF_MINUTE, 2).appendFraction(ChronoField.NANO_OF_SECOND, minDigits, maxDigits, true).appendLiteral('Z').toFormatter().toPrinterParser(false);
            DateTimeParseContext newContext = context.copy();
            int pos = parser.parse(newContext, text, position);
            if (pos < 0) {
                return pos;
            }
            long yearParsed = newContext.getParsed(ChronoField.YEAR).longValue();
            int month = newContext.getParsed(ChronoField.MONTH_OF_YEAR).intValue();
            int day = newContext.getParsed(ChronoField.DAY_OF_MONTH).intValue();
            int hour2 = newContext.getParsed(ChronoField.HOUR_OF_DAY).intValue();
            int min = newContext.getParsed(ChronoField.MINUTE_OF_HOUR).intValue();
            Long secVal = newContext.getParsed(ChronoField.SECOND_OF_MINUTE);
            Long nanoVal = newContext.getParsed(ChronoField.NANO_OF_SECOND);
            int sec3 = secVal != null ? secVal.intValue() : 0;
            int nano2 = nanoVal != null ? nanoVal.intValue() : 0;
            if (hour2 == 24 && min == 0 && sec3 == 0 && nano2 == 0) {
                hour = 0;
                sec = sec3;
                sec2 = 1;
            } else if (hour2 == 23 && min == 59 && sec3 == 60) {
                context.setParsedLeapSecond();
                hour = hour2;
                sec = 59;
                sec2 = 0;
            } else {
                hour = hour2;
                sec = sec3;
                sec2 = 0;
            }
            int year = ((int) yearParsed) % 10000;
            try {
                LocalDateTime localDateTimeOf = LocalDateTime.of(year, month, day, hour, min, sec, 0);
                nano = nano2;
                try {
                    LocalDateTime ldt = localDateTimeOf.plusDays(sec2);
                    instantSecs = ldt.toEpochSecond(ZoneOffset.UTC);
                } catch (RuntimeException e) {
                }
            } catch (RuntimeException e2) {
            }
            try {
                int successPos = context.setParsedField(ChronoField.INSTANT_SECONDS, instantSecs + Math.multiplyExact(yearParsed / 10000, SECONDS_PER_10000_YEARS), position, pos);
                return context.setParsedField(ChronoField.NANO_OF_SECOND, nano, position, successPos);
            } catch (RuntimeException e3) {
                return ~position;
            }
        }

        public String toString() {
            return "Instant()";
        }
    }

    static final class OffsetIdPrinterParser implements DateTimePrinterParser {
        private final String noOffsetText;
        private final int style;
        private final int type;
        static final String[] PATTERNS = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};
        static final OffsetIdPrinterParser INSTANCE_ID_Z = new OffsetIdPrinterParser("+HH:MM:ss", "Z");
        static final OffsetIdPrinterParser INSTANCE_ID_ZERO = new OffsetIdPrinterParser("+HH:MM:ss", "0");

        OffsetIdPrinterParser(String pattern, String noOffsetText) {
            Objects.requireNonNull(pattern, "pattern");
            Objects.requireNonNull(noOffsetText, "noOffsetText");
            this.type = checkPattern(pattern);
            this.style = this.type % 11;
            this.noOffsetText = noOffsetText;
        }

        private int checkPattern(String pattern) {
            for (int i = 0; i < PATTERNS.length; i++) {
                if (PATTERNS[i].equals(pattern)) {
                    return i;
                }
            }
            throw new IllegalArgumentException("Invalid zone offset pattern: " + pattern);
        }

        private boolean isPaddedHour() {
            return this.type < 11;
        }

        private boolean isColon() {
            return this.style > 0 && this.style % 2 == 0;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Long offsetSecs = context.getValue(ChronoField.OFFSET_SECONDS);
            if (offsetSecs == null) {
                return false;
            }
            int totalSecs = Math.toIntExact(offsetSecs.longValue());
            if (totalSecs == 0) {
                buf.append(this.noOffsetText);
            } else {
                int absHours = Math.abs((totalSecs / 3600) % 100);
                int absMinutes = Math.abs((totalSecs / 60) % 60);
                int absSeconds = Math.abs(totalSecs % 60);
                int bufPos = buf.length();
                int output = absHours;
                buf.append(totalSecs < 0 ? "-" : "+");
                if (isPaddedHour() || absHours >= 10) {
                    formatZeroPad(false, absHours, buf);
                } else {
                    buf.append((char) (absHours + 48));
                }
                if ((this.style >= 3 && this.style <= 8) || ((this.style >= 9 && absSeconds > 0) || (this.style >= 1 && absMinutes > 0))) {
                    formatZeroPad(isColon(), absMinutes, buf);
                    output += absMinutes;
                    if (this.style == 7 || this.style == 8 || (this.style >= 5 && absSeconds > 0)) {
                        formatZeroPad(isColon(), absSeconds, buf);
                        output += absSeconds;
                    }
                }
                if (output == 0) {
                    buf.setLength(bufPos);
                    buf.append(this.noOffsetText);
                }
            }
            return true;
        }

        private void formatZeroPad(boolean colon, int value, StringBuilder buf) {
            buf.append(colon ? ":" : "").append((char) ((value / 10) + 48)).append((char) ((value % 10) + 48));
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            CharSequence charSequence;
            int noOffsetLen;
            boolean isColon;
            int parseType;
            int length = text.length();
            int noOffsetLen2 = this.noOffsetText.length();
            if (noOffsetLen2 == 0) {
                if (position != length) {
                    noOffsetLen = noOffsetLen2;
                    charSequence = text;
                } else {
                    return context.setParsedField(ChronoField.OFFSET_SECONDS, 0L, position, position);
                }
            } else {
                if (position == length) {
                    return ~position;
                }
                boolean zSubSequenceEquals = context.subSequenceEquals(text, position, this.noOffsetText, 0, noOffsetLen2);
                charSequence = text;
                noOffsetLen = noOffsetLen2;
                if (zSubSequenceEquals) {
                    return context.setParsedField(ChronoField.OFFSET_SECONDS, 0L, position, position + noOffsetLen);
                }
            }
            char sign = text.charAt(position);
            if (sign == '+' || sign == '-') {
                int negative = sign == '-' ? -1 : 1;
                boolean isColon2 = isColon();
                boolean paddedHour = isPaddedHour();
                int[] array = new int[4];
                array[0] = position + 1;
                int parseType2 = this.type;
                if (context.isStrict()) {
                    isColon = isColon2;
                    parseType = parseType2;
                } else if (paddedHour) {
                    if (isColon2 || (parseType2 == 0 && length > position + 3 && charSequence.charAt(position + 3) == ':')) {
                        isColon = true;
                        parseType = 10;
                    } else {
                        isColon = isColon2;
                        parseType = 9;
                    }
                } else if (isColon2 || (parseType2 == 11 && length > position + 3 && (charSequence.charAt(position + 2) == ':' || charSequence.charAt(position + 3) == ':'))) {
                    isColon = true;
                    parseType = 21;
                } else {
                    isColon = isColon2;
                    parseType = 20;
                }
                switch (parseType) {
                    case 0:
                    case 11:
                        parseHour(charSequence, paddedHour, array);
                        break;
                    case 1:
                    case 2:
                    case 13:
                        parseHour(charSequence, paddedHour, array);
                        parseMinute(charSequence, isColon, false, array);
                        break;
                    case 3:
                    case 4:
                    case 15:
                        parseHour(charSequence, paddedHour, array);
                        parseMinute(charSequence, isColon, true, array);
                        break;
                    case 5:
                    case 6:
                    case 17:
                        parseHour(charSequence, paddedHour, array);
                        parseMinute(charSequence, isColon, true, array);
                        parseSecond(charSequence, isColon, false, array);
                        break;
                    case 7:
                    case 8:
                    case 19:
                        parseHour(charSequence, paddedHour, array);
                        parseMinute(charSequence, isColon, true, array);
                        parseSecond(charSequence, isColon, true, array);
                        break;
                    case 9:
                    case 10:
                    case 21:
                        parseHour(charSequence, paddedHour, array);
                        parseOptionalMinuteSecond(charSequence, isColon, array);
                        break;
                    case 12:
                        parseVariableWidthDigits(charSequence, 1, 4, array);
                        break;
                    case 14:
                        parseVariableWidthDigits(charSequence, 3, 4, array);
                        break;
                    case 16:
                        parseVariableWidthDigits(charSequence, 3, 6, array);
                        break;
                    case 18:
                        parseVariableWidthDigits(charSequence, 5, 6, array);
                        break;
                    case 20:
                        parseVariableWidthDigits(charSequence, 1, 6, array);
                        break;
                }
                if (array[0] > 0) {
                    if (array[1] > 23 || array[2] > 59 || array[3] > 59) {
                        throw new DateTimeException("Value out of range: Hour[0-23], Minute[0-59], Second[0-59]");
                    }
                    long offsetSecs = ((long) negative) * ((((long) array[1]) * 3600) + (((long) array[2]) * 60) + ((long) array[3]));
                    return context.setParsedField(ChronoField.OFFSET_SECONDS, offsetSecs, position, array[0]);
                }
            }
            if (noOffsetLen == 0) {
                return context.setParsedField(ChronoField.OFFSET_SECONDS, 0L, position, position);
            }
            return ~position;
        }

        private void parseHour(CharSequence parseText, boolean paddedHour, int[] array) {
            if (paddedHour) {
                if (!parseDigits(parseText, false, 1, array)) {
                    array[0] = ~array[0];
                    return;
                }
                return;
            }
            parseVariableWidthDigits(parseText, 1, 2, array);
        }

        private void parseMinute(CharSequence parseText, boolean isColon, boolean mandatory, int[] array) {
            if (!parseDigits(parseText, isColon, 2, array) && mandatory) {
                array[0] = ~array[0];
            }
        }

        private void parseSecond(CharSequence parseText, boolean isColon, boolean mandatory, int[] array) {
            if (!parseDigits(parseText, isColon, 3, array) && mandatory) {
                array[0] = ~array[0];
            }
        }

        private void parseOptionalMinuteSecond(CharSequence parseText, boolean isColon, int[] array) {
            if (parseDigits(parseText, isColon, 2, array)) {
                parseDigits(parseText, isColon, 3, array);
            }
        }

        private boolean parseDigits(CharSequence parseText, boolean isColon, int arrayIndex, int[] array) {
            int value;
            int pos = array[0];
            if (pos < 0) {
                return true;
            }
            if (isColon && arrayIndex != 1) {
                if (pos + 1 > parseText.length() || parseText.charAt(pos) != ':') {
                    return false;
                }
                pos++;
            }
            if (pos + 2 > parseText.length()) {
                return false;
            }
            int pos2 = pos + 1;
            char ch1 = parseText.charAt(pos);
            int pos3 = pos2 + 1;
            char ch2 = parseText.charAt(pos2);
            if (ch1 < '0' || ch1 > '9' || ch2 < '0' || ch2 > '9' || (value = ((ch1 - '0') * 10) + (ch2 - '0')) < 0 || value > 59) {
                return false;
            }
            array[arrayIndex] = value;
            array[0] = pos3;
            return true;
        }

        private void parseVariableWidthDigits(CharSequence parseText, int minDigits, int maxDigits, int[] array) {
            int pos = array[0];
            int available = 0;
            char[] chars = new char[maxDigits];
            int i = 0;
            while (i < maxDigits && pos + 1 <= parseText.length()) {
                int pos2 = pos + 1;
                char ch = parseText.charAt(pos);
                if (ch < '0' || ch > '9') {
                    pos = pos2 - 1;
                    break;
                }
                chars[i] = ch;
                available++;
                i++;
                pos = pos2;
            }
            if (available < minDigits) {
                array[0] = ~array[0];
                return;
            }
            switch (available) {
                case 1:
                    array[1] = chars[0] - '0';
                    break;
                case 2:
                    array[1] = ((chars[0] - '0') * 10) + (chars[1] - '0');
                    break;
                case 3:
                    array[1] = chars[0] - '0';
                    array[2] = ((chars[1] - '0') * 10) + (chars[2] - '0');
                    break;
                case 4:
                    array[1] = ((chars[0] - '0') * 10) + (chars[1] - '0');
                    array[2] = ((chars[2] - '0') * 10) + (chars[3] - '0');
                    break;
                case 5:
                    array[1] = chars[0] - '0';
                    array[2] = ((chars[1] - '0') * 10) + (chars[2] - '0');
                    array[3] = ((chars[3] - '0') * 10) + (chars[4] - '0');
                    break;
                case 6:
                    array[1] = ((chars[0] - '0') * 10) + (chars[1] - '0');
                    array[2] = ((chars[2] - '0') * 10) + (chars[3] - '0');
                    array[3] = ((chars[4] - '0') * 10) + (chars[5] - '0');
                    break;
            }
            array[0] = pos;
        }

        public String toString() {
            String converted = this.noOffsetText.replace("'", "''");
            return "Offset(" + PATTERNS[this.type] + ",'" + converted + "')";
        }
    }

    static final class LocalizedOffsetIdPrinterParser implements DateTimePrinterParser {
        private final TextStyle style;

        LocalizedOffsetIdPrinterParser(TextStyle style) {
            this.style = style;
        }

        private static StringBuilder appendHMS(StringBuilder buf, int t) {
            return buf.append((char) ((t / 10) + 48)).append((char) ((t % 10) + 48));
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Long offsetSecs = context.getValue(ChronoField.OFFSET_SECONDS);
            if (offsetSecs == null) {
                return false;
            }
            buf.append("GMT");
            int totalSecs = Math.toIntExact(offsetSecs.longValue());
            if (totalSecs != 0) {
                int absHours = Math.abs((totalSecs / 3600) % 100);
                int absMinutes = Math.abs((totalSecs / 60) % 60);
                int absSeconds = Math.abs(totalSecs % 60);
                buf.append(totalSecs < 0 ? "-" : "+");
                if (this.style == TextStyle.FULL) {
                    appendHMS(buf, absHours);
                    buf.append(AbstractJsonLexerKt.COLON);
                    appendHMS(buf, absMinutes);
                    if (absSeconds != 0) {
                        buf.append(AbstractJsonLexerKt.COLON);
                        appendHMS(buf, absSeconds);
                        return true;
                    }
                    return true;
                }
                if (absHours >= 10) {
                    buf.append((char) ((absHours / 10) + 48));
                }
                buf.append((char) ((absHours % 10) + 48));
                if (absMinutes != 0 || absSeconds != 0) {
                    buf.append(AbstractJsonLexerKt.COLON);
                    appendHMS(buf, absMinutes);
                    if (absSeconds != 0) {
                        buf.append(AbstractJsonLexerKt.COLON);
                        appendHMS(buf, absSeconds);
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }

        int getDigit(CharSequence text, int position) {
            char c = text.charAt(position);
            if (c < '0' || c > '9') {
                return -1;
            }
            return c - '0';
        }

        /* JADX WARN: Removed duplicated region for block: B:70:0x0125 A[PHI: r2 r15
          0x0125: PHI (r2v3 'm' int) = 
          (r2v2 'm' int)
          (r2v2 'm' int)
          (r2v2 'm' int)
          (r2v2 'm' int)
          (r2v2 'm' int)
          (r2v2 'm' int)
          (r2v4 'm' int)
          (r2v4 'm' int)
          (r2v4 'm' int)
          (r2v4 'm' int)
         binds: [B:52:0x00d4, B:54:0x00dc, B:56:0x00e0, B:58:0x00e6, B:60:0x00f4, B:61:0x00f6, B:63:0x0100, B:65:0x0108, B:67:0x0116, B:68:0x0118] A[DONT_GENERATE, DONT_INLINE]
          0x0125: PHI (r15v2 'pos' int) = 
          (r15v1 'pos' int)
          (r15v1 'pos' int)
          (r15v1 'pos' int)
          (r15v1 'pos' int)
          (r15v1 'pos' int)
          (r15v1 'pos' int)
          (r15v3 'pos' int)
          (r15v3 'pos' int)
          (r15v3 'pos' int)
          (r15v3 'pos' int)
         binds: [B:52:0x00d4, B:54:0x00dc, B:56:0x00e0, B:58:0x00e6, B:60:0x00f4, B:61:0x00f6, B:63:0x0100, B:65:0x0108, B:67:0x0116, B:68:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            int negative;
            int s;
            int h;
            int pos;
            int h2;
            int end = text.length();
            if (!context.subSequenceEquals(text, position, "GMT", 0, "GMT".length())) {
                return ~position;
            }
            int pos2 = position + "GMT".length();
            if (pos2 == end) {
                return context.setParsedField(ChronoField.OFFSET_SECONDS, 0L, position, pos2);
            }
            char sign = text.charAt(pos2);
            if (sign == '+') {
                negative = 1;
            } else if (sign == '-') {
                negative = -1;
            } else {
                return context.setParsedField(ChronoField.OFFSET_SECONDS, 0L, position, pos2);
            }
            int pos3 = pos2 + 1;
            int m = 0;
            int s2 = 0;
            if (this.style == TextStyle.FULL) {
                int pos4 = pos3 + 1;
                int h1 = getDigit(text, pos3);
                int pos5 = pos4 + 1;
                int h22 = getDigit(text, pos4);
                if (h1 >= 0 && h22 >= 0) {
                    int pos6 = pos5 + 1;
                    if (text.charAt(pos5) == 58) {
                        int h3 = (h1 * 10) + h22;
                        int h4 = pos6 + 1;
                        int m1 = getDigit(text, pos6);
                        int pos7 = h4 + 1;
                        int m2 = getDigit(text, h4);
                        if (m1 < 0 || m2 < 0) {
                            return ~position;
                        }
                        int m3 = (m1 * 10) + m2;
                        if (pos7 + 2 < end && text.charAt(pos7) == ':') {
                            int s1 = getDigit(text, pos7 + 1);
                            int s22 = getDigit(text, pos7 + 2);
                            if (s1 >= 0 && s22 >= 0) {
                                s2 = (s1 * 10) + s22;
                                pos7 += 3;
                            }
                        }
                        s = s2;
                        h = h3;
                        pos = pos7;
                        h2 = m3;
                    }
                }
                return ~position;
            }
            int pos8 = pos3 + 1;
            int h5 = getDigit(text, pos3);
            if (h5 < 0) {
                return ~position;
            }
            if (pos8 >= end) {
                s = 0;
                h = h5;
                pos = pos8;
                h2 = 0;
            } else {
                int h23 = getDigit(text, pos8);
                if (h23 >= 0) {
                    pos8++;
                    h5 = (h5 * 10) + h23;
                }
                if (pos8 + 2 < end && text.charAt(pos8) == ':' && pos8 + 2 < end && text.charAt(pos8) == ':') {
                    int m12 = getDigit(text, pos8 + 1);
                    int m22 = getDigit(text, pos8 + 2);
                    if (m12 >= 0 && m22 >= 0) {
                        m = (m12 * 10) + m22;
                        pos8 += 3;
                        if (pos8 + 2 < end && text.charAt(pos8) == ':') {
                            int s12 = getDigit(text, pos8 + 1);
                            int s23 = getDigit(text, pos8 + 2);
                            if (s12 >= 0 && s23 >= 0) {
                                s = (s12 * 10) + s23;
                                h = h5;
                                pos = pos8 + 3;
                                h2 = m;
                            }
                        }
                    }
                } else {
                    s = 0;
                    h = h5;
                    pos = pos8;
                    h2 = m;
                }
            }
            long offsetSecs = ((((long) h) * 3600) + (((long) h2) * 60) + ((long) s)) * ((long) negative);
            return context.setParsedField(ChronoField.OFFSET_SECONDS, offsetSecs, position, pos);
        }

        public String toString() {
            return "LocalizedOffset(" + this.style + ")";
        }
    }

    static final class ZoneTextPrinterParser extends ZoneIdPrinterParser {
        private static final int DST = 1;
        private static final int GENERIC = 2;
        private static final int STD = 0;
        private static final Map<String, SoftReference<Map<Locale, String[]>>> cache = new ConcurrentHashMap();
        private final Map<Locale, Map.Entry<Integer, SoftReference<PrefixTree>>> cachedTree;
        private final Map<Locale, Map.Entry<Integer, SoftReference<PrefixTree>>> cachedTreeCI;
        private final boolean isGeneric;
        private Set<String> preferredZones;
        private final TextStyle textStyle;

        ZoneTextPrinterParser(TextStyle textStyle, Set<ZoneId> set, boolean isGeneric) {
            super(TemporalQueries.zone(), "ZoneText(" + textStyle + ")");
            this.cachedTree = new HashMap();
            this.cachedTreeCI = new HashMap();
            this.textStyle = (TextStyle) Objects.requireNonNull(textStyle, "textStyle");
            this.isGeneric = isGeneric;
            if (set != null && set.size() != 0) {
                this.preferredZones = new HashSet();
                for (ZoneId id : set) {
                    this.preferredZones.add(id.getId());
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0029 A[PHI: r1
          0x0029: PHI (r1v2 'perLocale' java.util.Map<java.util.Locale, java.lang.String[]>) = 
          (r1v1 'perLocale' java.util.Map<java.util.Locale, java.lang.String[]>)
          (r1v5 'perLocale' java.util.Map<java.util.Locale, java.lang.String[]>)
          (r1v5 'perLocale' java.util.Map<java.util.Locale, java.lang.String[]>)
         binds: [B:7:0x0012, B:9:0x001b, B:11:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private String getDisplayName(String id, int type, Locale locale) {
            String[] names;
            if (this.textStyle == TextStyle.NARROW) {
                return null;
            }
            SoftReference<Map<Locale, String[]>> ref = cache.get(id);
            Map<Locale, String[]> perLocale = null;
            if (ref != null) {
                Map<Locale, String[]> map = ref.get();
                perLocale = map;
                if (map != null) {
                    String[] strArr = perLocale.get(locale);
                    names = strArr;
                    if (strArr == null) {
                        TimeZone tz = TimeZone.getTimeZone(id);
                        names = new String[]{id, tz.getDisplayName(false, 1, locale), tz.getDisplayName(false, 0, locale), tz.getDisplayName(true, 1, locale), tz.getDisplayName(true, 0, locale), id, id};
                        if (perLocale == null) {
                            perLocale = new ConcurrentHashMap();
                        }
                        perLocale.put(locale, names);
                        cache.put(id, new SoftReference<>(perLocale));
                    }
                }
            }
            switch (type) {
                case 0:
                    return names[this.textStyle.zoneNameStyleIndex() + 1];
                case 1:
                    return names[this.textStyle.zoneNameStyleIndex() + 3];
                default:
                    return names[this.textStyle.zoneNameStyleIndex() + 5];
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v6 */
        /* JADX WARN: Type inference failed for: r9v0, types: [j$.time.format.DateTimeFormatterBuilder$ZoneTextPrinterParser] */
        @Override // j$.time.format.DateTimeFormatterBuilder.ZoneIdPrinterParser, j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            ZoneId zoneId = (ZoneId) dateTimePrintContext.getValue(TemporalQueries.zoneId());
            if (zoneId == null) {
                return false;
            }
            String id = zoneId.getId();
            if (!(zoneId instanceof ZoneOffset)) {
                TemporalAccessor temporal = dateTimePrintContext.getTemporal();
                ?? IsDaylightSavings = 2;
                IsDaylightSavings = 2;
                IsDaylightSavings = 2;
                IsDaylightSavings = 2;
                if (!this.isGeneric) {
                    if (temporal.isSupported(ChronoField.INSTANT_SECONDS)) {
                        IsDaylightSavings = zoneId.getRules().isDaylightSavings(Instant.from(temporal));
                    } else if (temporal.isSupported(ChronoField.EPOCH_DAY) && temporal.isSupported(ChronoField.NANO_OF_DAY)) {
                        LocalDateTime localDateTimeAtTime = LocalDate.ofEpochDay(temporal.getLong(ChronoField.EPOCH_DAY)).atTime(LocalTime.ofNanoOfDay(temporal.getLong(ChronoField.NANO_OF_DAY)));
                        if (zoneId.getRules().getTransition(localDateTimeAtTime) == null) {
                            IsDaylightSavings = zoneId.getRules().isDaylightSavings(localDateTimeAtTime.atZone(zoneId).toInstant());
                        }
                    }
                }
                String displayName = getDisplayName(id, IsDaylightSavings, dateTimePrintContext.getLocale());
                if (displayName != null) {
                    id = displayName;
                }
            }
            sb.append(id);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
        @Override // j$.time.format.DateTimeFormatterBuilder.ZoneIdPrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected PrefixTree getTree(DateTimeParseContext context) {
            PrefixTree tree;
            int i;
            if (this.textStyle == TextStyle.NARROW) {
                return super.getTree(context);
            }
            Locale locale = context.getLocale();
            boolean isCaseSensitive = context.isCaseSensitive();
            Set<String> regionIds = ZoneRulesProvider.getAvailableZoneIds();
            int regionIdsSize = regionIds.size();
            Map<Locale, Map.Entry<Integer, SoftReference<PrefixTree>>> map = isCaseSensitive ? this.cachedTree : this.cachedTreeCI;
            Map.Entry<Integer, SoftReference<PrefixTree>> entry = map.get(locale);
            if (entry != null && entry.getKey().intValue() == regionIdsSize) {
                PrefixTree prefixTree = entry.getValue().get();
                tree = prefixTree;
                if (prefixTree == null) {
                }
            } else {
                tree = PrefixTree.newTree(context);
                String[][] zoneStrings = DateFormatSymbols.getInstance(locale).getZoneStrings();
                int length = zoneStrings.length;
                int i2 = 0;
                int i3 = 0;
                while (i3 < length) {
                    String[] names = zoneStrings[i3];
                    String zid = names[i2];
                    if (!regionIds.contains(zid)) {
                        i = i2;
                    } else {
                        tree.add(zid, zid);
                        String zid2 = ZoneName.toZid(zid, locale);
                        i = i2;
                        for (int i4 = this.textStyle == TextStyle.FULL ? 1 : 2; i4 < names.length; i4 += 2) {
                            tree.add(names[i4], zid2);
                        }
                    }
                    i3++;
                    i2 = i;
                }
                int i5 = i2;
                if (this.preferredZones != null) {
                    int length2 = zoneStrings.length;
                    for (int i6 = i5; i6 < length2; i6++) {
                        String[] names2 = zoneStrings[i6];
                        String zid3 = names2[i5];
                        if (this.preferredZones.contains(zid3) && regionIds.contains(zid3)) {
                            for (int i7 = this.textStyle == TextStyle.FULL ? 1 : 2; i7 < names2.length; i7 += 2) {
                                tree.add(names2[i7], zid3);
                            }
                        }
                    }
                }
                map.put(locale, new AbstractMap.SimpleImmutableEntry(Integer.valueOf(regionIdsSize), new SoftReference(tree)));
            }
            return tree;
        }
    }

    static class ZoneIdPrinterParser implements DateTimePrinterParser {
        private static volatile Map.Entry<Integer, PrefixTree> cachedPrefixTree;
        private static volatile Map.Entry<Integer, PrefixTree> cachedPrefixTreeCI;
        private final String description;
        private final TemporalQuery<ZoneId> query;

        /* JADX WARN: Generic types in debug info not equals: j$.time.temporal.TemporalQuery != java.time.temporal.TemporalQuery<java.time.ZoneId> */
        ZoneIdPrinterParser(TemporalQuery<ZoneId> temporalQuery, String description) {
            this.query = temporalQuery;
            this.description = description;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            ZoneId zone = (ZoneId) context.getValue(this.query);
            if (zone == null) {
                return false;
            }
            buf.append(zone.getId());
            return true;
        }

        protected PrefixTree getTree(DateTimeParseContext context) {
            Set<String> regionIds = ZoneRulesProvider.getAvailableZoneIds();
            int regionIdsSize = regionIds.size();
            Map.Entry<Integer, PrefixTree> simpleImmutableEntry = context.isCaseSensitive() ? cachedPrefixTree : cachedPrefixTreeCI;
            if (simpleImmutableEntry == null || simpleImmutableEntry.getKey().intValue() != regionIdsSize) {
                synchronized (this) {
                    simpleImmutableEntry = context.isCaseSensitive() ? cachedPrefixTree : cachedPrefixTreeCI;
                    if (simpleImmutableEntry == null || simpleImmutableEntry.getKey().intValue() != regionIdsSize) {
                        simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(Integer.valueOf(regionIdsSize), PrefixTree.newTree(regionIds, context));
                        if (context.isCaseSensitive()) {
                            cachedPrefixTree = simpleImmutableEntry;
                        } else {
                            cachedPrefixTreeCI = simpleImmutableEntry;
                        }
                    }
                }
            }
            return simpleImmutableEntry.getValue();
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            DateTimeParseContext context2;
            CharSequence text2;
            int position2;
            int length = text.length();
            if (position > length) {
                throw new IndexOutOfBoundsException();
            }
            if (position == length) {
                return ~position;
            }
            char nextChar = text.charAt(position);
            if (nextChar == '+' || nextChar == '-') {
                DateTimeParseContext context3 = context;
                CharSequence text3 = text;
                int position3 = position;
                return parseOffsetBased(context3, text3, position3, position3, OffsetIdPrinterParser.INSTANCE_ID_Z);
            }
            if (length < position + 2) {
                context2 = context;
                text2 = text;
                position2 = position;
            } else {
                char nextNextChar = text.charAt(position + 1);
                if (!context.charEquals(nextChar, 'U') || !context.charEquals(nextNextChar, 'T')) {
                    if (!context.charEquals(nextChar, 'G') || length < position + 3 || !context.charEquals(nextNextChar, 'M') || !context.charEquals(text.charAt(position + 2), 'T')) {
                        context2 = context;
                        text2 = text;
                        position2 = position;
                    } else {
                        if (length < position + 4 || !context.charEquals(text.charAt(position + 3), '0')) {
                            return parseOffsetBased(context, text, position, position + 3, OffsetIdPrinterParser.INSTANCE_ID_ZERO);
                        }
                        context.setParsed(ZoneId.of("GMT0"));
                        return position + 4;
                    }
                } else {
                    if (length < position + 3 || !context.charEquals(text.charAt(position + 2), 'C')) {
                        return parseOffsetBased(context, text, position, position + 2, OffsetIdPrinterParser.INSTANCE_ID_ZERO);
                    }
                    return parseOffsetBased(context, text, position, position + 3, OffsetIdPrinterParser.INSTANCE_ID_ZERO);
                }
            }
            PrefixTree tree = getTree(context2);
            ParsePosition ppos = new ParsePosition(position2);
            String parsedZoneId = tree.match(text2, ppos);
            if (parsedZoneId == null) {
                if (context2.charEquals(nextChar, 'Z')) {
                    context2.setParsed(ZoneOffset.UTC);
                    return position2 + 1;
                }
                return ~position2;
            }
            context2.setParsed(ZoneId.of(parsedZoneId));
            return ppos.getIndex();
        }

        private int parseOffsetBased(DateTimeParseContext context, CharSequence text, int prefixPos, int position, OffsetIdPrinterParser parser) {
            String prefix = text.subSequence(prefixPos, position).toString().toUpperCase();
            if (position >= text.length()) {
                context.setParsed(ZoneId.of(prefix));
                return position;
            }
            if (text.charAt(position) == '0' || context.charEquals(text.charAt(position), 'Z')) {
                context.setParsed(ZoneId.of(prefix));
                return position;
            }
            DateTimeParseContext newContext = context.copy();
            int endPos = parser.parse(newContext, text, position);
            try {
                if (endPos < 0) {
                    if (parser == OffsetIdPrinterParser.INSTANCE_ID_Z) {
                        return ~prefixPos;
                    }
                    context.setParsed(ZoneId.of(prefix));
                    return position;
                }
                int offset = (int) newContext.getParsed(ChronoField.OFFSET_SECONDS).longValue();
                ZoneOffset zoneOffset = ZoneOffset.ofTotalSeconds(offset);
                context.setParsed(ZoneId.ofOffset(prefix, zoneOffset));
                return endPos;
            } catch (DateTimeException e) {
                return ~prefixPos;
            }
        }

        public String toString() {
            return this.description;
        }
    }

    static class PrefixTree {
        protected char c0;
        protected PrefixTree child;
        protected String key;
        protected PrefixTree sibling;
        protected String value;

        private PrefixTree(String k, String v, PrefixTree child) {
            this.key = k;
            this.value = v;
            this.child = child;
            if (k.isEmpty()) {
                this.c0 = CharCompanionObject.MAX_VALUE;
            } else {
                this.c0 = this.key.charAt(0);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static PrefixTree newTree(DateTimeParseContext dateTimeParseContext) {
            String str = "";
            String str2 = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (dateTimeParseContext.isCaseSensitive()) {
                return new PrefixTree("", null, null);
            }
            return new CI(str, str2, objArr2 == true ? 1 : 0);
        }

        public static PrefixTree newTree(Set<String> keys, DateTimeParseContext context) {
            PrefixTree tree = newTree(context);
            for (String k : keys) {
                tree.add0(k, k);
            }
            return tree;
        }

        public PrefixTree copyTree() {
            PrefixTree copy = new PrefixTree(this.key, this.value, null);
            if (this.child != null) {
                copy.child = this.child.copyTree();
            }
            if (this.sibling != null) {
                copy.sibling = this.sibling.copyTree();
            }
            return copy;
        }

        public boolean add(String k, String v) {
            return add0(k, v);
        }

        private boolean add0(String k, String v) {
            String k2 = toKey(k);
            int prefixLen = prefixLength(k2);
            if (prefixLen == this.key.length()) {
                if (prefixLen < k2.length()) {
                    String subKey = k2.substring(prefixLen);
                    for (PrefixTree c = this.child; c != null; c = c.sibling) {
                        if (isEqual(c.c0, subKey.charAt(0))) {
                            return c.add0(subKey, v);
                        }
                    }
                    PrefixTree c2 = newNode(subKey, v, null);
                    c2.sibling = this.child;
                    this.child = c2;
                    return true;
                }
                this.value = v;
                return true;
            }
            PrefixTree n1 = newNode(this.key.substring(prefixLen), this.value, this.child);
            this.key = k2.substring(0, prefixLen);
            this.child = n1;
            if (prefixLen < k2.length()) {
                PrefixTree n2 = newNode(k2.substring(prefixLen), v, null);
                this.child.sibling = n2;
                this.value = null;
            } else {
                this.value = v;
            }
            return true;
        }

        public String match(CharSequence text, int off, int end) {
            int off2;
            if (!prefixOf(text, off, end)) {
                return null;
            }
            if (this.child != null && (off2 = this.key.length() + off) != end) {
                PrefixTree c = this.child;
                while (!isEqual(c.c0, text.charAt(off2))) {
                    c = c.sibling;
                    if (c == null) {
                    }
                }
                String found = c.match(text, off2, end);
                if (found != null) {
                    return found;
                }
                return this.value;
            }
            return this.value;
        }

        public String match(CharSequence text, ParsePosition pos) {
            int off = pos.getIndex();
            int end = text.length();
            if (!prefixOf(text, off, end)) {
                return null;
            }
            int off2 = off + this.key.length();
            if (this.child != null && off2 != end) {
                PrefixTree c = this.child;
                while (true) {
                    if (isEqual(c.c0, text.charAt(off2))) {
                        pos.setIndex(off2);
                        String found = c.match(text, pos);
                        if (found != null) {
                            return found;
                        }
                    } else {
                        c = c.sibling;
                        if (c == null) {
                            break;
                        }
                    }
                }
            }
            pos.setIndex(off2);
            return this.value;
        }

        protected String toKey(String k) {
            return k;
        }

        protected PrefixTree newNode(String k, String v, PrefixTree child) {
            return new PrefixTree(k, v, child);
        }

        protected boolean isEqual(char c1, char c2) {
            return c1 == c2;
        }

        protected boolean prefixOf(CharSequence text, int off, int end) {
            if (text instanceof String) {
                return ((String) text).startsWith(this.key, off);
            }
            int len = this.key.length();
            if (len > end - off) {
                return false;
            }
            int off2 = 0;
            while (true) {
                int len2 = len - 1;
                if (len > 0) {
                    int off0 = off2 + 1;
                    char cCharAt = this.key.charAt(off2);
                    int off3 = off + 1;
                    if (!isEqual(cCharAt, text.charAt(off))) {
                        return false;
                    }
                    off = off3;
                    len = len2;
                    off2 = off0;
                } else {
                    return true;
                }
            }
        }

        private int prefixLength(String k) {
            int off = 0;
            while (off < k.length() && off < this.key.length()) {
                if (!isEqual(k.charAt(off), this.key.charAt(off))) {
                    return off;
                }
                off++;
            }
            return off;
        }

        private static class CI extends PrefixTree {
            private CI(String k, String v, PrefixTree child) {
                super(k, v, child);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // j$.time.format.DateTimeFormatterBuilder.PrefixTree
            public CI newNode(String k, String v, PrefixTree child) {
                return new CI(k, v, child);
            }

            @Override // j$.time.format.DateTimeFormatterBuilder.PrefixTree
            protected boolean isEqual(char c1, char c2) {
                return DateTimeParseContext.charEqualsIgnoreCase(c1, c2);
            }

            @Override // j$.time.format.DateTimeFormatterBuilder.PrefixTree
            protected boolean prefixOf(CharSequence text, int off, int end) {
                int len = this.key.length();
                if (len > end - off) {
                    return false;
                }
                int off2 = 0;
                while (true) {
                    int len2 = len - 1;
                    if (len > 0) {
                        int off0 = off2 + 1;
                        char cCharAt = this.key.charAt(off2);
                        int off3 = off + 1;
                        if (!isEqual(cCharAt, text.charAt(off))) {
                            return false;
                        }
                        off = off3;
                        len = len2;
                        off2 = off0;
                    } else {
                        return true;
                    }
                }
            }
        }

        private static class LENIENT extends CI {
            private LENIENT(String k, String v, PrefixTree child) {
                super(k, v, child);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // j$.time.format.DateTimeFormatterBuilder.PrefixTree.CI, j$.time.format.DateTimeFormatterBuilder.PrefixTree
            public CI newNode(String k, String v, PrefixTree child) {
                return new LENIENT(k, v, child);
            }

            private boolean isLenientChar(char c) {
                return c == ' ' || c == '_' || c == '/';
            }

            @Override // j$.time.format.DateTimeFormatterBuilder.PrefixTree
            protected String toKey(String k) {
                int i = 0;
                while (i < k.length()) {
                    if (!isLenientChar(k.charAt(i))) {
                        i++;
                    } else {
                        StringBuilder sb = new StringBuilder(k.length());
                        sb.append((CharSequence) k, 0, i);
                        while (true) {
                            i++;
                            if (i < k.length()) {
                                if (!isLenientChar(k.charAt(i))) {
                                    sb.append(k.charAt(i));
                                }
                            } else {
                                return sb.toString();
                            }
                        }
                    }
                }
                return k;
            }

            @Override // j$.time.format.DateTimeFormatterBuilder.PrefixTree
            public String match(CharSequence text, ParsePosition pos) {
                int off = pos.getIndex();
                int end = text.length();
                int len = this.key.length();
                int koff = 0;
                while (koff < len && off < end) {
                    if (isLenientChar(text.charAt(off))) {
                        off++;
                    } else {
                        int koff2 = koff + 1;
                        int off2 = off + 1;
                        if (!isEqual(this.key.charAt(koff), text.charAt(off))) {
                            return null;
                        }
                        off = off2;
                        koff = koff2;
                    }
                }
                if (koff != len) {
                    return null;
                }
                if (this.child != null && off != end) {
                    int off0 = off;
                    while (off0 < end && isLenientChar(text.charAt(off0))) {
                        off0++;
                    }
                    if (off0 < end) {
                        PrefixTree c = this.child;
                        while (true) {
                            if (isEqual(c.c0, text.charAt(off0))) {
                                pos.setIndex(off0);
                                String found = c.match(text, pos);
                                if (found != null) {
                                    return found;
                                }
                            } else {
                                c = c.sibling;
                                if (c == null) {
                                    break;
                                }
                            }
                        }
                    }
                }
                pos.setIndex(off);
                return this.value;
            }
        }
    }

    static final class ChronoPrinterParser implements DateTimePrinterParser {
        private final TextStyle textStyle;

        ChronoPrinterParser(TextStyle textStyle) {
            this.textStyle = textStyle;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Chronology chrono = (Chronology) context.getValue(TemporalQueries.chronology());
            if (chrono == null) {
                return false;
            }
            if (this.textStyle == null) {
                buf.append(chrono.getId());
                return true;
            }
            buf.append(getChronologyName(chrono, context.getLocale()));
            return true;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            String name;
            DateTimeParseContext context2;
            CharSequence text2;
            int position2;
            if (position < 0 || position > text.length()) {
                throw new IndexOutOfBoundsException();
            }
            Chronology bestMatch = null;
            int matchLen = -1;
            for (Chronology chrono : Chronology.getAvailableChronologies()) {
                if (this.textStyle == null) {
                    name = chrono.getId();
                } else {
                    name = getChronologyName(chrono, context.getLocale());
                }
                int nameLen = name.length();
                if (nameLen > matchLen) {
                    context2 = context;
                    text2 = text;
                    position2 = position;
                    if (context2.subSequenceEquals(text2, position2, name, 0, nameLen)) {
                        bestMatch = chrono;
                        matchLen = nameLen;
                    }
                } else {
                    context2 = context;
                    text2 = text;
                    position2 = position;
                }
                context = context2;
                text = text2;
                position = position2;
            }
            DateTimeParseContext context3 = context;
            int position3 = position;
            if (bestMatch == null) {
                return ~position3;
            }
            context3.setParsed(bestMatch);
            return position3 + matchLen;
        }

        private String getChronologyName(Chronology chrono, Locale locale) {
            return chrono.getId();
        }
    }

    static final class LocalizedPrinterParser implements DateTimePrinterParser {
        private static final ConcurrentMap<String, DateTimeFormatter> FORMATTER_CACHE = new ConcurrentHashMap(16, 0.75f, 2);
        private final FormatStyle dateStyle;
        private final FormatStyle timeStyle;

        LocalizedPrinterParser(FormatStyle dateStyle, FormatStyle timeStyle) {
            this.dateStyle = dateStyle;
            this.timeStyle = timeStyle;
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            Chronology chrono = Chronology.from(context.getTemporal());
            return formatter(context.getLocale(), chrono).toPrinterParser(false).format(context, buf);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            Chronology chrono = context.getEffectiveChronology();
            return formatter(context.getLocale(), chrono).toPrinterParser(false).parse(context, text, position);
        }

        private DateTimeFormatter formatter(Locale locale, Chronology chrono) {
            String key = chrono.getId() + "|" + locale.toString() + "|" + this.dateStyle + this.timeStyle;
            DateTimeFormatter formatter = FORMATTER_CACHE.get(key);
            if (formatter == null) {
                String pattern = DateTimeFormatterBuilder.getLocalizedDateTimePattern(this.dateStyle, this.timeStyle, chrono, locale);
                DateTimeFormatter formatter2 = new DateTimeFormatterBuilder().appendPattern(pattern).toFormatter(locale);
                DateTimeFormatter old = FORMATTER_CACHE.putIfAbsent(key, formatter2);
                if (old != null) {
                    return old;
                }
                return formatter2;
            }
            return formatter;
        }

        public String toString() {
            return "Localized(" + (this.dateStyle != null ? this.dateStyle : "") + "," + (this.timeStyle != null ? this.timeStyle : "") + ")";
        }
    }

    static final class WeekBasedFieldPrinterParser extends NumberPrinterParser {
        private char chr;
        private int count;

        WeekBasedFieldPrinterParser(char chr, int count, int minWidth, int maxWidth) {
            this(chr, count, minWidth, maxWidth, 0);
        }

        WeekBasedFieldPrinterParser(char chr, int count, int minWidth, int maxWidth, int subsequentWidth) {
            super(null, minWidth, maxWidth, SignStyle.NOT_NEGATIVE, subsequentWidth);
            this.chr = chr;
            this.count = count;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public WeekBasedFieldPrinterParser withFixedWidth() {
            if (this.subsequentWidth == -1) {
                return this;
            }
            return new WeekBasedFieldPrinterParser(this.chr, this.count, this.minWidth, this.maxWidth, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public WeekBasedFieldPrinterParser withSubsequentWidth(int subsequentWidth) {
            return new WeekBasedFieldPrinterParser(this.chr, this.count, this.minWidth, this.maxWidth, this.subsequentWidth + subsequentWidth);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser, j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean format(DateTimePrintContext context, StringBuilder buf) {
            return printerParser(context.getLocale()).format(context, buf);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser, j$.time.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext context, CharSequence text, int position) {
            return printerParser(context.getLocale()).parse(context, text, position);
        }

        private DateTimePrinterParser printerParser(Locale locale) {
            TemporalField field;
            WeekFields weekDef = WeekFields.of(locale);
            switch (this.chr) {
                case 'W':
                    TemporalField field2 = weekDef.weekOfMonth();
                    field = field2;
                    break;
                case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                    TemporalField field3 = weekDef.weekBasedYear();
                    if (this.count == 2) {
                        return new ReducedPrinterParser(field3, 2, 2, 0, ReducedPrinterParser.BASE_DATE, this.subsequentWidth);
                    }
                    return new NumberPrinterParser(field3, this.count, 19, this.count < 4 ? SignStyle.NORMAL : SignStyle.EXCEEDS_PAD, this.subsequentWidth);
                case 'c':
                case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                    TemporalField field4 = weekDef.dayOfWeek();
                    field = field4;
                    break;
                case 'w':
                    TemporalField field5 = weekDef.weekOfWeekBasedYear();
                    field = field5;
                    break;
                default:
                    throw new IllegalStateException("unreachable");
            }
            return new NumberPrinterParser(field, this.minWidth, this.maxWidth, SignStyle.NOT_NEGATIVE, this.subsequentWidth);
        }

        @Override // j$.time.format.DateTimeFormatterBuilder.NumberPrinterParser
        public String toString() {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Localized(");
            if (this.chr == 'Y') {
                if (this.count == 1) {
                    sb.append("WeekBasedYear");
                } else if (this.count == 2) {
                    sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
                } else {
                    sb.append("WeekBasedYear,").append(this.count).append(",").append(19).append(",").append(this.count < 4 ? SignStyle.NORMAL : SignStyle.EXCEEDS_PAD);
                }
            } else {
                switch (this.chr) {
                    case 'W':
                        sb.append("WeekOfMonth");
                        break;
                    case 'c':
                    case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                        sb.append("DayOfWeek");
                        break;
                    case 'w':
                        sb.append("WeekOfWeekBasedYear");
                        break;
                }
                sb.append(",");
                sb.append(this.count);
            }
            sb.append(")");
            return sb.toString();
        }
    }
}
