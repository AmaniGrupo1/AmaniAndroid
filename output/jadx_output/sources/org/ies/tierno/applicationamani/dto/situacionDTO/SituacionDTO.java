package org.ies.tierno.applicationamani.dto.situacionDTO;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SituacionDTO.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J5\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001b"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;", "", "idSituacion", "", "nombre", "", "categoria", "descripcion", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdSituacion", "()J", "getNombre", "()Ljava/lang/String;", "getCategoria", "getDescripcion", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class SituacionDTO {
    public static final int $stable = 0;
    private final String categoria;
    private final String descripcion;
    private final long idSituacion;
    private final String nombre;

    public static /* synthetic */ SituacionDTO copy$default(SituacionDTO situacionDTO, long j, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = situacionDTO.idSituacion;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = situacionDTO.nombre;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = situacionDTO.categoria;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = situacionDTO.descripcion;
        }
        return situacionDTO.copy(j2, str4, str5, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getIdSituacion() {
        return this.idSituacion;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCategoria() {
        return this.categoria;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescripcion() {
        return this.descripcion;
    }

    public final SituacionDTO copy(long idSituacion, String nombre, String categoria, String descripcion) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        return new SituacionDTO(idSituacion, nombre, categoria, descripcion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SituacionDTO)) {
            return false;
        }
        SituacionDTO situacionDTO = (SituacionDTO) other;
        return this.idSituacion == situacionDTO.idSituacion && Intrinsics.areEqual(this.nombre, situacionDTO.nombre) && Intrinsics.areEqual(this.categoria, situacionDTO.categoria) && Intrinsics.areEqual(this.descripcion, situacionDTO.descripcion);
    }

    public int hashCode() {
        return (((((Long.hashCode(this.idSituacion) * 31) + this.nombre.hashCode()) * 31) + (this.categoria == null ? 0 : this.categoria.hashCode())) * 31) + (this.descripcion != null ? this.descripcion.hashCode() : 0);
    }

    public String toString() {
        return "SituacionDTO(idSituacion=" + this.idSituacion + ", nombre=" + this.nombre + ", categoria=" + this.categoria + ", descripcion=" + this.descripcion + ")";
    }

    public SituacionDTO(long idSituacion, String nombre, String categoria, String descripcion) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        this.idSituacion = idSituacion;
        this.nombre = nombre;
        this.categoria = categoria;
        this.descripcion = descripcion;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SituacionDTO(long j, String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        String str4;
        str2 = (i & 4) != 0 ? null : str2;
        if ((i & 8) == 0) {
            str4 = str3;
        } else {
            str4 = null;
        }
        this(j, str, str2, str4);
    }

    public final long getIdSituacion() {
        return this.idSituacion;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getCategoria() {
        return this.categoria;
    }

    public final String getDescripcion() {
        return this.descripcion;
    }
}
