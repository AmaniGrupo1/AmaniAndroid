package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatListViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatPartner;", "", TtmlNode.ATTR_ID, "", "nombre", "", "rol", "<init>", "(JLjava/lang/String;Ljava/lang/String;)V", "getId", "()J", "getNombre", "()Ljava/lang/String;", "getRol", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class ChatPartner {
    public static final int $stable = 0;
    private final long id;
    private final String nombre;
    private final String rol;

    public static /* synthetic */ ChatPartner copy$default(ChatPartner chatPartner, long j, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = chatPartner.id;
        }
        if ((i & 2) != 0) {
            str = chatPartner.nombre;
        }
        if ((i & 4) != 0) {
            str2 = chatPartner.rol;
        }
        return chatPartner.copy(j, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
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

    public final ChatPartner copy(long id, String nombre, String rol) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(rol, "rol");
        return new ChatPartner(id, nombre, rol);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChatPartner)) {
            return false;
        }
        ChatPartner chatPartner = (ChatPartner) other;
        return this.id == chatPartner.id && Intrinsics.areEqual(this.nombre, chatPartner.nombre) && Intrinsics.areEqual(this.rol, chatPartner.rol);
    }

    public int hashCode() {
        return (((Long.hashCode(this.id) * 31) + this.nombre.hashCode()) * 31) + this.rol.hashCode();
    }

    public String toString() {
        return "ChatPartner(id=" + this.id + ", nombre=" + this.nombre + ", rol=" + this.rol + ")";
    }

    public ChatPartner(long id, String nombre, String rol) {
        Intrinsics.checkNotNullParameter(nombre, "nombre");
        Intrinsics.checkNotNullParameter(rol, "rol");
        this.id = id;
        this.nombre = nombre;
        this.rol = rol;
    }

    public final long getId() {
        return this.id;
    }

    public final String getNombre() {
        return this.nombre;
    }

    public final String getRol() {
        return this.rol;
    }
}
