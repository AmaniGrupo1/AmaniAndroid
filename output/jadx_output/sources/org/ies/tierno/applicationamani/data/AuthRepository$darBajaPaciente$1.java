package org.ies.tierno.applicationamani.data;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: AuthRepository.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository", f = "AuthRepository.kt", i = {0}, l = {275}, m = "darBajaPaciente-gIAlu-s", n = {TtmlNode.ATTR_ID}, s = {"J$0"})
final class AuthRepository$darBajaPaciente$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AuthRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AuthRepository$darBajaPaciente$1(AuthRepository authRepository, Continuation<? super AuthRepository$darBajaPaciente$1> continuation) {
        super(continuation);
        this.this$0 = authRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10328darBajaPacientegIAlus = this.this$0.m10328darBajaPacientegIAlus(0L, this);
        return objM10328darBajaPacientegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10328darBajaPacientegIAlus : Result.m8541boximpl(objM10328darBajaPacientegIAlus);
    }
}
