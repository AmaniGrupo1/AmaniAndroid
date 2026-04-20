package org.ies.tierno.applicationamani.domain.models.test;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreguntaConOpciones.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/test/PreguntaConOpciones;", "", TtmlNode.ATTR_ID, "", "textoPregunta", "opciones", "", "Lorg/ies/tierno/applicationamani/domain/models/test/Opcion;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getTextoPregunta", "getOpciones", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PreguntaConOpciones {
    public static final int $stable = 8;
    private final String id;
    private final List<Opcion> opciones;
    private final String textoPregunta;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PreguntaConOpciones copy$default(PreguntaConOpciones preguntaConOpciones, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = preguntaConOpciones.id;
        }
        if ((i & 2) != 0) {
            str2 = preguntaConOpciones.textoPregunta;
        }
        if ((i & 4) != 0) {
            list = preguntaConOpciones.opciones;
        }
        return preguntaConOpciones.copy(str, str2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTextoPregunta() {
        return this.textoPregunta;
    }

    public final List<Opcion> component3() {
        return this.opciones;
    }

    public final PreguntaConOpciones copy(String id, String textoPregunta, List<Opcion> opciones) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(textoPregunta, "textoPregunta");
        Intrinsics.checkNotNullParameter(opciones, "opciones");
        return new PreguntaConOpciones(id, textoPregunta, opciones);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreguntaConOpciones)) {
            return false;
        }
        PreguntaConOpciones preguntaConOpciones = (PreguntaConOpciones) other;
        return Intrinsics.areEqual(this.id, preguntaConOpciones.id) && Intrinsics.areEqual(this.textoPregunta, preguntaConOpciones.textoPregunta) && Intrinsics.areEqual(this.opciones, preguntaConOpciones.opciones);
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.textoPregunta.hashCode()) * 31) + this.opciones.hashCode();
    }

    public String toString() {
        return "PreguntaConOpciones(id=" + this.id + ", textoPregunta=" + this.textoPregunta + ", opciones=" + this.opciones + ")";
    }

    public PreguntaConOpciones(String id, String textoPregunta, List<Opcion> opciones) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(textoPregunta, "textoPregunta");
        Intrinsics.checkNotNullParameter(opciones, "opciones");
        this.id = id;
        this.textoPregunta = textoPregunta;
        this.opciones = opciones;
    }

    public /* synthetic */ PreguntaConOpciones(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, str2, list);
    }

    public final String getId() {
        return this.id;
    }

    public final String getTextoPregunta() {
        return this.textoPregunta;
    }

    public final List<Opcion> getOpciones() {
        return this.opciones;
    }
}
