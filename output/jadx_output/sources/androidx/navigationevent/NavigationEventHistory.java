package androidx.navigationevent;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NavigationEventHistory.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0002\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB\t\b\u0010¢\u0006\u0004\b\u0007\u0010\tB1\b\u0011\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0007\u0010\rJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0006H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Landroidx/navigationevent/NavigationEventHistory;", "", "mergedHistory", "", "Landroidx/navigationevent/NavigationEventInfo;", "currentIndex", "", "<init>", "(Ljava/util/List;I)V", "()V", "currentInfo", "backInfo", "forwardInfo", "(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V", "getMergedHistory", "()Ljava/util/List;", "getCurrentIndex", "()I", "equals", "", "other", "hashCode", "toString", "", "navigationevent"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavigationEventHistory {
    private final int currentIndex;
    private final List<NavigationEventInfo> mergedHistory;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo currentInfo) {
        this(currentInfo, null, null, 6, null);
        Intrinsics.checkNotNullParameter(currentInfo, "currentInfo");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo currentInfo, List<? extends NavigationEventInfo> backInfo) {
        this(currentInfo, backInfo, null, 4, null);
        Intrinsics.checkNotNullParameter(currentInfo, "currentInfo");
        Intrinsics.checkNotNullParameter(backInfo, "backInfo");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private NavigationEventHistory(List<? extends NavigationEventInfo> list, int currentIndex) {
        this.mergedHistory = list;
        this.currentIndex = currentIndex;
        boolean z = true;
        if (!this.mergedHistory.isEmpty() || this.currentIndex != -1) {
            if (!this.mergedHistory.isEmpty()) {
                int size = this.mergedHistory.size();
                int i = this.currentIndex;
                if (!(i >= 0 && i < size)) {
                    z = false;
                }
            }
        }
        if (!z) {
            throw new IllegalArgumentException(("Invalid 'NavigationEventHistory' state:  'currentIndex' must be within the bounds of 'mergedHistory' (or -1 if empty). Received: currentIndex = '" + this.currentIndex + "', bounds = '" + CollectionsKt.getIndices(this.mergedHistory) + "'.").toString());
        }
    }

    public final List<NavigationEventInfo> getMergedHistory() {
        return this.mergedHistory;
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    public NavigationEventHistory() {
        this((List<? extends NavigationEventInfo>) CollectionsKt.emptyList(), -1);
    }

    public /* synthetic */ NavigationEventHistory(NavigationEventInfo navigationEventInfo, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(navigationEventInfo, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? CollectionsKt.emptyList() : list2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationEventHistory(NavigationEventInfo currentInfo, List<? extends NavigationEventInfo> backInfo, List<? extends NavigationEventInfo> forwardInfo) {
        Intrinsics.checkNotNullParameter(currentInfo, "currentInfo");
        Intrinsics.checkNotNullParameter(backInfo, "backInfo");
        Intrinsics.checkNotNullParameter(forwardInfo, "forwardInfo");
        List $this$_init__u24lambda_u241 = CollectionsKt.createListBuilder();
        CollectionsKt.addAll($this$_init__u24lambda_u241, backInfo);
        $this$_init__u24lambda_u241.add(currentInfo);
        CollectionsKt.addAll($this$_init__u24lambda_u241, forwardInfo);
        this((List<? extends NavigationEventInfo>) CollectionsKt.build($this$_init__u24lambda_u241), backInfo.size());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || getClass() != other.getClass()) {
            return false;
        }
        if (this.currentIndex == ((NavigationEventHistory) other).currentIndex && Intrinsics.areEqual(this.mergedHistory, ((NavigationEventHistory) other).mergedHistory)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.currentIndex;
        return (result * 31) + this.mergedHistory.hashCode();
    }

    public String toString() {
        return "NavigationEventHistory(currentIndex=" + this.currentIndex + ", mergedHistory=" + this.mergedHistory + ')';
    }
}
