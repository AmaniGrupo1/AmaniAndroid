package org.ies.tierno.applicationamani.data.repositorio;

import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: CitasRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CitasRepository", f = "CitasRepository.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1}, l = {WebSocketProtocol.PAYLOAD_SHORT, TsExtractor.TS_STREAM_TYPE_SPLICE_INFO}, m = "alternarDiaNoDisponible-bMdYcbs", n = {"fecha", "horaInicio", "horaFin", "motivo", "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1", "idPsicologo", "yaNoDisponible", "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0", "fecha", "horaInicio", "horaFin", "motivo", "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1", "request\\1", "idPsicologo", "yaNoDisponible", "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "Z$0", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "J$0", "Z$0", "I$0"})
final class CitasRepository$alternarDiaNoDisponible$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CitasRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasRepository$alternarDiaNoDisponible$1(CitasRepository citasRepository, Continuation<? super CitasRepository$alternarDiaNoDisponible$1> continuation) {
        super(continuation);
        this.this$0 = citasRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10359alternarDiaNoDisponiblebMdYcbs = this.this$0.m10359alternarDiaNoDisponiblebMdYcbs(0L, null, false, null, null, null, this);
        return objM10359alternarDiaNoDisponiblebMdYcbs == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10359alternarDiaNoDisponiblebMdYcbs : Result.m8541boximpl(objM10359alternarDiaNoDisponiblebMdYcbs);
    }
}
