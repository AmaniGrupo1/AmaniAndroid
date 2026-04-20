package org.ies.tierno.applicationamani.domain.usecases.adminUseCase;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DarBajaPacienteUseCase.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase", f = "DarBajaPacienteUseCase.kt", i = {0}, l = {25}, m = "invoke-gIAlu-s", n = {TtmlNode.ATTR_ID}, s = {"J$0"})
final class DarBajaPacienteUseCase$invoke$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DarBajaPacienteUseCase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DarBajaPacienteUseCase$invoke$1(DarBajaPacienteUseCase darBajaPacienteUseCase, Continuation<? super DarBajaPacienteUseCase$invoke$1> continuation) {
        super(continuation);
        this.this$0 = darBajaPacienteUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10386invokegIAlus = this.this$0.m10386invokegIAlus(0L, this);
        return objM10386invokegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10386invokegIAlus : Result.m8541boximpl(objM10386invokegIAlus);
    }
}
