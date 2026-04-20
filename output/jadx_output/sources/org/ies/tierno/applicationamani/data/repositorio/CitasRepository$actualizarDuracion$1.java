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
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository", f = "CitasRepository.kt", i = {0, 0, 0, 0}, l = {111}, m = "actualizarDuracion-0E7RQCE", n = {"$this$actualizarDuracion_0E7RQCE_u24lambda_u2411\\1", "idPsicologo", "duracion", "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0"}, s = {"L$0", "J$0", "I$0", "I$1"})
final class CitasRepository$actualizarDuracion$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasRepository$actualizarDuracion$1(CitasRepository citasRepository, Continuation<? super CitasRepository$actualizarDuracion$1> continuation) {
        super(continuation);
        this.this$0 = citasRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10357actualizarDuracion0E7RQCE = this.this$0.m10357actualizarDuracion0E7RQCE(0L, 0, this);
        return objM10357actualizarDuracion0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10357actualizarDuracion0E7RQCE : Result.m8541boximpl(objM10357actualizarDuracion0E7RQCE);
    }
}
