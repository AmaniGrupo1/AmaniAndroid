package j$.time;

import com.google.common.net.HttpHeaders;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.TextStyle;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQueries;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.UnsupportedTemporalTypeException;
import j$.time.zone.ZoneRules;
import j$.time.zone.ZoneRulesException;
import j$.time.zone.ZoneRulesProvider;
import j$.util.TimeZoneRetargetClass;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes19.dex */
public abstract class ZoneId implements Serializable {
    public static final Map<String, String> SHORT_IDS = AnonymousClass2.m(new Map.Entry[]{AnonymousClass0.m("ACT", "Australia/Darwin"), AnonymousClass0.m("AET", "Australia/Sydney"), AnonymousClass0.m("AGT", "America/Argentina/Buenos_Aires"), AnonymousClass0.m("ART", "Africa/Cairo"), AnonymousClass0.m("AST", "America/Anchorage"), AnonymousClass0.m("BET", "America/Sao_Paulo"), AnonymousClass0.m("BST", "Asia/Dhaka"), AnonymousClass0.m("CAT", "Africa/Harare"), AnonymousClass0.m("CNT", "America/St_Johns"), AnonymousClass0.m("CST", "America/Chicago"), AnonymousClass0.m("CTT", "Asia/Shanghai"), AnonymousClass0.m("EAT", "Africa/Addis_Ababa"), AnonymousClass0.m(HttpHeaders.ECT, "Europe/Paris"), AnonymousClass0.m("IET", "America/Indiana/Indianapolis"), AnonymousClass0.m("IST", "Asia/Kolkata"), AnonymousClass0.m("JST", "Asia/Tokyo"), AnonymousClass0.m("MIT", "Pacific/Apia"), AnonymousClass0.m("NET", "Asia/Yerevan"), AnonymousClass0.m("NST", "Pacific/Auckland"), AnonymousClass0.m("PLT", "Asia/Karachi"), AnonymousClass0.m("PNT", "America/Phoenix"), AnonymousClass0.m("PRT", "America/Puerto_Rico"), AnonymousClass0.m("PST", "America/Los_Angeles"), AnonymousClass0.m("SST", "Pacific/Guadalcanal"), AnonymousClass0.m("VST", "Asia/Ho_Chi_Minh"), AnonymousClass0.m("EST", "-05:00"), AnonymousClass0.m("MST", "-07:00"), AnonymousClass0.m("HST", "-10:00")});
    private static final long serialVersionUID = 8352817235686L;

