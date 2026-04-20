package org.ies.tierno.applicationamani.dto.requestPaciente;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DireccionResponseDTO.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003JC\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;", "", "calle", "", "ciudad", "provincia", "codigoPostal", "pais", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCalle", "()Ljava/lang/String;", "getCiudad", "getProvincia", "getCodigoPostal", "getPais", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class DireccionResponseDTO {
    public static final int $stable = 0;
    private final String calle;
    private final String ciudad;
    private final String codigoPostal;
    private final String pais;
    private final String provincia;

    public static /* synthetic */ DireccionResponseDTO copy$default(DireccionResponseDTO direccionResponseDTO, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = direccionResponseDTO.calle;
        }
        if ((i & 2) != 0) {
            str2 = direccionResponseDTO.ciudad;
        }
        if ((i & 4) != 0) {
            str3 = direccionResponseDTO.provincia;
        }
        if ((i & 8) != 0) {
            str4 = direccionResponseDTO.codigoPostal;
        }
        if ((i & 16) != 0) {
            str5 = direccionResponseDTO.pais;
        }
        String str6 = str5;
        String str7 = str3;
        return direccionResponseDTO.copy(str, str2, str7, str4, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCalle() {
        return this.calle;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCiudad() {
        return this.ciudad;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getProvincia() {
        return this.provincia;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCodigoPostal() {
        return this.codigoPostal;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPais() {
        return this.pais;
    }

    public final DireccionResponseDTO copy(String calle, String ciudad, String provincia, String codigoPostal, String pais) {
        Intrinsics.checkNotNullParameter(calle, "calle");
        return new DireccionResponseDTO(calle, ciudad, provincia, codigoPostal, pais);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DireccionResponseDTO)) {
            return false;
        }
        DireccionResponseDTO direccionResponseDTO = (DireccionResponseDTO) other;
        return Intrinsics.areEqual(this.calle, direccionResponseDTO.calle) && Intrinsics.areEqual(this.ciudad, direccionResponseDTO.ciudad) && Intrinsics.areEqual(this.provincia, direccionResponseDTO.provincia) && Intrinsics.areEqual(this.codigoPostal, direccionResponseDTO.codigoPostal) && Intrinsics.areEqual(this.pais, direccionResponseDTO.pais);
    }

    public int hashCode() {
        return (((((((this.calle.hashCode() * 31) + (this.ciudad == null ? 0 : this.ciudad.hashCode())) * 31) + (this.provincia == null ? 0 : this.provincia.hashCode())) * 31) + (this.codigoPostal == null ? 0 : this.codigoPostal.hashCode())) * 31) + (this.pais != null ? this.pais.hashCode() : 0);
    }

    public String toString() {
        return "DireccionResponseDTO(calle=" + this.calle + ", ciudad=" + this.ciudad + ", provincia=" + this.provincia + ", codigoPostal=" + this.codigoPostal + ", pais=" + this.pais + ")";
    }

    public DireccionResponseDTO(String calle, String ciudad, String provincia, String codigoPostal, String pais) {
        Intrinsics.checkNotNullParameter(calle, "calle");
        this.calle = calle;
        this.ciudad = ciudad;
        this.provincia = provincia;
        this.codigoPostal = codigoPostal;
        this.pais = pais;
    }

    public /* synthetic */ DireccionResponseDTO(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5);
    }

    public final String getCalle() {
        return this.calle;
    }

    public final String getCiudad() {
        return this.ciudad;
    }

    public final String getProvincia() {
        return this.provincia;
    }

    public final String getCodigoPostal() {
        return this.codigoPostal;
    }

    public final String getPais() {
        return this.pais;
    }
}
