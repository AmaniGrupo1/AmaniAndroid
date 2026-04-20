package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.tooling.IdentifiableRecomposeScope;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecomposeScopeImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001fB\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010=\u001a\u00020<2\u0006\u0010>\u001a\u00020;J\u0010\u0010?\u001a\u00020@2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0014J\u0006\u0010A\u001a\u00020<J\u000e\u0010B\u001a\u00020<2\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010C\u001a\u00020<H\u0016J\"\u0010D\u001a\u00020<2\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020<0:H\u0016J\u000e\u0010T\u001a\u00020<2\u0006\u0010U\u001a\u00020\fJ\u0006\u0010V\u001a\u00020<J\u000e\u0010W\u001a\u00020\u001a2\u0006\u0010X\u001a\u00020\u0014J\u001c\u0010Y\u001a\u00020<2\n\u0010X\u001a\u0006\u0012\u0002\b\u00030J2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0014J\u0010\u0010[\u001a\u00020\u001a2\b\u0010\\\u001a\u0004\u0018\u00010\u0014J*\u0010]\u001a\u00020\u001a*\u0006\u0012\u0002\b\u00030J2\u0018\u0010^\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030J\u0012\u0006\u0012\u0004\u0018\u00010\u00140IH\u0002J\u0006\u0010_\u001a\u00020<J\u001c\u0010`\u001a\u0010\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020<\u0018\u00010a2\u0006\u0010U\u001a\u00020\fJ\u0011\u0010c\u001a\u00020\u001a2\u0006\u0010d\u001a\u00020\fH\u0082\bJ\u0019\u0010e\u001a\u00020<2\u0006\u0010d\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001aH\u0082\bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001cR$\u0010 \u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u001c\"\u0004\b&\u0010#R$\u0010'\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u001c\"\u0004\b)\u0010#R$\u0010*\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\u001c\"\u0004\b,\u0010#R$\u0010-\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\u001c\"\u0004\b/\u0010#R$\u00100\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\u001c\"\u0004\b2\u0010#R$\u00103\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u001c\"\u0004\b5\u0010#R$\u00106\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u001c\"\u0004\b8\u0010#R\"\u00109\u001a\u0016\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020<\u0018\u00010:X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010GX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010H\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030J\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010IX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010K\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bL\u0010\u001c\"\u0004\bM\u0010#R$\u0010N\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bO\u0010\u001c\"\u0004\bP\u0010#R$\u0010Q\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8@@BX\u0080\u000e¢\u0006\f\u001a\u0004\bR\u0010\u001c\"\u0004\bS\u0010#R\u0011\u0010Z\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\bZ\u0010\u001c¨\u0006g"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeImpl;", "Landroidx/compose/runtime/ScopeUpdateScope;", "Landroidx/compose/runtime/RecomposeScope;", "Landroidx/compose/runtime/tooling/IdentifiableRecomposeScope;", "owner", "Landroidx/compose/runtime/RecomposeScopeOwner;", "<init>", "(Landroidx/compose/runtime/RecomposeScopeOwner;)V", "getOwner$runtime", "()Landroidx/compose/runtime/RecomposeScopeOwner;", "setOwner$runtime", "flags", "", "anchor", "Landroidx/compose/runtime/Anchor;", "getAnchor", "()Landroidx/compose/runtime/Anchor;", "setAnchor", "(Landroidx/compose/runtime/Anchor;)V", "identity", "", "getIdentity$annotations", "()V", "getIdentity", "()Ljava/lang/Object;", "valid", "", "getValid", "()Z", "canRecompose", "getCanRecompose", Values.VECTOR_MAP_VECTORS_KEY, "used", "getUsed", "setUsed", "(Z)V", "reusing", "getReusing", "setReusing", "resetReusing", "getResetReusing", "setResetReusing", "paused", "getPaused", "setPaused", "resuming", "getResuming", "setResuming", "defaultsInScope", "getDefaultsInScope", "setDefaultsInScope", "defaultsInvalid", "getDefaultsInvalid", "setDefaultsInvalid", "requiresRecompose", "getRequiresRecompose", "setRequiresRecompose", "block", "Lkotlin/Function2;", "Landroidx/compose/runtime/Composer;", "", "compose", "composer", "invalidateForResult", "Landroidx/compose/runtime/InvalidationResult;", "release", "adoptedBy", "invalidate", "updateScope", "currentToken", "trackedInstances", "Landroidx/collection/MutableObjectIntMap;", "trackedDependencies", "Landroidx/collection/MutableScatterMap;", "Landroidx/compose/runtime/DerivedState;", "rereading", "getRereading", "setRereading", "forcedRecompose", "getForcedRecompose", "setForcedRecompose", "skipped", "getSkipped$runtime", "setSkipped", TtmlNode.START, "token", "scopeSkipped", "recordRead", "instance", "recordDerivedStateValue", "isConditional", "isInvalidFor", "instances", "checkDerivedStateChanged", "dependencies", "rereadTrackedInstances", TtmlNode.END, "Lkotlin/Function1;", "Landroidx/compose/runtime/Composition;", "getFlag", "flag", "setFlag", "Companion", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RecomposeScopeImpl implements ScopeUpdateScope, RecomposeScope, IdentifiableRecomposeScope {
    private Anchor anchor;
    private Function2<? super Composer, ? super Integer, Unit> block;
    private int currentToken;
    private int flags;
    private RecomposeScopeOwner owner;
    private MutableScatterMap<DerivedState<?>, Object> trackedDependencies;
    private MutableObjectIntMap<Object> trackedInstances;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public static /* synthetic */ void getIdentity$annotations() {
    }

    public RecomposeScopeImpl(RecomposeScopeOwner owner) {
        this.owner = owner;
    }

    /* JADX INFO: renamed from: getOwner$runtime, reason: from getter */
    public final RecomposeScopeOwner getOwner() {
        return this.owner;
    }

    public final void setOwner$runtime(RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    public final Anchor getAnchor() {
        return this.anchor;
    }

    public final void setAnchor(Anchor anchor) {
        this.anchor = anchor;
    }

    @Override // androidx.compose.runtime.tooling.IdentifiableRecomposeScope
    public Object getIdentity() {
        return this.anchor;
    }

    public final boolean getValid() {
        if (this.owner == null) {
            return false;
        }
        Anchor anchor = this.anchor;
        return anchor != null ? anchor.getValid() : false;
    }

    public final boolean getCanRecompose() {
        return this.block != null;
    }

    public final boolean getUsed() {
        return (this.flags & 1) != 0;
    }

    public final void setUsed(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 1;
        } else {
            i = (~1) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getReusing() {
        return (this.flags & 128) != 0;
    }

    public final void setReusing(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 128;
        } else {
            i = (~128) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getResetReusing() {
        return (this.flags & 1024) != 0;
    }

    public final void setResetReusing(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 1024;
        } else {
            i = (~1024) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getPaused() {
        return (this.flags & 256) != 0;
    }

    public final void setPaused(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 256;
        } else {
            i = (~256) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getResuming() {
        return (this.flags & 512) != 0;
    }

    public final void setResuming(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 512;
        } else {
            i = (~512) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getDefaultsInScope() {
        return (this.flags & 2) != 0;
    }

    public final void setDefaultsInScope(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 2;
        } else {
            i = (~2) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getDefaultsInvalid() {
        return (this.flags & 4) != 0;
    }

    public final void setDefaultsInvalid(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 4;
        } else {
            i = (~4) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getRequiresRecompose() {
        return (this.flags & 8) != 0;
    }

    public final void setRequiresRecompose(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 8;
        } else {
            i = (~8) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final void compose(Composer composer) {
        Function2<? super Composer, ? super Integer, Unit> function2 = this.block;
        if (function2 == null) {
            throw new IllegalStateException("Invalid restart scope".toString());
        }
        function2.invoke(composer, 1);
    }

    public final InvalidationResult invalidateForResult(Object value) {
        InvalidationResult invalidationResultInvalidate;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        return (recomposeScopeOwner == null || (invalidationResultInvalidate = recomposeScopeOwner.invalidate(this, value)) == null) ? InvalidationResult.IGNORED : invalidationResultInvalidate;
    }

    public final void release() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.recomposeScopeReleased(this);
        }
        this.owner = null;
        this.trackedInstances = null;
        this.trackedDependencies = null;
        this.block = null;
    }

    public final void adoptedBy(RecomposeScopeOwner owner) {
        this.owner = owner;
    }

    @Override // androidx.compose.runtime.RecomposeScope
    public void invalidate() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.invalidate(this, null);
        }
    }

    @Override // androidx.compose.runtime.ScopeUpdateScope
    public void updateScope(Function2<? super Composer, ? super Integer, Unit> block) {
        this.block = block;
    }

    private final boolean getRereading() {
        return (this.flags & 32) != 0;
    }

    private final void setRereading(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 32;
        } else {
            i = (~32) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getForcedRecompose() {
        return (this.flags & 64) != 0;
    }

    public final void setForcedRecompose(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 64;
        } else {
            i = (~64) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final boolean getSkipped$runtime() {
        return (this.flags & 16) != 0;
    }

    private final void setSkipped(boolean value) {
        int i;
        int existingFlags$iv = this.flags;
        if (value) {
            i = existingFlags$iv | 16;
        } else {
            i = (~16) & existingFlags$iv;
        }
        this.flags = i;
    }

    public final void start(int token) {
        this.currentToken = token;
        setSkipped(false);
    }

    public final void scopeSkipped() {
        if (!getReusing()) {
            setSkipped(true);
        }
    }

    public final boolean recordRead(Object instance) {
        int i = 0;
        if (getRereading()) {
            return false;
        }
        MutableObjectIntMap<Object> mutableObjectIntMap = this.trackedInstances;
        int i2 = 1;
        if (mutableObjectIntMap == null) {
            mutableObjectIntMap = new MutableObjectIntMap<>(i, i2, null);
            this.trackedInstances = mutableObjectIntMap;
        }
        int token = mutableObjectIntMap.put(instance, this.currentToken, -1);
        return token == this.currentToken;
    }

    public final void recordDerivedStateValue(DerivedState<?> instance, Object value) {
        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap = this.trackedDependencies;
        if (mutableScatterMap == null) {
            mutableScatterMap = new MutableScatterMap<>(0, 1, null);
            this.trackedDependencies = mutableScatterMap;
        }
        mutableScatterMap.set(instance, value);
    }

    public final boolean isConditional() {
        return this.trackedDependencies != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ac A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isInvalidFor(Object instances) {
        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap;
        boolean z;
        int i;
        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap2;
        boolean z2;
        if (instances == null || (mutableScatterMap = this.trackedDependencies) == null) {
            return true;
        }
        if (instances instanceof DerivedState) {
            return checkDerivedStateChanged((DerivedState) instances, mutableScatterMap);
        }
        if (instances instanceof ScatterSet) {
            if (((ScatterSet) instances).isNotEmpty()) {
                ScatterSet this_$iv = (ScatterSet) instances;
                int $i$f$any = 0;
                Object[] elements$iv$iv = this_$iv.elements;
                long[] m$iv$iv$iv = this_$iv.metadata;
                int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
                int i$iv$iv$iv = 0;
                if (0 <= lastIndex$iv$iv$iv) {
                    loop0: while (true) {
                        long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
                        int $i$f$any2 = $i$f$any;
                        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap3 = mutableScatterMap;
                        if ((((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L)) == -9187201950435737472L) {
                            mutableScatterMap = mutableScatterMap3;
                        } else {
                            int i2 = 8;
                            int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                            int j$iv$iv$iv = 0;
                            while (j$iv$iv$iv < bitCount$iv$iv$iv) {
                                long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                                int $i$f$isFull = value$iv$iv$iv$iv < 128 ? 1 : 0;
                                if ($i$f$isFull == 0) {
                                    i = i2;
                                    mutableScatterMap2 = mutableScatterMap3;
                                } else {
                                    int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                                    Object element$iv = elements$iv$iv[index$iv$iv$iv];
                                    i = i2;
                                    if (element$iv instanceof DerivedState) {
                                        mutableScatterMap2 = mutableScatterMap3;
                                        if (!checkDerivedStateChanged((DerivedState) element$iv, mutableScatterMap2)) {
                                            z2 = false;
                                        }
                                        if (!z2) {
                                            z = true;
                                            break loop0;
                                        }
                                    } else {
                                        mutableScatterMap2 = mutableScatterMap3;
                                    }
                                    z2 = true;
                                    if (!z2) {
                                    }
                                }
                                slot$iv$iv$iv >>= i;
                                j$iv$iv$iv++;
                                mutableScatterMap3 = mutableScatterMap2;
                                i2 = i;
                            }
                            int i3 = i2;
                            mutableScatterMap = mutableScatterMap3;
                            if (bitCount$iv$iv$iv != i3) {
                                break;
                            }
                        }
                        if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                            break;
                        }
                        i$iv$iv$iv++;
                        $i$f$any = $i$f$any2;
                    }
                }
                z = false;
                if (z) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    private final boolean checkDerivedStateChanged(DerivedState<?> derivedState, MutableScatterMap<DerivedState<?>, Object> mutableScatterMap) {
        Intrinsics.checkNotNull(derivedState, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>");
        SnapshotMutationPolicy<?> policy = derivedState.getPolicy();
        if (policy == null) {
            policy = SnapshotStateKt.structuralEqualityPolicy();
        }
        return !policy.equivalent(derivedState.getCurrentRecord().getCurrentValue(), mutableScatterMap.get(derivedState));
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void rereadTrackedInstances() throws Throwable {
        ObjectIntMap objectIntMap;
        int i;
        RecomposeScopeImpl recomposeScopeImpl = this;
        RecomposeScopeOwner owner = recomposeScopeImpl.owner;
        if (owner != null && (objectIntMap = recomposeScopeImpl.trackedInstances) != null) {
            recomposeScopeImpl.setRereading(true);
            try {
                ObjectIntMap this_$iv = objectIntMap;
                Object[] k$iv = this_$iv.keys;
                int[] v$iv = this_$iv.values;
                long[] m$iv$iv = this_$iv.metadata;
                int lastIndex$iv$iv = m$iv$iv.length - 2;
                int i$iv$iv = 0;
                if (0 <= lastIndex$iv$iv) {
                    while (true) {
                        try {
                            long slot$iv$iv = m$iv$iv[i$iv$iv];
                            ObjectIntMap this_$iv2 = this_$iv;
                            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                            if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                                int i2 = 8;
                                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                                int j$iv$iv = 0;
                                while (j$iv$iv < bitCount$iv$iv) {
                                    long value$iv$iv$iv = slot$iv$iv & 255;
                                    int $i$f$isFull = value$iv$iv$iv < 128 ? 1 : 0;
                                    if ($i$f$isFull == 0) {
                                        i = i2;
                                    } else {
                                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                                        Object value = k$iv[index$iv$iv];
                                        int i3 = v$iv[index$iv$iv];
                                        i = i2;
                                        owner.recordReadOf(value);
                                    }
                                    slot$iv$iv >>= i;
                                    j$iv$iv++;
                                    i2 = i;
                                }
                                if (bitCount$iv$iv != i2) {
                                    break;
                                }
                                if (i$iv$iv == lastIndex$iv$iv) {
                                    break;
                                }
                                i$iv$iv++;
                                this_$iv = this_$iv2;
                            }
                        } catch (Throwable th) {
                            th = th;
                            recomposeScopeImpl = this;
                            recomposeScopeImpl.setRereading(false);
                            throw th;
                        }
                    }
                }
                setRereading(false);
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public final Function1<Composition, Unit> end(final int token) {
        int i;
        final MutableObjectIntMap<Object> mutableObjectIntMap = this.trackedInstances;
        if (mutableObjectIntMap == null) {
            return null;
        }
        int i2 = 0;
        if (!getSkipped$runtime()) {
            MutableObjectIntMap<Object> this_$iv = mutableObjectIntMap;
            int $i$f$any = 0;
            Object[] k$iv$iv = this_$iv.keys;
            int[] v$iv$iv = this_$iv.values;
            long[] m$iv$iv$iv = this_$iv.metadata;
            int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
            int i$iv$iv$iv = 0;
            boolean z = false;
            if (0 <= lastIndex$iv$iv$iv) {
                loop0: while (true) {
                    long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
                    int i3 = i2;
                    ObjectIntMap this_$iv2 = this_$iv;
                    int $i$f$any2 = $i$f$any;
                    long $this$maskEmptyOrDeleted$iv$iv$iv$iv = ((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L);
                    if ($this$maskEmptyOrDeleted$iv$iv$iv$iv == -9187201950435737472L) {
                        if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                            break;
                        }
                        i$iv$iv$iv++;
                        this_$iv = this_$iv2;
                        $i$f$any = $i$f$any2;
                        i2 = i3;
                    } else {
                        int i4 = 8;
                        int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                        int j$iv$iv$iv = 0;
                        while (true) {
                            if (j$iv$iv$iv >= bitCount$iv$iv$iv) {
                                if (bitCount$iv$iv$iv != i4) {
                                    break;
                                }
                            } else {
                                long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                                int $i$f$isFull = value$iv$iv$iv$iv < 128 ? 1 : 0;
                                if ($i$f$isFull != 0) {
                                    int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                                    Object obj = k$iv$iv[index$iv$iv$iv];
                                    int value$iv = v$iv$iv[index$iv$iv$iv];
                                    i = i4;
                                    int instanceToken = value$iv != token ? 1 : 0;
                                    if (instanceToken != 0) {
                                        z = true;
                                        break loop0;
                                    }
                                } else {
                                    i = i4;
                                }
                                slot$iv$iv$iv >>= i;
                                j$iv$iv$iv++;
                                i4 = i;
                            }
                        }
                    }
                }
            }
            if (z) {
                return new Function1() { // from class: androidx.compose.runtime.RecomposeScopeImpl$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return RecomposeScopeImpl.end$lambda$0$1(this.f$0, token, mutableObjectIntMap, (Composition) obj2);
                    }
                };
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Unit end$lambda$0$1(RecomposeScopeImpl recomposeScopeImpl, int i, MutableObjectIntMap mutableObjectIntMap, Composition composition) {
        int i2;
        int i3 = i;
        if (recomposeScopeImpl.currentToken == i3 && Intrinsics.areEqual(mutableObjectIntMap, recomposeScopeImpl.trackedInstances) && (composition instanceof CompositionImpl)) {
            int i4 = 0;
            long[] jArr = mutableObjectIntMap.metadata;
            int length = jArr.length - 2;
            int i5 = 0;
            if (0 <= length) {
                while (true) {
                    long j = jArr[i5];
                    int i6 = i4;
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i7 = 8;
                        int i8 = 8 - ((~(i5 - length)) >>> 31);
                        int i9 = 0;
                        while (i9 < i8) {
                            if (!((255 & j) < 128)) {
                                i2 = i7;
                            } else {
                                int i10 = (i5 << 3) + i9;
                                i2 = i7;
                                Object obj = mutableObjectIntMap.keys[i10];
                                boolean z = mutableObjectIntMap.values[i10] != i3;
                                if (z) {
                                    ((CompositionImpl) composition).removeObservation$runtime(obj, recomposeScopeImpl);
                                    if (obj instanceof DerivedState) {
                                        ((CompositionImpl) composition).removeDerivedStateObservation$runtime((DerivedState) obj);
                                        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap = recomposeScopeImpl.trackedDependencies;
                                        if (mutableScatterMap != null) {
                                            mutableScatterMap.remove((DerivedState<?>) obj);
                                        }
                                    }
                                }
                                if (z) {
                                    mutableObjectIntMap.removeValueAt(i10);
                                }
                            }
                            j >>= i2;
                            i9++;
                            i3 = i;
                            i7 = i2;
                        }
                        if (i8 != i7) {
                            break;
                        }
                        if (i5 == length) {
                            break;
                        }
                        i5++;
                        i3 = i;
                        i4 = i6;
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }

    private final boolean getFlag(int flag) {
        return (this.flags & flag) != 0;
    }

    private final void setFlag(int flag, boolean value) {
        int i;
        int existingFlags = this.flags;
        if (value) {
            i = existingFlags | flag;
        } else {
            i = (~flag) & existingFlags;
        }
        this.flags = i;
    }

    /* JADX INFO: compiled from: RecomposeScopeImpl.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\b\rJ#\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00102\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0000¢\u0006\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeImpl$Companion;", "", "<init>", "()V", "adoptAnchoredScopes", "", "slots", "Landroidx/compose/runtime/SlotWriter;", "anchors", "", "Landroidx/compose/runtime/Anchor;", "newOwner", "Landroidx/compose/runtime/RecomposeScopeOwner;", "adoptAnchoredScopes$runtime", "hasAnchoredRecomposeScopes", "", "Landroidx/compose/runtime/SlotTable;", "hasAnchoredRecomposeScopes$runtime", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void adoptAnchoredScopes$runtime(SlotWriter slots, List<Anchor> anchors, RecomposeScopeOwner newOwner) {
            if (anchors.isEmpty()) {
                return;
            }
            int size = anchors.size();
            for (int index$iv = 0; index$iv < size; index$iv++) {
                Object item$iv = anchors.get(index$iv);
                Anchor anchor = (Anchor) item$iv;
                Object objSlot = slots.slot(anchor, 0);
                RecomposeScopeImpl recomposeScope = objSlot instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) objSlot : null;
                if (recomposeScope != null) {
                    recomposeScope.adoptedBy(newOwner);
                }
            }
        }

        public final boolean hasAnchoredRecomposeScopes$runtime(SlotTable slots, List<Anchor> anchors) {
            boolean z;
            if (anchors.isEmpty()) {
                return false;
            }
            int index$iv$iv = 0;
            int size = anchors.size();
            while (true) {
                if (index$iv$iv < size) {
                    Object item$iv$iv = anchors.get(index$iv$iv);
                    Anchor it = (Anchor) item$iv$iv;
                    if (slots.ownsAnchor(it) && (slots.slot$runtime(slots.anchorIndex(it), 0) instanceof RecomposeScopeImpl)) {
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
    }
}
