package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalUnit;
import j$.time.zone.ZoneOffsetTransition;
import j$.time.zone.ZoneRules;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes19.dex */
final class ChronoZonedDateTimeImpl<D extends ChronoLocalDate> implements ChronoZonedDateTime<D>, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    private final transient ChronoLocalDateTimeImpl<D> dateTime;
    private final transient ZoneOffset offset;
    private final transient ZoneId zone;

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateTimeImpl != java.time.chrono.ChronoLocalDateTimeImpl<R extends j$.time.chrono.ChronoLocalDate> */
    static <R extends ChronoLocalDate> ChronoZonedDateTime<R> ofBest(ChronoLocalDateTimeImpl<R> chronoLocalDateTimeImpl, ZoneId zone, ZoneOffset preferredOffset) {
        ZoneOffset offset;
        Objects.requireNonNull(chronoLocalDateTimeImpl, "localDateTime");
        Objects.requireNonNull(zone, "zone");
        if (zone instanceof ZoneOffset) {
            return new ChronoZonedDateTimeImpl(chronoLocalDateTimeImpl, (ZoneOffset) zone, zone);
        }
        ZoneRules rules = zone.getRules();
        LocalDateTime isoLDT = LocalDateTime.from((TemporalAccessor) chronoLocalDateTimeImpl);
        List<ZoneOffset> validOffsets = rules.getValidOffsets(isoLDT);
        if (validOffsets.size() == 1) {
            offset = validOffsets.get(0);
        } else if (validOffsets.size() == 0) {
            ZoneOffsetTransition trans = rules.getTransition(isoLDT);
            chronoLocalDateTimeImpl = chronoLocalDateTimeImpl.plusSeconds(trans.getDuration().getSeconds());
            offset = trans.getOffsetAfter();
        } else if (preferredOffset != null && validOffsets.contains(preferredOffset)) {
            offset = preferredOffset;
        } else {
            ZoneOffset offset2 = validOffsets.get(0);
            offset = offset2;
        }
        Objects.requireNonNull(offset, "offset");
        return new ChronoZonedDateTimeImpl(chronoLocalDateTimeImpl, offset, zone);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateTimeImpl != java.time.chrono.ChronoLocalDateTimeImpl<?> */
    static ChronoZonedDateTimeImpl<?> ofInstant(Chronology chrono, Instant instant, ZoneId zone) {
        ZoneRules rules = zone.getRules();
        ZoneOffset offset = rules.getOffset(instant);
        Objects.requireNonNull(offset, "offset");
        LocalDateTime ldt = LocalDateTime.ofEpochSecond(instant.getEpochSecond(), instant.getNano(), offset);
        return new ChronoZonedDateTimeImpl<>((ChronoLocalDateTimeImpl) chrono.localDateTime(ldt), offset, zone);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    private ChronoZonedDateTimeImpl<D> create(Instant instant, ZoneId zoneId) {
        return (ChronoZonedDateTimeImpl<D>) ofInstant(getChronology(), instant, zoneId);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<R extends j$.time.chrono.ChronoLocalDate> */
    static <R extends ChronoLocalDate> ChronoZonedDateTimeImpl<R> ensureValid(Chronology chrono, Temporal temporal) {
        ChronoZonedDateTimeImpl<R> chronoZonedDateTimeImpl = (ChronoZonedDateTimeImpl) temporal;
        if (!chrono.equals(chronoZonedDateTimeImpl.getChronology())) {
            throw new ClassCastException("Chronology mismatch, required: " + chrono.getId() + ", actual: " + chronoZonedDateTimeImpl.getChronology().getId());
        }
        return chronoZonedDateTimeImpl;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateTimeImpl != java.time.chrono.ChronoLocalDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    private ChronoZonedDateTimeImpl(ChronoLocalDateTimeImpl<D> chronoLocalDateTimeImpl, ZoneOffset offset, ZoneId zone) {
        this.dateTime = (ChronoLocalDateTimeImpl) Objects.requireNonNull(chronoLocalDateTimeImpl, "dateTime");
        this.offset = (ZoneOffset) Objects.requireNonNull(offset, "offset");
        this.zone = (ZoneId) Objects.requireNonNull(zone, "zone");
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneOffset getOffset() {
        return this.offset;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ChronoZonedDateTime<D> withEarlierOffsetAtOverlap() {
        ZoneOffsetTransition trans = getZone().getRules().getTransition(LocalDateTime.from((TemporalAccessor) this));
        if (trans != null && trans.isOverlap()) {
            ZoneOffset earlierOffset = trans.getOffsetBefore();
            if (!earlierOffset.equals(this.offset)) {
                return new ChronoZonedDateTimeImpl(this.dateTime, earlierOffset, this.zone);
            }
        }
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ChronoZonedDateTime<D> withLaterOffsetAtOverlap() {
        ZoneOffsetTransition trans = getZone().getRules().getTransition(LocalDateTime.from((TemporalAccessor) this));
        if (trans != null) {
            ZoneOffset offset = trans.getOffsetAfter();
            if (!offset.equals(getOffset())) {
                return new ChronoZonedDateTimeImpl(this.dateTime, offset, this.zone);
            }
        }
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ChronoLocalDateTime<D> toLocalDateTime() {
        return this.dateTime;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneId getZone() {
        return this.zone;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ChronoZonedDateTime<D> withZoneSameLocal(ZoneId zone) {
        return ofBest(this.dateTime, zone, this.offset);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public ChronoZonedDateTime<D> withZoneSameInstant(ZoneId zone) {
        Objects.requireNonNull(zone, "zone");
        return this.zone.equals(zone) ? this : create(this.dateTime.toInstant(this.offset), zone);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.TemporalAccessor
    public boolean isSupported(TemporalField field) {
        return (field instanceof ChronoField) || (field != null && field.isSupportedBy(this));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    public ChronoZonedDateTime<D> with(TemporalField field, long newValue) {
        if (field instanceof ChronoField) {
            ChronoField f = (ChronoField) field;
            switch (f) {
                case INSTANT_SECONDS:
                    return plus(newValue - toEpochSecond(), (TemporalUnit) ChronoUnit.SECONDS);
                case OFFSET_SECONDS:
                    ZoneOffset offset = ZoneOffset.ofTotalSeconds(f.checkValidIntValue(newValue));
                    return create(this.dateTime.toInstant(offset), this.zone);
                default:
                    return ofBest(this.dateTime.with(field, newValue), this.zone, this.offset);
            }
        }
        return ensureValid(getChronology(), field.adjustInto(this, newValue));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    public ChronoZonedDateTime<D> plus(long amountToAdd, TemporalUnit unit) {
        if (unit instanceof ChronoUnit) {
            return with((TemporalAdjuster) this.dateTime.plus(amountToAdd, unit));
        }
        return ensureValid(getChronology(), unit.addTo(this, amountToAdd));
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTime != java.time.chrono.ChronoZonedDateTime<D extends j$.time.chrono.ChronoLocalDate> */
    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.temporal.Temporal
    public long until(Temporal endExclusive, TemporalUnit unit) {
        Objects.requireNonNull(endExclusive, "endExclusive");
        ChronoZonedDateTime<? extends ChronoLocalDate> chronoZonedDateTimeZonedDateTime = getChronology().zonedDateTime(endExclusive);
        if (unit instanceof ChronoUnit) {
            return this.dateTime.until(chronoZonedDateTimeZonedDateTime.withZoneSameInstant(this.offset).toLocalDateTime(), unit);
        }
        Objects.requireNonNull(unit, "unit");
        return unit.between(this, chronoZonedDateTimeZonedDateTime);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    private Object writeReplace() {
        return new Ser((byte) 3, this);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    private void readObject(ObjectInputStream s) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    void writeExternal(ObjectOutput out) throws IOException {
        out.writeObject(this.dateTime);
        out.writeObject(this.offset);
        out.writeObject(this.zone);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoLocalDateTime != java.time.chrono.ChronoLocalDateTime<?> */
    static ChronoZonedDateTime<?> readExternal(ObjectInput objectInput) {
        ChronoLocalDateTime chronoLocalDateTime = (ChronoLocalDateTime) objectInput.readObject();
        ZoneOffset zoneOffset = (ZoneOffset) objectInput.readObject();
        return chronoLocalDateTime.atZone(zoneOffset).withZoneSameLocal((ZoneId) objectInput.readObject());
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && compareTo((ChronoZonedDateTime<?>) obj) == 0;
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public int hashCode() {
        return (toLocalDateTime().hashCode() ^ getOffset().hashCode()) ^ Integer.rotateLeft(getZone().hashCode(), 3);
    }

    /* JADX WARN: Generic types in debug info not equals: j$.time.chrono.ChronoZonedDateTimeImpl != java.time.chrono.ChronoZonedDateTimeImpl<D extends j$.time.chrono.ChronoLocalDate> */
    @Override // j$.time.chrono.ChronoZonedDateTime
    public String toString() {
        String str = toLocalDateTime().toString() + getOffset().toString();
        if (getOffset() != getZone()) {
            return str + "[" + getZone().toString() + "]";
        }
        return str;
    }
}
