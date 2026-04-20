package j$.util;

import j$.time.Instant;
import java.util.Date;

/* JADX INFO: loaded from: classes19.dex */
public final /* synthetic */ class DesugarDate {
    private DesugarDate() {
    }

    public static Date from(Instant instant) {
        try {
            return new Date(instant.toEpochMilli());
        } catch (ArithmeticException ex) {
            throw new IllegalArgumentException(ex);
        }
    }

    public static Instant toInstant(Date date) {
        return Instant.ofEpochMilli(date.getTime());
    }
}
