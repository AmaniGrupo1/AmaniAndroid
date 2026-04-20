package org.ies.tierno.applicationamani.domain.models.enumm;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: EstadoCita.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;", "", "<init>", "(Ljava/lang/String;I)V", "pendiente", "confirmada", "cancelada", "completada", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public enum EstadoCita {
    pendiente,
    confirmada,
    cancelada,
    completada;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<EstadoCita> getEntries() {
        return $ENTRIES;
    }
}
