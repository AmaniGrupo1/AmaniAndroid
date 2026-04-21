package org.ies.tierno.applicationamani.dto.opcionAdminDTO;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreguntaPacienteResponseDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaPacienteResponseDTO;", "", "texto", "", "tipo", "opciones", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getTexto", "()Ljava/lang/String;", "getTipo", "getOpciones", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PreguntaPacienteResponseDTO {
    public static final int $stable = 8;
    private final List<String> opciones;
    private final String texto;
    private final String tipo;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PreguntaPacienteResponseDTO copy$default(PreguntaPacienteResponseDTO preguntaPacienteResponseDTO, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = preguntaPacienteResponseDTO.texto;
        }
        if ((i & 2) != 0) {
            str2 = preguntaPacienteResponseDTO.tipo;
        }
        if ((i & 4) != 0) {
            list = preguntaPacienteResponseDTO.opciones;
        }
        return preguntaPacienteResponseDTO.copy(str, str2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTexto() {
        return this.texto;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTipo() {
        return this.tipo;
    }

    public final List<String> component3() {
        return this.opciones;
    }

    public final PreguntaPacienteResponseDTO copy(String texto, String tipo, List<String> opciones) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        Intrinsics.checkNotNullParameter(opciones, "opciones");
        return new PreguntaPacienteResponseDTO(texto, tipo, opciones);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreguntaPacienteResponseDTO)) {
            return false;
        }
        PreguntaPacienteResponseDTO preguntaPacienteResponseDTO = (PreguntaPacienteResponseDTO) other;
        return Intrinsics.areEqual(this.texto, preguntaPacienteResponseDTO.texto) && Intrinsics.areEqual(this.tipo, preguntaPacienteResponseDTO.tipo) && Intrinsics.areEqual(this.opciones, preguntaPacienteResponseDTO.opciones);
    }

    public int hashCode() {
        return (((this.texto.hashCode() * 31) + this.tipo.hashCode()) * 31) + this.opciones.hashCode();
    }

    public String toString() {
        return "PreguntaPacienteResponseDTO(texto=" + this.texto + ", tipo=" + this.tipo + ", opciones=" + this.opciones + ")";
    }

    public PreguntaPacienteResponseDTO(String texto, String tipo, List<String> opciones) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        Intrinsics.checkNotNullParameter(opciones, "opciones");
        this.texto = texto;
        this.tipo = tipo;
        this.opciones = opciones;
    }

    public final String getTexto() {
        return this.texto;
    }

    public final String getTipo() {
        return this.tipo;
    }

    public final List<String> getOpciones() {
        return this.opciones;
    }
}
