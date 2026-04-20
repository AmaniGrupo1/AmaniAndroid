package org.ies.tierno.applicationamani.dto.citas;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerapiaResponseDTO.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "", "idTipo", "", "nombre", "", "duracionMinutos", "", "<init>", "(JLjava/lang/String;I)V", "getIdTipo", "()J", "getNombre", "()Ljava/lang/String;", "getDuracionMinutos", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class TerapiaResponseDTO {
    public static final int $stable = 0;
    private final int duracionMinutos;
    private final long idTipo;
    private final String nombre;

    public static /* synthetic */ TerapiaResponseDTO copy$default(TerapiaResponseDTO terapiaResponseDTO, long j, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = terapiaResponseDTO.idTipo;
        }
        if ((i2 & 2) != 0) {
            str = terapiaResponseDTO.nombre;
        }
        if ((i2 & 4) != 0) {
            i = terapiaResponseDTO.duracionMinutos;
        }
        return terapiaResponseDTO.copy(j, str, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdTipo() {
        return this.idTipo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getDuracionMinutos() {
        return this.duracionMinutos;
    }

    public final TerapiaResponseDTO copy(long idTipo, String nombre, int duracionMinutos) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        return new TerapiaResponseDTO(idTipo, nombre, duracionMinutos);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TerapiaResponseDTO)) {
            return false;
        }
        TerapiaResponseDTO terapiaResponseDTO = (TerapiaResponseDTO) other;
        return this.idTipo == terapiaResponseDTO.idTipo && Intrinsics.areEqual(this.nombre, terapiaResponseDTO.nombre) && this.duracionMinutos == terapiaResponseDTO.duracionMinutos;
    }

    public int hashCode() {
        return (((Long.hashCode(this.idTipo) * 31) + this.nombre.hashCode()) * 31) + Integer.hashCode(this.duracionMinutos);
    }

    public String toString() {
        return "TerapiaResponseDTO(idTipo=" + this.idTipo + ", nombre=" + this.nombre + ", duracionMinutos=" + this.duracionMinutos + ")";
    }

    public TerapiaResponseDTO(long idTipo, String nombre, int duracionMinutos) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        this.idTipo = idTipo;
        this.nombre = nombre;
        this.duracionMinutos = duracionMinutos;
    }

    public final long getIdTipo() {
        return this.idTipo;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final int getDuracionMinutos() {
        return this.duracionMinutos;
    }
}
