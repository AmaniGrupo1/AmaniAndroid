package j$.util;

import j$.time.Instant;
import java.util.Date;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes19.dex */
public final /* synthetic */ class DateRetargetClass {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Instant toInstant(Date date) {
        return date instanceof DateRetargetInterface ? ((DateRetargetInterface) date).toInstant() : DesugarDate.toInstant(date);
    }
}
