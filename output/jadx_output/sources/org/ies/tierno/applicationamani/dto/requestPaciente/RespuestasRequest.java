package org.ies.tierno.applicationamani.dto.requestPaciente;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RespuestasRequest.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;", "", "idPregunta", "", "idOpcion", "texto", "", "<init>", "(JJLjava/lang/String;)V", "getIdPregunta", "()J", "getIdOpcion", "getTexto", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RespuestasRequest {
    public static final int $stable = 0;
    private final long idOpcion;
    private final long idPregunta;
    private final String texto;

    public static /* synthetic */ RespuestasRequest copy$default(RespuestasRequest respuestasRequest, long j, long j2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = respuestasRequest.idPregunta;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = respuestasRequest.idOpcion;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            str = respuestasRequest.texto;
        }
        return respuestasRequest.copy(j3, j4, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPregunta() {
        return this.idPregunta;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getIdOpcion() {
        return this.idOpcion;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTexto() {
        return this.texto;
    }

    public final RespuestasRequest copy(long idPregunta, long idOpcion, String texto) {
        return new RespuestasRequest(idPregunta, idOpcion, texto);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RespuestasRequest)) {
            return false;
        }
        RespuestasRequest respuestasRequest = (RespuestasRequest) other;
        return this.idPregunta == respuestasRequest.idPregunta && this.idOpcion == respuestasRequest.idOpcion && Intrinsics.areEqual(this.texto, respuestasRequest.texto);
    }

    public int hashCode() {
        return (((Long.hashCode(this.idPregunta) * 31) + Long.hashCode(this.idOpcion)) * 31) + (this.texto == null ? 0 : this.texto.hashCode());
    }

    public String toString() {
        return "RespuestasRequest(idPregunta=" + this.idPregunta + ", idOpcion=" + this.idOpcion + ", texto=" + this.texto + ")";
    }

    public RespuestasRequest(long idPregunta, long idOpcion, String texto) {
        this.idPregunta = idPregunta;
        this.idOpcion = idOpcion;
        this.texto = texto;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ RespuestasRequest(long j, long j2, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        String str2;
        if ((i & 4) == 0) {
            str2 = str;
        } else {
            str2 = null;
        }
        this(j, j2, str2);
    }

    public final long getIdPregunta() {
        return this.idPregunta;
    }

    public final long getIdOpcion() {
        return this.idOpcion;
    }

    public final String getTexto() {
        return this.texto;
    }
}
