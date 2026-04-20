package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.Message;

/* JADX INFO: compiled from: ChatUiModel.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;", "", "<init>", "()V", "MessageItem", "DateSeparator", "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;", "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class ChatListItem {
    public static final int $stable = 0;

    public /* synthetic */ ChatListItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ChatListItem() {
    }

    /* JADX INFO: compiled from: ChatUiModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000b¨\u0006\u0017"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$MessageItem;", "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;", NotificationCompat.CATEGORY_MESSAGE, "Lorg/ies/tierno/applicationamani/domain/models/Message;", "isFirstInGroup", "", "isLastInGroup", "<init>", "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZ)V", "getMsg", "()Lorg/ies/tierno/applicationamani/domain/models/Message;", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class MessageItem extends ChatListItem {
        public static final int $stable = 8;
        private final boolean isFirstInGroup;
        private final boolean isLastInGroup;
        private final Message msg;

        public static /* synthetic */ MessageItem copy$default(MessageItem messageItem, Message message, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                message = messageItem.msg;
            }
            if ((i & 2) != 0) {
                z = messageItem.isFirstInGroup;
            }
            if ((i & 4) != 0) {
                z2 = messageItem.isLastInGroup;
            }
            return messageItem.copy(message, z, z2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Message getMsg() {
            return this.msg;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsFirstInGroup() {
            return this.isFirstInGroup;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getIsLastInGroup() {
            return this.isLastInGroup;
        }

        public final MessageItem copy(Message msg, boolean isFirstInGroup, boolean isLastInGroup) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            return new MessageItem(msg, isFirstInGroup, isLastInGroup);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MessageItem)) {
                return false;
            }
            MessageItem messageItem = (MessageItem) other;
            return Intrinsics.areEqual(this.msg, messageItem.msg) && this.isFirstInGroup == messageItem.isFirstInGroup && this.isLastInGroup == messageItem.isLastInGroup;
        }

        public int hashCode() {
            return (((this.msg.hashCode() * 31) + Boolean.hashCode(this.isFirstInGroup)) * 31) + Boolean.hashCode(this.isLastInGroup);
        }

        public String toString() {
            return "MessageItem(msg=" + this.msg + ", isFirstInGroup=" + this.isFirstInGroup + ", isLastInGroup=" + this.isLastInGroup + ")";
        }

        public final Message getMsg() {
            return this.msg;
        }

        public final boolean isFirstInGroup() {
            return this.isFirstInGroup;
        }

        public final boolean isLastInGroup() {
            return this.isLastInGroup;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MessageItem(Message msg, boolean isFirstInGroup, boolean isLastInGroup) {
            super(null);
            Intrinsics.checkNotNullParameter(msg, "msg");
            this.msg = msg;
            this.isFirstInGroup = isFirstInGroup;
            this.isLastInGroup = isLastInGroup;
        }
    }

    /* JADX INFO: compiled from: ChatUiModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem$DateSeparator;", "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;", "label", "", "<init>", "(Ljava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class DateSeparator extends ChatListItem {
        public static final int $stable = 0;
        private final String label;

        public static /* synthetic */ DateSeparator copy$default(DateSeparator dateSeparator, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = dateSeparator.label;
            }
            return dateSeparator.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        public final DateSeparator copy(String label) {
            Intrinsics.checkNotNullParameter(label, "label");
            return new DateSeparator(label);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DateSeparator) && Intrinsics.areEqual(this.label, ((DateSeparator) other).label);
        }

        public int hashCode() {
            return this.label.hashCode();
        }

        public String toString() {
            return "DateSeparator(label=" + this.label + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DateSeparator(String label) {
            super(null);
            Intrinsics.checkNotNullParameter(label, "label");
            this.label = label;
        }

        public final String getLabel() {
            return this.label;
        }
    }
}
