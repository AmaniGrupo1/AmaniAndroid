package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.tooling.ComposeStackTraceMode;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Composer.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b%\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a3\u0010\u0005\u001a\u0002H\u0006\"\u0004\b\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u0002H\u00060\u000b¢\u0006\u0002\b\fH\u0087\b¢\u0006\u0002\u0010\r\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0011H\u0007\u001a \u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0011H\u0007\u001a\b\u0010\u001f\u001a\u00020\tH\u0007\u001a\u0018\u0010 \u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0011H\u0007\u001a(\u0010 \u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0011H\u0007\u001a\b\u0010$\u001a\u00020\u000fH\u0007\u001a\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0007\u001a\u0014\u0010&\u001a\u00020\u000f*\u00020\u00022\u0006\u0010'\u001a\u00020(H\u0000\u001a7\u0010)\u001a\u00020\u000f\"\u0004\b\u0000\u0010**\u00020\u00022\b\u0010+\u001a\u0004\u0018\u00010,2\u0018\u0010-\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H*0.H\u0080\b\u001a*\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\t2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00110\u000bH\u0080\b\u0082\u0002\b\n\u0006\b\u0000\u001a\u0002\u0010\u0001\u001a\u001f\u0010[\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\t2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00110\u000bH\u0080\b\u001a\u0011\u0010[\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\tH\u0080\b\u001a\u0011\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\tH\u0080\b\u001a\u0010\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020\u0011H\u0000\u001a\u0010\u0010_\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020\u0011H\u0000\u001a.\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020c2\u0006\u0010Q\u001a\u00020d2\u0006\u0010e\u001a\u00020\u00022\f\u0010f\u001a\b\u0012\u0002\b\u0003\u0018\u00010gH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0016\u0010\u0017\"\u001c\u0010\u0018\u001a\u00020\u0019X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d\"\u0018\u0010/\u001a\u00020\t*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u00100\"\u0018\u0010/\u001a\u00020\t*\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u00102\"\u000e\u00103\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0016\u00104\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b5\u0010\u0017\"\u001c\u00106\u001a\u0002078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b8\u0010\u0017\u001a\u0004\b9\u0010:\"\u0016\u0010;\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b<\u0010\u0017\"\u001c\u0010=\u001a\u0002078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b>\u0010\u0017\u001a\u0004\b?\u0010:\"\u0016\u0010@\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\bA\u0010\u0017\"\u001c\u0010B\u001a\u0002078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bC\u0010\u0017\u001a\u0004\bD\u0010:\"\u0016\u0010E\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\bF\u0010\u0017\"\u001c\u0010G\u001a\u0002078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bH\u0010\u0017\u001a\u0004\bI\u0010:\"\u0016\u0010J\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\bK\u0010\u0017\"\u001c\u0010L\u001a\u0002078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bM\u0010\u0017\u001a\u0004\bN\u0010:\"\u0016\u0010O\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\bP\u0010\u0017\"\u001c\u0010Q\u001a\u0002078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bR\u0010\u0017\u001a\u0004\bS\u0010:\"\u0016\u0010T\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\bU\u0010\u0017\"\u000e\u0010V\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010Z\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000¨\u0006h"}, d2 = {"nextGroup", "", "Landroidx/compose/runtime/SlotWriter;", "getNextGroup", "(Landroidx/compose/runtime/SlotWriter;)I", "cache", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/Composer;", "invalid", "", "block", "Lkotlin/Function0;", "Landroidx/compose/runtime/DisallowComposableCalls;", "(Landroidx/compose/runtime/Composer;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "sourceInformation", "", "composer", "", "sourceInformationMarkerStart", "key", "compositionTracer", "Landroidx/compose/runtime/CompositionTracer;", "getCompositionTracer$annotations", "()V", "composeStackTraceMode", "Landroidx/compose/runtime/tooling/ComposeStackTraceMode;", "getComposeStackTraceMode", "()I", "setComposeStackTraceMode-76WK1J0", "(I)V", "I", "isTraceInProgress", "traceEventStart", "info", "dirty1", "dirty2", "traceEventEnd", "sourceInformationMarkerEnd", "removeCurrentGroup", "rememberManager", "Landroidx/compose/runtime/RememberManager;", "withAfterAnchorInfo", "R", "anchor", "Landroidx/compose/runtime/Anchor;", "cb", "Lkotlin/Function2;", "isAfterFirstChild", "(Landroidx/compose/runtime/SlotWriter;)Z", "Landroidx/compose/runtime/SlotReader;", "(Landroidx/compose/runtime/SlotReader;)Z", "defaultsKey", "invocationKey", "getInvocationKey$annotations", "invocation", "", "getInvocation$annotations", "getInvocation", "()Ljava/lang/Object;", "providerKey", "getProviderKey$annotations", "provider", "getProvider$annotations", "getProvider", "compositionLocalMapKey", "getCompositionLocalMapKey$annotations", "compositionLocalMap", "getCompositionLocalMap$annotations", "getCompositionLocalMap", "providerValuesKey", "getProviderValuesKey$annotations", "providerValues", "getProviderValues$annotations", "getProviderValues", "providerMapsKey", "getProviderMapsKey$annotations", "providerMaps", "getProviderMaps$annotations", "getProviderMaps", "referenceKey", "getReferenceKey$annotations", "reference", "getReference$annotations", "getReference", "reuseKey", "getReuseKey$annotations", "invalidGroupLocation", "runtimeCheck", Values.VECTOR_MAP_VECTORS_KEY, "lazyMessage", "EnableDebugRuntimeChecks", "debugRuntimeCheck", "composeRuntimeError", "", "message", "composeImmediateRuntimeError", "extractMovableContentAtCurrent", "Landroidx/compose/runtime/MovableContentState;", "composition", "Landroidx/compose/runtime/ControlledComposition;", "Landroidx/compose/runtime/MovableContentStateReference;", "slots", "applier", "Landroidx/compose/runtime/Applier;", "runtime"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ComposerKt {
    public static final boolean EnableDebugRuntimeChecks = false;
    public static final int compositionLocalMapKey = 202;
    private static CompositionTracer compositionTracer = null;
    public static final int defaultsKey = -127;
    private static final int invalidGroupLocation = -2;
    public static final int invocationKey = 200;
    public static final int providerKey = 201;
    public static final int providerMapsKey = 204;
    public static final int providerValuesKey = 203;
    public static final int referenceKey = 206;
    public static final int reuseKey = 207;
    private static int composeStackTraceMode = ComposeStackTraceMode.INSTANCE.m4169getNoneMD5MrJc();
    private static final Object invocation = new OpaqueKey("provider");
    private static final Object provider = new OpaqueKey("provider");
    private static final Object compositionLocalMap = new OpaqueKey("compositionLocalMap");
    private static final Object providerValues = new OpaqueKey("providerValues");
    private static final Object providerMaps = new OpaqueKey("providers");
    private static final Object reference = new OpaqueKey("reference");

    public static /* synthetic */ void getCompositionLocalMap$annotations() {
    }

    public static /* synthetic */ void getCompositionLocalMapKey$annotations() {
    }

    private static /* synthetic */ void getCompositionTracer$annotations() {
    }

    public static /* synthetic */ void getInvocation$annotations() {
    }

    public static /* synthetic */ void getInvocationKey$annotations() {
    }

    public static /* synthetic */ void getProvider$annotations() {
    }

    public static /* synthetic */ void getProviderKey$annotations() {
    }

    public static /* synthetic */ void getProviderMaps$annotations() {
    }

    public static /* synthetic */ void getProviderMapsKey$annotations() {
    }

    public static /* synthetic */ void getProviderValues$annotations() {
    }

    public static /* synthetic */ void getProviderValuesKey$annotations() {
    }

    public static /* synthetic */ void getReference$annotations() {
    }

    public static /* synthetic */ void getReferenceKey$annotations() {
    }

    public static /* synthetic */ void getReuseKey$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getNextGroup(SlotWriter $this$nextGroup) {
        return $this$nextGroup.getCurrentGroup() + $this$nextGroup.groupSize($this$nextGroup.getCurrentGroup());
    }

    @ComposeCompilerApi
    public static final <T> T cache(Composer composer, boolean z, Function0<? extends T> function0) {
        T t = (T) composer.rememberedValue();
        if (!z && t != Composer.INSTANCE.getEmpty()) {
            return t;
        }
        T tInvoke = function0.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }

    @ComposeCompilerApi
    public static final void sourceInformation(Composer composer, String sourceInformation) {
        composer.sourceInformation(sourceInformation);
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerStart(Composer composer, int key, String sourceInformation) {
        composer.sourceInformationMarkerStart(key, sourceInformation);
    }

    public static final int getComposeStackTraceMode() {
        return composeStackTraceMode;
    }

    /* JADX INFO: renamed from: setComposeStackTraceMode-76WK1J0, reason: not valid java name */
    public static final void m3909setComposeStackTraceMode76WK1J0(int i) {
        composeStackTraceMode = i;
    }

    @ComposeCompilerApi
    public static final boolean isTraceInProgress() {
        CompositionTracer it = compositionTracer;
        return it != null && it.isTraceInProgress();
    }

    @ComposeCompilerApi
    public static final void traceEventStart(int key, int dirty1, int dirty2, String info) {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventStart(key, dirty1, dirty2, info);
        }
    }

    @ComposeCompilerApi
    public static final void traceEventEnd() {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventEnd();
        }
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerEnd(Composer composer) {
        composer.sourceInformationMarkerEnd();
    }

    public static final void removeCurrentGroup(SlotWriter $this$removeCurrentGroup, final RememberManager rememberManager) {
        $this$removeCurrentGroup.forAllDataInRememberOrder($this$removeCurrentGroup.getCurrentGroup(), new Function2() { // from class: androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ComposerKt.removeCurrentGroup$lambda$0(rememberManager, ((Integer) obj).intValue(), obj2);
            }
        });
        $this$removeCurrentGroup.removeGroup();
    }

    static final Unit removeCurrentGroup$lambda$0(RememberManager $rememberManager, int i, Object slot) {
        if (slot instanceof ComposeNodeLifecycleCallback) {
            $rememberManager.releasing((ComposeNodeLifecycleCallback) slot);
        }
        if (slot instanceof RememberObserverHolder) {
            $rememberManager.forgetting((RememberObserverHolder) slot);
        }
        if (slot instanceof RecomposeScopeImpl) {
            ((RecomposeScopeImpl) slot).release();
        }
        return Unit.INSTANCE;
    }

    public static final <R> void withAfterAnchorInfo(SlotWriter $this$withAfterAnchorInfo, Anchor anchor, Function2<? super Integer, ? super Integer, ? extends R> function2) {
        int priority = -1;
        int endRelativeAfter = -1;
        if (anchor != null && anchor.getValid()) {
            priority = $this$withAfterAnchorInfo.anchorIndex(anchor);
            endRelativeAfter = $this$withAfterAnchorInfo.getSlotsSize() - $this$withAfterAnchorInfo.slotsEndAllIndex$runtime(priority);
        }
        function2.invoke(Integer.valueOf(priority), Integer.valueOf(endRelativeAfter));
    }

    public static final boolean isAfterFirstChild(SlotWriter $this$isAfterFirstChild) {
        return $this$isAfterFirstChild.getCurrentGroup() > $this$isAfterFirstChild.getParent() + 1;
    }

    public static final boolean isAfterFirstChild(SlotReader $this$isAfterFirstChild) {
        return $this$isAfterFirstChild.getCurrent() > $this$isAfterFirstChild.getParent() + 1;
    }

    public static final Object getInvocation() {
        return invocation;
    }

    public static final Object getProvider() {
        return provider;
    }

    public static final Object getCompositionLocalMap() {
        return compositionLocalMap;
    }

    public static final Object getProviderValues() {
        return providerValues;
    }

    public static final Object getProviderMaps() {
        return providerMaps;
    }

    public static final Object getReference() {
        return reference;
    }

    public static final void runtimeCheck(boolean value, Function0<String> function0) {
        if (!value) {
            composeImmediateRuntimeError(function0.invoke());
        }
    }

    public static final void debugRuntimeCheck(boolean value, Function0<String> function0) {
    }

    public static final void debugRuntimeCheck(boolean value) {
    }

    public static final void runtimeCheck(boolean value) {
        if (value) {
            return;
        }
        composeImmediateRuntimeError("Check failed");
    }

    public static final Void composeRuntimeError(String message) {
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + message + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    public static final void composeImmediateRuntimeError(String message) {
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + message + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x01bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final MovableContentState extractMovableContentAtCurrent(final ControlledComposition composition, MovableContentStateReference reference2, SlotWriter slots, Applier<?> applier) throws Throwable {
        final MovableContentStateReference movableContentStateReference;
        SlotTable slotTable;
        ArrayList result$iv;
        int i$iv$iv$iv$iv;
        int currentGroup;
        int $i$f$extractInvalidationsOfGroup$runtime;
        int i$iv$iv$iv$iv2;
        SlotTable slotTable2;
        int currentGroup2;
        int $i$f$extractInvalidationsOfGroup$runtime2;
        int j$iv$iv$iv$iv;
        boolean z;
        boolean zIsEmpty;
        int index$iv$iv$iv$iv;
        int j$iv$iv$iv$iv2;
        int index$iv$iv$iv$iv2;
        int index$iv$iv$iv$iv3;
        SlotTable slotTable3 = new SlotTable();
        if (slots.getCollectingSourceInformation()) {
            slotTable3.collectSourceInformation();
        }
        if (slots.getCollectingCalledInformation()) {
            slotTable3.collectCalledByInformation();
        }
        int currentGroup3 = slots.getCurrentGroup();
        if (applier != null && slots.nodeCount(currentGroup3) > 0) {
            int parentNodeGroup = slots.getParent();
            while (parentNodeGroup > 0 && !slots.isNode(parentNodeGroup)) {
                parentNodeGroup = slots.parent(parentNodeGroup);
            }
            if (parentNodeGroup >= 0 && slots.isNode(parentNodeGroup)) {
                Object node = slots.node(parentNodeGroup);
                int currentChild = parentNodeGroup + 1;
                int end = slots.groupSize(parentNodeGroup) + parentNodeGroup;
                int nodeIndex = 0;
                while (currentChild < end) {
                    int size = slots.groupSize(currentChild);
                    if (currentChild + size > currentGroup3) {
                        break;
                    }
                    nodeIndex += slots.isNode(currentChild) ? 1 : slots.nodeCount(currentChild);
                    currentChild += size;
                }
                int count = slots.isNode(currentGroup3) ? 1 : slots.nodeCount(currentGroup3);
                applier.down(node);
                applier.remove(nodeIndex, count);
                applier.up();
            }
        }
        Anchor anchor = reference2.getAnchor();
        if (anchor.getValid()) {
            Intrinsics.checkNotNull(composition, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl");
            CompositionImpl this_$iv = (CompositionImpl) composition;
            int $i$f$extractInvalidationsOfGroup$runtime3 = 0;
            if (ScopeMap.m4074getSizeimpl(this_$iv.invalidations) > 0) {
                result$iv = new ArrayList();
                MutableScatterMap mutableScatterMap = this_$iv.invalidations;
                int i = 0;
                MutableScatterMap this_$iv$iv$iv$iv = mutableScatterMap;
                long[] m$iv$iv$iv$iv = this_$iv$iv$iv$iv.metadata;
                int lastIndex$iv$iv$iv$iv = m$iv$iv$iv$iv.length - 2;
                int i$iv$iv$iv$iv3 = 0;
                if (0 <= lastIndex$iv$iv$iv$iv) {
                    while (true) {
                        long slot$iv$iv$iv$iv = m$iv$iv$iv$iv[i$iv$iv$iv$iv3];
                        CompositionImpl this_$iv2 = this_$iv;
                        long[] m$iv$iv$iv$iv2 = m$iv$iv$iv$iv;
                        MutableScatterMap mutableScatterMap2 = mutableScatterMap;
                        int i2 = i;
                        long $this$maskEmptyOrDeleted$iv$iv$iv$iv$iv = ((~slot$iv$iv$iv$iv) << 7) & slot$iv$iv$iv$iv & (-9187201950435737472L);
                        if ($this$maskEmptyOrDeleted$iv$iv$iv$iv$iv != -9187201950435737472L) {
                            int i3 = 8;
                            int bitCount$iv$iv$iv$iv = 8 - ((~(i$iv$iv$iv$iv3 - lastIndex$iv$iv$iv$iv)) >>> 31);
                            int j$iv$iv$iv$iv3 = 0;
                            while (j$iv$iv$iv$iv3 < bitCount$iv$iv$iv$iv) {
                                long value$iv$iv$iv$iv$iv = slot$iv$iv$iv$iv & 255;
                                int $i$f$isFull = value$iv$iv$iv$iv$iv < 128 ? 1 : 0;
                                if ($i$f$isFull != 0) {
                                    int index$iv$iv$iv$iv4 = (i$iv$iv$iv$iv3 << 3) + j$iv$iv$iv$iv3;
                                    int i4 = i3;
                                    Object key$iv$iv = mutableScatterMap.keys[index$iv$iv$iv$iv4];
                                    currentGroup2 = currentGroup3;
                                    Object scopes$iv$iv = mutableScatterMap.values[index$iv$iv$iv$iv4];
                                    $i$f$extractInvalidationsOfGroup$runtime2 = $i$f$extractInvalidationsOfGroup$runtime3;
                                    Intrinsics.checkNotNull(key$iv$iv, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap");
                                    if (scopes$iv$iv instanceof MutableScatterSet) {
                                        Intrinsics.checkNotNull(scopes$iv$iv, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                        MutableScatterSet this_$iv$iv$iv = (MutableScatterSet) scopes$iv$iv;
                                        Object[] elements$iv$iv$iv = this_$iv$iv$iv.elements;
                                        MutableScatterSet this_$iv$iv$iv$iv2 = this_$iv$iv$iv;
                                        j$iv$iv$iv$iv = j$iv$iv$iv$iv3;
                                        long[] m$iv$iv$iv$iv3 = this_$iv$iv$iv$iv2.metadata;
                                        int lastIndex$iv$iv$iv$iv2 = m$iv$iv$iv$iv3.length - 2;
                                        int i$iv$iv$iv$iv4 = 0;
                                        if (0 <= lastIndex$iv$iv$iv$iv2) {
                                            while (true) {
                                                long slot$iv$iv$iv$iv2 = m$iv$iv$iv$iv3[i$iv$iv$iv$iv4];
                                                i$iv$iv$iv$iv2 = i$iv$iv$iv$iv3;
                                                slotTable2 = slotTable3;
                                                long $this$maskEmptyOrDeleted$iv$iv$iv$iv$iv2 = ((~slot$iv$iv$iv$iv2) << 7) & slot$iv$iv$iv$iv2 & (-9187201950435737472L);
                                                if ($this$maskEmptyOrDeleted$iv$iv$iv$iv$iv2 != -9187201950435737472L) {
                                                    int bitCount$iv$iv$iv$iv2 = 8 - ((~(i$iv$iv$iv$iv4 - lastIndex$iv$iv$iv$iv2)) >>> 31);
                                                    int j$iv$iv$iv$iv4 = 0;
                                                    while (j$iv$iv$iv$iv4 < bitCount$iv$iv$iv$iv2) {
                                                        long value$iv$iv$iv$iv$iv2 = slot$iv$iv$iv$iv2 & 255;
                                                        if (value$iv$iv$iv$iv$iv2 < 128) {
                                                            int index$iv$iv$iv$iv5 = (i$iv$iv$iv$iv4 << 3) + j$iv$iv$iv$iv4;
                                                            Object it$iv$iv = elements$iv$iv$iv[index$iv$iv$iv$iv5];
                                                            j$iv$iv$iv$iv2 = j$iv$iv$iv$iv4;
                                                            RecomposeScopeImpl scope$iv = (RecomposeScopeImpl) key$iv$iv;
                                                            Anchor scopeAnchor$iv = scope$iv.getAnchor();
                                                            if (scopeAnchor$iv == null || !slots.inGroup(anchor, scopeAnchor$iv)) {
                                                                index$iv$iv$iv$iv2 = index$iv$iv$iv$iv4;
                                                                index$iv$iv$iv$iv3 = 0;
                                                                if (index$iv$iv$iv$iv3 == 0) {
                                                                    this_$iv$iv$iv.removeElementAt(index$iv$iv$iv$iv5);
                                                                }
                                                            } else {
                                                                index$iv$iv$iv$iv2 = index$iv$iv$iv$iv4;
                                                                result$iv.add(TuplesKt.to(scope$iv, it$iv$iv));
                                                                index$iv$iv$iv$iv3 = 1;
                                                                if (index$iv$iv$iv$iv3 == 0) {
                                                                }
                                                            }
                                                        } else {
                                                            j$iv$iv$iv$iv2 = j$iv$iv$iv$iv4;
                                                            index$iv$iv$iv$iv2 = index$iv$iv$iv$iv4;
                                                        }
                                                        slot$iv$iv$iv$iv2 >>= i4;
                                                        j$iv$iv$iv$iv4 = j$iv$iv$iv$iv2 + 1;
                                                        index$iv$iv$iv$iv4 = index$iv$iv$iv$iv2;
                                                    }
                                                    index$iv$iv$iv$iv = index$iv$iv$iv$iv4;
                                                    int j$iv$iv$iv$iv5 = i4;
                                                    if (bitCount$iv$iv$iv$iv2 != j$iv$iv$iv$iv5) {
                                                        break;
                                                    }
                                                } else {
                                                    index$iv$iv$iv$iv = index$iv$iv$iv$iv4;
                                                }
                                                if (i$iv$iv$iv$iv4 == lastIndex$iv$iv$iv$iv2) {
                                                    break;
                                                }
                                                i$iv$iv$iv$iv4++;
                                                slotTable3 = slotTable2;
                                                i$iv$iv$iv$iv3 = i$iv$iv$iv$iv2;
                                                index$iv$iv$iv$iv4 = index$iv$iv$iv$iv;
                                                i4 = 8;
                                            }
                                        } else {
                                            i$iv$iv$iv$iv2 = i$iv$iv$iv$iv3;
                                            slotTable2 = slotTable3;
                                        }
                                        zIsEmpty = ((MutableScatterSet) scopes$iv$iv).isEmpty();
                                    } else {
                                        i$iv$iv$iv$iv2 = i$iv$iv$iv$iv3;
                                        slotTable2 = slotTable3;
                                        j$iv$iv$iv$iv = j$iv$iv$iv$iv3;
                                        Intrinsics.checkNotNull(scopes$iv$iv, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                        RecomposeScopeImpl scope$iv2 = (RecomposeScopeImpl) key$iv$iv;
                                        Anchor scopeAnchor$iv2 = scope$iv2.getAnchor();
                                        if (scopeAnchor$iv2 == null || !slots.inGroup(anchor, scopeAnchor$iv2)) {
                                            z = false;
                                        } else {
                                            result$iv.add(TuplesKt.to(scope$iv2, scopes$iv$iv));
                                            z = true;
                                        }
                                        zIsEmpty = z;
                                    }
                                    if (zIsEmpty) {
                                        mutableScatterMap.removeValueAt(index$iv$iv$iv$iv4);
                                    }
                                } else {
                                    i$iv$iv$iv$iv2 = i$iv$iv$iv$iv3;
                                    slotTable2 = slotTable3;
                                    currentGroup2 = currentGroup3;
                                    $i$f$extractInvalidationsOfGroup$runtime2 = $i$f$extractInvalidationsOfGroup$runtime3;
                                    j$iv$iv$iv$iv = j$iv$iv$iv$iv3;
                                }
                                slot$iv$iv$iv$iv >>= 8;
                                j$iv$iv$iv$iv3 = j$iv$iv$iv$iv + 1;
                                i3 = 8;
                                currentGroup3 = currentGroup2;
                                $i$f$extractInvalidationsOfGroup$runtime3 = $i$f$extractInvalidationsOfGroup$runtime2;
                                slotTable3 = slotTable2;
                                i$iv$iv$iv$iv3 = i$iv$iv$iv$iv2;
                            }
                            i$iv$iv$iv$iv = i$iv$iv$iv$iv3;
                            slotTable = slotTable3;
                            currentGroup = currentGroup3;
                            $i$f$extractInvalidationsOfGroup$runtime = $i$f$extractInvalidationsOfGroup$runtime3;
                            if (bitCount$iv$iv$iv$iv != i3) {
                                break;
                            }
                        } else {
                            i$iv$iv$iv$iv = i$iv$iv$iv$iv3;
                            slotTable = slotTable3;
                            currentGroup = currentGroup3;
                            $i$f$extractInvalidationsOfGroup$runtime = $i$f$extractInvalidationsOfGroup$runtime3;
                        }
                        int i$iv$iv$iv$iv5 = i$iv$iv$iv$iv;
                        if (i$iv$iv$iv$iv5 == lastIndex$iv$iv$iv$iv) {
                            break;
                        }
                        i$iv$iv$iv$iv3 = i$iv$iv$iv$iv5 + 1;
                        mutableScatterMap = mutableScatterMap2;
                        i = i2;
                        this_$iv = this_$iv2;
                        m$iv$iv$iv$iv = m$iv$iv$iv$iv2;
                        currentGroup3 = currentGroup;
                        $i$f$extractInvalidationsOfGroup$runtime3 = $i$f$extractInvalidationsOfGroup$runtime;
                        slotTable3 = slotTable;
                    }
                } else {
                    slotTable = slotTable3;
                }
            } else {
                slotTable = slotTable3;
                result$iv = CollectionsKt.emptyList();
            }
            movableContentStateReference = reference2;
            movableContentStateReference.setInvalidations$runtime(CollectionsKt.plus((Collection) reference2.getInvalidations$runtime(), (Iterable) result$iv));
        } else {
            movableContentStateReference = reference2;
            slotTable = slotTable3;
        }
        SlotWriter writer$iv = slotTable.openWriter();
        try {
            writer$iv.beginInsert();
            writer$iv.startGroup(MovableContentKt.movableContentKey, movableContentStateReference.getContent$runtime());
            SlotWriter.markGroup$default(writer$iv, 0, 1, null);
            writer$iv.update(movableContentStateReference.getParameter());
            List<Anchor> listMoveTo = slots.moveTo(movableContentStateReference.getAnchor(), 1, writer$iv);
            writer$iv.skipGroup();
            writer$iv.endGroup();
            writer$iv.endInsert();
            writer$iv.close(true);
            SlotTable slotTable4 = slotTable;
            MovableContentState state = new MovableContentState(slotTable4);
            if (!RecomposeScopeImpl.INSTANCE.hasAnchoredRecomposeScopes$runtime(slotTable4, listMoveTo)) {
                return state;
            }
            RecomposeScopeOwner recomposeScopeOwner = new RecomposeScopeOwner() { // from class: androidx.compose.runtime.ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1
                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public InvalidationResult invalidate(RecomposeScopeImpl scope, Object instance) {
                    InvalidationResult result;
                    ControlledComposition controlledComposition = composition;
                    RecomposeScopeOwner recomposeScopeOwner2 = controlledComposition instanceof RecomposeScopeOwner ? (RecomposeScopeOwner) controlledComposition : null;
                    if (recomposeScopeOwner2 == null || (result = recomposeScopeOwner2.invalidate(scope, instance)) == null) {
                        result = InvalidationResult.IGNORED;
                    }
                    if (result == InvalidationResult.IGNORED) {
                        MovableContentStateReference movableContentStateReference2 = movableContentStateReference;
                        movableContentStateReference2.setInvalidations$runtime(CollectionsKt.plus((Collection<? extends Pair>) movableContentStateReference2.getInvalidations$runtime(), TuplesKt.to(scope, instance)));
                        return InvalidationResult.SCHEDULED;
                    }
                    return result;
                }

                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public void recomposeScopeReleased(RecomposeScopeImpl scope) {
                }

                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public void recordReadOf(Object value) {
                }
            };
            SlotWriter writer$iv2 = slotTable4.openWriter();
            try {
                try {
                    RecomposeScopeImpl.INSTANCE.adoptAnchoredScopes$runtime(writer$iv2, listMoveTo, recomposeScopeOwner);
                    Unit unit = Unit.INSTANCE;
                    writer$iv2.close(true);
                    return state;
                } catch (Throwable th) {
                    th = th;
                    writer$iv2.close(false);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            writer$iv.close(false);
            throw th3;
        }
    }
}
