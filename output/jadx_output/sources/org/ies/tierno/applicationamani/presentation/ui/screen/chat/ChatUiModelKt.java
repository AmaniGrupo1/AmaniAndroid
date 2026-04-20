package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import com.google.firebase.database.core.ServerValues;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.Message;
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListItem;

/* JADX INFO: compiled from: ChatUiModel.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a\"\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t\u001a\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, d2 = {"buildChatItems", "", "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListItem;", "messages", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "currentUserId", "", "formatTimestamp", ServerValues.NAME_OP_TIMESTAMP, "", "formatDuration", "seconds", "", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ChatUiModelKt {
    public static final List<ChatListItem> buildChatItems(List<Message> messages, String currentUserId) {
        String label;
        Intrinsics.checkNotNullParameter(messages, "messages");
        Intrinsics.checkNotNullParameter(currentUserId, "currentUserId");
        if (messages.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        List sortedAsc = CollectionsKt.sortedWith(messages, new Comparator() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiModelKt$buildChatItems$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((Message) t).getTimestamp()), Long.valueOf(((Message) t2).getTimestamp()));
            }
        });
        List items = new ArrayList();
        LocalDate lastDate = null;
        int i = 0;
        int size = sortedAsc.size();
        while (i < size) {
            Message msg = (Message) sortedAsc.get(i);
            LocalDate messageDate = Instant.ofEpochMilli(msg.getTimestamp()).atZone(ZoneId.systemDefault()).toLocalDate();
            if (!Intrinsics.areEqual(lastDate, messageDate)) {
                lastDate = messageDate;
                if (Intrinsics.areEqual(messageDate, LocalDate.now())) {
                    label = "Hoy";
                } else {
                    label = Intrinsics.areEqual(messageDate, LocalDate.now().minusDays(1L)) ? "Ayer" : messageDate.format(DateTimeFormatter.ofPattern("d MMM yyyy", Locale.forLanguageTag("es")));
                }
                Intrinsics.checkNotNull(label);
                items.add(new ChatListItem.DateSeparator(label));
            }
            boolean isLastInGroup = false;
            boolean isFirstInGroup = i == 0 || !Intrinsics.areEqual(((Message) sortedAsc.get(i + (-1))).getSenderId(), msg.getSenderId());
            if (i == CollectionsKt.getLastIndex(sortedAsc) || !Intrinsics.areEqual(((Message) sortedAsc.get(i + 1)).getSenderId(), msg.getSenderId())) {
                isLastInGroup = true;
            }
            items.add(new ChatListItem.MessageItem(msg, isFirstInGroup, isLastInGroup));
            i++;
        }
        return CollectionsKt.reversed(items);
    }

    public static final String formatTimestamp(long timestamp) {
        if (timestamp == 0) {
            return "";
        }
        Instant instant = Instant.ofEpochMilli(timestamp);
        LocalTime localTime = instant.atZone(ZoneId.systemDefault()).toLocalTime();
        String str = localTime.format(DateTimeFormatter.ofPattern("HH:mm"));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public static final String formatDuration(int seconds) {
        int mins = seconds / 60;
        int secs = seconds % 60;
        String str = String.format("%d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(mins), Integer.valueOf(secs)}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
