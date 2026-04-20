package org.ies.tierno.applicationamani.dto.opcionAdminDTO;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OpcionAdminDTO.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006HÆ\u0003J3\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;", "", "texto", "", "tipo", "opciones", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getTexto", "()Ljava/lang/String;", "getTipo", "getOpciones", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class OpcionAdminDTO {
    public static final int $stable = 8;
    private final List<String> opciones;
    private final String texto;
    private final String tipo;

    public OpcionAdminDTO() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OpcionAdminDTO copy$default(OpcionAdminDTO opcionAdminDTO, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = opcionAdminDTO.texto;
        }
        if ((i & 2) != 0) {
            str2 = opcionAdminDTO.tipo;
        }
        if ((i & 4) != 0) {
            list = opcionAdminDTO.opciones;
        }
        return opcionAdminDTO.copy(str, str2, list);
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

    public final OpcionAdminDTO copy(String texto, String tipo, List<String> opciones) {
        return new OpcionAdminDTO(texto, tipo, opciones);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpcionAdminDTO)) {
            return false;
        }
        OpcionAdminDTO opcionAdminDTO = (OpcionAdminDTO) other;
        return Intrinsics.areEqual(this.texto, opcionAdminDTO.texto) && Intrinsics.areEqual(this.tipo, opcionAdminDTO.tipo) && Intrinsics.areEqual(this.opciones, opcionAdminDTO.opciones);
    }

    public int hashCode() {
        return ((((this.texto == null ? 0 : this.texto.hashCode()) * 31) + (this.tipo == null ? 0 : this.tipo.hashCode())) * 31) + (this.opciones != null ? this.opciones.hashCode() : 0);
    }

    public String toString() {
        return "OpcionAdminDTO(texto=" + this.texto + ", tipo=" + this.tipo + ", opciones=" + this.opciones + ")";
    }

    public OpcionAdminDTO(String texto, String tipo, List<String> list) {
        this.texto = texto;
        this.tipo = tipo;
        this.opciones = list;
    }

    public /* synthetic */ OpcionAdminDTO(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : list);
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
