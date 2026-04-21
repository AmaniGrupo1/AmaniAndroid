package j$.time.chrono;

import j$.time.DateTimeException;

/* JADX INFO: loaded from: classes19.dex */
public enum IsoEra implements Era {
    BCE,
    CE;

    public static IsoEra of(int isoEra) {
        switch (isoEra) {
            case 0:
                return BCE;
            case 1:
                return CE;
            default:
                throw new DateTimeException("Invalid era: " + isoEra);
        }
    }

    @Override // j$.time.chrono.Era
    public int getValue() {
        return ordinal();
    }
}
