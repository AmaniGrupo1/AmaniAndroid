package org.ies.tierno.applicationamani.presentation.viewmodels.admin;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ListarPacientesViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel", f = "ListarPacientesViewModel.kt", i = {0}, l = {FirestoreIndexValueWriter.INDEX_TYPE_VECTOR}, m = "darBajaPaciente-gIAlu-s", n = {TtmlNode.ATTR_ID}, s = {"J$0"})
final class ListarPacientesViewModel$darBajaPaciente$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ListarPacientesViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListarPacientesViewModel$darBajaPaciente$1(ListarPacientesViewModel listarPacientesViewModel, Continuation<? super ListarPacientesViewModel$darBajaPaciente$1> continuation) {
        super(continuation);
        this.this$0 = listarPacientesViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10486darBajaPacientegIAlus = this.this$0.m10486darBajaPacientegIAlus(0L, this);
        return objM10486darBajaPacientegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10486darBajaPacientegIAlus : Result.m8541boximpl(objM10486darBajaPacientegIAlus);
    }
}
