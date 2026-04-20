package org.ies.tierno.applicationamani.domain.models.test;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Respuesta.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/test/Respuesta;", "", "preguntaId", "", "texto", "valor", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getPreguntaId", "()Ljava/lang/String;", "getTexto", "getValor", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Respuesta {
    public static final int $stable = 0;
    private final String preguntaId;
    private final String texto;
    private final int valor;

    public static /* synthetic */ Respuesta copy$default(Respuesta respuesta, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = respuesta.preguntaId;
        }
        if ((i2 & 2) != 0) {
            str2 = respuesta.texto;
        }
        if ((i2 & 4) != 0) {
            i = respuesta.valor;
        }
        return respuesta.copy(str, str2, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPreguntaId() {
        return this.preguntaId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTexto() {
        return this.texto;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getValor() {
        return this.valor;
    }

    public final Respuesta copy(String preguntaId, String texto, int valor) {
        Intrinsics.checkNotNullParameter(preguntaId, "preguntaId");
        Intrinsics.checkNotNullParameter(texto, "texto");
        return new Respuesta(preguntaId, texto, valor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Respuesta)) {
            return false;
        }
        Respuesta respuesta = (Respuesta) other;
        return Intrinsics.areEqual(this.preguntaId, respuesta.preguntaId) && Intrinsics.areEqual(this.texto, respuesta.texto) && this.valor == respuesta.valor;
    }

    public int hashCode() {
        return (((this.preguntaId.hashCode() * 31) + this.texto.hashCode()) * 31) + Integer.hashCode(this.valor);
    }

    public String toString() {
        return "Respuesta(preguntaId=" + this.preguntaId + ", texto=" + this.texto + ", valor=" + this.valor + ")";
    }

    public Respuesta(String preguntaId, String texto, int valor) {
        Intrinsics.checkNotNullParameter(preguntaId, "preguntaId");
        Intrinsics.checkNotNullParameter(texto, "texto");
        this.preguntaId = preguntaId;
        this.texto = texto;
        this.valor = valor;
    }

    public /* synthetic */ Respuesta(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, str2, (i2 & 4) != 0 ? 0 : i);
    }

    public final String getPreguntaId() {
        return this.preguntaId;
    }

    public final String getTexto() {
        return this.texto;
    }

    public final int getValor() {
        return this.valor;
    }
}
