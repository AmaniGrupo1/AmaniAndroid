package org.ies.tierno.applicationamani.data.repositorio;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: CitasRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository", f = "CitasRepository.kt", i = {0, 0, 0}, l = {40}, m = "getDuracion-gIAlu-s", n = {"$this$getDuracion_gIAlu_s_u24lambda_u242\\1", "idPsicologo", "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0"}, s = {"L$0", "J$0", "I$0"})
final class CitasRepository$getDuracion$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasRepository$getDuracion$1(CitasRepository citasRepository, Continuation<? super CitasRepository$getDuracion$1> continuation) {
        super(continuation);
        this.this$0 = citasRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10367getDuraciongIAlus = this.this$0.m10367getDuraciongIAlus(0L, this);
        return objM10367getDuraciongIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10367getDuraciongIAlus : Result.m8541boximpl(objM10367getDuraciongIAlus);
    }
}
