package org.ies.tierno.applicationamani.domain.models;

import androidx.core.app.FrameMetricsAggregator;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Conversation.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003J\t\u0010%\u001a\u00020\fHÆ\u0003J\t\u0010&\u001a\u00020\u000eHÆ\u0003Jc\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u000eHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006-"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/Conversation;", "", TtmlNode.ATTR_ID, "", "pacienteId", "pacienteNombre", "psicologoId", "psicologoNombre", "lastMessage", "lastMessageTime", "", "estado", "Lorg/ies/tierno/applicationamani/domain/models/ConversationState;", "unreadCount", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/ConversationState;I)V", "getId", "()Ljava/lang/String;", "getPacienteId", "getPacienteNombre", "getPsicologoId", "getPsicologoNombre", "getLastMessage", "getLastMessageTime", "()J", "getEstado", "()Lorg/ies/tierno/applicationamani/domain/models/ConversationState;", "getUnreadCount", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Conversation {
    public static final int $stable = 0;
    private final ConversationState estado;
    private final String id;
    private final String lastMessage;
    private final long lastMessageTime;
    private final String pacienteId;
    private final String pacienteNombre;
    private final String psicologoId;
    private final String psicologoNombre;
    private final int unreadCount;

    public Conversation() {
        this(null, null, null, null, null, null, 0L, null, 0, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public static /* synthetic */ Conversation copy$default(Conversation conversation, String str, String str2, String str3, String str4, String str5, String str6, long j, ConversationState conversationState, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = conversation.id;
        }
        if ((i2 & 2) != 0) {
            str2 = conversation.pacienteId;
        }
        if ((i2 & 4) != 0) {
            str3 = conversation.pacienteNombre;
        }
        if ((i2 & 8) != 0) {
            str4 = conversation.psicologoId;
        }
        if ((i2 & 16) != 0) {
            str5 = conversation.psicologoNombre;
        }
        if ((i2 & 32) != 0) {
            str6 = conversation.lastMessage;
        }
        if ((i2 & 64) != 0) {
            j = conversation.lastMessageTime;
        }
        if ((i2 & 128) != 0) {
            conversationState = conversation.estado;
        }
        if ((i2 & 256) != 0) {
            i = conversation.unreadCount;
        }
        long j2 = j;
        String str7 = str5;
        String str8 = str6;
        String str9 = str3;
        String str10 = str4;
        return conversation.copy(str, str2, str9, str10, str7, str8, j2, conversationState, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPacienteId() {
        return this.pacienteId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPacienteNombre() {
        return this.pacienteNombre;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPsicologoId() {
        return this.psicologoId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPsicologoNombre() {
        return this.psicologoNombre;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLastMessage() {
        return this.lastMessage;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getLastMessageTime() {
        return this.lastMessageTime;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final ConversationState getEstado() {
        return this.estado;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getUnreadCount() {
        return this.unreadCount;
    }

    public final Conversation copy(String id, String pacienteId, String pacienteNombre, String psicologoId, String psicologoNombre, String lastMessage, long lastMessageTime, ConversationState estado, int unreadCount) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(pacienteId, "pacienteId");
        Intrinsics.checkNotNullParameter(pacienteNombre, "pacienteNombre");
        Intrinsics.checkNotNullParameter(psicologoId, "psicologoId");
        Intrinsics.checkNotNullParameter(psicologoNombre, "psicologoNombre");
        Intrinsics.checkNotNullParameter(lastMessage, "lastMessage");
        Intrinsics.checkNotNullParameter(estado, "estado");
        return new Conversation(id, pacienteId, pacienteNombre, psicologoId, psicologoNombre, lastMessage, lastMessageTime, estado, unreadCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Conversation)) {
            return false;
        }
        Conversation conversation = (Conversation) other;
        return Intrinsics.areEqual(this.id, conversation.id) && Intrinsics.areEqual(this.pacienteId, conversation.pacienteId) && Intrinsics.areEqual(this.pacienteNombre, conversation.pacienteNombre) && Intrinsics.areEqual(this.psicologoId, conversation.psicologoId) && Intrinsics.areEqual(this.psicologoNombre, conversation.psicologoNombre) && Intrinsics.areEqual(this.lastMessage, conversation.lastMessage) && this.lastMessageTime == conversation.lastMessageTime && this.estado == conversation.estado && this.unreadCount == conversation.unreadCount;
    }

    public int hashCode() {
        return (((((((((((((((this.id.hashCode() * 31) + this.pacienteId.hashCode()) * 31) + this.pacienteNombre.hashCode()) * 31) + this.psicologoId.hashCode()) * 31) + this.psicologoNombre.hashCode()) * 31) + this.lastMessage.hashCode()) * 31) + Long.hashCode(this.lastMessageTime)) * 31) + this.estado.hashCode()) * 31) + Integer.hashCode(this.unreadCount);
    }

    public String toString() {
        return "Conversation(id=" + this.id + ", pacienteId=" + this.pacienteId + ", pacienteNombre=" + this.pacienteNombre + ", psicologoId=" + this.psicologoId + ", psicologoNombre=" + this.psicologoNombre + ", lastMessage=" + this.lastMessage + ", lastMessageTime=" + this.lastMessageTime + ", estado=" + this.estado + ", unreadCount=" + this.unreadCount + ")";
    }

    public Conversation(String id, String pacienteId, String pacienteNombre, String psicologoId, String psicologoNombre, String lastMessage, long lastMessageTime, ConversationState estado, int unreadCount) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(pacienteId, "pacienteId");
        Intrinsics.checkNotNullParameter(pacienteNombre, "pacienteNombre");
        Intrinsics.checkNotNullParameter(psicologoId, "psicologoId");
        Intrinsics.checkNotNullParameter(psicologoNombre, "psicologoNombre");
        Intrinsics.checkNotNullParameter(lastMessage, "lastMessage");
        Intrinsics.checkNotNullParameter(estado, "estado");
        this.id = id;
        this.pacienteId = pacienteId;
        this.pacienteNombre = pacienteNombre;
        this.psicologoId = psicologoId;
        this.psicologoNombre = psicologoNombre;
        this.lastMessage = lastMessage;
        this.lastMessageTime = lastMessageTime;
        this.estado = estado;
        this.unreadCount = unreadCount;
    }

    public /* synthetic */ Conversation(String str, String str2, String str3, String str4, String str5, String str6, long j, ConversationState conversationState, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? "" : str6, (i2 & 64) != 0 ? System.currentTimeMillis() : j, (i2 & 128) != 0 ? ConversationState.ACTIVA : conversationState, (i2 & 256) != 0 ? 0 : i);
    }

    public final String getId() {
        return this.id;
    }

    public final String getPacienteId() {
        return this.pacienteId;
    }

    public final String getPacienteNombre() {
        return this.pacienteNombre;
    }

    public final String getPsicologoId() {
        return this.psicologoId;
    }

    public final String getPsicologoNombre() {
        return this.psicologoNombre;
    }

    public final String getLastMessage() {
        return this.lastMessage;
    }

    public final long getLastMessageTime() {
        return this.lastMessageTime;
    }

    public final ConversationState getEstado() {
        return this.estado;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }
}
