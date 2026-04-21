package org.ies.tierno.applicationamani.domain.models.test;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Opcion.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/test/Opcion;", "", TtmlNode.ATTR_ID, "", "texto", "valor", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getId", "()Ljava/lang/String;", "getTexto", "getValor", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Opcion {
    public static final int $stable = 0;
    private final String id;
    private final String texto;
    private final int valor;

    public Opcion() {
        this(null, null, 0, 7, null);
    }

    public static /* synthetic */ Opcion copy$default(Opcion opcion, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = opcion.id;
        }
        if ((i2 & 2) != 0) {
            str2 = opcion.texto;
        }
        if ((i2 & 4) != 0) {
            i = opcion.valor;
        }
        return opcion.copy(str, str2, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTexto() {
        return this.texto;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getValor() {
        return this.valor;
    }

    public final Opcion copy(String id, String texto, int valor) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(texto, "texto");
        return new Opcion(id, texto, valor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Opcion)) {
            return false;
        }
        Opcion opcion = (Opcion) other;
        return Intrinsics.areEqual(this.id, opcion.id) && Intrinsics.areEqual(this.texto, opcion.texto) && this.valor == opcion.valor;
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.texto.hashCode()) * 31) + Integer.hashCode(this.valor);
    }

    public String toString() {
        return "Opcion(id=" + this.id + ", texto=" + this.texto + ", valor=" + this.valor + ")";
    }

    public Opcion(String id, String texto, int valor) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(texto, "texto");
        this.id = id;
        this.texto = texto;
        this.valor = valor;
    }

    public /* synthetic */ Opcion(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i);
    }

    public final String getId() {
        return this.id;
    }

    public final String getTexto() {
        return this.texto;
    }

    public final int getValor() {
        return this.valor;
    }
}
