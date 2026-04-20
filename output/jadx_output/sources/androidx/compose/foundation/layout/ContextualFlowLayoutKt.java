package androidx.compose.foundation.layout;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: compiled from: ContextualFlowLayout.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u008e\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u000f21\u0010\u0010\u001a-\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0016¢\u0006\u0002\b\u0017H\u0007¢\u0006\u0002\u0010\u0018\u001a\u008e\u0001\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u001d21\u0010\u0010\u001a-\u0012\u0004\u0012\u00020\u001e\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0016¢\u0006\u0002\b\u0017H\u0007¢\u0006\u0002\u0010\u001f\u001a\u00ad\u0001\u0010 \u001a\u0014\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0\u00112\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010'\u001a\u0013\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00010)¢\u0006\u0002\b\u00160(2;\u0010*\u001a7\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110+¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0016H\u0001¢\u0006\u0002\u0010-\u001a\u00ad\u0001\u0010.\u001a\u0014\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0\u00112\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010'\u001a\u0013\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00010)¢\u0006\u0002\b\u00160(2;\u0010*\u001a7\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110+¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0002\b\u0016H\u0001¢\u0006\u0002\u0010/¨\u00060"}, d2 = {"ContextualFlowRow", "", "itemCount", "", "modifier", "Landroidx/compose/ui/Modifier;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "itemVerticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "maxItemsInEachRow", "maxLines", "overflow", "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;", "content", "Lkotlin/Function2;", "Landroidx/compose/foundation/layout/ContextualFlowRowScope;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "index", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/ContextualFlowRowOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "ContextualFlowColumn", "itemHorizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "maxItemsInEachColumn", "Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;", "Landroidx/compose/foundation/layout/ContextualFlowColumnScope;", "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V", "contextualRowMeasurementHelper", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "maxItemsInMainAxis", "overflowState", "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "overflowComposables", "", "Lkotlin/Function0;", "getComposable", "Landroidx/compose/foundation/layout/FlowLineInfo;", "info", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;", "contextualColumnMeasureHelper", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;", "foundation-layout"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ContextualFlowLayoutKt {
    static final Unit ContextualFlowColumn$lambda$3(int i, Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i2, int i3, ContextualFlowColumnOverflow contextualFlowColumnOverflow, Function4 function4, int i4, int i5, Composer composer, int i6) {
        ContextualFlowColumn(i, modifier, vertical, horizontal, horizontal2, i2, i3, contextualFlowColumnOverflow, function4, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    static final Unit ContextualFlowRow$lambda$3(int i, Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i2, int i3, ContextualFlowRowOverflow contextualFlowRowOverflow, Function4 function4, int i4, int i5, Composer composer, int i6) {
        ContextualFlowRow(i, modifier, horizontal, vertical, vertical2, i2, i3, contextualFlowRowOverflow, function4, composer, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), i5);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x0265  */
    @Deprecated(message = "ContextualFlowLayouts are no longer maintained")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ContextualFlowRow(final int itemCount, Modifier modifier, Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, Alignment.Vertical itemVerticalAlignment, int maxItemsInEachRow, int maxLines, ContextualFlowRowOverflow overflow, final Function4<? super ContextualFlowRowScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Arrangement.Horizontal horizontal;
        Alignment.Vertical itemVerticalAlignment2;
        Composer $composer2;
        int $dirty;
        final Arrangement.Vertical verticalArrangement2;
        final int maxItemsInEachRow2;
        final ContextualFlowRowOverflow overflow2;
        final Arrangement.Horizontal horizontalArrangement2;
        final int maxLines2;
        final Modifier modifier3;
        final Alignment.Vertical itemVerticalAlignment3;
        Arrangement.Horizontal horizontalArrangement3;
        int i2;
        Arrangement.Vertical verticalArrangement3;
        int maxItemsInEachRow3;
        int maxLines3;
        int i3;
        ContextualFlowRowOverflow overflow3;
        Composer $composer3 = $composer.startRestartGroup(-294153140);
        ComposerKt.sourceInformation($composer3, "C(ContextualFlowRow)N(itemCount,modifier,horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInEachRow,maxLines,overflow,content)80@3819L53,82@3926L209,97@4434L336,88@4168L602,107@4775L68:ContextualFlowLayout.kt#2w3rfo");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(itemCount) ? 4 : 2;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            horizontal = horizontalArrangement;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            horizontal = horizontalArrangement;
            $dirty2 |= $composer3.changed(horizontal) ? 256 : 128;
        } else {
            horizontal = horizontalArrangement;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(verticalArrangement) ? 2048 : 1024;
        }
        int i7 = i & 16;
        if (i7 != 0) {
            $dirty2 |= 24576;
            itemVerticalAlignment2 = itemVerticalAlignment;
        } else if (($changed & 24576) == 0) {
            itemVerticalAlignment2 = itemVerticalAlignment;
            $dirty2 |= $composer3.changed(itemVerticalAlignment2) ? 16384 : 8192;
        } else {
            itemVerticalAlignment2 = itemVerticalAlignment;
        }
        int i8 = i & 32;
        if (i8 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changed(maxItemsInEachRow) ? 131072 : 65536;
        }
        int i9 = i & 64;
        if (i9 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i10 = i & 128;
        if (i10 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changed(overflow) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= $composer3.changedInstance(function4) ? 67108864 : 33554432;
        }
        if (!$composer3.shouldExecute(($dirty2 & 38347923) != 38347922, $dirty2 & 1)) {
            $composer2 = $composer3;
            $dirty = $dirty2;
            $composer2.skipToGroupEnd();
            verticalArrangement2 = verticalArrangement;
            maxItemsInEachRow2 = maxItemsInEachRow;
            overflow2 = overflow;
            horizontalArrangement2 = horizontal;
            maxLines2 = maxLines;
            modifier3 = modifier2;
            itemVerticalAlignment3 = itemVerticalAlignment2;
        } else {
            if (i4 != 0) {
                modifier2 = Modifier.INSTANCE;
            }
            if (i5 == 0) {
                horizontalArrangement3 = horizontal;
            } else {
                horizontalArrangement3 = Arrangement.INSTANCE.getStart();
            }
            if (i6 == 0) {
                i2 = i7;
                verticalArrangement3 = verticalArrangement;
            } else {
                verticalArrangement3 = Arrangement.INSTANCE.getTop();
                i2 = i7;
            }
            if (i2 != 0) {
                itemVerticalAlignment2 = Alignment.INSTANCE.getTop();
            }
            if (i8 == 0) {
                maxItemsInEachRow3 = maxItemsInEachRow;
            } else {
                maxItemsInEachRow3 = Integer.MAX_VALUE;
            }
            if (i9 == 0) {
                maxLines3 = maxLines;
                i3 = -294153140;
            } else {
                maxLines3 = Integer.MAX_VALUE;
                i3 = -294153140;
            }
            if (i10 == 0) {
                overflow3 = overflow;
            } else {
                overflow3 = ContextualFlowRowOverflow.INSTANCE.getClip();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty2, -1, "androidx.compose.foundation.layout.ContextualFlowRow (ContextualFlowLayout.kt:79)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 786690945, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv = ($dirty2 & 29360128) == 8388608;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = overflow3.createOverflowState$foundation_layout();
                $composer3.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            FlowLayoutOverflowState overflowState = (FlowLayoutOverflowState) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 786694525, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv2 = ($dirty2 & 29360128) == 8388608;
            Object it$iv2 = $composer3.rememberedValue();
            if (!invalid$iv2) {
                $dirty = $dirty2;
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                List list = (List) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2ContextualRowMeasurementHelper = contextualRowMeasurementHelper(horizontalArrangement3, verticalArrangement3, itemVerticalAlignment2, maxItemsInEachRow3, maxLines3, overflowState, itemCount, list, ComposableLambdaKt.rememberComposableLambda(-1677845586, true, new Function4() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                        return ContextualFlowLayoutKt.ContextualFlowRow$lambda$2(function4, ((Integer) obj).intValue(), (FlowLineInfo) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer3, 54), $composer3, (($dirty >> 6) & 14) | 100663296 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (57344 & ($dirty >> 6)) | (($dirty << 18) & 3670016));
                Arrangement.Horizontal horizontalArrangement4 = horizontalArrangement3;
                $composer2 = $composer3;
                SubcomposeLayoutKt.SubcomposeLayout(modifier2, function2ContextualRowMeasurementHelper, $composer2, ($dirty >> 3) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                overflow2 = overflow3;
                horizontalArrangement2 = horizontalArrangement4;
                verticalArrangement2 = verticalArrangement3;
                maxItemsInEachRow2 = maxItemsInEachRow3;
                maxLines2 = maxLines3;
                modifier3 = modifier2;
                itemVerticalAlignment3 = itemVerticalAlignment2;
            } else {
                $dirty = $dirty2;
            }
            List mutableList = new ArrayList();
            overflow3.addOverflowComposables$foundation_layout(overflowState, mutableList);
            $composer3.updateRememberedValue(mutableList);
            it$iv2 = mutableList;
            List list2 = (List) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2ContextualRowMeasurementHelper2 = contextualRowMeasurementHelper(horizontalArrangement3, verticalArrangement3, itemVerticalAlignment2, maxItemsInEachRow3, maxLines3, overflowState, itemCount, list2, ComposableLambdaKt.rememberComposableLambda(-1677845586, true, new Function4() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return ContextualFlowLayoutKt.ContextualFlowRow$lambda$2(function4, ((Integer) obj).intValue(), (FlowLineInfo) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer3, 54), $composer3, (($dirty >> 6) & 14) | 100663296 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (57344 & ($dirty >> 6)) | (($dirty << 18) & 3670016));
            Arrangement.Horizontal horizontalArrangement42 = horizontalArrangement3;
            $composer2 = $composer3;
            SubcomposeLayoutKt.SubcomposeLayout(modifier2, function2ContextualRowMeasurementHelper2, $composer2, ($dirty >> 3) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            overflow2 = overflow3;
            horizontalArrangement2 = horizontalArrangement42;
            verticalArrangement2 = verticalArrangement3;
            maxItemsInEachRow2 = maxItemsInEachRow3;
            maxLines2 = maxLines3;
            modifier3 = modifier2;
            itemVerticalAlignment3 = itemVerticalAlignment2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ContextualFlowLayoutKt.ContextualFlowRow$lambda$3(itemCount, modifier3, horizontalArrangement2, verticalArrangement2, itemVerticalAlignment3, maxItemsInEachRow2, maxLines2, overflow2, function4, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit ContextualFlowRow$lambda$2(Function4 $content, int index, FlowLineInfo info, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "CN(index,info)105@4746L14:ContextualFlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1677845586, $changed, -1, "androidx.compose.foundation.layout.ContextualFlowRow.<anonymous> (ContextualFlowLayout.kt:98)");
        }
        ContextualFlowRowScopeImpl scope = new ContextualFlowRowScopeImpl(info.getLineIndex(), info.getPositionInLine(), info.getMaxMainAxisSize(), info.getMaxCrossAxisSize(), null);
        $content.invoke(scope, Integer.valueOf(index), $composer, Integer.valueOf(($changed << 3) & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x0265  */
    @Deprecated(message = "ContextualFlowLayouts are no longer maintained")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ContextualFlowColumn(final int itemCount, Modifier modifier, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, Alignment.Horizontal itemHorizontalAlignment, int maxItemsInEachColumn, int maxLines, ContextualFlowColumnOverflow overflow, final Function4<? super ContextualFlowColumnScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Arrangement.Vertical vertical;
        Alignment.Horizontal itemHorizontalAlignment2;
        Composer $composer2;
        int $dirty;
        final Arrangement.Horizontal horizontalArrangement2;
        final int maxItemsInEachColumn2;
        final ContextualFlowColumnOverflow overflow2;
        final Arrangement.Vertical verticalArrangement2;
        final int maxLines2;
        final Modifier modifier3;
        final Alignment.Horizontal itemHorizontalAlignment3;
        Arrangement.Vertical verticalArrangement3;
        int i2;
        Arrangement.Horizontal horizontalArrangement3;
        int maxItemsInEachColumn3;
        int maxLines3;
        int i3;
        ContextualFlowColumnOverflow overflow3;
        Composer $composer3 = $composer.startRestartGroup(1986851536);
        ComposerKt.sourceInformation($composer3, "C(ContextualFlowColumn)N(itemCount,modifier,verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInEachColumn,maxLines,overflow,content)155@7415L53,157@7522L209,172@8034L339,163@7764L609,183@8379L68:ContextualFlowLayout.kt#2w3rfo");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(itemCount) ? 4 : 2;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            vertical = verticalArrangement;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            vertical = verticalArrangement;
            $dirty2 |= $composer3.changed(vertical) ? 256 : 128;
        } else {
            vertical = verticalArrangement;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(horizontalArrangement) ? 2048 : 1024;
        }
        int i7 = i & 16;
        if (i7 != 0) {
            $dirty2 |= 24576;
            itemHorizontalAlignment2 = itemHorizontalAlignment;
        } else if (($changed & 24576) == 0) {
            itemHorizontalAlignment2 = itemHorizontalAlignment;
            $dirty2 |= $composer3.changed(itemHorizontalAlignment2) ? 16384 : 8192;
        } else {
            itemHorizontalAlignment2 = itemHorizontalAlignment;
        }
        int i8 = i & 32;
        if (i8 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changed(maxItemsInEachColumn) ? 131072 : 65536;
        }
        int i9 = i & 64;
        if (i9 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i10 = i & 128;
        if (i10 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changed(overflow) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= $composer3.changedInstance(function4) ? 67108864 : 33554432;
        }
        if (!$composer3.shouldExecute(($dirty2 & 38347923) != 38347922, $dirty2 & 1)) {
            $composer2 = $composer3;
            $dirty = $dirty2;
            $composer2.skipToGroupEnd();
            horizontalArrangement2 = horizontalArrangement;
            maxItemsInEachColumn2 = maxItemsInEachColumn;
            overflow2 = overflow;
            verticalArrangement2 = vertical;
            maxLines2 = maxLines;
            modifier3 = modifier2;
            itemHorizontalAlignment3 = itemHorizontalAlignment2;
        } else {
            if (i4 != 0) {
                modifier2 = Modifier.INSTANCE;
            }
            if (i5 == 0) {
                verticalArrangement3 = vertical;
            } else {
                verticalArrangement3 = Arrangement.INSTANCE.getTop();
            }
            if (i6 == 0) {
                i2 = i7;
                horizontalArrangement3 = horizontalArrangement;
            } else {
                horizontalArrangement3 = Arrangement.INSTANCE.getStart();
                i2 = i7;
            }
            if (i2 != 0) {
                itemHorizontalAlignment2 = Alignment.INSTANCE.getStart();
            }
            if (i8 == 0) {
                maxItemsInEachColumn3 = maxItemsInEachColumn;
            } else {
                maxItemsInEachColumn3 = Integer.MAX_VALUE;
            }
            if (i9 == 0) {
                maxLines3 = maxLines;
                i3 = 1986851536;
            } else {
                maxLines3 = Integer.MAX_VALUE;
                i3 = 1986851536;
            }
            if (i10 == 0) {
                overflow3 = overflow;
            } else {
                overflow3 = ContextualFlowColumnOverflow.INSTANCE.getClip();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty2, -1, "androidx.compose.foundation.layout.ContextualFlowColumn (ContextualFlowLayout.kt:154)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -1896103003, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv = ($dirty2 & 29360128) == 8388608;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = overflow3.createOverflowState$foundation_layout();
                $composer3.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            FlowLayoutOverflowState overflowState = (FlowLayoutOverflowState) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1896099423, "CC(remember):ContextualFlowLayout.kt#9igjgp");
            boolean invalid$iv2 = ($dirty2 & 29360128) == 8388608;
            Object it$iv2 = $composer3.rememberedValue();
            if (!invalid$iv2) {
                $dirty = $dirty2;
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                List list = (List) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2ContextualColumnMeasureHelper = contextualColumnMeasureHelper(verticalArrangement3, horizontalArrangement3, itemHorizontalAlignment2, maxItemsInEachColumn3, maxLines3, overflowState, itemCount, list, ComposableLambdaKt.rememberComposableLambda(620176540, true, new Function4() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                        return ContextualFlowLayoutKt.ContextualFlowColumn$lambda$2(function4, ((Integer) obj).intValue(), (FlowLineInfo) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer3, 54), $composer3, (($dirty >> 6) & 14) | 100663296 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (57344 & ($dirty >> 6)) | (($dirty << 18) & 3670016));
                Arrangement.Vertical verticalArrangement4 = verticalArrangement3;
                $composer2 = $composer3;
                SubcomposeLayoutKt.SubcomposeLayout(modifier2, function2ContextualColumnMeasureHelper, $composer2, ($dirty >> 3) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                overflow2 = overflow3;
                verticalArrangement2 = verticalArrangement4;
                horizontalArrangement2 = horizontalArrangement3;
                maxItemsInEachColumn2 = maxItemsInEachColumn3;
                maxLines2 = maxLines3;
                modifier3 = modifier2;
                itemHorizontalAlignment3 = itemHorizontalAlignment2;
            } else {
                $dirty = $dirty2;
            }
            List mutableList = new ArrayList();
            overflow3.addOverflowComposables$foundation_layout(overflowState, mutableList);
            $composer3.updateRememberedValue(mutableList);
            it$iv2 = mutableList;
            List list2 = (List) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2ContextualColumnMeasureHelper2 = contextualColumnMeasureHelper(verticalArrangement3, horizontalArrangement3, itemHorizontalAlignment2, maxItemsInEachColumn3, maxLines3, overflowState, itemCount, list2, ComposableLambdaKt.rememberComposableLambda(620176540, true, new Function4() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return ContextualFlowLayoutKt.ContextualFlowColumn$lambda$2(function4, ((Integer) obj).intValue(), (FlowLineInfo) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer3, 54), $composer3, (($dirty >> 6) & 14) | 100663296 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (57344 & ($dirty >> 6)) | (($dirty << 18) & 3670016));
            Arrangement.Vertical verticalArrangement42 = verticalArrangement3;
            $composer2 = $composer3;
            SubcomposeLayoutKt.SubcomposeLayout(modifier2, function2ContextualColumnMeasureHelper2, $composer2, ($dirty >> 3) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            overflow2 = overflow3;
            verticalArrangement2 = verticalArrangement42;
            horizontalArrangement2 = horizontalArrangement3;
            maxItemsInEachColumn2 = maxItemsInEachColumn3;
            maxLines2 = maxLines3;
            modifier3 = modifier2;
            itemHorizontalAlignment3 = itemHorizontalAlignment2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.layout.ContextualFlowLayoutKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ContextualFlowLayoutKt.ContextualFlowColumn$lambda$3(itemCount, modifier3, verticalArrangement2, horizontalArrangement2, itemHorizontalAlignment3, maxItemsInEachColumn2, maxLines2, overflow2, function4, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit ContextualFlowColumn$lambda$2(Function4 $content, int index, FlowLineInfo info, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "CN(index,info)180@8349L14:ContextualFlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(620176540, $changed, -1, "androidx.compose.foundation.layout.ContextualFlowColumn.<anonymous> (ContextualFlowLayout.kt:173)");
        }
        ContextualFlowColumnScopeImpl scope = new ContextualFlowColumnScopeImpl(info.getLineIndex(), info.getPositionInLine(), info.getMaxCrossAxisSize(), info.getMaxMainAxisSize(), null);
        $content.invoke(scope, Integer.valueOf(index), $composer, Integer.valueOf(($changed << 3) & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b A[PHI: r9
      0x003b: PHI (r9v3 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r9v1 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r9v4 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:12:0x0039, B:8:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0055 A[PHI: r10
      0x0055: PHI (r10v3 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r10v1 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r10v4 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:22:0x0053, B:18:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086 A[PHI: r4
      0x0086: PHI (r4v20 int) = (r4v17 int), (r4v21 int) binds: [B:40:0x0084, B:36:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a3 A[PHI: r15
      0x00a3: PHI (r15v3 int) = (r15v1 int), (r15v4 int) binds: [B:50:0x00a1, B:46:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c7 A[PHI: r14
      0x00c7: PHI (r14v3 int) = (r14v1 int), (r14v4 int) binds: [B:60:0x00c5, B:56:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Function2<SubcomposeMeasureScope, Constraints, MeasureResult> contextualRowMeasurementHelper(Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, Alignment.Vertical itemVerticalAlignment, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflowState, int itemCount, List<? extends Function2<? super Composer, ? super Integer, Unit>> list, Function4<? super Integer, ? super FlowLineInfo, ? super Composer, ? super Integer, Unit> function4, Composer $composer, int $changed) {
        Arrangement.Horizontal horizontal;
        boolean z;
        Arrangement.Vertical vertical;
        boolean z2;
        int i;
        boolean z3;
        int i2;
        boolean z4;
        int i3;
        boolean z5;
        boolean z6;
        boolean invalid$iv;
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 962906403, "C(contextualRowMeasurementHelper)N(horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInMainAxis,maxLines,overflowState,itemCount,overflowComposables,getComposable)385@16647L971:ContextualFlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(962906403, $changed, -1, "androidx.compose.foundation.layout.contextualRowMeasurementHelper (ContextualFlowLayout.kt:384)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, 1935101358, "CC(remember):ContextualFlowLayout.kt#9igjgp");
        if ((($changed & 14) ^ 6) > 4) {
            horizontal = horizontalArrangement;
            if ($composer.changed(horizontal)) {
                z = true;
            }
            if ((($changed & 112) ^ 48) <= 32) {
                vertical = verticalArrangement;
                if ($composer.changed(vertical)) {
                    z2 = true;
                }
                boolean z7 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemVerticalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if ((($changed & 7168) ^ 3072) > 2048) {
                    i = maxItemsInMainAxis;
                    if ($composer.changed(i)) {
                        z3 = true;
                    }
                    boolean z8 = z7 | z3;
                    if (((57344 & $changed) ^ 24576) <= 16384) {
                        i2 = maxLines;
                        if ($composer.changed(i2)) {
                            z4 = true;
                        }
                        boolean zChanged = z8 | z4 | $composer.changed(overflowState);
                        if (((3670016 & $changed) ^ 1572864) > 1048576) {
                            i3 = itemCount;
                            if ($composer.changed(i3)) {
                                z5 = true;
                            }
                            boolean z9 = zChanged | z5;
                            if (((234881024 & $changed) ^ 100663296) > 67108864 || !$composer.changed(function4)) {
                                z6 = (100663296 & $changed) == 67108864;
                            }
                            invalid$iv = z9 | z6;
                            value$iv = $composer.rememberedValue();
                            if (!invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                                value$iv = new FlowMeasureLazyPolicy(true, horizontal, vertical, horizontal.getSpacing(), CrossAxisAlignment.INSTANCE.vertical$foundation_layout(itemVerticalAlignment), vertical.getSpacing(), i3, i2, i, overflowState, list, function4, null).getMeasurePolicy();
                                $composer.updateRememberedValue(value$iv);
                            }
                            Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2 = (Function2) value$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            return function2;
                        }
                        i3 = itemCount;
                        if (($changed & 1572864) != 1048576) {
                            z5 = false;
                        }
                        boolean z92 = zChanged | z5;
                        if (((234881024 & $changed) ^ 100663296) > 67108864) {
                        }
                        if ((100663296 & $changed) == 67108864) {
                        }
                        invalid$iv = z92 | z6;
                        value$iv = $composer.rememberedValue();
                        if (!invalid$iv) {
                            value$iv = new FlowMeasureLazyPolicy(true, horizontal, vertical, horizontal.getSpacing(), CrossAxisAlignment.INSTANCE.vertical$foundation_layout(itemVerticalAlignment), vertical.getSpacing(), i3, i2, i, overflowState, list, function4, null).getMeasurePolicy();
                            $composer.updateRememberedValue(value$iv);
                        }
                        Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function22 = (Function2) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return function22;
                    }
                    i2 = maxLines;
                    if (($changed & 24576) == 16384) {
                        z4 = false;
                    }
                    boolean zChanged2 = z8 | z4 | $composer.changed(overflowState);
                    if (((3670016 & $changed) ^ 1572864) > 1048576) {
                    }
                    if (($changed & 1572864) != 1048576) {
                    }
                    boolean z922 = zChanged2 | z5;
                    if (((234881024 & $changed) ^ 100663296) > 67108864) {
                    }
                    if ((100663296 & $changed) == 67108864) {
                    }
                    invalid$iv = z922 | z6;
                    value$iv = $composer.rememberedValue();
                    if (!invalid$iv) {
                    }
                    Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function222 = (Function2) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return function222;
                }
                i = maxItemsInMainAxis;
                if (($changed & 3072) != 2048) {
                    z3 = false;
                }
                boolean z82 = z7 | z3;
                if (((57344 & $changed) ^ 24576) <= 16384) {
                }
                if (($changed & 24576) == 16384) {
                }
                boolean zChanged22 = z82 | z4 | $composer.changed(overflowState);
                if (((3670016 & $changed) ^ 1572864) > 1048576) {
                }
                if (($changed & 1572864) != 1048576) {
                }
                boolean z9222 = zChanged22 | z5;
                if (((234881024 & $changed) ^ 100663296) > 67108864) {
                }
                if ((100663296 & $changed) == 67108864) {
                }
                invalid$iv = z9222 | z6;
                value$iv = $composer.rememberedValue();
                if (!invalid$iv) {
                }
                Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2222 = (Function2) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return function2222;
            }
            vertical = verticalArrangement;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z72 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemVerticalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            if ((($changed & 7168) ^ 3072) > 2048) {
            }
            if (($changed & 3072) != 2048) {
            }
            boolean z822 = z72 | z3;
            if (((57344 & $changed) ^ 24576) <= 16384) {
            }
            if (($changed & 24576) == 16384) {
            }
            boolean zChanged222 = z822 | z4 | $composer.changed(overflowState);
            if (((3670016 & $changed) ^ 1572864) > 1048576) {
            }
            if (($changed & 1572864) != 1048576) {
            }
            boolean z92222 = zChanged222 | z5;
            if (((234881024 & $changed) ^ 100663296) > 67108864) {
            }
            if ((100663296 & $changed) == 67108864) {
            }
            invalid$iv = z92222 | z6;
            value$iv = $composer.rememberedValue();
            if (!invalid$iv) {
            }
            Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function22222 = (Function2) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return function22222;
        }
        horizontal = horizontalArrangement;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z722 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemVerticalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        if ((($changed & 7168) ^ 3072) > 2048) {
        }
        if (($changed & 3072) != 2048) {
        }
        boolean z8222 = z722 | z3;
        if (((57344 & $changed) ^ 24576) <= 16384) {
        }
        if (($changed & 24576) == 16384) {
        }
        boolean zChanged2222 = z8222 | z4 | $composer.changed(overflowState);
        if (((3670016 & $changed) ^ 1572864) > 1048576) {
        }
        if (($changed & 1572864) != 1048576) {
        }
        boolean z922222 = zChanged2222 | z5;
        if (((234881024 & $changed) ^ 100663296) > 67108864) {
        }
        if ((100663296 & $changed) == 67108864) {
        }
        invalid$iv = z922222 | z6;
        value$iv = $composer.rememberedValue();
        if (!invalid$iv) {
        }
        Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function222222 = (Function2) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return function222222;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b A[PHI: r10
      0x003b: PHI (r10v3 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r10v1 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r10v4 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:12:0x0039, B:8:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0055 A[PHI: r9
      0x0055: PHI (r9v3 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r9v1 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r9v4 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:22:0x0053, B:18:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086 A[PHI: r4
      0x0086: PHI (r4v20 int) = (r4v17 int), (r4v21 int) binds: [B:40:0x0084, B:36:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a3 A[PHI: r15
      0x00a3: PHI (r15v3 int) = (r15v1 int), (r15v4 int) binds: [B:50:0x00a1, B:46:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c7 A[PHI: r14
      0x00c7: PHI (r14v3 int) = (r14v1 int), (r14v4 int) binds: [B:60:0x00c5, B:56:0x00be] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Function2<SubcomposeMeasureScope, Constraints, MeasureResult> contextualColumnMeasureHelper(Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, Alignment.Horizontal itemHorizontalAlignment, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflowState, int itemCount, List<? extends Function2<? super Composer, ? super Integer, Unit>> list, Function4<? super Integer, ? super FlowLineInfo, ? super Composer, ? super Integer, Unit> function4, Composer $composer, int $changed) {
        Arrangement.Vertical vertical;
        boolean z;
        Arrangement.Horizontal horizontal;
        boolean z2;
        int i;
        boolean z3;
        int i2;
        boolean z4;
        int i3;
        boolean z5;
        boolean z6;
        boolean invalid$iv;
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -676633639, "C(contextualColumnMeasureHelper)N(verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInMainAxis,maxLines,overflowState,itemCount,overflowComposables,getComposable)425@18138L978:ContextualFlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-676633639, $changed, -1, "androidx.compose.foundation.layout.contextualColumnMeasureHelper (ContextualFlowLayout.kt:424)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -1704848565, "CC(remember):ContextualFlowLayout.kt#9igjgp");
        if ((($changed & 14) ^ 6) > 4) {
            vertical = verticalArrangement;
            if ($composer.changed(vertical)) {
                z = true;
            }
            if ((($changed & 112) ^ 48) <= 32) {
                horizontal = horizontalArrangement;
                if ($composer.changed(horizontal)) {
                    z2 = true;
                }
                boolean z7 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemHorizontalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if ((($changed & 7168) ^ 3072) > 2048) {
                    i = maxItemsInMainAxis;
                    if ($composer.changed(i)) {
                        z3 = true;
                    }
                    boolean z8 = z7 | z3;
                    if (((57344 & $changed) ^ 24576) <= 16384) {
                        i2 = maxLines;
                        if ($composer.changed(i2)) {
                            z4 = true;
                        }
                        boolean zChanged = z8 | z4 | $composer.changed(overflowState);
                        if (((3670016 & $changed) ^ 1572864) > 1048576) {
                            i3 = itemCount;
                            if ($composer.changed(i3)) {
                                z5 = true;
                            }
                            boolean z9 = zChanged | z5;
                            if (((234881024 & $changed) ^ 100663296) > 67108864 || !$composer.changed(function4)) {
                                z6 = (100663296 & $changed) == 67108864;
                            }
                            invalid$iv = z9 | z6;
                            value$iv = $composer.rememberedValue();
                            if (!invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                                value$iv = new FlowMeasureLazyPolicy(false, horizontal, vertical, vertical.getSpacing(), CrossAxisAlignment.INSTANCE.horizontal$foundation_layout(itemHorizontalAlignment), horizontal.getSpacing(), i3, i2, i, overflowState, list, function4, null).getMeasurePolicy();
                                $composer.updateRememberedValue(value$iv);
                            }
                            Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2 = (Function2) value$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            return function2;
                        }
                        i3 = itemCount;
                        if (($changed & 1572864) != 1048576) {
                            z5 = false;
                        }
                        boolean z92 = zChanged | z5;
                        if (((234881024 & $changed) ^ 100663296) > 67108864) {
                        }
                        if ((100663296 & $changed) == 67108864) {
                        }
                        invalid$iv = z92 | z6;
                        value$iv = $composer.rememberedValue();
                        if (!invalid$iv) {
                            value$iv = new FlowMeasureLazyPolicy(false, horizontal, vertical, vertical.getSpacing(), CrossAxisAlignment.INSTANCE.horizontal$foundation_layout(itemHorizontalAlignment), horizontal.getSpacing(), i3, i2, i, overflowState, list, function4, null).getMeasurePolicy();
                            $composer.updateRememberedValue(value$iv);
                        }
                        Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function22 = (Function2) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return function22;
                    }
                    i2 = maxLines;
                    if (($changed & 24576) == 16384) {
                        z4 = false;
                    }
                    boolean zChanged2 = z8 | z4 | $composer.changed(overflowState);
                    if (((3670016 & $changed) ^ 1572864) > 1048576) {
                    }
                    if (($changed & 1572864) != 1048576) {
                    }
                    boolean z922 = zChanged2 | z5;
                    if (((234881024 & $changed) ^ 100663296) > 67108864) {
                    }
                    if ((100663296 & $changed) == 67108864) {
                    }
                    invalid$iv = z922 | z6;
                    value$iv = $composer.rememberedValue();
                    if (!invalid$iv) {
                    }
                    Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function222 = (Function2) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return function222;
                }
                i = maxItemsInMainAxis;
                if (($changed & 3072) != 2048) {
                    z3 = false;
                }
                boolean z82 = z7 | z3;
                if (((57344 & $changed) ^ 24576) <= 16384) {
                }
                if (($changed & 24576) == 16384) {
                }
                boolean zChanged22 = z82 | z4 | $composer.changed(overflowState);
                if (((3670016 & $changed) ^ 1572864) > 1048576) {
                }
                if (($changed & 1572864) != 1048576) {
                }
                boolean z9222 = zChanged22 | z5;
                if (((234881024 & $changed) ^ 100663296) > 67108864) {
                }
                if ((100663296 & $changed) == 67108864) {
                }
                invalid$iv = z9222 | z6;
                value$iv = $composer.rememberedValue();
                if (!invalid$iv) {
                }
                Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2222 = (Function2) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return function2222;
            }
            horizontal = horizontalArrangement;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z72 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemHorizontalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            if ((($changed & 7168) ^ 3072) > 2048) {
            }
            if (($changed & 3072) != 2048) {
            }
            boolean z822 = z72 | z3;
            if (((57344 & $changed) ^ 24576) <= 16384) {
            }
            if (($changed & 24576) == 16384) {
            }
            boolean zChanged222 = z822 | z4 | $composer.changed(overflowState);
            if (((3670016 & $changed) ^ 1572864) > 1048576) {
            }
            if (($changed & 1572864) != 1048576) {
            }
            boolean z92222 = zChanged222 | z5;
            if (((234881024 & $changed) ^ 100663296) > 67108864) {
            }
            if ((100663296 & $changed) == 67108864) {
            }
            invalid$iv = z92222 | z6;
            value$iv = $composer.rememberedValue();
            if (!invalid$iv) {
            }
            Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function22222 = (Function2) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return function22222;
        }
        vertical = verticalArrangement;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z722 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemHorizontalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        if ((($changed & 7168) ^ 3072) > 2048) {
        }
        if (($changed & 3072) != 2048) {
        }
        boolean z8222 = z722 | z3;
        if (((57344 & $changed) ^ 24576) <= 16384) {
        }
        if (($changed & 24576) == 16384) {
        }
        boolean zChanged2222 = z8222 | z4 | $composer.changed(overflowState);
        if (((3670016 & $changed) ^ 1572864) > 1048576) {
        }
        if (($changed & 1572864) != 1048576) {
        }
        boolean z922222 = zChanged2222 | z5;
        if (((234881024 & $changed) ^ 100663296) > 67108864) {
        }
        if ((100663296 & $changed) == 67108864) {
        }
        invalid$iv = z922222 | z6;
        value$iv = $composer.rememberedValue();
        if (!invalid$iv) {
        }
        Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function222222 = (Function2) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return function222222;
    }
}
