package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.FlowLayoutBuildingBlocks;
import androidx.compose.foundation.layout.FlowLayoutOverflow;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: FlowLayout.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000â\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aq\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0012¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u0014\u001ag\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0012¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u0015\u001aq\u0010\u0016\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u001a2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0012¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u001c\u001ag\u0010\u0016\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0012¢\u0006\u0002\b\u0013H\u0007¢\u0006\u0002\u0010\u001d\u001a%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u000bH\u0001¢\u0006\u0002\u0010!\u001a=\u0010\"\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\u0010&\u001a%\u0010'\u001a\u00020\u001f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000bH\u0001¢\u0006\u0002\u0010(\u001a=\u0010)\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\u0010*\u001aT\u0010+\u001a\u00020\u000b2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00¢\u0006\u0002\b\u00132\u0006\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0082\b\u001a\u0091\u0001\u00103\u001a\u00020\u000b2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00¢\u0006\u0002\b\u00132#\u00104\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00¢\u0006\u0002\b\u00132\u0006\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0083\b\u001a[\u00106\u001a\u0002072\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0002¢\u0006\u0002\u0010<\u001a\u0096\u0001\u00106\u001a\u0002072\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00¢\u0006\u0002\b\u00132#\u00104\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00¢\u0006\u0002\b\u00132\u0006\u0010;\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0082\b¢\u0006\u0002\u0010=\u001aY\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020E0D2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020J2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0000¢\u0006\u0004\bK\u0010L\u001a\u001e\u0010M\u001a\u0004\u0018\u00010E*\b\u0012\u0004\u0012\u00020E0D2\b\u0010N\u001a\u0004\u0018\u00010OH\u0002\u001a\u001c\u0010P\u001a\u00020\u000b*\u00020.2\u0006\u0010Q\u001a\u00020R2\u0006\u00104\u001a\u00020\u000bH\u0000\u001a\u001c\u0010S\u001a\u00020\u000b*\u00020.2\u0006\u0010Q\u001a\u00020R2\u0006\u0010/\u001a\u00020\u000bH\u0000\u001a9\u0010Z\u001a\u000207*\u00020E2\u0006\u0010A\u001a\u00020B2\u0006\u0010I\u001a\u00020[2\u0014\u0010\\\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010]\u0012\u0004\u0012\u00020\u00010\u0010H\u0000¢\u0006\u0004\b^\u0010_\u001aQ\u0010`\u001a\u00020?*\u00020@2\u0006\u0010I\u001a\u00020J2\u0006\u0010a\u001a\u00020\u000b2\u0006\u0010b\u001a\u00020\u000b2\u0006\u0010:\u001a\u0002092\f\u0010c\u001a\b\u0012\u0004\u0012\u00020?0d2\u0006\u0010e\u001a\u00020B2\u0006\u0010f\u001a\u000209H\u0000¢\u0006\u0004\bg\u0010h\"\u0014\u0010T\u001a\u00020UX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010W\"\u0014\u0010X\u001a\u00020UX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010W¨\u0006i"}, d2 = {"FlowRow", "", "modifier", "Landroidx/compose/ui/Modifier;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "itemVerticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "maxItemsInEachRow", "", "maxLines", "overflow", "Landroidx/compose/foundation/layout/FlowRowOverflow;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/FlowRowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "FlowColumn", "itemHorizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "maxItemsInEachColumn", "Landroidx/compose/foundation/layout/FlowColumnOverflow;", "Landroidx/compose/foundation/layout/FlowColumnScope;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "rowMeasurementHelper", "Landroidx/compose/ui/layout/MeasurePolicy;", "maxItemsInMainAxis", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;", "rowMeasurementMultiContentHelper", "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "overflowState", "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "columnMeasurementHelper", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;", "columnMeasurementMultiContentHelper", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "maxIntrinsicMainAxisSize", "children", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "mainAxisSize", "Lkotlin/Function3;", "crossAxisAvailable", "mainAxisSpacing", "minIntrinsicMainAxisSize", "crossAxisSize", "crossAxisSpacing", "intrinsicCrossAxisSize", "Landroidx/collection/IntIntPair;", "mainAxisSizes", "", "crossAxisSizes", "mainAxisAvailable", "(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J", "(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J", "breakDownItems", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurePolicy", "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;", "measurablesIterator", "", "Landroidx/compose/ui/layout/Measurable;", "mainAxisSpacingDp", "Landroidx/compose/ui/unit/Dp;", "crossAxisSpacingDp", "constraints", "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;", "breakDownItems-di9J0FM", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Ljava/util/Iterator;FFJIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)Landroidx/compose/ui/layout/MeasureResult;", "safeNext", "info", "Landroidx/compose/foundation/layout/FlowLineInfo;", "mainAxisMin", "isHorizontal", "", "crossAxisMin", "CROSS_AXIS_ALIGNMENT_TOP", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "getCROSS_AXIS_ALIGNMENT_TOP", "()Landroidx/compose/foundation/layout/CrossAxisAlignment;", "CROSS_AXIS_ALIGNMENT_START", "getCROSS_AXIS_ALIGNMENT_START", "measureAndCache", "Landroidx/compose/ui/unit/Constraints;", "storePlaceable", "Landroidx/compose/ui/layout/Placeable;", "measureAndCache-rqJ1uqs", "(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J", "placeHelper", "mainAxisTotalSize", "crossAxisTotalSize", "items", "Landroidx/compose/runtime/collection/MutableVector;", "measureHelper", "outPosition", "placeHelper-BmaY500", "(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;", "foundation-layout"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FlowLayoutKt {
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_TOP = CrossAxisAlignment.INSTANCE.vertical$foundation_layout(Alignment.INSTANCE.getTop());
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_START = CrossAxisAlignment.INSTANCE.horizontal$foundation_layout(Alignment.INSTANCE.getStart());

    static final Unit FlowColumn$lambda$2(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, FlowColumnOverflow flowColumnOverflow, Function3 function3, int i3, int i4, Composer composer, int i5) {
        FlowColumn(modifier, vertical, horizontal, horizontal2, i, i2, flowColumnOverflow, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    static final Unit FlowColumn$lambda$3(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, Function3 function3, int i3, int i4, Composer composer, int i5) {
        FlowColumn(modifier, vertical, horizontal, horizontal2, i, i2, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    static final Unit FlowRow$lambda$2(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, FlowRowOverflow flowRowOverflow, Function3 function3, int i3, int i4, Composer composer, int i5) {
        FlowRow(modifier, horizontal, vertical, vertical2, i, i2, flowRowOverflow, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    static final Unit FlowRow$lambda$3(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, Function3 function3, int i3, int i4, Composer composer, int i5) {
        FlowRow(modifier, horizontal, vertical, vertical2, i, i2, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x029a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0377  */
    @Deprecated(message = "The overflow parameter has been deprecated")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void FlowRow(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, FlowRowOverflow flowRowOverflow, final Function3<? super FlowRowScope, ? super Composer, ? super Integer, Unit> function3, Composer composer, final int i3, final int i4) {
        Arrangement.Horizontal horizontal2;
        Arrangement.Vertical top;
        Alignment.Vertical vertical3;
        int i5;
        final FlowRowOverflow flowRowOverflow2;
        final Arrangement.Horizontal horizontal3;
        final int i6;
        final int i7;
        final Modifier modifier2;
        final Arrangement.Vertical vertical4;
        final Alignment.Vertical vertical5;
        Composer composer2;
        Modifier.Companion companion;
        Arrangement.Horizontal start;
        Alignment.Vertical top2;
        int i8;
        int i9;
        FlowRowOverflow clip;
        Modifier modifier3;
        Composer composer3;
        boolean z;
        MultiContentMeasurePolicy multiContentMeasurePolicy;
        int i10;
        int i11;
        Object obj;
        MultiContentMeasurePolicy multiContentMeasurePolicy2;
        boolean z2;
        Object objRememberedValue;
        Function0<ComposeUiNode> function0;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1956591841);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FlowRow)N(modifier,horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInEachRow,maxLines,overflow,content)100@4511L53,102@4597L226,111@4877L291,118@5174L75:FlowLayout.kt#2w3rfo");
        int i12 = i3;
        int i13 = i4 & 1;
        if (i13 != 0) {
            i12 |= 6;
        } else if ((i3 & 6) == 0) {
            i12 |= composerStartRestartGroup.changed(modifier) ? 4 : 2;
        }
        int i14 = i4 & 2;
        if (i14 != 0) {
            i12 |= 48;
            horizontal2 = horizontal;
        } else if ((i3 & 48) == 0) {
            horizontal2 = horizontal;
            i12 |= composerStartRestartGroup.changed(horizontal2) ? 32 : 16;
        } else {
            horizontal2 = horizontal;
        }
        int i15 = i4 & 4;
        if (i15 != 0) {
            i12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            top = vertical;
        } else if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            top = vertical;
            i12 |= composerStartRestartGroup.changed(top) ? 256 : 128;
        } else {
            top = vertical;
        }
        int i16 = i4 & 8;
        if (i16 != 0) {
            i12 |= 3072;
            vertical3 = vertical2;
        } else if ((i3 & 3072) == 0) {
            vertical3 = vertical2;
            i12 |= composerStartRestartGroup.changed(vertical3) ? 2048 : 1024;
        } else {
            vertical3 = vertical2;
        }
        int i17 = i4 & 16;
        if (i17 != 0) {
            i12 |= 24576;
            i5 = i;
        } else if ((i3 & 24576) == 0) {
            i5 = i;
            i12 |= composerStartRestartGroup.changed(i5) ? 16384 : 8192;
        } else {
            i5 = i;
        }
        int i18 = i4 & 32;
        if (i18 != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i12 |= composerStartRestartGroup.changed(i2) ? 131072 : 65536;
        }
        int i19 = i4 & 64;
        if (i19 != 0) {
            i12 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            i12 |= composerStartRestartGroup.changed(flowRowOverflow) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i12 |= composerStartRestartGroup.changedInstance(function3) ? 8388608 : 4194304;
        }
        if (!composerStartRestartGroup.shouldExecute((i12 & 4793491) != 4793490, i12 & 1)) {
            Composer composer4 = composerStartRestartGroup;
            composer4.skipToGroupEnd();
            flowRowOverflow2 = flowRowOverflow;
            horizontal3 = horizontal2;
            i6 = i5;
            i7 = i2;
            modifier2 = modifier;
            vertical4 = top;
            vertical5 = vertical3;
            composer2 = composer4;
        } else {
            if (i13 != 0) {
                companion = Modifier.INSTANCE;
            } else {
                companion = modifier;
            }
            if (i14 == 0) {
                start = horizontal2;
            } else {
                start = Arrangement.INSTANCE.getStart();
            }
            if (i15 != 0) {
                top = Arrangement.INSTANCE.getTop();
            }
            if (i16 == 0) {
                top2 = vertical3;
            } else {
                top2 = Alignment.INSTANCE.getTop();
            }
            if (i17 == 0) {
                i8 = i5;
            } else {
                i8 = Integer.MAX_VALUE;
            }
            if (i18 == 0) {
                i9 = i2;
            } else {
                i9 = Integer.MAX_VALUE;
            }
            if (i19 == 0) {
                clip = flowRowOverflow;
            } else {
                clip = FlowRowOverflow.INSTANCE.getClip();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1956591841, i12, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 910931156, "CC(remember):FlowLayout.kt#9igjgp");
            boolean z3 = (3670016 & i12) == 1048576;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (!z3) {
                modifier3 = companion;
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                MultiContentMeasurePolicy multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top, top2, i8, i9, flowLayoutOverflowState, composerStartRestartGroup, ((i12 >> 3) & 14) | ((i12 >> 3) & 112) | ((i12 >> 3) & 896) | ((i12 >> 3) & 7168) | ((i12 >> 3) & 57344));
                int i20 = i8;
                Alignment.Vertical vertical6 = top2;
                composer3 = composerStartRestartGroup;
                ComposerKt.sourceInformationMarkerStart(composer3, 910943106, "CC(remember):FlowLayout.kt#9igjgp");
                z = ((3670016 & i12) != 1048576) | ((29360128 & i12) != 8388608) | ((458752 & i12) != 131072);
                Object objRememberedValue3 = composer3.rememberedValue();
                if (z) {
                    multiContentMeasurePolicy = multiContentMeasurePolicyRowMeasurementMultiContentHelper;
                    if (objRememberedValue3 != Composer.INSTANCE.getEmpty()) {
                        i10 = i12;
                        i11 = i20;
                        obj = objRememberedValue3;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    int i21 = (i10 << 3) & 112;
                    Modifier modifier4 = modifier3;
                    multiContentMeasurePolicy2 = multiContentMeasurePolicy;
                    ComposerKt.sourceInformationMarkerStart(composer3, 1399185516, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh");
                    Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    ComposerKt.sourceInformationMarkerStart(composer3, 292526026, "CC(remember):Layout.kt#9igjgp");
                    z2 = (((i21 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer3.changed(multiContentMeasurePolicy2)) || (i21 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
                    objRememberedValue = composer3.rememberedValue();
                    if (z2 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        MeasurePolicy measurePolicyCreateMeasurePolicy = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy2);
                        composer3.updateRememberedValue(measurePolicyCreateMeasurePolicy);
                        objRememberedValue = measurePolicyCreateMeasurePolicy;
                    }
                    MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    FlowRowOverflow flowRowOverflow3 = clip;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifier4);
                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                    int i22 = (((i21 & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        function0 = constructor;
                        composer3.createNode(function0);
                    } else {
                        function0 = constructor;
                        composer3.useNode();
                    }
                    Composer composerM3967constructorimpl = Updater.m3967constructorimpl(composer3);
                    Updater.m3975setimpl(composerM3967constructorimpl, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                    function2CombineAsVirtualLayouts.invoke(composer3, Integer.valueOf((i22 >> 6) & 14));
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    i6 = i11;
                    horizontal3 = start;
                    i7 = i9;
                    flowRowOverflow2 = flowRowOverflow3;
                    modifier2 = modifier3;
                    vertical4 = top;
                    vertical5 = vertical6;
                    composer2 = composer3;
                } else {
                    multiContentMeasurePolicy = multiContentMeasurePolicyRowMeasurementMultiContentHelper;
                }
                ArrayList arrayList = new ArrayList();
                i10 = i12;
                i11 = i20;
                arrayList.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return FlowLayoutKt.FlowRow$lambda$1$0(function3, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }));
                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList);
                composer3.updateRememberedValue(arrayList);
                obj = arrayList;
                ComposerKt.sourceInformationMarkerEnd(composer3);
                int i212 = (i10 << 3) & 112;
                Modifier modifier42 = modifier3;
                multiContentMeasurePolicy2 = multiContentMeasurePolicy;
                ComposerKt.sourceInformationMarkerStart(composer3, 1399185516, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh");
                Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts2 = LayoutKt.combineAsVirtualLayouts((List) obj);
                ComposerKt.sourceInformationMarkerStart(composer3, 292526026, "CC(remember):Layout.kt#9igjgp");
                if (((i212 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    objRememberedValue = composer3.rememberedValue();
                    if (z2) {
                    }
                    MeasurePolicy measurePolicyCreateMeasurePolicy2 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy2);
                    composer3.updateRememberedValue(measurePolicyCreateMeasurePolicy2);
                    objRememberedValue = measurePolicyCreateMeasurePolicy2;
                    MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    FlowRowOverflow flowRowOverflow32 = clip;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier42);
                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                    int i222 = (((i212 & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                    }
                    Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer3);
                    Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                    function2CombineAsVirtualLayouts2.invoke(composer3, Integer.valueOf((i222 >> 6) & 14));
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    i6 = i11;
                    horizontal3 = start;
                    i7 = i9;
                    flowRowOverflow2 = flowRowOverflow32;
                    modifier2 = modifier3;
                    vertical4 = top;
                    vertical5 = vertical6;
                    composer2 = composer3;
                } else {
                    objRememberedValue = composer3.rememberedValue();
                    if (z2) {
                    }
                    MeasurePolicy measurePolicyCreateMeasurePolicy22 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy2);
                    composer3.updateRememberedValue(measurePolicyCreateMeasurePolicy22);
                    objRememberedValue = measurePolicyCreateMeasurePolicy22;
                    MeasurePolicy measurePolicy22 = (MeasurePolicy) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    FlowRowOverflow flowRowOverflow322 = clip;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode22 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                    CompositionLocalMap currentCompositionLocalMap22 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer3, modifier42);
                    Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                    int i2222 = (((i212 & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                    }
                    Composer composerM3967constructorimpl22 = Updater.m3967constructorimpl(composer3);
                    Updater.m3975setimpl(composerM3967constructorimpl22, measurePolicy22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl22, currentCompositionLocalMap22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl22, Integer.valueOf(iHashCode22), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl22, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl22, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                    function2CombineAsVirtualLayouts2.invoke(composer3, Integer.valueOf((i2222 >> 6) & 14));
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    i6 = i11;
                    horizontal3 = start;
                    i7 = i9;
                    flowRowOverflow2 = flowRowOverflow322;
                    modifier2 = modifier3;
                    vertical4 = top;
                    vertical5 = vertical6;
                    composer2 = composer3;
                }
            } else {
                modifier3 = companion;
            }
            FlowLayoutOverflowState flowLayoutOverflowStateCreateOverflowState$foundation_layout = clip.createOverflowState$foundation_layout();
            composerStartRestartGroup.updateRememberedValue(flowLayoutOverflowStateCreateOverflowState$foundation_layout);
            objRememberedValue2 = flowLayoutOverflowStateCreateOverflowState$foundation_layout;
            FlowLayoutOverflowState flowLayoutOverflowState2 = (FlowLayoutOverflowState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            MultiContentMeasurePolicy multiContentMeasurePolicyRowMeasurementMultiContentHelper2 = rowMeasurementMultiContentHelper(start, top, top2, i8, i9, flowLayoutOverflowState2, composerStartRestartGroup, ((i12 >> 3) & 14) | ((i12 >> 3) & 112) | ((i12 >> 3) & 896) | ((i12 >> 3) & 7168) | ((i12 >> 3) & 57344));
            int i202 = i8;
            Alignment.Vertical vertical62 = top2;
            composer3 = composerStartRestartGroup;
            ComposerKt.sourceInformationMarkerStart(composer3, 910943106, "CC(remember):FlowLayout.kt#9igjgp");
            z = ((3670016 & i12) != 1048576) | ((29360128 & i12) != 8388608) | ((458752 & i12) != 131072);
            Object objRememberedValue32 = composer3.rememberedValue();
            if (z) {
            }
            ArrayList arrayList2 = new ArrayList();
            i10 = i12;
            i11 = i202;
            arrayList2.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return FlowLayoutKt.FlowRow$lambda$1$0(function3, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }));
            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState2, arrayList2);
            composer3.updateRememberedValue(arrayList2);
            obj = arrayList2;
            ComposerKt.sourceInformationMarkerEnd(composer3);
            int i2122 = (i10 << 3) & 112;
            Modifier modifier422 = modifier3;
            multiContentMeasurePolicy2 = multiContentMeasurePolicy;
            ComposerKt.sourceInformationMarkerStart(composer3, 1399185516, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh");
            Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts22 = LayoutKt.combineAsVirtualLayouts((List) obj);
            ComposerKt.sourceInformationMarkerStart(composer3, 292526026, "CC(remember):Layout.kt#9igjgp");
            if (((i2122 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical4, vertical5, i6, i7, flowRowOverflow2, function3, i3, i4, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FlowRow$lambda$1$0(Function3 $content, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C113@5051L9:FlowLayout.kt#2w3rfo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1192950673, $changed, -1, "androidx.compose.foundation.layout.FlowRow.<anonymous>.<anonymous> (FlowLayout.kt:113)");
            }
            $content.invoke(FlowRowScopeInstance.INSTANCE, $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    public static final void FlowRow(Modifier modifier, Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, Alignment.Vertical itemVerticalAlignment, int maxItemsInEachRow, int maxLines, final Function3<? super FlowRowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Arrangement.Horizontal horizontal;
        int maxItemsInEachRow2;
        int i2;
        Composer $composer2;
        final Arrangement.Vertical verticalArrangement2;
        int $dirty;
        final Modifier modifier3;
        final Arrangement.Horizontal horizontalArrangement2;
        final int maxLines2;
        final Alignment.Vertical itemVerticalAlignment2;
        final int maxItemsInEachRow3;
        Modifier modifier4;
        int i3;
        Arrangement.Horizontal horizontalArrangement3;
        Arrangement.Vertical verticalArrangement3;
        int i4;
        Alignment.Vertical itemVerticalAlignment3;
        int maxLines3;
        Composer $composer3 = $composer.startRestartGroup(-1303174015);
        ComposerKt.sourceInformation($composer3, "C(FlowRow)N(modifier,horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInEachRow,maxLines,content)162@7315L215:FlowLayout.kt#2w3rfo");
        int $dirty2 = $changed;
        int i5 = i & 1;
        if (i5 != 0) {
            $dirty2 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        int i6 = i & 2;
        if (i6 != 0) {
            $dirty2 |= 48;
            horizontal = horizontalArrangement;
        } else if (($changed & 48) == 0) {
            horizontal = horizontalArrangement;
            $dirty2 |= $composer3.changed(horizontal) ? 32 : 16;
        } else {
            horizontal = horizontalArrangement;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer3.changed(verticalArrangement) ? 256 : 128;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(itemVerticalAlignment) ? 2048 : 1024;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty2 |= 24576;
            maxItemsInEachRow2 = maxItemsInEachRow;
        } else if (($changed & 24576) == 0) {
            maxItemsInEachRow2 = maxItemsInEachRow;
            $dirty2 |= $composer3.changed(maxItemsInEachRow2) ? 16384 : 8192;
        } else {
            maxItemsInEachRow2 = maxItemsInEachRow;
        }
        int i10 = i & 32;
        if (i10 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i2 = maxLines;
        } else if ((196608 & $changed) == 0) {
            i2 = maxLines;
            $dirty2 |= $composer3.changed(i2) ? 131072 : 65536;
        } else {
            i2 = maxLines;
        }
        if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changedInstance(function3) ? 1048576 : 524288;
        }
        if (!$composer3.shouldExecute(($dirty2 & 599187) != 599186, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            verticalArrangement2 = verticalArrangement;
            $dirty = $dirty2;
            modifier3 = modifier2;
            horizontalArrangement2 = horizontal;
            maxLines2 = i2;
            itemVerticalAlignment2 = itemVerticalAlignment;
            maxItemsInEachRow3 = maxItemsInEachRow2;
        } else {
            if (i5 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i6 == 0) {
                i3 = i8;
                horizontalArrangement3 = horizontal;
            } else {
                horizontalArrangement3 = Arrangement.INSTANCE.getStart();
                i3 = i8;
            }
            if (i7 == 0) {
                verticalArrangement3 = verticalArrangement;
            } else {
                verticalArrangement3 = Arrangement.INSTANCE.getTop();
            }
            if (i3 == 0) {
                i4 = i9;
                itemVerticalAlignment3 = itemVerticalAlignment;
            } else {
                itemVerticalAlignment3 = Alignment.INSTANCE.getTop();
                i4 = i9;
            }
            if (i4 != 0) {
                maxItemsInEachRow2 = Integer.MAX_VALUE;
            }
            if (i10 == 0) {
                maxLines3 = i2;
            } else {
                maxLines3 = Integer.MAX_VALUE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1303174015, $dirty2, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
            }
            $composer2 = $composer3;
            FlowRow(modifier4, horizontalArrangement3, verticalArrangement3, itemVerticalAlignment3, maxItemsInEachRow2, maxLines3, FlowRowOverflow.INSTANCE.getClip(), function3, $composer2, ($dirty2 & 14) | 1572864 | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (458752 & $dirty2) | (($dirty2 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $dirty = $dirty2;
            modifier3 = modifier4;
            horizontalArrangement2 = horizontalArrangement3;
            verticalArrangement2 = verticalArrangement3;
            itemVerticalAlignment2 = itemVerticalAlignment3;
            maxLines2 = maxLines3;
            maxItemsInEachRow3 = maxItemsInEachRow2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontalArrangement2, verticalArrangement2, itemVerticalAlignment2, maxItemsInEachRow3, maxLines2, function3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x029a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0377  */
    @Deprecated(message = "The overflow parameter has been deprecated")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void FlowColumn(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, FlowColumnOverflow flowColumnOverflow, final Function3<? super FlowColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer composer, final int i3, final int i4) {
        Arrangement.Vertical vertical2;
        Arrangement.Horizontal start;
        Alignment.Horizontal horizontal3;
        int i5;
        final FlowColumnOverflow flowColumnOverflow2;
        final Arrangement.Vertical vertical3;
        final int i6;
        final int i7;
        final Modifier modifier2;
        final Arrangement.Horizontal horizontal4;
        final Alignment.Horizontal horizontal5;
        Composer composer2;
        Modifier.Companion companion;
        Arrangement.Vertical top;
        Alignment.Horizontal start2;
        int i8;
        int i9;
        FlowColumnOverflow clip;
        Modifier modifier3;
        Composer composer3;
        boolean z;
        MultiContentMeasurePolicy multiContentMeasurePolicy;
        int i10;
        int i11;
        Object obj;
        MultiContentMeasurePolicy multiContentMeasurePolicy2;
        boolean z2;
        Object objRememberedValue;
        Function0<ComposeUiNode> function0;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1944405121);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FlowColumn)N(modifier,verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInEachColumn,maxLines,overflow,content)214@9466L53,216@9552L234,225@9840L294,231@10139L75:FlowLayout.kt#2w3rfo");
        int i12 = i3;
        int i13 = i4 & 1;
        if (i13 != 0) {
            i12 |= 6;
        } else if ((i3 & 6) == 0) {
            i12 |= composerStartRestartGroup.changed(modifier) ? 4 : 2;
        }
        int i14 = i4 & 2;
        if (i14 != 0) {
            i12 |= 48;
            vertical2 = vertical;
        } else if ((i3 & 48) == 0) {
            vertical2 = vertical;
            i12 |= composerStartRestartGroup.changed(vertical2) ? 32 : 16;
        } else {
            vertical2 = vertical;
        }
        int i15 = i4 & 4;
        if (i15 != 0) {
            i12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            start = horizontal;
        } else if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            start = horizontal;
            i12 |= composerStartRestartGroup.changed(start) ? 256 : 128;
        } else {
            start = horizontal;
        }
        int i16 = i4 & 8;
        if (i16 != 0) {
            i12 |= 3072;
            horizontal3 = horizontal2;
        } else if ((i3 & 3072) == 0) {
            horizontal3 = horizontal2;
            i12 |= composerStartRestartGroup.changed(horizontal3) ? 2048 : 1024;
        } else {
            horizontal3 = horizontal2;
        }
        int i17 = i4 & 16;
        if (i17 != 0) {
            i12 |= 24576;
            i5 = i;
        } else if ((i3 & 24576) == 0) {
            i5 = i;
            i12 |= composerStartRestartGroup.changed(i5) ? 16384 : 8192;
        } else {
            i5 = i;
        }
        int i18 = i4 & 32;
        if (i18 != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i12 |= composerStartRestartGroup.changed(i2) ? 131072 : 65536;
        }
        int i19 = i4 & 64;
        if (i19 != 0) {
            i12 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            i12 |= composerStartRestartGroup.changed(flowColumnOverflow) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i12 |= composerStartRestartGroup.changedInstance(function3) ? 8388608 : 4194304;
        }
        if (!composerStartRestartGroup.shouldExecute((i12 & 4793491) != 4793490, i12 & 1)) {
            Composer composer4 = composerStartRestartGroup;
            composer4.skipToGroupEnd();
            flowColumnOverflow2 = flowColumnOverflow;
            vertical3 = vertical2;
            i6 = i5;
            i7 = i2;
            modifier2 = modifier;
            horizontal4 = start;
            horizontal5 = horizontal3;
            composer2 = composer4;
        } else {
            if (i13 != 0) {
                companion = Modifier.INSTANCE;
            } else {
                companion = modifier;
            }
            if (i14 == 0) {
                top = vertical2;
            } else {
                top = Arrangement.INSTANCE.getTop();
            }
            if (i15 != 0) {
                start = Arrangement.INSTANCE.getStart();
            }
            if (i16 == 0) {
                start2 = horizontal3;
            } else {
                start2 = Alignment.INSTANCE.getStart();
            }
            if (i17 == 0) {
                i8 = i5;
            } else {
                i8 = Integer.MAX_VALUE;
            }
            if (i18 == 0) {
                i9 = i2;
            } else {
                i9 = Integer.MAX_VALUE;
            }
            if (i19 == 0) {
                clip = flowColumnOverflow;
            } else {
                clip = FlowColumnOverflow.INSTANCE.getClip();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1944405121, i12, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -262532140, "CC(remember):FlowLayout.kt#9igjgp");
            boolean z3 = (3670016 & i12) == 1048576;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (!z3) {
                modifier3 = companion;
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                MultiContentMeasurePolicy multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start, start2, i8, i9, flowLayoutOverflowState, composerStartRestartGroup, ((i12 >> 3) & 14) | ((i12 >> 3) & 112) | ((i12 >> 3) & 896) | ((i12 >> 3) & 7168) | ((i12 >> 3) & 57344));
                int i20 = i8;
                Alignment.Horizontal horizontal6 = start2;
                composer3 = composerStartRestartGroup;
                ComposerKt.sourceInformationMarkerStart(composer3, -262519931, "CC(remember):FlowLayout.kt#9igjgp");
                z = ((3670016 & i12) != 1048576) | ((29360128 & i12) != 8388608) | ((458752 & i12) != 131072);
                Object objRememberedValue3 = composer3.rememberedValue();
                if (z) {
                    multiContentMeasurePolicy = multiContentMeasurePolicyColumnMeasurementMultiContentHelper;
                    if (objRememberedValue3 != Composer.INSTANCE.getEmpty()) {
                        i10 = i12;
                        i11 = i20;
                        obj = objRememberedValue3;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    int i21 = (i10 << 3) & 112;
                    Modifier modifier4 = modifier3;
                    multiContentMeasurePolicy2 = multiContentMeasurePolicy;
                    ComposerKt.sourceInformationMarkerStart(composer3, 1399185516, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh");
                    Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    ComposerKt.sourceInformationMarkerStart(composer3, 292526026, "CC(remember):Layout.kt#9igjgp");
                    z2 = (((i21 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer3.changed(multiContentMeasurePolicy2)) || (i21 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
                    objRememberedValue = composer3.rememberedValue();
                    if (z2 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        MeasurePolicy measurePolicyCreateMeasurePolicy = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy2);
                        composer3.updateRememberedValue(measurePolicyCreateMeasurePolicy);
                        objRememberedValue = measurePolicyCreateMeasurePolicy;
                    }
                    MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    FlowColumnOverflow flowColumnOverflow3 = clip;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifier4);
                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                    int i22 = (((i21 & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        function0 = constructor;
                        composer3.createNode(function0);
                    } else {
                        function0 = constructor;
                        composer3.useNode();
                    }
                    Composer composerM3967constructorimpl = Updater.m3967constructorimpl(composer3);
                    Updater.m3975setimpl(composerM3967constructorimpl, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                    function2CombineAsVirtualLayouts.invoke(composer3, Integer.valueOf((i22 >> 6) & 14));
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    i6 = i11;
                    vertical3 = top;
                    i7 = i9;
                    flowColumnOverflow2 = flowColumnOverflow3;
                    modifier2 = modifier3;
                    horizontal4 = start;
                    horizontal5 = horizontal6;
                    composer2 = composer3;
                } else {
                    multiContentMeasurePolicy = multiContentMeasurePolicyColumnMeasurementMultiContentHelper;
                }
                ArrayList arrayList = new ArrayList();
                i10 = i12;
                i11 = i20;
                arrayList.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return FlowLayoutKt.FlowColumn$lambda$1$0(function3, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }));
                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList);
                composer3.updateRememberedValue(arrayList);
                obj = arrayList;
                ComposerKt.sourceInformationMarkerEnd(composer3);
                int i212 = (i10 << 3) & 112;
                Modifier modifier42 = modifier3;
                multiContentMeasurePolicy2 = multiContentMeasurePolicy;
                ComposerKt.sourceInformationMarkerStart(composer3, 1399185516, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh");
                Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts2 = LayoutKt.combineAsVirtualLayouts((List) obj);
                ComposerKt.sourceInformationMarkerStart(composer3, 292526026, "CC(remember):Layout.kt#9igjgp");
                if (((i212 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    objRememberedValue = composer3.rememberedValue();
                    if (z2) {
                    }
                    MeasurePolicy measurePolicyCreateMeasurePolicy2 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy2);
                    composer3.updateRememberedValue(measurePolicyCreateMeasurePolicy2);
                    objRememberedValue = measurePolicyCreateMeasurePolicy2;
                    MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    FlowColumnOverflow flowColumnOverflow32 = clip;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier42);
                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                    int i222 = (((i212 & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                    }
                    Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer3);
                    Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                    function2CombineAsVirtualLayouts2.invoke(composer3, Integer.valueOf((i222 >> 6) & 14));
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    i6 = i11;
                    vertical3 = top;
                    i7 = i9;
                    flowColumnOverflow2 = flowColumnOverflow32;
                    modifier2 = modifier3;
                    horizontal4 = start;
                    horizontal5 = horizontal6;
                    composer2 = composer3;
                } else {
                    objRememberedValue = composer3.rememberedValue();
                    if (z2) {
                    }
                    MeasurePolicy measurePolicyCreateMeasurePolicy22 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy2);
                    composer3.updateRememberedValue(measurePolicyCreateMeasurePolicy22);
                    objRememberedValue = measurePolicyCreateMeasurePolicy22;
                    MeasurePolicy measurePolicy22 = (MeasurePolicy) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    FlowColumnOverflow flowColumnOverflow322 = clip;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode22 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                    CompositionLocalMap currentCompositionLocalMap22 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer3, modifier42);
                    Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                    int i2222 = (((i212 & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer3.getApplier() instanceof Applier)) {
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                    }
                    Composer composerM3967constructorimpl22 = Updater.m3967constructorimpl(composer3);
                    Updater.m3975setimpl(composerM3967constructorimpl22, measurePolicy22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl22, currentCompositionLocalMap22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl22, Integer.valueOf(iHashCode22), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl22, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl22, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                    function2CombineAsVirtualLayouts2.invoke(composer3, Integer.valueOf((i2222 >> 6) & 14));
                    composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    i6 = i11;
                    vertical3 = top;
                    i7 = i9;
                    flowColumnOverflow2 = flowColumnOverflow322;
                    modifier2 = modifier3;
                    horizontal4 = start;
                    horizontal5 = horizontal6;
                    composer2 = composer3;
                }
            } else {
                modifier3 = companion;
            }
            FlowLayoutOverflowState flowLayoutOverflowStateCreateOverflowState$foundation_layout = clip.createOverflowState$foundation_layout();
            composerStartRestartGroup.updateRememberedValue(flowLayoutOverflowStateCreateOverflowState$foundation_layout);
            objRememberedValue2 = flowLayoutOverflowStateCreateOverflowState$foundation_layout;
            FlowLayoutOverflowState flowLayoutOverflowState2 = (FlowLayoutOverflowState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            MultiContentMeasurePolicy multiContentMeasurePolicyColumnMeasurementMultiContentHelper2 = columnMeasurementMultiContentHelper(top, start, start2, i8, i9, flowLayoutOverflowState2, composerStartRestartGroup, ((i12 >> 3) & 14) | ((i12 >> 3) & 112) | ((i12 >> 3) & 896) | ((i12 >> 3) & 7168) | ((i12 >> 3) & 57344));
            int i202 = i8;
            Alignment.Horizontal horizontal62 = start2;
            composer3 = composerStartRestartGroup;
            ComposerKt.sourceInformationMarkerStart(composer3, -262519931, "CC(remember):FlowLayout.kt#9igjgp");
            z = ((3670016 & i12) != 1048576) | ((29360128 & i12) != 8388608) | ((458752 & i12) != 131072);
            Object objRememberedValue32 = composer3.rememberedValue();
            if (z) {
            }
            ArrayList arrayList2 = new ArrayList();
            i10 = i12;
            i11 = i202;
            arrayList2.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return FlowLayoutKt.FlowColumn$lambda$1$0(function3, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }));
            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState2, arrayList2);
            composer3.updateRememberedValue(arrayList2);
            obj = arrayList2;
            ComposerKt.sourceInformationMarkerEnd(composer3);
            int i2122 = (i10 << 3) & 112;
            Modifier modifier422 = modifier3;
            multiContentMeasurePolicy2 = multiContentMeasurePolicy;
            ComposerKt.sourceInformationMarkerStart(composer3, 1399185516, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh");
            Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts22 = LayoutKt.combineAsVirtualLayouts((List) obj);
            ComposerKt.sourceInformationMarkerStart(composer3, 292526026, "CC(remember):Layout.kt#9igjgp");
            if (((i2122 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal4, horizontal5, i6, i7, flowColumnOverflow2, function3, i3, i4, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FlowColumn$lambda$1$0(Function3 $content, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C227@10017L9:FlowLayout.kt#2w3rfo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1720407857, $changed, -1, "androidx.compose.foundation.layout.FlowColumn.<anonymous>.<anonymous> (FlowLayout.kt:227)");
            }
            $content.invoke(FlowColumnScopeInstance.INSTANCE, $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    public static final void FlowColumn(Modifier modifier, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, Alignment.Horizontal itemHorizontalAlignment, int maxItemsInEachColumn, int maxLines, final Function3<? super FlowColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Arrangement.Vertical vertical;
        int maxItemsInEachColumn2;
        int i2;
        Composer $composer2;
        final Arrangement.Horizontal horizontalArrangement2;
        int $dirty;
        final Modifier modifier3;
        final Arrangement.Vertical verticalArrangement2;
        final int maxLines2;
        final Alignment.Horizontal itemHorizontalAlignment2;
        final int maxItemsInEachColumn3;
        Modifier modifier4;
        int i3;
        Arrangement.Vertical verticalArrangement3;
        Arrangement.Horizontal horizontalArrangement3;
        int i4;
        Alignment.Horizontal itemHorizontalAlignment3;
        int maxLines3;
        Composer $composer3 = $composer.startRestartGroup(1371845627);
        ComposerKt.sourceInformation($composer3, "C(FlowColumn)N(modifier,verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInEachColumn,maxLines,content)271@11939L226:FlowLayout.kt#2w3rfo");
        int $dirty2 = $changed;
        int i5 = i & 1;
        if (i5 != 0) {
            $dirty2 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        int i6 = i & 2;
        if (i6 != 0) {
            $dirty2 |= 48;
            vertical = verticalArrangement;
        } else if (($changed & 48) == 0) {
            vertical = verticalArrangement;
            $dirty2 |= $composer3.changed(vertical) ? 32 : 16;
        } else {
            vertical = verticalArrangement;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer3.changed(horizontalArrangement) ? 256 : 128;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(itemHorizontalAlignment) ? 2048 : 1024;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty2 |= 24576;
            maxItemsInEachColumn2 = maxItemsInEachColumn;
        } else if (($changed & 24576) == 0) {
            maxItemsInEachColumn2 = maxItemsInEachColumn;
            $dirty2 |= $composer3.changed(maxItemsInEachColumn2) ? 16384 : 8192;
        } else {
            maxItemsInEachColumn2 = maxItemsInEachColumn;
        }
        int i10 = i & 32;
        if (i10 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i2 = maxLines;
        } else if ((196608 & $changed) == 0) {
            i2 = maxLines;
            $dirty2 |= $composer3.changed(i2) ? 131072 : 65536;
        } else {
            i2 = maxLines;
        }
        if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changedInstance(function3) ? 1048576 : 524288;
        }
        if (!$composer3.shouldExecute(($dirty2 & 599187) != 599186, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            horizontalArrangement2 = horizontalArrangement;
            $dirty = $dirty2;
            modifier3 = modifier2;
            verticalArrangement2 = vertical;
            maxLines2 = i2;
            itemHorizontalAlignment2 = itemHorizontalAlignment;
            maxItemsInEachColumn3 = maxItemsInEachColumn2;
        } else {
            if (i5 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i6 == 0) {
                i3 = i8;
                verticalArrangement3 = vertical;
            } else {
                verticalArrangement3 = Arrangement.INSTANCE.getTop();
                i3 = i8;
            }
            if (i7 == 0) {
                horizontalArrangement3 = horizontalArrangement;
            } else {
                horizontalArrangement3 = Arrangement.INSTANCE.getStart();
            }
            if (i3 == 0) {
                i4 = i9;
                itemHorizontalAlignment3 = itemHorizontalAlignment;
            } else {
                itemHorizontalAlignment3 = Alignment.INSTANCE.getStart();
                i4 = i9;
            }
            if (i4 != 0) {
                maxItemsInEachColumn2 = Integer.MAX_VALUE;
            }
            if (i10 == 0) {
                maxLines3 = i2;
            } else {
                maxLines3 = Integer.MAX_VALUE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1371845627, $dirty2, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
            }
            $composer2 = $composer3;
            FlowColumn(modifier4, verticalArrangement3, horizontalArrangement3, itemHorizontalAlignment3, maxItemsInEachColumn2, maxLines3, FlowColumnOverflow.INSTANCE.getClip(), function3, $composer2, ($dirty2 & 14) | 1572864 | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (458752 & $dirty2) | (($dirty2 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $dirty = $dirty2;
            modifier3 = modifier4;
            verticalArrangement2 = verticalArrangement3;
            horizontalArrangement2 = horizontalArrangement3;
            itemHorizontalAlignment2 = itemHorizontalAlignment3;
            maxLines2 = maxLines3;
            maxItemsInEachColumn3 = maxItemsInEachColumn2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, verticalArrangement2, horizontalArrangement2, itemHorizontalAlignment2, maxItemsInEachColumn3, maxLines2, function3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[PHI: r8
      0x0039: PHI (r8v3 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r8v1 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r8v4 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:12:0x0037, B:8:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053 A[PHI: r9
      0x0053: PHI (r9v3 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r9v1 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r9v4 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:22:0x0051, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e A[PHI: r13
      0x006e: PHI (r13v3 int) = (r13v1 int), (r13v4 int) binds: [B:32:0x006c, B:28:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final MeasurePolicy rowMeasurementHelper(Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, int maxItemsInMainAxis, Composer $composer, int $changed) {
        Arrangement.Horizontal horizontal;
        boolean z;
        Arrangement.Vertical vertical;
        boolean z2;
        int i;
        boolean invalid$iv;
        Object it$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 1479255111, "C(rowMeasurementHelper)N(horizontalArrangement,verticalArrangement,maxItemsInMainAxis)440@17697L893:FlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1479255111, $changed, -1, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:439)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -70006556, "CC(remember):FlowLayout.kt#9igjgp");
        boolean z3 = false;
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
                boolean z4 = z | z2;
                if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    i = maxItemsInMainAxis;
                    if ($composer.changed(i)) {
                        z3 = true;
                    }
                    invalid$iv = z4 | z3;
                    it$iv = $composer.rememberedValue();
                    if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                        final MultiContentMeasurePolicy measurePolicy = new FlowMeasurePolicy(true, horizontal, vertical, horizontal.getSpacing(), CROSS_AXIS_ALIGNMENT_TOP, vertical.getSpacing(), i, Integer.MAX_VALUE, FlowRowOverflow.INSTANCE.getVisible().createOverflowState$foundation_layout(), null);
                        Object value$iv = (MeasurePolicy) new MeasurePolicy() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$rowMeasurementHelper$1$1
                            @Override // androidx.compose.ui.layout.MeasurePolicy
                            /* JADX INFO: renamed from: measure-3p2s80s */
                            public final MeasureResult mo41measure3p2s80s(MeasureScope $this$MeasurePolicy, List<? extends Measurable> list, long j) {
                                MultiContentMeasurePolicy $this$measure_3p2s80s_u24lambda_u240 = measurePolicy;
                                return $this$measure_3p2s80s_u24lambda_u240.mo762measure3p2s80s($this$MeasurePolicy, CollectionsKt.listOf(list), j);
                            }
                        };
                        $composer.updateRememberedValue(value$iv);
                        it$iv = value$iv;
                    }
                    MeasurePolicy measurePolicy2 = (MeasurePolicy) it$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return measurePolicy2;
                }
                i = maxItemsInMainAxis;
                if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                }
                invalid$iv = z4 | z3;
                it$iv = $composer.rememberedValue();
                if (!invalid$iv) {
                    final MultiContentMeasurePolicy measurePolicy3 = new FlowMeasurePolicy(true, horizontal, vertical, horizontal.getSpacing(), CROSS_AXIS_ALIGNMENT_TOP, vertical.getSpacing(), i, Integer.MAX_VALUE, FlowRowOverflow.INSTANCE.getVisible().createOverflowState$foundation_layout(), null);
                    Object value$iv2 = (MeasurePolicy) new MeasurePolicy() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$rowMeasurementHelper$1$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo41measure3p2s80s(MeasureScope $this$MeasurePolicy, List<? extends Measurable> list, long j) {
                            MultiContentMeasurePolicy $this$measure_3p2s80s_u24lambda_u240 = measurePolicy3;
                            return $this$measure_3p2s80s_u24lambda_u240.mo762measure3p2s80s($this$MeasurePolicy, CollectionsKt.listOf(list), j);
                        }
                    };
                    $composer.updateRememberedValue(value$iv2);
                    it$iv = value$iv2;
                }
                MeasurePolicy measurePolicy22 = (MeasurePolicy) it$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return measurePolicy22;
            }
            vertical = verticalArrangement;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z42 = z | z2;
            if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            }
            if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
            }
            invalid$iv = z42 | z3;
            it$iv = $composer.rememberedValue();
            if (!invalid$iv) {
            }
            MeasurePolicy measurePolicy222 = (MeasurePolicy) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return measurePolicy222;
        }
        horizontal = horizontalArrangement;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z422 = z | z2;
        if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
        }
        invalid$iv = z422 | z3;
        it$iv = $composer.rememberedValue();
        if (!invalid$iv) {
        }
        MeasurePolicy measurePolicy2222 = (MeasurePolicy) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return measurePolicy2222;
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
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086 A[PHI: r14
      0x0086: PHI (r14v3 int) = (r14v1 int), (r14v4 int) binds: [B:40:0x0084, B:36:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a3 A[PHI: r15
      0x00a3: PHI (r15v3 int) = (r15v1 int), (r15v4 int) binds: [B:50:0x00a1, B:46:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final MultiContentMeasurePolicy rowMeasurementMultiContentHelper(Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, Alignment.Vertical itemVerticalAlignment, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflowState, Composer $composer, int $changed) {
        Arrangement.Horizontal horizontal;
        boolean z;
        Arrangement.Vertical vertical;
        boolean z2;
        int i;
        boolean z3;
        int i2;
        boolean invalid$iv;
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -2010142641, "C(rowMeasurementMultiContentHelper)N(horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInMainAxis,maxLines,overflowState)471@18969L708:FlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2010142641, $changed, -1, "androidx.compose.foundation.layout.rowMeasurementMultiContentHelper (FlowLayout.kt:470)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, 988216051, "CC(remember):FlowLayout.kt#9igjgp");
        boolean z4 = false;
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
                boolean z5 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemVerticalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if ((($changed & 7168) ^ 3072) > 2048) {
                    i = maxItemsInMainAxis;
                    if ($composer.changed(i)) {
                        z3 = true;
                    }
                    boolean z6 = z5 | z3;
                    if (((57344 & $changed) ^ 24576) <= 16384) {
                        i2 = maxLines;
                        if ($composer.changed(i2)) {
                            z4 = true;
                        }
                        invalid$iv = z6 | z4 | $composer.changed(overflowState);
                        value$iv = $composer.rememberedValue();
                        if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv = new FlowMeasurePolicy(true, horizontal, vertical, horizontal.getSpacing(), CrossAxisAlignment.INSTANCE.vertical$foundation_layout(itemVerticalAlignment), vertical.getSpacing(), i, i2, overflowState, null);
                            $composer.updateRememberedValue(value$iv);
                        }
                        FlowMeasurePolicy flowMeasurePolicy = (FlowMeasurePolicy) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return flowMeasurePolicy;
                    }
                    i2 = maxLines;
                    if (($changed & 24576) == 16384) {
                    }
                    invalid$iv = z6 | z4 | $composer.changed(overflowState);
                    value$iv = $composer.rememberedValue();
                    if (invalid$iv) {
                        value$iv = new FlowMeasurePolicy(true, horizontal, vertical, horizontal.getSpacing(), CrossAxisAlignment.INSTANCE.vertical$foundation_layout(itemVerticalAlignment), vertical.getSpacing(), i, i2, overflowState, null);
                        $composer.updateRememberedValue(value$iv);
                    }
                    FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return flowMeasurePolicy2;
                }
                i = maxItemsInMainAxis;
                if (($changed & 3072) != 2048) {
                    z3 = false;
                }
                boolean z62 = z5 | z3;
                if (((57344 & $changed) ^ 24576) <= 16384) {
                }
                if (($changed & 24576) == 16384) {
                }
                invalid$iv = z62 | z4 | $composer.changed(overflowState);
                value$iv = $composer.rememberedValue();
                if (invalid$iv) {
                }
                FlowMeasurePolicy flowMeasurePolicy22 = (FlowMeasurePolicy) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return flowMeasurePolicy22;
            }
            vertical = verticalArrangement;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z52 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemVerticalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            if ((($changed & 7168) ^ 3072) > 2048) {
            }
            if (($changed & 3072) != 2048) {
            }
            boolean z622 = z52 | z3;
            if (((57344 & $changed) ^ 24576) <= 16384) {
            }
            if (($changed & 24576) == 16384) {
            }
            invalid$iv = z622 | z4 | $composer.changed(overflowState);
            value$iv = $composer.rememberedValue();
            if (invalid$iv) {
            }
            FlowMeasurePolicy flowMeasurePolicy222 = (FlowMeasurePolicy) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return flowMeasurePolicy222;
        }
        horizontal = horizontalArrangement;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z522 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemVerticalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        if ((($changed & 7168) ^ 3072) > 2048) {
        }
        if (($changed & 3072) != 2048) {
        }
        boolean z6222 = z522 | z3;
        if (((57344 & $changed) ^ 24576) <= 16384) {
        }
        if (($changed & 24576) == 16384) {
        }
        invalid$iv = z6222 | z4 | $composer.changed(overflowState);
        value$iv = $composer.rememberedValue();
        if (invalid$iv) {
        }
        FlowMeasurePolicy flowMeasurePolicy2222 = (FlowMeasurePolicy) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return flowMeasurePolicy2222;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[PHI: r9
      0x0039: PHI (r9v3 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r9v1 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r9v4 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:12:0x0037, B:8:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053 A[PHI: r8
      0x0053: PHI (r8v3 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r8v1 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r8v4 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:22:0x0051, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e A[PHI: r13
      0x006e: PHI (r13v3 int) = (r13v1 int), (r13v4 int) binds: [B:32:0x006c, B:28:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final MeasurePolicy columnMeasurementHelper(Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, int maxItemsInMainAxis, Composer $composer, int $changed) {
        Arrangement.Vertical vertical;
        boolean z;
        Arrangement.Horizontal horizontal;
        boolean z2;
        int i;
        boolean invalid$iv;
        Object it$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -2013098357, "C(columnMeasurementHelper)N(verticalArrangement,horizontalArrangement,maxItemsInMainAxis)501@19939L850:FlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2013098357, $changed, -1, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:500)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -1852231075, "CC(remember):FlowLayout.kt#9igjgp");
        boolean z3 = false;
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
                boolean z4 = z | z2;
                if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
                    i = maxItemsInMainAxis;
                    if ($composer.changed(i)) {
                        z3 = true;
                    }
                    invalid$iv = z4 | z3;
                    it$iv = $composer.rememberedValue();
                    if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                        final FlowMeasurePolicy measurePolicy = new FlowMeasurePolicy(false, horizontal, vertical, vertical.getSpacing(), CROSS_AXIS_ALIGNMENT_START, horizontal.getSpacing(), i, Integer.MAX_VALUE, FlowRowOverflow.INSTANCE.getVisible().createOverflowState$foundation_layout(), null);
                        Object value$iv = (MeasurePolicy) new MeasurePolicy() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$columnMeasurementHelper$1$1
                            @Override // androidx.compose.ui.layout.MeasurePolicy
                            /* JADX INFO: renamed from: measure-3p2s80s */
                            public final MeasureResult mo41measure3p2s80s(MeasureScope $this$MeasurePolicy, List<? extends Measurable> list, long j) {
                                FlowMeasurePolicy $this$measure_3p2s80s_u24lambda_u240 = measurePolicy;
                                return $this$measure_3p2s80s_u24lambda_u240.mo762measure3p2s80s($this$MeasurePolicy, CollectionsKt.listOf(list), j);
                            }
                        };
                        $composer.updateRememberedValue(value$iv);
                        it$iv = value$iv;
                    }
                    MeasurePolicy measurePolicy2 = (MeasurePolicy) it$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return measurePolicy2;
                }
                i = maxItemsInMainAxis;
                if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                }
                invalid$iv = z4 | z3;
                it$iv = $composer.rememberedValue();
                if (!invalid$iv) {
                    final FlowMeasurePolicy measurePolicy3 = new FlowMeasurePolicy(false, horizontal, vertical, vertical.getSpacing(), CROSS_AXIS_ALIGNMENT_START, horizontal.getSpacing(), i, Integer.MAX_VALUE, FlowRowOverflow.INSTANCE.getVisible().createOverflowState$foundation_layout(), null);
                    Object value$iv2 = (MeasurePolicy) new MeasurePolicy() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$columnMeasurementHelper$1$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo41measure3p2s80s(MeasureScope $this$MeasurePolicy, List<? extends Measurable> list, long j) {
                            FlowMeasurePolicy $this$measure_3p2s80s_u24lambda_u240 = measurePolicy3;
                            return $this$measure_3p2s80s_u24lambda_u240.mo762measure3p2s80s($this$MeasurePolicy, CollectionsKt.listOf(list), j);
                        }
                    };
                    $composer.updateRememberedValue(value$iv2);
                    it$iv = value$iv2;
                }
                MeasurePolicy measurePolicy22 = (MeasurePolicy) it$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return measurePolicy22;
            }
            horizontal = horizontalArrangement;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z42 = z | z2;
            if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
            }
            if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
            }
            invalid$iv = z42 | z3;
            it$iv = $composer.rememberedValue();
            if (!invalid$iv) {
            }
            MeasurePolicy measurePolicy222 = (MeasurePolicy) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return measurePolicy222;
        }
        vertical = verticalArrangement;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z422 = z | z2;
        if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256) {
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
        }
        invalid$iv = z422 | z3;
        it$iv = $composer.rememberedValue();
        if (!invalid$iv) {
        }
        MeasurePolicy measurePolicy2222 = (MeasurePolicy) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return measurePolicy2222;
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
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086 A[PHI: r14
      0x0086: PHI (r14v3 int) = (r14v1 int), (r14v4 int) binds: [B:40:0x0084, B:36:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a3 A[PHI: r15
      0x00a3: PHI (r15v3 int) = (r15v1 int), (r15v4 int) binds: [B:50:0x00a1, B:46:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final MultiContentMeasurePolicy columnMeasurementMultiContentHelper(Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, Alignment.Horizontal itemHorizontalAlignment, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflowState, Composer $composer, int $changed) {
        Arrangement.Vertical vertical;
        boolean z;
        Arrangement.Horizontal horizontal;
        boolean z2;
        int i;
        boolean z3;
        int i2;
        boolean invalid$iv;
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -308635847, "C(columnMeasurementMultiContentHelper)N(verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInMainAxis,maxLines,overflowState)529@21138L715:FlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-308635847, $changed, -1, "androidx.compose.foundation.layout.columnMeasurementMultiContentHelper (FlowLayout.kt:528)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -246294460, "CC(remember):FlowLayout.kt#9igjgp");
        boolean z4 = false;
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
                boolean z5 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemHorizontalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if ((($changed & 7168) ^ 3072) > 2048) {
                    i = maxItemsInMainAxis;
                    if ($composer.changed(i)) {
                        z3 = true;
                    }
                    boolean z6 = z5 | z3;
                    if (((57344 & $changed) ^ 24576) <= 16384) {
                        i2 = maxLines;
                        if ($composer.changed(i2)) {
                            z4 = true;
                        }
                        invalid$iv = z6 | z4 | $composer.changed(overflowState);
                        value$iv = $composer.rememberedValue();
                        if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv = new FlowMeasurePolicy(false, horizontal, vertical, vertical.getSpacing(), CrossAxisAlignment.INSTANCE.horizontal$foundation_layout(itemHorizontalAlignment), horizontal.getSpacing(), i, i2, overflowState, null);
                            $composer.updateRememberedValue(value$iv);
                        }
                        FlowMeasurePolicy flowMeasurePolicy = (FlowMeasurePolicy) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return flowMeasurePolicy;
                    }
                    i2 = maxLines;
                    if (($changed & 24576) == 16384) {
                    }
                    invalid$iv = z6 | z4 | $composer.changed(overflowState);
                    value$iv = $composer.rememberedValue();
                    if (invalid$iv) {
                        value$iv = new FlowMeasurePolicy(false, horizontal, vertical, vertical.getSpacing(), CrossAxisAlignment.INSTANCE.horizontal$foundation_layout(itemHorizontalAlignment), horizontal.getSpacing(), i, i2, overflowState, null);
                        $composer.updateRememberedValue(value$iv);
                    }
                    FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return flowMeasurePolicy2;
                }
                i = maxItemsInMainAxis;
                if (($changed & 3072) != 2048) {
                    z3 = false;
                }
                boolean z62 = z5 | z3;
                if (((57344 & $changed) ^ 24576) <= 16384) {
                }
                if (($changed & 24576) == 16384) {
                }
                invalid$iv = z62 | z4 | $composer.changed(overflowState);
                value$iv = $composer.rememberedValue();
                if (invalid$iv) {
                }
                FlowMeasurePolicy flowMeasurePolicy22 = (FlowMeasurePolicy) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return flowMeasurePolicy22;
            }
            horizontal = horizontalArrangement;
            if (($changed & 48) == 32) {
                z2 = false;
            }
            boolean z52 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemHorizontalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            if ((($changed & 7168) ^ 3072) > 2048) {
            }
            if (($changed & 3072) != 2048) {
            }
            boolean z622 = z52 | z3;
            if (((57344 & $changed) ^ 24576) <= 16384) {
            }
            if (($changed & 24576) == 16384) {
            }
            invalid$iv = z622 | z4 | $composer.changed(overflowState);
            value$iv = $composer.rememberedValue();
            if (invalid$iv) {
            }
            FlowMeasurePolicy flowMeasurePolicy222 = (FlowMeasurePolicy) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return flowMeasurePolicy222;
        }
        vertical = verticalArrangement;
        if (($changed & 6) != 4) {
            z = false;
        }
        if ((($changed & 112) ^ 48) <= 32) {
        }
        if (($changed & 48) == 32) {
        }
        boolean z522 = z | z2 | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(itemHorizontalAlignment)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        if ((($changed & 7168) ^ 3072) > 2048) {
        }
        if (($changed & 3072) != 2048) {
        }
        boolean z6222 = z522 | z3;
        if (((57344 & $changed) ^ 24576) <= 16384) {
        }
        if (($changed & 24576) == 16384) {
        }
        invalid$iv = z6222 | z4 | $composer.changed(overflowState);
        value$iv = $composer.rememberedValue();
        if (invalid$iv) {
        }
        FlowMeasurePolicy flowMeasurePolicy2222 = (FlowMeasurePolicy) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return flowMeasurePolicy2222;
    }

    private static final int maxIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, int crossAxisAvailable, int mainAxisSpacing, int maxItemsInMainAxis) {
        int $i$f$maxIntrinsicMainAxisSize;
        int $i$f$maxIntrinsicMainAxisSize2 = 0;
        int fixedSpace = 0;
        int currentFixedSpace = 0;
        int lastBreak = 0;
        int index$iv = 0;
        int size = list.size();
        while (index$iv < size) {
            Object item$iv = list.get(index$iv);
            IntrinsicMeasurable child = (IntrinsicMeasurable) item$iv;
            int index = index$iv;
            int size2 = function3.invoke(child, Integer.valueOf(index), Integer.valueOf(crossAxisAvailable)).intValue() + mainAxisSpacing;
            if ((index + 1) - lastBreak == maxItemsInMainAxis) {
                $i$f$maxIntrinsicMainAxisSize = $i$f$maxIntrinsicMainAxisSize2;
            } else {
                int i = index + 1;
                $i$f$maxIntrinsicMainAxisSize = $i$f$maxIntrinsicMainAxisSize2;
                int $i$f$maxIntrinsicMainAxisSize3 = list.size();
                if (i != $i$f$maxIntrinsicMainAxisSize3) {
                    currentFixedSpace += size2;
                }
                index$iv++;
                $i$f$maxIntrinsicMainAxisSize2 = $i$f$maxIntrinsicMainAxisSize;
            }
            fixedSpace = Math.max(fixedSpace, (currentFixedSpace + size2) - mainAxisSpacing);
            currentFixedSpace = 0;
            lastBreak = index;
            index$iv++;
            $i$f$maxIntrinsicMainAxisSize2 = $i$f$maxIntrinsicMainAxisSize;
        }
        return fixedSpace;
    }

    private static final int minIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function32, int crossAxisAvailable, int mainAxisSpacing, int crossAxisSpacing, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        int[] mainAxisSizes;
        int i = maxItemsInMainAxis;
        int i2 = maxLines;
        int high = 0;
        if (list.isEmpty()) {
            return 0;
        }
        int[] mainAxisSizes2 = new int[list.size()];
        int[] crossAxisSizes = new int[list.size()];
        int size = list.size();
        for (int index = 0; index < size; index++) {
            IntrinsicMeasurable child = list.get(index);
            int mainAxisItemSize = function3.invoke(child, Integer.valueOf(index), Integer.valueOf(crossAxisAvailable)).intValue();
            mainAxisSizes2[index] = mainAxisItemSize;
            crossAxisSizes[index] = function32.invoke(child, Integer.valueOf(index), Integer.valueOf(mainAxisItemSize)).intValue();
        }
        int maxItemsThatCanBeShown = Integer.MAX_VALUE;
        if (i2 != Integer.MAX_VALUE && i != Integer.MAX_VALUE) {
            maxItemsThatCanBeShown = i * i2;
        }
        int i3 = 1;
        boolean mustHaveEllipsis = (maxItemsThatCanBeShown >= list.size() || !(overflow.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandIndicator || overflow.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) ? maxItemsThatCanBeShown >= list.size() && i2 >= overflow.getMinLinesToShowCollapse$foundation_layout() && overflow.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator : true;
        int maxItemsThatCanBeShown2 = Math.min(maxItemsThatCanBeShown - (mustHaveEllipsis ? 1 : 0), list.size());
        int $this$minIntrinsicMainAxisSize_u24lambda_u240 = ArraysKt.sum(mainAxisSizes2);
        int maxMainAxisSize = ((list.size() - 1) * mainAxisSpacing) + $this$minIntrinsicMainAxisSize_u24lambda_u240;
        int itemShown = maxMainAxisSize;
        if (crossAxisSizes.length == 0) {
            throw new NoSuchElementException();
        }
        int crossAxisUsed = crossAxisSizes[0];
        int lastIndex = ArraysKt.getLastIndex(crossAxisSizes);
        if (1 <= lastIndex) {
            while (true) {
                int it = crossAxisSizes[i3];
                if (crossAxisUsed < it) {
                    crossAxisUsed = it;
                }
                if (i3 == lastIndex) {
                    break;
                }
                i3++;
            }
        }
        if (mainAxisSizes2.length == 0) {
            throw new NoSuchElementException();
        }
        int crossAxisUsed2 = mainAxisSizes2[0];
        int lastIndex2 = ArraysKt.getLastIndex(mainAxisSizes2);
        int i4 = 1;
        if (1 <= lastIndex2) {
            while (true) {
                mainAxisSizes = mainAxisSizes2;
                int it2 = mainAxisSizes[i4];
                if (crossAxisUsed2 < it2) {
                    crossAxisUsed2 = it2;
                }
                if (i4 == lastIndex2) {
                    break;
                }
                i4++;
                mainAxisSizes2 = mainAxisSizes;
            }
        } else {
            mainAxisSizes = mainAxisSizes2;
        }
        int high2 = maxMainAxisSize;
        int crossAxisUsed3 = crossAxisUsed;
        while (crossAxisUsed2 <= high2) {
            if (crossAxisUsed3 == crossAxisAvailable) {
                return itemShown;
            }
            int mid = (crossAxisUsed2 + high2) / 2;
            int[] crossAxisSizes2 = crossAxisSizes;
            int $i$f$minIntrinsicMainAxisSize = high;
            int $i$f$minIntrinsicMainAxisSize2 = high2;
            int[] mainAxisSizes3 = mainAxisSizes;
            int low = crossAxisUsed2;
            long pair = intrinsicCrossAxisSize(list, mainAxisSizes3, crossAxisSizes2, mid, mainAxisSpacing, crossAxisSpacing, i, i2, overflow);
            int crossAxisUsed4 = IntIntPair.m28getFirstimpl(pair);
            int itemShown2 = IntIntPair.m29getSecondimpl(pair);
            if (crossAxisUsed4 > crossAxisAvailable || itemShown2 < maxItemsThatCanBeShown2) {
                int low2 = mid + 1;
                if (low2 > $i$f$minIntrinsicMainAxisSize2) {
                    return low2;
                }
                i = maxItemsInMainAxis;
                i2 = maxLines;
                mainAxisSizes = mainAxisSizes3;
                itemShown = mid;
                high2 = $i$f$minIntrinsicMainAxisSize2;
                high = $i$f$minIntrinsicMainAxisSize;
                crossAxisSizes = crossAxisSizes2;
                crossAxisUsed3 = crossAxisUsed4;
                crossAxisUsed2 = low2;
            } else {
                if (crossAxisUsed4 >= crossAxisAvailable) {
                    return mid;
                }
                i = maxItemsInMainAxis;
                i2 = maxLines;
                itemShown = mid;
                high = $i$f$minIntrinsicMainAxisSize;
                crossAxisSizes = crossAxisSizes2;
                crossAxisUsed3 = crossAxisUsed4;
                crossAxisUsed2 = low;
                mainAxisSizes = mainAxisSizes3;
                high2 = mid - 1;
            }
        }
        return itemShown;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, int[] mainAxisSizes, int[] crossAxisSizes, int mainAxisAvailable, int mainAxisSpacing, int crossAxisSpacing, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        int noOfItemsShown$iv;
        int index$iv;
        boolean z;
        int currentCrossAxisSize$iv;
        int maxItemsInMainAxis$iv = maxItemsInMainAxis;
        if (list.isEmpty()) {
            return IntIntPair.m24constructorimpl(0, 0);
        }
        FlowLayoutBuildingBlocks buildingBlocks$iv = new FlowLayoutBuildingBlocks(maxItemsInMainAxis$iv, overflow, OrientationIndependentConstraints.m785constructorimpl(0, mainAxisAvailable, 0, Integer.MAX_VALUE), maxLines, mainAxisSpacing, crossAxisSpacing, null);
        IntrinsicMeasurable nextChild$iv = (IntrinsicMeasurable) CollectionsKt.getOrNull(list, 0);
        int index = nextChild$iv != null ? crossAxisSizes[0] : 0;
        int index2 = nextChild$iv != null ? mainAxisSizes[0] : 0;
        int remaining$iv = mainAxisAvailable;
        int totalCrossAxisSize$iv = 0;
        if (buildingBlocks$iv.m735getWrapInfoOpUlnko(list.size() > 1, 0, IntIntPair.m24constructorimpl(remaining$iv, Integer.MAX_VALUE), nextChild$iv == null ? null : IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(index2, index)), 0, 0, 0, false, false).getIsLastItemInContainer()) {
            IntIntPair intIntPairM743ellipsisSizeF35zmw$foundation_layout = overflow.m743ellipsisSizeF35zmw$foundation_layout(nextChild$iv != null, 0, 0);
            int size$iv = intIntPairM743ellipsisSizeF35zmw$foundation_layout != null ? IntIntPair.m29getSecondimpl(intIntPairM743ellipsisSizeF35zmw$foundation_layout.getPackedValue()) : 0;
            return IntIntPair.m24constructorimpl(size$iv, 0);
        }
        int currentCrossAxisSize$iv2 = 0;
        int size = list.size();
        int currentCrossAxisSize$iv3 = 0;
        int lastBreak$iv = 0;
        int index$iv2 = 0;
        int remaining$iv2 = 0;
        while (true) {
            if (index$iv2 >= size) {
                noOfItemsShown$iv = currentCrossAxisSize$iv2;
                break;
            }
            int childCrossAxisSize$iv = index;
            int childMainAxisSize$iv = index2;
            remaining$iv -= childMainAxisSize$iv;
            int noOfItemsShown$iv2 = index$iv2 + 1;
            int currentCrossAxisSize$iv4 = Math.max(currentCrossAxisSize$iv3, childCrossAxisSize$iv);
            int currentCrossAxisSize$iv5 = index$iv2 + 1;
            IntrinsicMeasurable nextChild$iv2 = (IntrinsicMeasurable) CollectionsKt.getOrNull(list, currentCrossAxisSize$iv5);
            index = nextChild$iv2 != null ? crossAxisSizes[index$iv2 + 1] : 0;
            index2 = nextChild$iv2 != null ? mainAxisSizes[index$iv2 + 1] + mainAxisSpacing : 0;
            int childCrossAxisSize$iv2 = index$iv2 + 2;
            int maxItemsInMainAxis$iv2 = maxItemsInMainAxis$iv;
            if (childCrossAxisSize$iv2 < list.size()) {
                index$iv = index$iv2;
                z = true;
            } else {
                index$iv = index$iv2;
                z = false;
            }
            int lineIndex$iv = remaining$iv2;
            FlowLayoutBuildingBlocks.WrapInfo wrapInfo$iv = buildingBlocks$iv.m735getWrapInfoOpUlnko(z, (index$iv + 1) - lastBreak$iv, IntIntPair.m24constructorimpl(remaining$iv, Integer.MAX_VALUE), nextChild$iv2 == null ? null : IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(index2, index)), lineIndex$iv, totalCrossAxisSize$iv, currentCrossAxisSize$iv4, false, false);
            if (wrapInfo$iv.getIsLastItemInLine()) {
                int totalCrossAxisSize$iv2 = totalCrossAxisSize$iv + currentCrossAxisSize$iv4 + crossAxisSpacing;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo ellipsisWrapInfo$iv = buildingBlocks$iv.getWrapEllipsisInfo(wrapInfo$iv, nextChild$iv2 != null, lineIndex$iv, totalCrossAxisSize$iv2, remaining$iv, (index$iv + 1) - lastBreak$iv);
                currentCrossAxisSize$iv = 0;
                lastBreak$iv = index$iv + 1;
                index2 -= mainAxisSpacing;
                int lineIndex$iv2 = lineIndex$iv + 1;
                if (wrapInfo$iv.getIsLastItemInContainer()) {
                    if (ellipsisWrapInfo$iv != null) {
                        long it$iv = ellipsisWrapInfo$iv.getEllipsisSize();
                        if (!ellipsisWrapInfo$iv.getPlaceEllipsisOnLastContentLine()) {
                            totalCrossAxisSize$iv2 += IntIntPair.m29getSecondimpl(it$iv) + crossAxisSpacing;
                        }
                    }
                    totalCrossAxisSize$iv = totalCrossAxisSize$iv2;
                    noOfItemsShown$iv = noOfItemsShown$iv2;
                } else {
                    remaining$iv = mainAxisAvailable;
                    totalCrossAxisSize$iv = totalCrossAxisSize$iv2;
                    remaining$iv2 = lineIndex$iv2;
                }
            } else {
                remaining$iv2 = lineIndex$iv;
                currentCrossAxisSize$iv = currentCrossAxisSize$iv4;
            }
            maxItemsInMainAxis$iv = maxItemsInMainAxis$iv2;
            index$iv2 = index$iv + 1;
            nextChild$iv = nextChild$iv2;
            currentCrossAxisSize$iv3 = currentCrossAxisSize$iv;
            currentCrossAxisSize$iv2 = noOfItemsShown$iv2;
        }
        return IntIntPair.m24constructorimpl(totalCrossAxisSize$iv - crossAxisSpacing, noOfItemsShown$iv);
    }

    private static final long intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function32, int mainAxisAvailable, int mainAxisSpacing, int crossAxisSpacing, int maxItemsInMainAxis, int maxLines, FlowLayoutOverflowState overflow) {
        IntIntPair intIntPairM21boximpl;
        int remaining;
        List<? extends IntrinsicMeasurable> list2 = list;
        Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function33 = function3;
        if (list2.isEmpty()) {
            return IntIntPair.m24constructorimpl(0, 0);
        }
        FlowLayoutBuildingBlocks buildingBlocks = new FlowLayoutBuildingBlocks(maxItemsInMainAxis, overflow, OrientationIndependentConstraints.m785constructorimpl(0, mainAxisAvailable, 0, Integer.MAX_VALUE), maxLines, mainAxisSpacing, crossAxisSpacing, null);
        IntrinsicMeasurable nextChild = (IntrinsicMeasurable) CollectionsKt.getOrNull(list2, 0);
        int nextCrossAxisSize = nextChild != null ? function32.invoke(nextChild, 0, Integer.valueOf(mainAxisAvailable)).intValue() : 0;
        int nextMainAxisSize = nextChild != null ? function33.invoke(nextChild, 0, Integer.valueOf(nextCrossAxisSize)).intValue() : 0;
        int totalCrossAxisSize = 0;
        int lineIndex = 0;
        int noOfItemsShown = mainAxisAvailable;
        int nextCrossAxisSize2 = nextCrossAxisSize;
        if (buildingBlocks.m735getWrapInfoOpUlnko(list2.size() > 1, 0, IntIntPair.m24constructorimpl(mainAxisAvailable, Integer.MAX_VALUE), nextChild == null ? null : IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(nextMainAxisSize, nextCrossAxisSize)), 0, 0, 0, false, false).getIsLastItemInContainer()) {
            IntIntPair intIntPairM743ellipsisSizeF35zmw$foundation_layout = overflow.m743ellipsisSizeF35zmw$foundation_layout(nextChild != null, 0, 0);
            int size = intIntPairM743ellipsisSizeF35zmw$foundation_layout != null ? IntIntPair.m29getSecondimpl(intIntPairM743ellipsisSizeF35zmw$foundation_layout.getPackedValue()) : 0;
            return IntIntPair.m24constructorimpl(size, 0);
        }
        int noOfItemsShown2 = 0;
        int index = 0;
        int size2 = list2.size();
        int nextMainAxisSize2 = 0;
        int lastBreak = 0;
        int nextCrossAxisSize3 = nextCrossAxisSize2;
        while (true) {
            if (index >= size2) {
                break;
            }
            int childCrossAxisSize = nextCrossAxisSize3;
            int childMainAxisSize = nextMainAxisSize;
            int remaining2 = noOfItemsShown - childMainAxisSize;
            int remaining3 = index + 1;
            int currentCrossAxisSize = Math.max(nextMainAxisSize2, childCrossAxisSize);
            IntrinsicMeasurable nextChild2 = (IntrinsicMeasurable) CollectionsKt.getOrNull(list2, index + 1);
            int nextCrossAxisSize4 = nextChild2 != null ? function32.invoke(nextChild2, Integer.valueOf(index + 1), Integer.valueOf(mainAxisAvailable)).intValue() : 0;
            int nextMainAxisSize3 = nextChild2 != null ? function33.invoke(nextChild2, Integer.valueOf(index + 1), Integer.valueOf(nextCrossAxisSize4)).intValue() + mainAxisSpacing : 0;
            boolean z = index + 2 < list.size();
            int i = (index + 1) - lastBreak;
            int index2 = index;
            long jM24constructorimpl = IntIntPair.m24constructorimpl(remaining2, Integer.MAX_VALUE);
            if (nextChild2 == null) {
                intIntPairM21boximpl = null;
            } else {
                intIntPairM21boximpl = IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(nextMainAxisSize3, nextCrossAxisSize4));
            }
            IntIntPair intIntPair = intIntPairM21boximpl;
            int i2 = size2;
            FlowLayoutBuildingBlocks.WrapInfo wrapInfo = buildingBlocks.m735getWrapInfoOpUlnko(z, i, jM24constructorimpl, intIntPair, lineIndex, totalCrossAxisSize, currentCrossAxisSize, false, false);
            int lineIndex2 = lineIndex;
            if (!wrapInfo.getIsLastItemInLine()) {
                lineIndex = lineIndex2;
                nextMainAxisSize = nextMainAxisSize3;
                remaining = remaining2;
                nextMainAxisSize2 = currentCrossAxisSize;
            } else {
                int totalCrossAxisSize2 = totalCrossAxisSize + currentCrossAxisSize + crossAxisSpacing;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo ellipsisWrapInfo = buildingBlocks.getWrapEllipsisInfo(wrapInfo, nextChild2 != null, lineIndex2, totalCrossAxisSize2, remaining2, (index2 + 1) - lastBreak);
                remaining = mainAxisAvailable;
                lastBreak = index2 + 1;
                int nextMainAxisSize4 = nextMainAxisSize3 - mainAxisSpacing;
                lineIndex = lineIndex2 + 1;
                if (!wrapInfo.getIsLastItemInContainer()) {
                    nextMainAxisSize = nextMainAxisSize4;
                    nextMainAxisSize2 = 0;
                    totalCrossAxisSize = totalCrossAxisSize2;
                } else {
                    if (ellipsisWrapInfo != null) {
                        long it = ellipsisWrapInfo.getEllipsisSize();
                        if (!ellipsisWrapInfo.getPlaceEllipsisOnLastContentLine()) {
                            totalCrossAxisSize2 += IntIntPair.m29getSecondimpl(it) + crossAxisSpacing;
                        }
                    }
                    totalCrossAxisSize = totalCrossAxisSize2;
                    noOfItemsShown2 = remaining3;
                }
            }
            index = index2 + 1;
            noOfItemsShown2 = remaining3;
            size2 = i2;
            function33 = function3;
            nextCrossAxisSize3 = nextCrossAxisSize4;
            noOfItemsShown = remaining;
            list2 = list;
        }
        return IntIntPair.m24constructorimpl(totalCrossAxisSize - crossAxisSpacing, noOfItemsShown2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.layout.Placeable[]] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r8v10, types: [androidx.compose.ui.layout.Placeable[]] */
    /* JADX INFO: renamed from: breakDownItems-di9J0FM, reason: not valid java name */
    public static final MeasureResult m738breakDownItemsdi9J0FM(MeasureScope measureScope, FlowLineMeasurePolicy flowLineMeasurePolicy, Iterator<? extends Measurable> it, float f, float f2, long j, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState) {
        int i3;
        int i4;
        int i5;
        FlowLineInfo flowLineInfo;
        int i6;
        final Ref.ObjectRef objectRef;
        Measurable measurable;
        IntIntPair intIntPairM21boximpl;
        int i7;
        int i8;
        ArrayList arrayList;
        int i9;
        int i10;
        int[] iArr;
        MutableIntList mutableIntList;
        int iM7457getMaxHeightimpl;
        int i11;
        int i12;
        int i13;
        int i14;
        IntIntPair intIntPairM21boximpl2;
        FlowLineInfo flowLineInfo2;
        MutableIntSet mutableIntSet;
        MutableIntList mutableIntList2;
        int i15;
        MutableIntList mutableIntList3;
        int i16;
        int i17;
        int i18;
        FlowLayoutData flowLayoutData;
        MutableVector mutableVector = new MutableVector(new MeasureResult[16], 0);
        int iM7458getMaxWidthimpl = Constraints.m7458getMaxWidthimpl(j);
        int iM7460getMinWidthimpl = Constraints.m7460getMinWidthimpl(j);
        int iM7457getMaxHeightimpl2 = Constraints.m7457getMaxHeightimpl(j);
        MutableIntObjectMap mutableIntObjectMapMutableIntObjectMapOf = IntObjectMapKt.mutableIntObjectMapOf();
        ArrayList arrayList2 = new ArrayList();
        int iCeil = (int) Math.ceil(measureScope.mo405toPx0680j_4(f));
        int iCeil2 = (int) Math.ceil(measureScope.mo405toPx0680j_4(f2));
        long jM785constructorimpl = OrientationIndependentConstraints.m785constructorimpl(0, iM7458getMaxWidthimpl, 0, iM7457getMaxHeightimpl2);
        long jM800toBoxConstraintsOenEA2s = OrientationIndependentConstraints.m800toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m788copyyUG9Ft0(jM785constructorimpl, (10 & 1) != 0 ? Constraints.m7460getMinWidthimpl(jM785constructorimpl) : 0, (10 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(jM785constructorimpl) : 0, (10 & 4) != 0 ? Constraints.m7459getMinHeightimpl(jM785constructorimpl) : 0, (10 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(jM785constructorimpl) : 0), flowLineMeasurePolicy.isHorizontal() ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        if (it instanceof ContextualFlowItemIterator) {
            i3 = iM7458getMaxWidthimpl;
            i4 = iM7457getMaxHeightimpl2;
            flowLineInfo = new FlowLineInfo(0, 0, measureScope.mo402toDpu2uoSUM(i3), measureScope.mo402toDpu2uoSUM(i4), null);
            i5 = 0;
        } else {
            i3 = iM7458getMaxWidthimpl;
            i4 = iM7457getMaxHeightimpl2;
            i5 = 0;
            flowLineInfo = null;
        }
        MutableVector mutableVector2 = mutableVector;
        FlowLineInfo flowLineInfo3 = flowLineInfo;
        Measurable measurableSafeNext = !it.hasNext() ? null : safeNext(it, flowLineInfo3);
        if (measurableSafeNext != null) {
            i6 = iCeil;
            objectRef = objectRef2;
            measurable = measurableSafeNext;
            intIntPairM21boximpl = IntIntPair.m21boximpl(m739measureAndCacherqJ1uqs(measurable, flowLineMeasurePolicy, jM800toBoxConstraintsOenEA2s, new Function1() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FlowLayoutKt.breakDownItems_di9J0FM$lambda$0$0(objectRef, (Placeable) obj);
                }
            }));
        } else {
            i6 = iCeil;
            objectRef = objectRef2;
            measurable = measurableSafeNext;
            intIntPairM21boximpl = null;
        }
        IntIntPair intIntPair = intIntPairM21boximpl;
        Integer numValueOf = intIntPair != null ? Integer.valueOf(IntIntPair.m28getFirstimpl(intIntPair.getPackedValue())) : null;
        Integer numValueOf2 = intIntPair != null ? Integer.valueOf(IntIntPair.m29getSecondimpl(intIntPair.getPackedValue())) : null;
        int i19 = 0;
        Integer num = numValueOf;
        Measurable measurable2 = measurable;
        MutableIntList mutableIntList4 = new MutableIntList(0, 1, null);
        MutableIntList mutableIntList5 = new MutableIntList(0, 1, null);
        MutableIntSet mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
        FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i, flowLayoutOverflowState, j, i2, i6, iCeil2, null);
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo = null;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfoM735getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m735getWrapInfoOpUlnko(it.hasNext(), 0, IntIntPair.m24constructorimpl(i3, i4), intIntPair, 0, 0, 0, false, false);
        if (wrapInfoM735getWrapInfoOpUlnko.getIsLastItemInContainer()) {
            i7 = i3;
            wrapEllipsisInfo = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM735getWrapInfoOpUlnko, intIntPair != null, -1, 0, i7, 0);
        } else {
            i7 = i3;
        }
        int i20 = 0;
        boolean z = false;
        int i21 = i4;
        int i22 = iM7460getMinWidthimpl;
        int i23 = 0;
        int i24 = i5;
        int i25 = 0;
        char c = 1;
        int i26 = 0;
        MutableIntSet mutableIntSet2 = mutableIntSetMutableIntSetOf;
        Measurable measurableSafeNext2 = measurable2;
        while (!wrapInfoM735getWrapInfoOpUlnko.getIsLastItemInContainer() && measurableSafeNext2 != null) {
            Intrinsics.checkNotNull(num);
            int iIntValue = num.intValue();
            Intrinsics.checkNotNull(numValueOf2);
            MutableIntList mutableIntList6 = mutableIntList5;
            int i27 = iM7458getMaxWidthimpl;
            int i28 = i20 + iIntValue;
            int iMax = Math.max(i26, numValueOf2.intValue());
            int i29 = i7 - iIntValue;
            flowLayoutOverflowState.setItemShown$foundation_layout(i25 + 1);
            arrayList2.add(measurableSafeNext2);
            mutableIntObjectMapMutableIntObjectMapOf.set(i25, objectRef.element);
            Object parentData = measurableSafeNext2.getParentData();
            RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
            if (((rowColumnParentData == null || (flowLayoutData = rowColumnParentData.getFlowLayoutData()) == null) ? null : Float.valueOf(flowLayoutData.getFillCrossAxisFraction())) != null) {
                z = true;
            }
            int i30 = (i25 + 1) - i19;
            boolean z2 = i30 < i;
            if (flowLineInfo3 != null) {
                if (z2) {
                    i13 = i30;
                    i16 = i24;
                } else {
                    i13 = i30;
                    i16 = i24 + 1;
                }
                int i31 = z2 ? i13 : 0;
                if (z2) {
                    int i32 = i29 - i6;
                    i17 = i32 < 0 ? 0 : i32;
                } else {
                    i17 = i27;
                }
                float f3 = measureScope.mo402toDpu2uoSUM(i17);
                if (z2) {
                    i14 = i25;
                    i18 = i21;
                } else {
                    int i33 = (i21 - iMax) - iCeil2;
                    i14 = i25;
                    i18 = i33 < 0 ? 0 : i33;
                }
                flowLineInfo3.m751update4j6BHR0$foundation_layout(i16, i31, f3, measureScope.mo402toDpu2uoSUM(i18));
                Unit unit = Unit.INSTANCE;
            } else {
                i13 = i30;
                i14 = i25;
            }
            measurableSafeNext2 = !it.hasNext() ? null : safeNext(it, flowLineInfo3);
            objectRef.element = null;
            IntIntPair intIntPairM21boximpl3 = measurableSafeNext2 != null ? IntIntPair.m21boximpl(m739measureAndCacherqJ1uqs(measurableSafeNext2, flowLineMeasurePolicy, jM800toBoxConstraintsOenEA2s, new Function1() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FlowLayoutKt.breakDownItems_di9J0FM$lambda$2$0(objectRef, (Placeable) obj);
                }
            })) : null;
            Integer numValueOf3 = intIntPairM21boximpl3 != null ? Integer.valueOf(IntIntPair.m28getFirstimpl(intIntPairM21boximpl3.getPackedValue()) + i6) : null;
            numValueOf2 = intIntPairM21boximpl3 != null ? Integer.valueOf(IntIntPair.m29getSecondimpl(intIntPairM21boximpl3.getPackedValue())) : null;
            boolean zHasNext = it.hasNext();
            long jM24constructorimpl = IntIntPair.m24constructorimpl(i29, i21);
            if (intIntPairM21boximpl3 == null) {
                intIntPairM21boximpl2 = null;
            } else {
                Intrinsics.checkNotNull(numValueOf3);
                int iIntValue2 = numValueOf3.intValue();
                Intrinsics.checkNotNull(numValueOf2);
                intIntPairM21boximpl2 = IntIntPair.m21boximpl(IntIntPair.m24constructorimpl(iIntValue2, numValueOf2.intValue()));
            }
            FlowLayoutBuildingBlocks.WrapInfo wrapInfoM735getWrapInfoOpUlnko2 = flowLayoutBuildingBlocks.m735getWrapInfoOpUlnko(zHasNext, i13, jM24constructorimpl, intIntPairM21boximpl2, i24, i23, iMax, false, false);
            if (wrapInfoM735getWrapInfoOpUlnko2.getIsLastItemInLine()) {
                Integer num2 = numValueOf3;
                int iMin = Math.min(Math.max(i22, i28), i27);
                int i34 = i23 + iMax;
                int i35 = i24;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo2 = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM735getWrapInfoOpUlnko2, intIntPairM21boximpl3 != null, i35, i34, i29, (i14 + 1) - i19);
                i27 = i27;
                mutableIntList3 = mutableIntList6;
                mutableIntList3.add(iMax);
                if (z) {
                    flowLineInfo2 = flowLineInfo3;
                    mutableIntSet = mutableIntSet2;
                    mutableIntSet.plusAssign(i35);
                } else {
                    flowLineInfo2 = flowLineInfo3;
                    mutableIntSet = mutableIntSet2;
                }
                int i36 = (iM7457getMaxHeightimpl2 - i34) - iCeil2;
                int i37 = i14 + 1;
                mutableIntList2 = mutableIntList4;
                mutableIntList2.add(i14 + 1);
                Integer numValueOf4 = num2 != null ? Integer.valueOf(num2.intValue() - i6) : null;
                i24 = i35 + 1;
                i20 = 0;
                i19 = i37;
                i15 = iMin;
                i7 = i27;
                i21 = i36;
                num = numValueOf4;
                i23 = i34 + iCeil2;
                z = false;
                wrapEllipsisInfo = wrapEllipsisInfo2;
                i26 = 0;
            } else {
                flowLineInfo2 = flowLineInfo3;
                i7 = i29;
                mutableIntSet = mutableIntSet2;
                mutableIntList2 = mutableIntList4;
                Integer num3 = numValueOf3;
                i15 = i22;
                mutableIntList3 = mutableIntList6;
                num = num3;
                i26 = iMax;
                i20 = i28;
            }
            i25 = i14 + 1;
            mutableIntSet2 = mutableIntSet;
            mutableIntList4 = mutableIntList2;
            wrapInfoM735getWrapInfoOpUlnko = wrapInfoM735getWrapInfoOpUlnko2;
            flowLineInfo3 = flowLineInfo2;
            mutableIntList5 = mutableIntList3;
            i22 = i15;
            iM7458getMaxWidthimpl = i27;
        }
        int i38 = i22;
        MutableIntList mutableIntList7 = mutableIntList5;
        MutableIntSet mutableIntSet3 = mutableIntSet2;
        MutableIntList mutableIntList8 = mutableIntList4;
        if (wrapEllipsisInfo != null) {
            FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo3 = wrapEllipsisInfo;
            i8 = i38;
            arrayList2.add(wrapEllipsisInfo3.getEllipsis());
            mutableIntObjectMapMutableIntObjectMapOf.set(arrayList2.size() - 1, wrapEllipsisInfo3.getPlaceable());
            int i39 = mutableIntList8._size - 1;
            if (wrapEllipsisInfo3.getPlaceEllipsisOnLastContentLine()) {
                int i40 = mutableIntList8._size - 1;
                arrayList = arrayList2;
                mutableIntList7.set(i39, Math.max(mutableIntList7.get(i39), IntIntPair.m29getSecondimpl(wrapEllipsisInfo3.getEllipsisSize())));
                mutableIntList8.set(i40, mutableIntList8.last() + 1);
                Unit unit2 = Unit.INSTANCE;
            } else {
                arrayList = arrayList2;
                mutableIntList7.add(IntIntPair.m29getSecondimpl(wrapEllipsisInfo3.getEllipsisSize()));
                Boolean.valueOf(mutableIntList8.add(mutableIntList8.last() + 1));
            }
        } else {
            i8 = i38;
            arrayList = arrayList2;
        }
        int size = arrayList.size();
        ?? r5 = new Placeable[size];
        for (int i41 = 0; i41 < size; i41++) {
            r5[i41] = mutableIntObjectMapMutableIntObjectMapOf.get(i41);
        }
        int[] iArr2 = new int[mutableIntList8._size];
        int[] iArr3 = new int[mutableIntList8._size];
        int i42 = 0;
        MutableIntList mutableIntList9 = mutableIntList8;
        int[] iArr4 = mutableIntList9.content;
        int i43 = mutableIntList9._size;
        int i44 = 0;
        int i45 = 0;
        ?? r52 = r5;
        while (i45 < i43) {
            long j2 = jM800toBoxConstraintsOenEA2s;
            int i46 = iArr4[i45];
            int i47 = i21;
            int i48 = i45;
            int i49 = mutableIntList7.get(i48);
            if (mutableIntSet3.contains(i48)) {
                iArr = iArr2;
                mutableIntList = mutableIntList7;
                iM7457getMaxHeightimpl = i49;
            } else {
                iArr = iArr2;
                mutableIntList = mutableIntList7;
                iM7457getMaxHeightimpl = Integer.MAX_VALUE;
                if (Constraints.m7457getMaxHeightimpl(jM785constructorimpl) != Integer.MAX_VALUE) {
                    iM7457getMaxHeightimpl = Constraints.m7457getMaxHeightimpl(jM785constructorimpl) - i44;
                }
            }
            MutableIntList mutableIntList10 = mutableIntList8;
            MutableIntList mutableIntList11 = mutableIntList9;
            int i50 = iM7457getMaxHeightimpl;
            int i51 = i42;
            int i52 = i8;
            ArrayList arrayList3 = arrayList;
            MutableIntObjectMap mutableIntObjectMap = mutableIntObjectMapMutableIntObjectMapOf;
            int i53 = i26;
            ?? r8 = r52;
            int i54 = i6;
            int[] iArr5 = iArr;
            MutableIntSet mutableIntSet4 = mutableIntSet3;
            char c2 = c;
            int i55 = i43;
            MutableVector mutableVector3 = mutableVector2;
            int i56 = i45;
            MeasureResult measureResultMeasure = RowColumnMeasurePolicyKt.measure(flowLineMeasurePolicy, i52, Constraints.m7459getMinHeightimpl(jM785constructorimpl), Constraints.m7458getMaxWidthimpl(jM785constructorimpl), i50, i54, measureScope, arrayList3, r8, i51, i46, iArr5, i48);
            if (flowLineMeasurePolicy.isHorizontal()) {
                i11 = measureResultMeasure.getWidth();
                i12 = measureResultMeasure.getHeight();
            } else {
                i11 = measureResultMeasure.getHeight();
                i12 = measureResultMeasure.getWidth();
            }
            iArr3[i48] = i12;
            i44 += i12;
            int iMax2 = Math.max(i52, i11);
            mutableVector3.add(measureResultMeasure);
            i42 = i46;
            i45 = i56 + 1;
            iArr2 = iArr5;
            r52 = r8;
            mutableVector2 = mutableVector3;
            i43 = i55;
            mutableIntObjectMapMutableIntObjectMapOf = mutableIntObjectMap;
            mutableIntSet3 = mutableIntSet4;
            i26 = i53;
            i21 = i47;
            c = c2;
            mutableIntList8 = mutableIntList10;
            i8 = iMax2;
            arrayList = arrayList3;
            i6 = i54;
            mutableIntList9 = mutableIntList11;
            jM800toBoxConstraintsOenEA2s = j2;
            mutableIntList7 = mutableIntList;
        }
        char c3 = c;
        int i57 = i8;
        MutableVector mutableVector4 = mutableVector2;
        int[] iArr6 = iArr2;
        if (mutableVector4.getSize() != 0) {
            c3 = 0;
        }
        if (c3 != 0) {
            i9 = 0;
            i10 = 0;
        } else {
            i9 = i57;
            i10 = i44;
        }
        return m740placeHelperBmaY500(measureScope, j, i9, i10, iArr3, mutableVector4, flowLineMeasurePolicy, iArr6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit breakDownItems_di9J0FM$lambda$0$0(Ref.ObjectRef $placeableItem, Placeable placeable) {
        $placeableItem.element = placeable;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit breakDownItems_di9J0FM$lambda$2$0(Ref.ObjectRef $placeableItem, Placeable placeable) {
        $placeableItem.element = placeable;
        return Unit.INSTANCE;
    }

    private static final Measurable safeNext(Iterator<? extends Measurable> it, FlowLineInfo info) {
        Measurable next;
        try {
            if (it instanceof ContextualFlowItemIterator) {
                Intrinsics.checkNotNull(info);
                next = ((ContextualFlowItemIterator) it).getNext$foundation_layout(info);
            } else {
                next = it.next();
            }
            return next;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    public static final int mainAxisMin(IntrinsicMeasurable $this$mainAxisMin, boolean isHorizontal, int crossAxisSize) {
        if (isHorizontal) {
            return $this$mainAxisMin.minIntrinsicWidth(crossAxisSize);
        }
        return $this$mainAxisMin.minIntrinsicHeight(crossAxisSize);
    }

    public static final int crossAxisMin(IntrinsicMeasurable $this$crossAxisMin, boolean isHorizontal, int mainAxisSize) {
        if (isHorizontal) {
            return $this$crossAxisMin.minIntrinsicHeight(mainAxisSize);
        }
        return $this$crossAxisMin.minIntrinsicWidth(mainAxisSize);
    }

    public static final CrossAxisAlignment getCROSS_AXIS_ALIGNMENT_TOP() {
        return CROSS_AXIS_ALIGNMENT_TOP;
    }

    public static final CrossAxisAlignment getCROSS_AXIS_ALIGNMENT_START() {
        return CROSS_AXIS_ALIGNMENT_START;
    }

    /* JADX INFO: renamed from: measureAndCache-rqJ1uqs, reason: not valid java name */
    public static final long m739measureAndCacherqJ1uqs(Measurable $this$measureAndCache_u2drqJ1uqs, FlowLineMeasurePolicy measurePolicy, long j, Function1<? super Placeable, Unit> function1) {
        FlowLayoutData flowLayoutData;
        if (RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData($this$measureAndCache_u2drqJ1uqs)) == 0.0f) {
            RowColumnParentData rowColumnParentData = RowColumnImplKt.getRowColumnParentData($this$measureAndCache_u2drqJ1uqs);
            if (((rowColumnParentData == null || (flowLayoutData = rowColumnParentData.getFlowLayoutData()) == null) ? null : Float.valueOf(flowLayoutData.getFillCrossAxisFraction())) == null) {
                Placeable placeable = $this$measureAndCache_u2drqJ1uqs.mo6141measureBRTryo0(j);
                function1.invoke(placeable);
                int mainAxis = measurePolicy.mainAxisSize(placeable);
                int crossAxis = measurePolicy.crossAxisSize(placeable);
                return IntIntPair.m24constructorimpl(mainAxis, crossAxis);
            }
        }
        int mainAxis2 = mainAxisMin($this$measureAndCache_u2drqJ1uqs, measurePolicy.isHorizontal(), Integer.MAX_VALUE);
        int crossAxis2 = crossAxisMin($this$measureAndCache_u2drqJ1uqs, measurePolicy.isHorizontal(), mainAxis2);
        return IntIntPair.m24constructorimpl(mainAxis2, crossAxis2);
    }

    /* JADX INFO: renamed from: placeHelper-BmaY500, reason: not valid java name */
    public static final MeasureResult m740placeHelperBmaY500(MeasureScope $this$placeHelper_u2dBmaY500, long j, int mainAxisTotalSize, int crossAxisTotalSize, int[] crossAxisSizes, final MutableVector<MeasureResult> mutableVector, FlowLineMeasurePolicy measureHelper, int[] outPosition) {
        int maximumValue$iv$iv;
        int layoutWidth;
        int layoutHeight;
        boolean isHorizontal = measureHelper.isHorizontal();
        Arrangement.Vertical verticalArrangement = measureHelper.getVerticalArrangement();
        Arrangement.Horizontal horizontalArrangement = measureHelper.getHorizontalArrangement();
        if (isHorizontal) {
            int totalCrossAxisSpacing = $this$placeHelper_u2dBmaY500.mo399roundToPx0680j_4(verticalArrangement.getSpacing()) * (mutableVector.getSize() - 1);
            int totalCrossAxisSize = crossAxisTotalSize + totalCrossAxisSpacing;
            int minimumValue$iv = Constraints.m7459getMinHeightimpl(j);
            int iM7457getMaxHeightimpl = Constraints.m7457getMaxHeightimpl(j);
            int minimumValue$iv$iv = minimumValue$iv;
            if (totalCrossAxisSize >= minimumValue$iv$iv) {
                minimumValue$iv$iv = totalCrossAxisSize;
            }
            maximumValue$iv$iv = iM7457getMaxHeightimpl;
            if (minimumValue$iv$iv <= maximumValue$iv$iv) {
                maximumValue$iv$iv = minimumValue$iv$iv;
            }
            verticalArrangement.arrange($this$placeHelper_u2dBmaY500, maximumValue$iv$iv, crossAxisSizes, outPosition);
        } else {
            int totalCrossAxisSpacing2 = $this$placeHelper_u2dBmaY500.mo399roundToPx0680j_4(horizontalArrangement.getSpacing()) * (mutableVector.getSize() - 1);
            int totalCrossAxisSize2 = crossAxisTotalSize + totalCrossAxisSpacing2;
            int iM7459getMinHeightimpl = Constraints.m7459getMinHeightimpl(j);
            int maximumValue$iv = Constraints.m7457getMaxHeightimpl(j);
            int minimumValue$iv$iv2 = iM7459getMinHeightimpl;
            if (totalCrossAxisSize2 >= minimumValue$iv$iv2) {
                minimumValue$iv$iv2 = totalCrossAxisSize2;
            }
            int $i$f$fastCoerceAtMost = minimumValue$iv$iv2 > maximumValue$iv ? maximumValue$iv : minimumValue$iv$iv2;
            horizontalArrangement.arrange($this$placeHelper_u2dBmaY500, $i$f$fastCoerceAtMost, crossAxisSizes, $this$placeHelper_u2dBmaY500.getLayoutDirection(), outPosition);
            maximumValue$iv$iv = $i$f$fastCoerceAtMost;
        }
        int minimumValue$iv2 = Constraints.m7460getMinWidthimpl(j);
        int maximumValue$iv2 = Constraints.m7458getMaxWidthimpl(j);
        int minimumValue$iv$iv3 = minimumValue$iv2;
        if (mainAxisTotalSize >= minimumValue$iv$iv3) {
            minimumValue$iv$iv3 = mainAxisTotalSize;
        }
        int maximumValue$iv$iv2 = maximumValue$iv2;
        if (minimumValue$iv$iv3 <= maximumValue$iv$iv2) {
            maximumValue$iv$iv2 = minimumValue$iv$iv3;
        }
        int finalMainAxisTotalSize = maximumValue$iv$iv2;
        if (isHorizontal) {
            layoutWidth = finalMainAxisTotalSize;
            layoutHeight = maximumValue$iv$iv;
        } else {
            layoutWidth = maximumValue$iv$iv;
            layoutHeight = finalMainAxisTotalSize;
        }
        return MeasureScope.layout$default($this$placeHelper_u2dBmaY500, layoutWidth, layoutHeight, null, new Function1() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FlowLayoutKt.placeHelper_BmaY500$lambda$2(mutableVector, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    static final Unit placeHelper_BmaY500$lambda$2(MutableVector $items, Placeable.PlacementScope $this$layout) {
        Object[] content$iv = $items.content;
        int size$iv = $items.getSize();
        for (int i$iv = 0; i$iv < size$iv; i$iv++) {
            MeasureResult measureResult = (MeasureResult) content$iv[i$iv];
            measureResult.placeChildren();
        }
        return Unit.INSTANCE;
    }
}
