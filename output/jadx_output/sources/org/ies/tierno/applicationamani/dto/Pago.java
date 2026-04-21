package org.ies.tierno.applicationamani.dto;

import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago;

/* JADX INFO: compiled from: Pago.kt */
/* JADX INFO: loaded from: classes13.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/Pago;", "", "idCita", "", "metodoPago", "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;", "monto", "Ljava/math/BigDecimal;", "<init>", "(JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V", "getIdCita", "()J", "getMetodoPago", "()Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;", "getMonto", "()Ljava/math/BigDecimal;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Pago {
    public static final int $stable = 8;
    private final long idCita;
    private final MetodoPago metodoPago;
    private final BigDecimal monto;

    public static /* synthetic */ Pago copy$default(Pago pago, long j, MetodoPago metodoPago, BigDecimal bigDecimal, int i, Object obj) {
        if ((i & 1) != 0) {
            j = pago.idCita;
        }
        if ((i & 2) != 0) {
            metodoPago = pago.metodoPago;
        }
        if ((i & 4) != 0) {
            bigDecimal = pago.monto;
        }
        return pago.copy(j, metodoPago, bigDecimal);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdCita() {
        return this.idCita;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MetodoPago getMetodoPago() {
        return this.metodoPago;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final BigDecimal getMonto() {
        return this.monto;
    }

    public final Pago copy(long idCita, MetodoPago metodoPago, BigDecimal monto) {
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(monto, "monto");
        return new Pago(idCita, metodoPago, monto);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Pago)) {
            return false;
        }
        Pago pago = (Pago) other;
        return this.idCita == pago.idCita && this.metodoPago == pago.metodoPago && Intrinsics.areEqual(this.monto, pago.monto);
    }

    public int hashCode() {
        return (((Long.hashCode(this.idCita) * 31) + this.metodoPago.hashCode()) * 31) + this.monto.hashCode();
    }

    public String toString() {
        return "Pago(idCita=" + this.idCita + ", metodoPago=" + this.metodoPago + ", monto=" + this.monto + ")";
    }

    public Pago(long idCita, MetodoPago metodoPago, BigDecimal monto) {
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(monto, "monto");
        this.idCita = idCita;
        this.metodoPago = metodoPago;
        this.monto = monto;
    }

    public final long getIdCita() {
        return this.idCita;
    }

    public final MetodoPago getMetodoPago() {
        return this.metodoPago;
    }

    public final BigDecimal getMonto() {
        return this.monto;
    }
}
