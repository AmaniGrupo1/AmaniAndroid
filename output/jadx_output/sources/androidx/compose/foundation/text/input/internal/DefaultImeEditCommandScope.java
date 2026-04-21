package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.runtime.collection.MutableVector;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: ImeEditCommand.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\fJ\b\u0010\u0018\u001a\u00020\u0019H\u0016J!\u0010\u001a\u001a\u00020\u00162\u0017\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014¢\u0006\u0002\b\u0017H\u0016J\b\u0010\u001c\u001a\u00020\u0019H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R%\u0010\u0012\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014¢\u0006\u0002\b\u00170\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/compose/foundation/text/input/internal/DefaultImeEditCommandScope;", "Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;", "transformedTextFieldState", "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;", "<init>", "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)V", "batchDepth", "", "mapFromTransformed", "Landroidx/compose/ui/text/TextRange;", "range", "mapFromTransformed-GEjPoXI", "(J)J", "mapToTransformed", "mapToTransformed-GEjPoXI", "transformedLength", "getTransformedLength", "()I", "editCommands", "Landroidx/compose/runtime/collection/MutableVector;", "Lkotlin/Function1;", "Landroidx/compose/foundation/text/input/TextFieldBuffer;", "", "Lkotlin/ExtensionFunctionType;", "beginBatchEdit", "", "edit", "block", "endBatchEdit", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultImeEditCommandScope implements ImeEditCommandScope {
    public static final int $stable = 8;
    private int batchDepth;
    private final MutableVector<Function1<TextFieldBuffer, Unit>> editCommands = new MutableVector<>(new Function1[16], 0);
    private final TransformedTextFieldState transformedTextFieldState;

    public DefaultImeEditCommandScope(TransformedTextFieldState transformedTextFieldState) {
        this.transformedTextFieldState = transformedTextFieldState;
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    /* JADX INFO: renamed from: mapFromTransformed-GEjPoXI */
    public long mo1365mapFromTransformedGEjPoXI(long range) {
        return this.transformedTextFieldState.m1462mapFromTransformedGEjPoXI(range);
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    /* JADX INFO: renamed from: mapToTransformed-GEjPoXI */
    public long mo1366mapToTransformedGEjPoXI(long range) {
        return this.transformedTextFieldState.m1464mapToTransformedGEjPoXI(range);
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public int getTransformedLength() {
        return this.transformedTextFieldState.getVisualText().length();
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public boolean beginBatchEdit() {
        this.batchDepth++;
        return true;
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public void edit(Function1<? super TextFieldBuffer, Unit> block) {
        beginBatchEdit();
        this.editCommands.add(block);
        endBatchEdit();
    }

    @Override // androidx.compose.foundation.text.input.internal.ImeEditCommandScope
    public boolean endBatchEdit() {
        this.batchDepth--;
        if (this.batchDepth == 0) {
            if (this.editCommands.getSize() != 0) {
                TransformedTextFieldState this_$iv = this.transformedTextFieldState;
                TextFieldState $this$iv$iv = this_$iv.textFieldState;
                InputTransformation inputTransformation$iv$iv = this_$iv.inputTransformation;
                TextFieldEditUndoBehavior undoBehavior$iv$iv = TextFieldEditUndoBehavior.MergeIfPossible;
                $this$iv$iv.getMainBuffer().getChangeTracker$foundation().clearChanges();
                TextFieldBuffer $this$editUntransformedTextAsUser_u24lambda_u240$iv = $this$iv$iv.getMainBuffer();
                MutableVector<Function1<TextFieldBuffer, Unit>> mutableVector = this.editCommands;
                Object[] content$iv = mutableVector.content;
                int size$iv = mutableVector.getSize();
                for (int i$iv = 0; i$iv < size$iv; i$iv++) {
                    ((Function1) content$iv[i$iv]).invoke($this$editUntransformedTextAsUser_u24lambda_u240$iv);
                }
                this_$iv.updateWedgeAffinity($this$editUntransformedTextAsUser_u24lambda_u240$iv);
                $this$iv$iv.commitEditAsUser(inputTransformation$iv$iv, false, undoBehavior$iv$iv);
                this.editCommands.clear();
            }
        }
        return this.batchDepth > 0;
    }
}
