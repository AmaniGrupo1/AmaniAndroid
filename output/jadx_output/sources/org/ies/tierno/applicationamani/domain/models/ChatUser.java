package org.ies.tierno.applicationamani.domain.models;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatUser.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/ChatUser;", "", TtmlNode.ATTR_ID, "", "nombre", "rol", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getNombre", "getRol", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class ChatUser {
    public static final int $stable = 0;
    private final String id;
    private final String nombre;
    private final String rol;

    public ChatUser() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ ChatUser copy$default(ChatUser chatUser, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = chatUser.id;
        }
        if ((i & 2) != 0) {
            str2 = chatUser.nombre;
        }
        if ((i & 4) != 0) {
            str3 = chatUser.rol;
        }
        return chatUser.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNombre() {
        return this.nombre;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRol() {
        return this.rol;
    }

    public final ChatUser copy(String id, String nombre, String rol) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(rol, "rol");
        return new ChatUser(id, nombre, rol);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChatUser)) {
            return false;
        }
        ChatUser chatUser = (ChatUser) other;
        return Intrinsics.areEqual(this.id, chatUser.id) && Intrinsics.areEqual(this.nombre, chatUser.nombre) && Intrinsics.areEqual(this.rol, chatUser.rol);
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.nombre.hashCode()) * 31) + this.rol.hashCode();
    }

    public String toString() {
        return "ChatUser(id=" + this.id + ", nombre=" + this.nombre + ", rol=" + this.rol + ")";
    }

    public ChatUser(String id, String nombre, String rol) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(rol, "rol");
        this.id = id;
        this.nombre = nombre;
        this.rol = rol;
    }

    public /* synthetic */ ChatUser(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }

    public final String getId() {
        return this.id;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getRol() {
        return this.rol;
    }
}
