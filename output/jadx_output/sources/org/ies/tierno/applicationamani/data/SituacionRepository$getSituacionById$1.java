package org.ies.tierno.applicationamani.data;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SituacionRepositoty.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.SituacionRepository", f = "SituacionRepositoty.kt", i = {0}, l = {36}, m = "getSituacionById-gIAlu-s", n = {TtmlNode.ATTR_ID}, s = {"J$0"})
final class SituacionRepository$getSituacionById$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SituacionRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SituacionRepository$getSituacionById$1(SituacionRepository situacionRepository, Continuation<? super SituacionRepository$getSituacionById$1> continuation) {
        super(continuation);
        this.this$0 = situacionRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10334getSituacionByIdgIAlus = this.this$0.m10334getSituacionByIdgIAlus(0L, this);
        return objM10334getSituacionByIdgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10334getSituacionByIdgIAlus : Result.m8541boximpl(objM10334getSituacionByIdgIAlus);
    }
}
