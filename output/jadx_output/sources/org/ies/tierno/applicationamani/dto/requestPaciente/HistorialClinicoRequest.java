package org.ies.tierno.applicationamani.dto.requestPaciente;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.utils.CitaNotificationWorker;

/* JADX INFO: compiled from: HistorialClinicoRequest.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003JA\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001e"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/HistorialClinicoRequest;", "", "idPaciente", "", CitaNotificationWorker.KEY_TITULO, "", "diagnostico", "tratamiento", "observaciones", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdPaciente", "()J", "getTitulo", "()Ljava/lang/String;", "getDiagnostico", "getTratamiento", "getObservaciones", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class HistorialClinicoRequest {
    public static final int $stable = 0;
    private final String diagnostico;
    private final long idPaciente;
    private final String observaciones;
    private final String titulo;
    private final String tratamiento;

    public static /* synthetic */ HistorialClinicoRequest copy$default(HistorialClinicoRequest historialClinicoRequest, long j, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            j = historialClinicoRequest.idPaciente;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = historialClinicoRequest.titulo;
        }
        String str5 = str;
        if ((i & 4) != 0) {
            str2 = historialClinicoRequest.diagnostico;
        }
        String str6 = str2;
        if ((i & 8) != 0) {
            str3 = historialClinicoRequest.tratamiento;
        }
        String str7 = str3;
        if ((i & 16) != 0) {
            str4 = historialClinicoRequest.observaciones;
        }
        return historialClinicoRequest.copy(j2, str5, str6, str7, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitulo() {
        return this.titulo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDiagnostico() {
        return this.diagnostico;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTratamiento() {
        return this.tratamiento;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getObservaciones() {
        return this.observaciones;
    }

    public final HistorialClinicoRequest copy(long idPaciente, String titulo, String diagnostico, String tratamiento, String observaciones) {
        Intrinsics.checkNotNullParameter(titulo, "titulo");
        return new HistorialClinicoRequest(idPaciente, titulo, diagnostico, tratamiento, observaciones);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HistorialClinicoRequest)) {
            return false;
        }
        HistorialClinicoRequest historialClinicoRequest = (HistorialClinicoRequest) other;
        return this.idPaciente == historialClinicoRequest.idPaciente && Intrinsics.areEqual(this.titulo, historialClinicoRequest.titulo) && Intrinsics.areEqual(this.diagnostico, historialClinicoRequest.diagnostico) && Intrinsics.areEqual(this.tratamiento, historialClinicoRequest.tratamiento) && Intrinsics.areEqual(this.observaciones, historialClinicoRequest.observaciones);
    }

    public int hashCode() {
        return (((((((Long.hashCode(this.idPaciente) * 31) + this.titulo.hashCode()) * 31) + (this.diagnostico == null ? 0 : this.diagnostico.hashCode())) * 31) + (this.tratamiento == null ? 0 : this.tratamiento.hashCode())) * 31) + (this.observaciones != null ? this.observaciones.hashCode() : 0);
    }

    public String toString() {
        return "HistorialClinicoRequest(idPaciente=" + this.idPaciente + ", titulo=" + this.titulo + ", diagnostico=" + this.diagnostico + ", tratamiento=" + this.tratamiento + ", observaciones=" + this.observaciones + ")";
    }

    public HistorialClinicoRequest(long idPaciente, String titulo, String diagnostico, String tratamiento, String observaciones) {
        Intrinsics.checkNotNullParameter(titulo, "titulo");
        this.idPaciente = idPaciente;
        this.titulo = titulo;
        this.diagnostico = diagnostico;
        this.tratamiento = tratamiento;
        this.observaciones = observaciones;
    }

    public /* synthetic */ HistorialClinicoRequest(long j, String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4);
    }

    public final long getIdPaciente() {
        return this.idPaciente;
    }

    public final String getTitulo() {
        return this.titulo;
    }

    public final String getDiagnostico() {
        return this.diagnostico;
    }

    public final String getTratamiento() {
        return this.tratamiento;
    }

    public final String getObservaciones() {
        return this.observaciones;
    }
}
