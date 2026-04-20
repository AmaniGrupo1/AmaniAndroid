package org.ies.tierno.applicationamani.dto.requestPaciente;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DireccionRequest.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003JT\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006#"}, d2 = {"Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;", "", "idPaciente", "", "calle", "", "ciudad", "provincia", "codigoPostal", "pais", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIdPaciente", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getCalle", "()Ljava/lang/String;", "getCiudad", "getProvincia", "getCodigoPostal", "getPais", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class DireccionRequest {
    public static final int $stable = 0;
    private final String calle;
    private final String ciudad;
    private final String codigoPostal;
    private final Long idPaciente;
    private final String pais;
    private final String provincia;

    public static /* synthetic */ DireccionRequest copy$default(DireccionRequest direccionRequest, Long l, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            l = direccionRequest.idPaciente;
        }
        if ((i & 2) != 0) {
            str = direccionRequest.calle;
        }
        if ((i & 4) != 0) {
            str2 = direccionRequest.ciudad;
        }
        if ((i & 8) != 0) {
            str3 = direccionRequest.provincia;
        }
        if ((i & 16) != 0) {
            str4 = direccionRequest.codigoPostal;
        }
        if ((i & 32) != 0) {
            str5 = direccionRequest.pais;
        }
        String str6 = str4;
        String str7 = str5;
        return direccionRequest.copy(l, str, str2, str3, str6, str7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getIdPaciente() {
        return this.idPaciente;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCalle() {
        return this.calle;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCiudad() {
        return this.ciudad;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getProvincia() {
        return this.provincia;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCodigoPostal() {
        return this.codigoPostal;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPais() {
        return this.pais;
    }

    public final DireccionRequest copy(Long idPaciente, String calle, String ciudad, String provincia, String codigoPostal, String pais) {
        Intrinsics.checkNotNullParameter(calle, "calle");
        return new DireccionRequest(idPaciente, calle, ciudad, provincia, codigoPostal, pais);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DireccionRequest)) {
            return false;
        }
        DireccionRequest direccionRequest = (DireccionRequest) other;
        return Intrinsics.areEqual(this.idPaciente, direccionRequest.idPaciente) && Intrinsics.areEqual(this.calle, direccionRequest.calle) && Intrinsics.areEqual(this.ciudad, direccionRequest.ciudad) && Intrinsics.areEqual(this.provincia, direccionRequest.provincia) && Intrinsics.areEqual(this.codigoPostal, direccionRequest.codigoPostal) && Intrinsics.areEqual(this.pais, direccionRequest.pais);
    }

    public int hashCode() {
        return ((((((((((this.idPaciente == null ? 0 : this.idPaciente.hashCode()) * 31) + this.calle.hashCode()) * 31) + (this.ciudad == null ? 0 : this.ciudad.hashCode())) * 31) + (this.provincia == null ? 0 : this.provincia.hashCode())) * 31) + (this.codigoPostal == null ? 0 : this.codigoPostal.hashCode())) * 31) + (this.pais != null ? this.pais.hashCode() : 0);
    }

    public String toString() {
        return "DireccionRequest(idPaciente=" + this.idPaciente + ", calle=" + this.calle + ", ciudad=" + this.ciudad + ", provincia=" + this.provincia + ", codigoPostal=" + this.codigoPostal + ", pais=" + this.pais + ")";
    }

    public DireccionRequest(Long idPaciente, String calle, String ciudad, String provincia, String codigoPostal, String pais) {
        Intrinsics.checkNotNullParameter(calle, "calle");
        this.idPaciente = idPaciente;
        this.calle = calle;
        this.ciudad = ciudad;
        this.provincia = provincia;
        this.codigoPostal = codigoPostal;
        this.pais = pais;
    }

    public /* synthetic */ DireccionRequest(Long l, String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5);
    }

    public final Long getIdPaciente() {
        return this.idPaciente;
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
