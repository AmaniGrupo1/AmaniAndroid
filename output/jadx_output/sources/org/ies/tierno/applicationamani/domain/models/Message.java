package org.ies.tierno.applicationamani.domain.models;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.database.core.ServerValues;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Message.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010-\u001a\u00020\fHÆ\u0003J\t\u0010.\u001a\u00020\u000eHÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010!J\u0017\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f\u0018\u00010\u0011HÆ\u0003J\u0092\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u000206HÖ\u0001J\t\u00107\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u001fR\u0015\u0010\u000f\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b%\u0010\u001f¨\u00068"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/models/Message;", "", TtmlNode.ATTR_ID, "", "conversationId", "senderId", "content", "attachmentUrl", "attachmentType", "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "attachmentName", ServerValues.NAME_OP_TIMESTAMP, "", "isRead", "", "deliveredAt", "readBy", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)V", "getId", "()Ljava/lang/String;", "getConversationId", "getSenderId", "getContent", "getAttachmentUrl", "getAttachmentType", "()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "getAttachmentName", "getTimestamp", "()J", "()Z", "getDeliveredAt", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getReadBy", "()Ljava/util/Map;", "isDelivered", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;)Lorg/ies/tierno/applicationamani/domain/models/Message;", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Message {
    public static final int $stable = 8;
    private final String attachmentName;
    private final AttachmentType attachmentType;
    private final String attachmentUrl;
    private final String content;
    private final String conversationId;
    private final Long deliveredAt;
    private final String id;
    private final boolean isRead;
    private final Map<String, Long> readBy;
    private final String senderId;
    private final long timestamp;

    public Message() {
        this(null, null, null, null, null, null, null, 0L, false, null, null, 2047, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Message copy$default(Message message, String str, String str2, String str3, String str4, String str5, AttachmentType attachmentType, String str6, long j, boolean z, Long l, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = message.id;
        }
        if ((i & 2) != 0) {
            str2 = message.conversationId;
        }
        if ((i & 4) != 0) {
            str3 = message.senderId;
        }
        if ((i & 8) != 0) {
            str4 = message.content;
        }
        if ((i & 16) != 0) {
            str5 = message.attachmentUrl;
        }
        if ((i & 32) != 0) {
            attachmentType = message.attachmentType;
        }
        if ((i & 64) != 0) {
            str6 = message.attachmentName;
        }
        if ((i & 128) != 0) {
            j = message.timestamp;
        }
        if ((i & 256) != 0) {
            z = message.isRead;
        }
        if ((i & 512) != 0) {
            l = message.deliveredAt;
        }
        if ((i & 1024) != 0) {
            map = message.readBy;
        }
        Map map2 = map;
        boolean z2 = z;
        long j2 = j;
        AttachmentType attachmentType2 = attachmentType;
        String str7 = str6;
        String str8 = str4;
        String str9 = str5;
        String str10 = str3;
        return message.copy(str, str2, str10, str8, str9, attachmentType2, str7, j2, z2, l, map2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Long getDeliveredAt() {
        return this.deliveredAt;
    }

    public final Map<String, Long> component11() {
        return this.readBy;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getConversationId() {
        return this.conversationId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSenderId() {
        return this.senderId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAttachmentUrl() {
        return this.attachmentUrl;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final AttachmentType getAttachmentType() {
        return this.attachmentType;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAttachmentName() {
        return this.attachmentName;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsRead() {
        return this.isRead;
    }

    public final Message copy(String id, String conversationId, String senderId, String content, String attachmentUrl, AttachmentType attachmentType, String attachmentName, long timestamp, boolean isRead, Long deliveredAt, Map<String, Long> readBy) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(conversationId, "conversationId");
        Intrinsics.checkNotNullParameter(senderId, "senderId");
        Intrinsics.checkNotNullParameter(content, "content");
        return new Message(id, conversationId, senderId, content, attachmentUrl, attachmentType, attachmentName, timestamp, isRead, deliveredAt, readBy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Message)) {
            return false;
        }
        Message message = (Message) other;
        return Intrinsics.areEqual(this.id, message.id) && Intrinsics.areEqual(this.conversationId, message.conversationId) && Intrinsics.areEqual(this.senderId, message.senderId) && Intrinsics.areEqual(this.content, message.content) && Intrinsics.areEqual(this.attachmentUrl, message.attachmentUrl) && this.attachmentType == message.attachmentType && Intrinsics.areEqual(this.attachmentName, message.attachmentName) && this.timestamp == message.timestamp && this.isRead == message.isRead && Intrinsics.areEqual(this.deliveredAt, message.deliveredAt) && Intrinsics.areEqual(this.readBy, message.readBy);
    }

    public int hashCode() {
        return (((((((((((((((((((this.id.hashCode() * 31) + this.conversationId.hashCode()) * 31) + this.senderId.hashCode()) * 31) + this.content.hashCode()) * 31) + (this.attachmentUrl == null ? 0 : this.attachmentUrl.hashCode())) * 31) + (this.attachmentType == null ? 0 : this.attachmentType.hashCode())) * 31) + (this.attachmentName == null ? 0 : this.attachmentName.hashCode())) * 31) + Long.hashCode(this.timestamp)) * 31) + Boolean.hashCode(this.isRead)) * 31) + (this.deliveredAt == null ? 0 : this.deliveredAt.hashCode())) * 31) + (this.readBy != null ? this.readBy.hashCode() : 0);
    }

    public String toString() {
        return "Message(id=" + this.id + ", conversationId=" + this.conversationId + ", senderId=" + this.senderId + ", content=" + this.content + ", attachmentUrl=" + this.attachmentUrl + ", attachmentType=" + this.attachmentType + ", attachmentName=" + this.attachmentName + ", timestamp=" + this.timestamp + ", isRead=" + this.isRead + ", deliveredAt=" + this.deliveredAt + ", readBy=" + this.readBy + ")";
    }

    public Message(String id, String conversationId, String senderId, String content, String attachmentUrl, AttachmentType attachmentType, String attachmentName, long timestamp, boolean isRead, Long deliveredAt, Map<String, Long> map) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(conversationId, "conversationId");
        Intrinsics.checkNotNullParameter(senderId, "senderId");
        Intrinsics.checkNotNullParameter(content, "content");
        this.id = id;
        this.conversationId = conversationId;
        this.senderId = senderId;
        this.content = content;
        this.attachmentUrl = attachmentUrl;
        this.attachmentType = attachmentType;
        this.attachmentName = attachmentName;
        this.timestamp = timestamp;
        this.isRead = isRead;
        this.deliveredAt = deliveredAt;
        this.readBy = map;
    }

    public /* synthetic */ Message(String str, String str2, String str3, String str4, String str5, AttachmentType attachmentType, String str6, long j, boolean z, Long l, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : attachmentType, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? System.currentTimeMillis() : j, (i & 256) != 0 ? false : z, (i & 512) != 0 ? null : l, (i & 1024) != 0 ? null : map);
    }

    public final String getId() {
        return this.id;
    }

    public final String getConversationId() {
        return this.conversationId;
    }

    public final String getSenderId() {
        return this.senderId;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getAttachmentUrl() {
        return this.attachmentUrl;
    }

    public final AttachmentType getAttachmentType() {
        return this.attachmentType;
    }

    public final String getAttachmentName() {
        return this.attachmentName;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final boolean isRead() {
        return this.isRead;
    }

    public final Long getDeliveredAt() {
        return this.deliveredAt;
    }

    public final Map<String, Long> getReadBy() {
        return this.readBy;
    }

    public final boolean isDelivered() {
        return this.deliveredAt != null;
    }
}
