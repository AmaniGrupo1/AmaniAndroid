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
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository", f = "CitasRepository.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, l = {81}, m = "crearCitaPsicologo-eH_QyT8", n = {"fecha", "hora", "motivo", "$this$crearCitaPsicologo_eH_QyT8_u24lambda_u245\\1", "request\\1", "idPsicologo", "idPaciente", "duracionMinutos", "idTipoTerapia", "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "J$1", "I$0", "J$2", "I$1"})
final class CitasRepository$crearCitaPsicologo$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    long J$0;
    long J$1;
    long J$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasRepository$crearCitaPsicologo$1(CitasRepository citasRepository, Continuation<? super CitasRepository$crearCitaPsicologo$1> continuation) {
        super(continuation);
        this.this$0 = citasRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10362crearCitaPsicologoeH_QyT8 = this.this$0.m10362crearCitaPsicologoeH_QyT8(0L, 0L, null, null, 0, null, 0L, this);
        return objM10362crearCitaPsicologoeH_QyT8 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10362crearCitaPsicologoeH_QyT8 : Result.m8541boximpl(objM10362crearCitaPsicologoeH_QyT8);
    }
}