    /* JADX INFO: renamed from: j$.time.ZoneId$0, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass0 {
        public static /* synthetic */ Map.Entry m(Object obj, Object obj2) {
            return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
        }
    }

    /* JADX INFO: renamed from: j$.time.ZoneId$2, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass2 {
        public static /* synthetic */ Map m(Map.Entry[] entryArr) {
            HashMap map = new HashMap(entryArr.length);
            for (Map.Entry entry : entryArr) {
                Object objRequireNonNull = Objects.requireNonNull(entry.getKey());
                if (map.put(objRequireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                    throw new IllegalArgumentException("duplicate key: " + objRequireNonNull);
                }
            }
            return Collections.unmodifiableMap(map);
        }
    }

    /* JADX INFO: renamed from: j$.time.ZoneId$3, reason: invalid class name */
    /* JADX INFO: compiled from: D8$$SyntheticClass */
    public final /* synthetic */ class AnonymousClass3 {
        public static /* synthetic */ Object m(Object obj, Object obj2) {
            return obj != null ? obj : Objects.requireNonNull(obj2, "defaultObj");
        }
    }

    public abstract String getId();

    public abstract ZoneRules getRules();

    abstract void write(DataOutput dataOutput);

    public static ZoneId systemDefault() {
        return TimeZoneRetargetClass.toZoneId(TimeZone.getDefault());
    }

    public static Set<String> getAvailableZoneIds() {
        return new HashSet(ZoneRulesProvider.getAvailableZoneIds());
    }

    public static ZoneId of(String zoneId, Map<String, String> aliasMap) {
        Objects.requireNonNull(zoneId, "zoneId");
        Objects.requireNonNull(aliasMap, "aliasMap");
        String id = (String) AnonymousClass3.m(aliasMap.get(zoneId), zoneId);
        return of(id);
    }

    public static ZoneId of(String zoneId) {
        return of(zoneId, true);
    }

    public static ZoneId ofOffset(String prefix, ZoneOffset offset) {
        Objects.requireNonNull(prefix, "prefix");
        Objects.requireNonNull(offset, "offset");
        if (prefix.isEmpty()) {
            return offset;
        }
        if (!prefix.equals("GMT") && !prefix.equals("UTC") && !prefix.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: " + prefix);
        }
        if (offset.getTotalSeconds() != 0) {
            prefix = prefix.concat(offset.getId());
        }
        return new ZoneRegion(prefix, offset.getRules());
    }

    static ZoneId of(String zoneId, boolean checkAvailable) {
        Objects.requireNonNull(zoneId, "zoneId");
        if (zoneId.length() <= 1 || zoneId.startsWith("+") || zoneId.startsWith("-")) {
            return ZoneOffset.of(zoneId);
        }
        if (zoneId.startsWith("UTC") || zoneId.startsWith("GMT")) {
            return ofWithPrefix(zoneId, 3, checkAvailable);
        }
        if (zoneId.startsWith("UT")) {
            return ofWithPrefix(zoneId, 2, checkAvailable);
        }
        return ZoneRegion.ofId(zoneId, checkAvailable);
    }

    private static ZoneId ofWithPrefix(String zoneId, int prefixLength, boolean checkAvailable) {
        String prefix = zoneId.substring(0, prefixLength);
        if (zoneId.length() == prefixLength) {
            return ofOffset(prefix, ZoneOffset.UTC);
        }
        if (zoneId.charAt(prefixLength) != '+' && zoneId.charAt(prefixLength) != '-') {
            return ZoneRegion.ofId(zoneId, checkAvailable);
        }
        try {
            ZoneOffset offset = ZoneOffset.of(zoneId.substring(prefixLength));
            if (offset == ZoneOffset.UTC) {
                return ofOffset(prefix, offset);
            }
            return ofOffset(prefix, offset);
        } catch (DateTimeException ex) {
            throw new DateTimeException("Invalid ID for offset-based ZoneId: " + zoneId, ex);
        }
    }

    public static ZoneId from(TemporalAccessor temporal) {
        ZoneId obj = (ZoneId) temporal.query(TemporalQueries.zone());
        if (obj == null) {
            throw new DateTimeException("Unable to obtain ZoneId from TemporalAccessor: " + temporal + " of type " + temporal.getClass().getName());
        }
        return obj;
    }

    ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != ZoneRegion.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public String getDisplayName(TextStyle style, Locale locale) {
        return new DateTimeFormatterBuilder().appendZoneText(style).toFormatter(locale).format(toTemporal());
    }

    private TemporalAccessor toTemporal() {
        return new TemporalAccessor() { // from class: j$.time.ZoneId.1
            @Override // j$.time.temporal.TemporalAccessor
            public boolean isSupported(TemporalField field) {
                return false;
            }

            @Override // j$.time.temporal.TemporalAccessor
            public long getLong(TemporalField field) {
                throw new UnsupportedTemporalTypeException("Unsupported field: " + field);
            }

            /* JADX WARN: Generic types in debug info not equals: j$.time.temporal.TemporalQuery != java.time.temporal.TemporalQuery<R> */
            @Override // j$.time.temporal.TemporalAccessor
            public <R> R query(TemporalQuery<R> temporalQuery) {
                if (temporalQuery == TemporalQueries.zoneId()) {
                    return (R) ZoneId.this;
                }
                return (R) super.query(temporalQuery);
            }
        };
    }

    public ZoneId normalized() {
        try {
            ZoneRules rules = getRules();
            if (rules.isFixedOffset()) {
                return rules.getOffset(Instant.EPOCH);
            }
        } catch (ZoneRulesException e) {
        }
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            ZoneId other = (ZoneId) obj;
            return getId().equals(other.getId());
        }
        return false;
    }

    public int hashCode() {
        return getId().hashCode();
    }

    private void readObject(ObjectInputStream s) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public String toString() {
        return getId();
    }

    private Object writeReplace() {
        return new Ser((byte) 7, this);
    }
}
