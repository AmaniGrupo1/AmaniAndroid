package androidx.compose.material3;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ExpressiveNavigationBar.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\r"}, d2 = {"Landroidx/compose/material3/CenteredContentMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "()V", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class CenteredContentMeasurePolicy implements MeasurePolicy {
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo41measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, List<? extends Measurable> list, long constraints) {
        int width;
        final List itemsPlaceables;
        int width2;
        int width3 = Constraints.m7458getMaxWidthimpl(constraints);
        int itemHeight = Constraints.m7459getMinHeightimpl(constraints);
        int itemsCount = list.size();
        if (itemsCount < 1) {
            return MeasureScope.layout$default($this$measure_u2d3p2s80s, width3, itemHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.CenteredContentMeasurePolicy$measure$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable.PlacementScope $this$layout) {
                }
            }, 4, null);
        }
        final Ref.IntRef barHorizontalPadding = new Ref.IntRef();
        List itemsPlaceables2 = null;
        if (Constraints.m7454getHasBoundedWidthimpl(constraints)) {
            int itemMaxWidth = width3 / itemsCount;
            barHorizontalPadding.element = ExpressiveNavigationBarKt.calculateCenteredContentHorizontalPadding(itemsCount, width3);
            int itemMinWidth = (width3 - (barHorizontalPadding.element * 2)) / itemsCount;
            int index$iv = 0;
            int size = list.size();
            while (index$iv < size) {
                Object item$iv = list.get(index$iv);
                int measurableHeight = ((Measurable) item$iv).maxIntrinsicHeight(itemMinWidth);
                if (itemHeight >= measurableHeight) {
                    width2 = width3;
                } else {
                    width2 = width3;
                    itemHeight = RangesKt.coerceAtMost(measurableHeight, Constraints.m7457getMaxHeightimpl(constraints));
                }
                index$iv++;
                width3 = width2;
            }
            width = width3;
            List<? extends Measurable> list2 = list;
            int $i$f$fastMap = 0;
            ArrayList target$iv = new ArrayList(list2.size());
            List<? extends Measurable> list3 = list2;
            int index$iv$iv = 0;
            int size2 = list3.size();
            while (index$iv$iv < size2) {
                Object item$iv$iv = list3.get(index$iv$iv);
                List<? extends Measurable> list4 = list2;
                ArrayList $this$fastMap$iv = target$iv;
                ArrayList arrayList = $this$fastMap$iv;
                int itemMinWidth2 = itemMinWidth;
                Measurable it = (Measurable) item$iv$iv;
                int $i$f$fastMap2 = $i$f$fastMap;
                int $i$f$fastMap3 = Constraints.m7459getMinHeightimpl(constraints);
                int measurableWidth = it.maxIntrinsicWidth($i$f$fastMap3);
                ArrayList target$iv2 = target$iv;
                int currentItemWidth = itemMinWidth2;
                if (currentItemWidth < measurableWidth) {
                    int currentItemWidth2 = RangesKt.coerceAtMost(measurableWidth, itemMaxWidth);
                    barHorizontalPadding.element -= (currentItemWidth2 - itemMinWidth2) / 2;
                    currentItemWidth = currentItemWidth2;
                }
                arrayList.add(it.mo6141measureBRTryo0(ConstraintsKt.m7473constrainN9IONVI(constraints, Constraints.INSTANCE.m7468fixedJhjzzOo(currentItemWidth, itemHeight))));
                index$iv$iv++;
                list2 = list4;
                itemMinWidth = itemMinWidth2;
                itemMaxWidth = itemMaxWidth;
                $i$f$fastMap = $i$f$fastMap2;
                target$iv = target$iv2;
                itemsCount = itemsCount;
                list3 = list3;
            }
            itemsPlaceables = target$iv;
        } else {
            List<? extends Measurable> list5 = list;
            int $i$f$fastMap4 = 0;
            ArrayList target$iv3 = new ArrayList(list5.size());
            int index$iv$iv2 = 0;
            int size3 = list5.size();
            while (index$iv$iv2 < size3) {
                Object item$iv$iv2 = list5.get(index$iv$iv2);
                List itemsPlaceables3 = itemsPlaceables2;
                ArrayList itemsPlaceables4 = target$iv3;
                itemsPlaceables4.add(((Measurable) item$iv$iv2).mo6141measureBRTryo0(ConstraintsKt.m7473constrainN9IONVI(constraints, Constraints.INSTANCE.m7469fixedHeightOenEA2s(itemHeight))));
                index$iv$iv2++;
                itemsPlaceables2 = itemsPlaceables3;
                list5 = list5;
                $i$f$fastMap4 = $i$f$fastMap4;
                target$iv3 = target$iv3;
            }
            width = width3;
            itemsPlaceables = target$iv3;
        }
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, width, itemHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.CenteredContentMeasurePolicy$measure$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                int x = barHorizontalPadding.element;
                List<Placeable> list6 = itemsPlaceables;
                int size4 = list6.size();
                int x2 = x;
                int x3 = 0;
                while (x3 < size4) {
                    Object item$iv2 = list6.get(x3);
                    Placeable item = (Placeable) item$iv2;
                    Placeable.PlacementScope $this$layout2 = $this$layout;
                    Placeable.PlacementScope.placeRelative$default($this$layout2, item, x2, 0, 0.0f, 4, null);
                    x2 += item.getWidth();
                    x3++;
                    $this$layout = $this$layout2;
                }
            }
        }, 4, null);
    }
}
