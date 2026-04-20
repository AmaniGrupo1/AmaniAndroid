package org.ies.tierno.applicationamani.domain.models.test;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RespuestasRequestDTO.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J0\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;", "", "idPregunta", "", "idOpcion", "texto", "", "<init>", "(JLjava/lang/Long;Ljava/lang/String;)V", "getIdPregunta", "()J", "getIdOpcion", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getTexto", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(JLjava/lang/Long;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RespuestasRequestDTO {
    public static final int $stable = 0;
    private final Long idOpcion;
    private final long idPregunta;
    private final String texto;

    public static /* synthetic */ RespuestasRequestDTO copy$default(RespuestasRequestDTO respuestasRequestDTO, long j, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = respuestasRequestDTO.idPregunta;
        }
        if ((i & 2) != 0) {
            l = respuestasRequestDTO.idOpcion;
        }
        if ((i & 4) != 0) {
            str = respuestasRequestDTO.texto;
        }
        return respuestasRequestDTO.copy(j, l, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdPregunta() {
        return this.idPregunta;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getIdOpcion() {
        return this.idOpcion;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTexto() {
        return this.texto;
    }

    public final RespuestasRequestDTO copy(long idPregunta, Long idOpcion, String texto) {
        return new RespuestasRequestDTO(idPregunta, idOpcion, texto);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RespuestasRequestDTO)) {
            return false;
        }
        RespuestasRequestDTO respuestasRequestDTO = (RespuestasRequestDTO) other;
        return this.idPregunta == respuestasRequestDTO.idPregunta && Intrinsics.areEqual(this.idOpcion, respuestasRequestDTO.idOpcion) && Intrinsics.areEqual(this.texto, respuestasRequestDTO.texto);
    }

    public int hashCode() {
        return (((Long.hashCode(this.idPregunta) * 31) + (this.idOpcion == null ? 0 : this.idOpcion.hashCode())) * 31) + (this.texto != null ? this.texto.hashCode() : 0);
    }

    public String toString() {
        return "RespuestasRequestDTO(idPregunta=" + this.idPregunta + ", idOpcion=" + this.idOpcion + ", texto=" + this.texto + ")";
    }

    public RespuestasRequestDTO(long idPregunta, Long idOpcion, String texto) {
        this.idPregunta = idPregunta;
        this.idOpcion = idOpcion;
        this.texto = texto;
    }

    public final long getIdPregunta() {
        return this.idPregunta;
    }

    public final Long getIdOpcion() {
        return this.idOpcion;
    }

    public final String getTexto() {
        return this.texto;
    }
}
