package org.ies.tierno.applicationamani.data.repositorio;

import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: CitasRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository", f = "CitasRepository.kt", i = {0, 0}, l = {TsExtractor.TS_STREAM_TYPE_DTS_UHD}, m = "getTerapias-IoAF18A", n = {"$this$getTerapias_IoAF18A_u24lambda_u2413\\1", "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0"}, s = {"L$0", "I$0"})
final class CitasRepository$getTerapias$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasRepository$getTerapias$1(CitasRepository citasRepository, Continuation<? super CitasRepository$getTerapias$1> continuation) {
        super(continuation);
        this.this$0 = citasRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10370getTerapiasIoAF18A = this.this$0.m10370getTerapiasIoAF18A(this);
        return objM10370getTerapiasIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10370getTerapiasIoAF18A : Result.m8541boximpl(objM10370getTerapiasIoAF18A);
    }
}
