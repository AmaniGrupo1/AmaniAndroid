package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextPreparedSelection.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\u0019\u0010\u0015\u001a\u0015\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0016¢\u0006\u0002\b\u0017J\u0006\u0010\u0018\u001a\u00020\u0000J\u0006\u0010\u0019\u001a\u00020\u0000J\u0014\u0010\u001a\u001a\u00020\u001b*\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\r¨\u0006\u001d"}, d2 = {"Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;", "Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;", "currentValue", "Landroidx/compose/ui/text/input/TextFieldValue;", "offsetMapping", "Landroidx/compose/ui/text/input/OffsetMapping;", "layoutResultProxy", "Landroidx/compose/foundation/text/TextLayoutResultProxy;", "state", "Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;", "<init>", "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V", "getCurrentValue", "()Landroidx/compose/ui/text/input/TextFieldValue;", "getLayoutResultProxy", "()Landroidx/compose/foundation/text/TextLayoutResultProxy;", Values.VECTOR_MAP_VECTORS_KEY, "getValue", "deleteIfSelectedOr", "", "Landroidx/compose/ui/text/input/EditCommand;", "or", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "moveCursorUpByPage", "moveCursorDownByPage", "jumpByPagesOffset", "", "pagesAmount", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TextFieldPreparedSelection extends BaseTextPreparedSelection<TextFieldPreparedSelection> {
    public static final int $stable = 8;
    private final TextFieldValue currentValue;
    private final TextLayoutResultProxy layoutResultProxy;

    public /* synthetic */ TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(textFieldValue, (i & 2) != 0 ? OffsetMapping.INSTANCE.getIdentity() : offsetMapping, textLayoutResultProxy, (i & 8) != 0 ? new TextPreparedSelectionState() : textPreparedSelectionState);
    }

    public final TextFieldValue getCurrentValue() {
        return this.currentValue;
    }

    public final TextLayoutResultProxy getLayoutResultProxy() {
        return this.layoutResultProxy;
    }

    public TextFieldPreparedSelection(TextFieldValue currentValue, OffsetMapping offsetMapping, TextLayoutResultProxy layoutResultProxy, TextPreparedSelectionState state) {
        super(currentValue.getText(), currentValue.getSelection(), layoutResultProxy != null ? layoutResultProxy.getValue() : null, offsetMapping, state, null);
        this.currentValue = currentValue;
        this.layoutResultProxy = layoutResultProxy;
    }

    public final TextFieldValue getValue() {
        return TextFieldValue.m7173copy3r_uNRQ$default(this.currentValue, getAnnotatedString(), getSelection(), (TextRange) null, 4, (Object) null);
    }

    public final List<EditCommand> deleteIfSelectedOr(Function1<? super TextFieldPreparedSelection, ? extends EditCommand> or) {
        if (!TextRange.m6922getCollapsedimpl(getSelection())) {
            return CollectionsKt.listOf((Object[]) new EditCommand[]{new CommitTextCommand("", 0), new SetSelectionCommand(TextRange.m6926getMinimpl(getSelection()), TextRange.m6926getMinimpl(getSelection()))});
        }
        EditCommand it = or.invoke(this);
        if (it != null) {
            return CollectionsKt.listOf(it);
        }
        return null;
    }

    public final TextFieldPreparedSelection moveCursorUpByPage() {
        TextFieldPreparedSelection $this$moveCursorUpByPage_u24lambda_u240;
        TextLayoutResultProxy textLayoutResultProxy;
        TextFieldPreparedSelection this_$iv = this;
        if ((this_$iv.getText$foundation().length() > 0) && (textLayoutResultProxy = ($this$moveCursorUpByPage_u24lambda_u240 = this).layoutResultProxy) != null) {
            int it = $this$moveCursorUpByPage_u24lambda_u240.jumpByPagesOffset(textLayoutResultProxy, -1);
            $this$moveCursorUpByPage_u24lambda_u240.setCursor(it);
        }
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection");
        TextFieldPreparedSelection this_$iv2 = this;
        return this_$iv2;
    }

    public final TextFieldPreparedSelection moveCursorDownByPage() {
        TextFieldPreparedSelection $this$moveCursorDownByPage_u24lambda_u240;
        TextLayoutResultProxy textLayoutResultProxy;
        TextFieldPreparedSelection this_$iv = this;
        if ((this_$iv.getText$foundation().length() > 0) && (textLayoutResultProxy = ($this$moveCursorDownByPage_u24lambda_u240 = this).layoutResultProxy) != null) {
            int it = $this$moveCursorDownByPage_u24lambda_u240.jumpByPagesOffset(textLayoutResultProxy, 1);
            $this$moveCursorDownByPage_u24lambda_u240.setCursor(it);
        }
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection");
        TextFieldPreparedSelection this_$iv2 = this;
        return this_$iv2;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int jumpByPagesOffset(TextLayoutResultProxy $this$jumpByPagesOffset, int pagesAmount) {
        Rect visibleInnerTextFieldRect;
        LayoutCoordinates inner = $this$jumpByPagesOffset.getInnerTextFieldCoordinates();
        if (inner != null) {
            LayoutCoordinates decorationBoxCoordinates = $this$jumpByPagesOffset.getDecorationBoxCoordinates();
            visibleInnerTextFieldRect = decorationBoxCoordinates != null ? LayoutCoordinates.localBoundingBoxOf$default(decorationBoxCoordinates, inner, false, 2, null) : null;
            if (visibleInnerTextFieldRect == null) {
                visibleInnerTextFieldRect = Rect.INSTANCE.getZero();
            }
        }
        int currentOffset = getOffsetMapping().originalToTransformed(TextRange.m6923getEndimpl(this.currentValue.getSelection()));
        Rect currentPos = $this$jumpByPagesOffset.getValue().getCursorRect(currentOffset);
        float x = currentPos.getLeft();
        float top = currentPos.getTop();
        int bits$iv$iv$iv = (int) (visibleInnerTextFieldRect.m4485getSizeNHjbRc() & 4294967295L);
        float y = top + (Float.intBitsToFloat(bits$iv$iv$iv) * pagesAmount);
        OffsetMapping offsetMapping = getOffsetMapping();
        TextLayoutResult value = $this$jumpByPagesOffset.getValue();
        long v1$iv$iv = Float.floatToRawIntBits(x);
        int currentOffset2 = Float.floatToRawIntBits(y);
        long v2$iv$iv = currentOffset2;
        return offsetMapping.transformedToOriginal(value.m6898getOffsetForPositionk4lQ0M(Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L))));
    }
}
