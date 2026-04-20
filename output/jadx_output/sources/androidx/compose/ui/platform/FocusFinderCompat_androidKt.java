package androidx.compose.ui.platform;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: FocusFinderCompat.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\"\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u001a*\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u001a,\u0010\f\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000b0\n2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0002\u001a,\u0010\u000e\u001a\u00020\u000f*\u00020\u00012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u0011j\b\u0012\u0004\u0012\u00020\u0001`\u00122\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a,\u0010\u000e\u001a\u00020\u000f*\u00020\u00012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u0011j\b\u0012\u0004\u0012\u00020\u0001`\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0002¨\u0006\u0014"}, d2 = {"findUserSetNextFocus", "Landroid/view/View;", "root", "direction", "", "findViewInsideOutShouldExist", TtmlNode.START, TtmlNode.ATTR_ID, "findViewByPredicateInsideOut", "predicate", "Lkotlin/Function1;", "", "findViewByPredicateTraversal", "childToSkip", "addFocusableViews", "", "views", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "inTouchMode", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FocusFinderCompat_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final View findUserSetNextFocus(final View $this$findUserSetNextFocus, final View root, int direction) {
        switch (direction) {
            case 1:
                if ($this$findUserSetNextFocus.getId() != -1) {
                    break;
                }
                break;
            case 2:
                int next = $this$findUserSetNextFocus.getNextFocusForwardId();
                if (next != -1) {
                    break;
                }
                break;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View findViewInsideOutShouldExist(View root, View start, final int id) {
        return findViewByPredicateInsideOut(root, start, new Function1<View, Boolean>() { // from class: androidx.compose.ui.platform.FocusFinderCompat_androidKt.findViewInsideOutShouldExist.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(View it) {
                return Boolean.valueOf(it.getId() == id);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final View findViewByPredicateInsideOut(View $this$findViewByPredicateInsideOut, View start, Function1<? super View, Boolean> function1) {
        View next = start;
        View childToSkip = null;
        while (true) {
            View view = findViewByPredicateTraversal(next, function1, childToSkip);
            if (view != null || next == $this$findViewByPredicateInsideOut) {
                break;
            }
            Object parent = next.getParent();
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            childToSkip = next;
            next = (View) parent;
        }
    }

    private static final View findViewByPredicateTraversal(View $this$findViewByPredicateTraversal, Function1<? super View, Boolean> function1, View childToSkip) {
        View v;
        if (function1.invoke($this$findViewByPredicateTraversal).booleanValue()) {
            return $this$findViewByPredicateTraversal;
        }
        if ($this$findViewByPredicateTraversal instanceof ViewGroup) {
            int childCount = ((ViewGroup) $this$findViewByPredicateTraversal).getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = ((ViewGroup) $this$findViewByPredicateTraversal).getChildAt(i);
                if (child != childToSkip && (v = findViewByPredicateTraversal(child, function1, childToSkip)) != null) {
                    return v;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addFocusableViews(View view, ArrayList<View> arrayList, int i) {
        if (Build.VERSION.SDK_INT < 26) {
            addFocusableViews(view, arrayList, view.isInTouchMode());
        } else {
            view.addFocusables(arrayList, i, view.isInTouchMode() ? 1 : 0);
        }
    }

    private static final void addFocusableViews(View $this$addFocusableViews, ArrayList<View> arrayList, boolean inTouchMode) {
        boolean addToViews = ($this$addFocusableViews.getVisibility() == 0) && $this$addFocusableViews.isFocusable() && $this$addFocusableViews.isEnabled() && $this$addFocusableViews.getWidth() > 0 && $this$addFocusableViews.getHeight() > 0 && (!inTouchMode || $this$addFocusableViews.isFocusableInTouchMode());
        if ($this$addFocusableViews instanceof ViewGroup) {
            int viewCountBefore = arrayList.size();
            boolean before = ((ViewGroup) $this$addFocusableViews).getDescendantFocusability() == 131072;
            if (addToViews && before) {
                arrayList.add($this$addFocusableViews);
            }
            if (((ViewGroup) $this$addFocusableViews).getDescendantFocusability() != 393216) {
                int childCount = ((ViewGroup) $this$addFocusableViews).getChildCount();
                View[] children = new View[childCount];
                for (int i = 0; i < childCount; i++) {
                    children[i] = ((ViewGroup) $this$addFocusableViews).getChildAt(i);
                }
                FocusSorter.INSTANCE.sort(children, (ViewGroup) $this$addFocusableViews, ((ViewGroup) $this$addFocusableViews).getLayoutDirection() == 1);
                for (View view : children) {
                    addFocusableViews(view, arrayList, inTouchMode);
                }
            }
            if (addToViews && !before && viewCountBefore == arrayList.size()) {
                arrayList.add($this$addFocusableViews);
                return;
            }
            return;
        }
        if (addToViews) {
            arrayList.add($this$addFocusableViews);
        }
    }
}
