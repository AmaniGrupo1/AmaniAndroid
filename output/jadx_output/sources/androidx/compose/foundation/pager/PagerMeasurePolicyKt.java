package androidx.compose.foundation.pager;

import android.os.Trace;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Alignment;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PagerMeasurePolicy.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000x\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u001a\u0087\u0001\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0003H\u0001¢\u0006\u0004\b\u001c\u0010\u001d\u001a\"\u0010\u001e\u001a\u00020\u001f*\u00020 2\u0006\u0010!\u001a\u00020\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$H\u0002\u001a\u0017\u0010'\u001a\u00020\u001f2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u0003H\u0082\b\"\u000e\u0010&\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"rememberPagerMeasurePolicy", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;", "itemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;", "state", "Landroidx/compose/foundation/pager/PagerState;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "beyondViewportPageCount", "", "pageSpacing", "Landroidx/compose/ui/unit/Dp;", "pageSize", "Landroidx/compose/foundation/pager/PageSize;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "snapPosition", "Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "pageCount", "rememberPagerMeasurePolicy-8u0NR3k", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;", "keepAroundItems", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "cacheWindowLogic", "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;", "visiblePagesList", "", "Landroidx/compose/foundation/pager/PageInfo;", "DebugEnabled", "debugLog", "generateMsg", "", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PagerMeasurePolicyKt {
    private static final boolean DebugEnabled = false;

    /* JADX WARN: Removed duplicated region for block: B:101:0x0131 A[PHI: r15
      0x0131: PHI (r15v5 kotlin.jvm.functions.Function0<java.lang.Integer>) = (r15v3 kotlin.jvm.functions.Function0<java.lang.Integer>), (r15v6 kotlin.jvm.functions.Function0<java.lang.Integer>) binds: [B:100:0x012f, B:96:0x0128] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0151 A[PHI: r5
      0x0151: PHI (r5v14 int) = (r5v12 int), (r5v15 int) binds: [B:110:0x014f, B:106:0x0145] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[PHI: r8
      0x0039: PHI (r8v3 androidx.compose.foundation.pager.PagerState) = (r8v1 androidx.compose.foundation.pager.PagerState), (r8v4 androidx.compose.foundation.pager.PagerState) binds: [B:12:0x0037, B:8:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053 A[PHI: r10
      0x0053: PHI (r10v3 androidx.compose.foundation.layout.PaddingValues) = (r10v1 androidx.compose.foundation.layout.PaddingValues), (r10v4 androidx.compose.foundation.layout.PaddingValues) binds: [B:22:0x0051, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e A[PHI: r11
      0x006e: PHI (r11v3 boolean) = (r11v1 boolean), (r11v4 boolean) binds: [B:32:0x006c, B:28:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00aa A[PHI: r4
      0x00aa: PHI (r4v28 androidx.compose.ui.Alignment$Horizontal) = (r4v24 androidx.compose.ui.Alignment$Horizontal), (r4v29 androidx.compose.ui.Alignment$Horizontal) binds: [B:50:0x00a8, B:46:0x00a2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c6 A[PHI: r9
      0x00c6: PHI (r9v13 androidx.compose.ui.Alignment$Vertical) = (r9v10 androidx.compose.ui.Alignment$Vertical), (r9v14 androidx.compose.ui.Alignment$Vertical) binds: [B:60:0x00c4, B:56:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e2 A[PHI: r12
      0x00e2: PHI (r12v11 float) = (r12v9 float), (r12v12 float) binds: [B:70:0x00e0, B:66:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fe A[PHI: r13
      0x00fe: PHI (r13v11 androidx.compose.foundation.pager.PageSize) = (r13v9 androidx.compose.foundation.pager.PageSize), (r13v12 androidx.compose.foundation.pager.PageSize) binds: [B:80:0x00fc, B:76:0x00f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0118 A[PHI: r14
      0x0118: PHI (r14v11 androidx.compose.foundation.gestures.snapping.SnapPosition) = 
      (r14v8 androidx.compose.foundation.gestures.snapping.SnapPosition)
      (r14v12 androidx.compose.foundation.gestures.snapping.SnapPosition)
     binds: [B:90:0x0116, B:86:0x010f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012b  */
    /* JADX INFO: renamed from: rememberPagerMeasurePolicy-8u0NR3k, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final LazyLayoutMeasurePolicy m1079rememberPagerMeasurePolicy8u0NR3k(Function0<PagerLazyLayoutItemProvider> function0, PagerState state, PaddingValues contentPadding, boolean reverseLayout, Orientation orientation, int beyondViewportPageCount, float f, PageSize pageSize, Alignment.Horizontal horizontalAlignment, Alignment.Vertical verticalAlignment, SnapPosition snapPosition, CoroutineScope coroutineScope, Function0<Integer> function02, Composer $composer, int $changed, int $changed1) {
        PagerState pagerState;
        boolean z;
        PaddingValues paddingValues;
        boolean z2;
        boolean z3;
        boolean z4;
        Alignment.Horizontal horizontal;
        boolean z5;
        Alignment.Vertical vertical;
        boolean z6;
        float f2;
        boolean z7;
        PageSize pageSize2;
        boolean z8;
        SnapPosition snapPosition2;
        boolean z9;
        Function0<Integer> function03;
        boolean z10;
        int i;
        boolean z11;
        boolean invalid$iv;
        Object it$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -1294131537, "C(rememberPagerMeasurePolicy)N(itemProviderLambda,state,contentPadding,reverseLayout,orientation,beyondViewportPageCount,pageSpacing:c#ui.unit.Dp,pageSize,horizontalAlignment,verticalAlignment,snapPosition,coroutineScope,pageCount)61@2523L7806:PagerMeasurePolicy.kt#g6yjnt");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1294131537, $changed, $changed1, "androidx.compose.foundation.pager.rememberPagerMeasurePolicy (PagerMeasurePolicy.kt:61)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, 1880131949, "CC(remember):PagerMeasurePolicy.kt#9igjgp");
        if ((($changed & 112) ^ 48) > 32) {
            pagerState = state;
            if ($composer.changed(pagerState)) {
                z = true;
            }
            if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                paddingValues = contentPadding;
                if ($composer.changed(paddingValues)) {
                    z2 = true;
                }
                boolean z12 = z | z2;
                if ((($changed & 7168) ^ 3072) > 2048) {
                    z3 = reverseLayout;
                    if ($composer.changed(z3)) {
                        z4 = true;
                    }
                    boolean z13 = z12 | z4 | ((((57344 & $changed) ^ 24576) <= 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
                    if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                        horizontal = horizontalAlignment;
                        if ($composer.changed(horizontal)) {
                            z5 = true;
                        }
                        boolean z14 = z13 | z5;
                        if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                            vertical = verticalAlignment;
                            if ($composer.changed(vertical)) {
                                z6 = true;
                            }
                            boolean z15 = z14 | z6;
                            if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                                f2 = f;
                                if ($composer.changed(f2)) {
                                    z7 = true;
                                }
                                boolean z16 = z15 | z7;
                                if (((29360128 & $changed) ^ 12582912) > 8388608) {
                                    pageSize2 = pageSize;
                                    if ($composer.changed(pageSize2)) {
                                        z8 = true;
                                    }
                                    boolean z17 = z16 | z8;
                                    if ((($changed1 & 14) ^ 6) <= 4) {
                                        snapPosition2 = snapPosition;
                                        if ($composer.changed(snapPosition2)) {
                                            z9 = true;
                                        }
                                        boolean z18 = z17 | z9;
                                        if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                                            function03 = function02;
                                            if ($composer.changed(function03)) {
                                                z10 = true;
                                            }
                                            boolean z19 = z18 | z10;
                                            if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                                                i = beyondViewportPageCount;
                                                if ($composer.changed(i)) {
                                                    z11 = true;
                                                }
                                                invalid$iv = z19 | z11 | $composer.changed(coroutineScope);
                                                it$iv = $composer.rememberedValue();
                                                if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                                    Object value$iv = (LazyLayoutMeasurePolicy) new PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1(pagerState, orientation, paddingValues, z3, f2, pageSize2, function0, function03, vertical, horizontal, i, snapPosition2, coroutineScope);
                                                    $composer.updateRememberedValue(value$iv);
                                                    it$iv = value$iv;
                                                }
                                                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) it$iv;
                                                ComposerKt.sourceInformationMarkerEnd($composer);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                                ComposerKt.sourceInformationMarkerEnd($composer);
                                                return lazyLayoutMeasurePolicy;
                                            }
                                            i = beyondViewportPageCount;
                                            if ((196608 & $changed) == 131072) {
                                                z11 = false;
                                            }
                                            invalid$iv = z19 | z11 | $composer.changed(coroutineScope);
                                            it$iv = $composer.rememberedValue();
                                            if (invalid$iv) {
                                                Object value$iv2 = (LazyLayoutMeasurePolicy) new PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1(pagerState, orientation, paddingValues, z3, f2, pageSize2, function0, function03, vertical, horizontal, i, snapPosition2, coroutineScope);
                                                $composer.updateRememberedValue(value$iv2);
                                                it$iv = value$iv2;
                                            }
                                            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) it$iv;
                                            ComposerKt.sourceInformationMarkerEnd($composer);
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer);
                                            return lazyLayoutMeasurePolicy2;
                                        }
                                        function03 = function02;
                                        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                                            z10 = false;
                                        }
                                        boolean z192 = z18 | z10;
                                        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                                        }
                                        if ((196608 & $changed) == 131072) {
                                        }
                                        invalid$iv = z192 | z11 | $composer.changed(coroutineScope);
                                        it$iv = $composer.rememberedValue();
                                        if (invalid$iv) {
                                        }
                                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22 = (LazyLayoutMeasurePolicy) it$iv;
                                        ComposerKt.sourceInformationMarkerEnd($composer);
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                        ComposerKt.sourceInformationMarkerEnd($composer);
                                        return lazyLayoutMeasurePolicy22;
                                    }
                                    snapPosition2 = snapPosition;
                                    if (($changed1 & 6) == 4) {
                                        z9 = false;
                                    }
                                    boolean z182 = z17 | z9;
                                    if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                                    }
                                    if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                                    }
                                    boolean z1922 = z182 | z10;
                                    if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                                    }
                                    if ((196608 & $changed) == 131072) {
                                    }
                                    invalid$iv = z1922 | z11 | $composer.changed(coroutineScope);
                                    it$iv = $composer.rememberedValue();
                                    if (invalid$iv) {
                                    }
                                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222 = (LazyLayoutMeasurePolicy) it$iv;
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    return lazyLayoutMeasurePolicy222;
                                }
                                pageSize2 = pageSize;
                                if ((12582912 & $changed) != 8388608) {
                                    z8 = false;
                                }
                                boolean z172 = z16 | z8;
                                if ((($changed1 & 14) ^ 6) <= 4) {
                                }
                                if (($changed1 & 6) == 4) {
                                }
                                boolean z1822 = z172 | z9;
                                if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                                }
                                if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                                }
                                boolean z19222 = z1822 | z10;
                                if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                                }
                                if ((196608 & $changed) == 131072) {
                                }
                                invalid$iv = z19222 | z11 | $composer.changed(coroutineScope);
                                it$iv = $composer.rememberedValue();
                                if (invalid$iv) {
                                }
                                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222 = (LazyLayoutMeasurePolicy) it$iv;
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                if (ComposerKt.isTraceInProgress()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                return lazyLayoutMeasurePolicy2222;
                            }
                            f2 = f;
                            if ((1572864 & $changed) == 1048576) {
                                z7 = false;
                            }
                            boolean z162 = z15 | z7;
                            if (((29360128 & $changed) ^ 12582912) > 8388608) {
                            }
                            if ((12582912 & $changed) != 8388608) {
                            }
                            boolean z1722 = z162 | z8;
                            if ((($changed1 & 14) ^ 6) <= 4) {
                            }
                            if (($changed1 & 6) == 4) {
                            }
                            boolean z18222 = z1722 | z9;
                            if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                            }
                            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                            }
                            boolean z192222 = z18222 | z10;
                            if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                            }
                            if ((196608 & $changed) == 131072) {
                            }
                            invalid$iv = z192222 | z11 | $composer.changed(coroutineScope);
                            it$iv = $composer.rememberedValue();
                            if (invalid$iv) {
                            }
                            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22222 = (LazyLayoutMeasurePolicy) it$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            return lazyLayoutMeasurePolicy22222;
                        }
                        vertical = verticalAlignment;
                        if ((805306368 & $changed) != 536870912) {
                            z6 = false;
                        }
                        boolean z152 = z14 | z6;
                        if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                        }
                        if ((1572864 & $changed) == 1048576) {
                        }
                        boolean z1622 = z152 | z7;
                        if (((29360128 & $changed) ^ 12582912) > 8388608) {
                        }
                        if ((12582912 & $changed) != 8388608) {
                        }
                        boolean z17222 = z1622 | z8;
                        if ((($changed1 & 14) ^ 6) <= 4) {
                        }
                        if (($changed1 & 6) == 4) {
                        }
                        boolean z182222 = z17222 | z9;
                        if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                        }
                        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                        }
                        boolean z1922222 = z182222 | z10;
                        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                        }
                        if ((196608 & $changed) == 131072) {
                        }
                        invalid$iv = z1922222 | z11 | $composer.changed(coroutineScope);
                        it$iv = $composer.rememberedValue();
                        if (invalid$iv) {
                        }
                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222222 = (LazyLayoutMeasurePolicy) it$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return lazyLayoutMeasurePolicy222222;
                    }
                    horizontal = horizontalAlignment;
                    if ((100663296 & $changed) == 67108864) {
                        z5 = false;
                    }
                    boolean z142 = z13 | z5;
                    if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                    }
                    if ((805306368 & $changed) != 536870912) {
                    }
                    boolean z1522 = z142 | z6;
                    if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                    }
                    if ((1572864 & $changed) == 1048576) {
                    }
                    boolean z16222 = z1522 | z7;
                    if (((29360128 & $changed) ^ 12582912) > 8388608) {
                    }
                    if ((12582912 & $changed) != 8388608) {
                    }
                    boolean z172222 = z16222 | z8;
                    if ((($changed1 & 14) ^ 6) <= 4) {
                    }
                    if (($changed1 & 6) == 4) {
                    }
                    boolean z1822222 = z172222 | z9;
                    if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    }
                    if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                    }
                    boolean z19222222 = z1822222 | z10;
                    if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                    }
                    if ((196608 & $changed) == 131072) {
                    }
                    invalid$iv = z19222222 | z11 | $composer.changed(coroutineScope);
                    it$iv = $composer.rememberedValue();
                    if (invalid$iv) {
                    }
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222222 = (LazyLayoutMeasurePolicy) it$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return lazyLayoutMeasurePolicy2222222;
                }
                z3 = reverseLayout;
                if (($changed & 3072) != 2048) {
                    z4 = false;
                }
                boolean z132 = z12 | z4 | ((((57344 & $changed) ^ 24576) <= 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
                if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                }
                if ((100663296 & $changed) == 67108864) {
                }
                boolean z1422 = z132 | z5;
                if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                }
                if ((805306368 & $changed) != 536870912) {
                }
                boolean z15222 = z1422 | z6;
                if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                }
                if ((1572864 & $changed) == 1048576) {
                }
                boolean z162222 = z15222 | z7;
                if (((29360128 & $changed) ^ 12582912) > 8388608) {
                }
                if ((12582912 & $changed) != 8388608) {
                }
                boolean z1722222 = z162222 | z8;
                if ((($changed1 & 14) ^ 6) <= 4) {
                }
                if (($changed1 & 6) == 4) {
                }
                boolean z18222222 = z1722222 | z9;
                if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                }
                if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                }
                boolean z192222222 = z18222222 | z10;
                if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
                }
                if ((196608 & $changed) == 131072) {
                }
                invalid$iv = z192222222 | z11 | $composer.changed(coroutineScope);
                it$iv = $composer.rememberedValue();
                if (invalid$iv) {
                }
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22222222 = (LazyLayoutMeasurePolicy) it$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return lazyLayoutMeasurePolicy22222222;
            }
            paddingValues = contentPadding;
            if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                z2 = false;
            }
            boolean z122 = z | z2;
            if ((($changed & 7168) ^ 3072) > 2048) {
            }
            if (($changed & 3072) != 2048) {
            }
            boolean z1322 = z122 | z4 | ((((57344 & $changed) ^ 24576) <= 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
            if (((234881024 & $changed) ^ 100663296) <= 67108864) {
            }
            if ((100663296 & $changed) == 67108864) {
            }
            boolean z14222 = z1322 | z5;
            if (((1879048192 & $changed) ^ 805306368) > 536870912) {
            }
            if ((805306368 & $changed) != 536870912) {
            }
            boolean z152222 = z14222 | z6;
            if (((3670016 & $changed) ^ 1572864) <= 1048576) {
            }
            if ((1572864 & $changed) == 1048576) {
            }
            boolean z1622222 = z152222 | z7;
            if (((29360128 & $changed) ^ 12582912) > 8388608) {
            }
            if ((12582912 & $changed) != 8388608) {
            }
            boolean z17222222 = z1622222 | z8;
            if ((($changed1 & 14) ^ 6) <= 4) {
            }
            if (($changed1 & 6) == 4) {
            }
            boolean z182222222 = z17222222 | z9;
            if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            }
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            }
            boolean z1922222222 = z182222222 | z10;
            if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
            }
            if ((196608 & $changed) == 131072) {
            }
            invalid$iv = z1922222222 | z11 | $composer.changed(coroutineScope);
            it$iv = $composer.rememberedValue();
            if (invalid$iv) {
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222222222 = (LazyLayoutMeasurePolicy) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return lazyLayoutMeasurePolicy222222222;
        }
        pagerState = state;
        if (($changed & 48) != 32) {
            z = false;
        }
        if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
        }
        boolean z1222 = z | z2;
        if ((($changed & 7168) ^ 3072) > 2048) {
        }
        if (($changed & 3072) != 2048) {
        }
        boolean z13222 = z1222 | z4 | ((((57344 & $changed) ^ 24576) <= 16384 && $composer.changed(orientation.ordinal())) || ($changed & 24576) == 16384);
        if (((234881024 & $changed) ^ 100663296) <= 67108864) {
        }
        if ((100663296 & $changed) == 67108864) {
        }
        boolean z142222 = z13222 | z5;
        if (((1879048192 & $changed) ^ 805306368) > 536870912) {
        }
        if ((805306368 & $changed) != 536870912) {
        }
        boolean z1522222 = z142222 | z6;
        if (((3670016 & $changed) ^ 1572864) <= 1048576) {
        }
        if ((1572864 & $changed) == 1048576) {
        }
        boolean z16222222 = z1522222 | z7;
        if (((29360128 & $changed) ^ 12582912) > 8388608) {
        }
        if ((12582912 & $changed) != 8388608) {
        }
        boolean z172222222 = z16222222 | z8;
        if ((($changed1 & 14) ^ 6) <= 4) {
        }
        if (($changed1 & 6) == 4) {
        }
        boolean z1822222222 = z172222222 | z9;
        if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
        }
        boolean z19222222222 = z1822222222 | z10;
        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072) {
        }
        if ((196608 & $changed) == 131072) {
        }
        invalid$iv = z19222222222 | z11 | $composer.changed(coroutineScope);
        it$iv = $composer.rememberedValue();
        if (invalid$iv) {
        }
        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222222222 = (LazyLayoutMeasurePolicy) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return lazyLayoutMeasurePolicy2222222222;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void keepAroundItems(LazyLayoutMeasureScope $this$keepAroundItems, CacheWindowLogic cacheWindowLogic, List<? extends PageInfo> list) {
        Trace.beginSection("compose:pager:cache_window:keepAroundItems");
        try {
            if (cacheWindowLogic.hasValidBounds() && !list.isEmpty()) {
                int firstVisiblePageIndex = ((PageInfo) CollectionsKt.first((List) list)).getIndex();
                int lastVisiblePageIndex = ((PageInfo) CollectionsKt.last((List) list)).getIndex();
                for (int item = cacheWindowLogic.getPrefetchWindowStartLine(); item < firstVisiblePageIndex; item++) {
                    $this$keepAroundItems.compose(item);
                }
                int item2 = lastVisiblePageIndex + 1;
                int prefetchWindowEndLine = cacheWindowLogic.getPrefetchWindowEndLine();
                if (item2 <= prefetchWindowEndLine) {
                    while (true) {
                        $this$keepAroundItems.compose(item2);
                        if (item2 == prefetchWindowEndLine) {
                            break;
                        } else {
                            item2++;
                        }
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }

    private static final void debugLog(Function0<String> function0) {
    }
}
