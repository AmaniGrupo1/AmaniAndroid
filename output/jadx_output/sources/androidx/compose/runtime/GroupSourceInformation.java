package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SlotTable.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u001e\u0010!\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0003J\u000e\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003J\u0016\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0003J\u0016\u0010%\u001a\u00020\"2\u0006\u0010)\u001a\u00020*2\u0006\u0010(\u001a\u00020\u0003J\u001e\u0010+\u001a\u00020\"2\u0006\u0010&\u001a\u00020'2\u0006\u0010,\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0003J\u000e\u0010-\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003J\b\u0010.\u001a\u00020\u0000H\u0002J\u0010\u0010/\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u0001H\u0002J\u0010\u00100\u001a\u00020\u00182\u0006\u00101\u001a\u000202H\u0002J\u000e\u00103\u001a\u00020\u00182\u0006\u00101\u001a\u000202R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\nR.\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\n\"\u0004\b\u001f\u0010 ¨\u00064"}, d2 = {"Landroidx/compose/runtime/GroupSourceInformation;", "", "key", "", "sourceInformation", "", "dataStartOffset", "<init>", "(ILjava/lang/String;I)V", "getKey", "()I", "getSourceInformation", "()Ljava/lang/String;", "setSourceInformation", "(Ljava/lang/String;)V", "getDataStartOffset", "groups", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getGroups", "()Ljava/util/ArrayList;", "setGroups", "(Ljava/util/ArrayList;)V", "closed", "", "getClosed", "()Z", "setClosed", "(Z)V", "dataEndOffset", "getDataEndOffset", "setDataEndOffset", "(I)V", "startGrouplessCall", "", "dataOffset", "endGrouplessCall", "reportGroup", "writer", "Landroidx/compose/runtime/SlotWriter;", "group", "table", "Landroidx/compose/runtime/SlotTable;", "addGroupAfter", "predecessor", "close", "openInformation", "add", "hasAnchor", "anchor", "Landroidx/compose/runtime/Anchor;", "removeAnchor", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GroupSourceInformation {
    public static final int $stable = 8;
    private boolean closed;
    private int dataEndOffset;
    private final int dataStartOffset;
    private ArrayList<Object> groups;
    private final int key;
    private String sourceInformation;

    public GroupSourceInformation(int key, String sourceInformation, int dataStartOffset) {
        this.key = key;
        this.sourceInformation = sourceInformation;
        this.dataStartOffset = dataStartOffset;
    }

    public final int getKey() {
        return this.key;
    }

    public final String getSourceInformation() {
        return this.sourceInformation;
    }

    public final void setSourceInformation(String str) {
        this.sourceInformation = str;
    }

    public final int getDataStartOffset() {
        return this.dataStartOffset;
    }

    public final ArrayList<Object> getGroups() {
        return this.groups;
    }

    public final void setGroups(ArrayList<Object> arrayList) {
        this.groups = arrayList;
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final void setClosed(boolean z) {
        this.closed = z;
    }

    public final int getDataEndOffset() {
        return this.dataEndOffset;
    }

    public final void setDataEndOffset(int i) {
        this.dataEndOffset = i;
    }

    public final void startGrouplessCall(int key, String sourceInformation, int dataOffset) {
        openInformation().add(new GroupSourceInformation(key, sourceInformation, dataOffset));
    }

    public final void endGrouplessCall(int dataOffset) {
        openInformation().close(dataOffset);
    }

    public final void reportGroup(SlotWriter writer, int group) {
        openInformation().add(writer.anchor(group));
    }

    public final void reportGroup(SlotTable table, int group) {
        openInformation().add(table.anchor(group));
    }

    public final void addGroupAfter(SlotWriter writer, int predecessor, int group) {
        Anchor anchor;
        ArrayList<Object> arrayList = this.groups;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.groups = arrayList;
        }
        int index = 0;
        if (predecessor >= 0 && (anchor = writer.tryAnchor$runtime(predecessor)) != null) {
            ArrayList<Object> arrayList2 = arrayList;
            int index$iv = 0;
            int size$iv = arrayList2.size();
            while (true) {
                if (index$iv >= size$iv) {
                    index = -1;
                    break;
                }
                Object value$iv = arrayList2.get(index$iv);
                if (Intrinsics.areEqual(value$iv, anchor) || ((value$iv instanceof GroupSourceInformation) && ((GroupSourceInformation) value$iv).hasAnchor(anchor))) {
                    index = index$iv;
                    break;
                }
                index$iv++;
            }
        }
        arrayList.add(index, writer.anchor(group));
    }

    public final void close(int dataOffset) {
        this.closed = true;
        this.dataEndOffset = dataOffset;
    }

    private final GroupSourceInformation openInformation() {
        Object value$iv;
        GroupSourceInformation groupSourceInformationOpenInformation;
        ArrayList<Object> arrayList = this.groups;
        if (arrayList != null) {
            int index$iv = arrayList.size() - 1;
            while (true) {
                if (index$iv < 0) {
                    value$iv = null;
                    break;
                }
                value$iv = arrayList.get(index$iv);
                if ((value$iv instanceof GroupSourceInformation) && !((GroupSourceInformation) value$iv).closed) {
                    break;
                }
                index$iv--;
            }
        } else {
            value$iv = null;
        }
        GroupSourceInformation groupSourceInformation = value$iv instanceof GroupSourceInformation ? (GroupSourceInformation) value$iv : null;
        return (groupSourceInformation == null || (groupSourceInformationOpenInformation = groupSourceInformation.openInformation()) == null) ? this : groupSourceInformationOpenInformation;
    }

    private final void add(Object group) {
        ArrayList<Object> arrayList = this.groups;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        this.groups = arrayList;
        arrayList.add(group);
    }

    private final boolean hasAnchor(Anchor anchor) {
        boolean z;
        List list = this.groups;
        if (list == null) {
            return false;
        }
        List $this$fastAny$iv = list;
        int index$iv$iv = 0;
        int size = $this$fastAny$iv.size();
        while (true) {
            if (index$iv$iv < size) {
                Object item$iv$iv = $this$fastAny$iv.get(index$iv$iv);
                if (Intrinsics.areEqual(item$iv$iv, anchor) || ((item$iv$iv instanceof GroupSourceInformation) && ((GroupSourceInformation) item$iv$iv).hasAnchor(anchor))) {
                    z = true;
                    break;
                }
                index$iv$iv++;
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    public final boolean removeAnchor(Anchor anchor) {
        ArrayList<Object> arrayList = this.groups;
        if (arrayList != null) {
            for (int index = arrayList.size() - 1; index >= 0; index--) {
                Object item = arrayList.get(index);
                if (item instanceof Anchor) {
                    if (Intrinsics.areEqual(item, anchor)) {
                        arrayList.remove(index);
                    }
                } else if ((item instanceof GroupSourceInformation) && !((GroupSourceInformation) item).removeAnchor(anchor)) {
                    arrayList.remove(index);
                }
            }
            if (!arrayList.isEmpty()) {
                return true;
            }
            this.groups = null;
            return false;
        }
        return true;
    }
}
