package org.ies.tierno.applicationamani.domain.usecases.profileUseCase;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ProfileUseCaseGeneral.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral", f = "ProfileUseCaseGeneral.kt", i = {0, 0}, l = {18}, m = "uploadPerfil-0E7RQCE", n = {"file", TtmlNode.ATTR_ID}, s = {"L$0", "J$0"})
final class ProfileUseCaseGeneral$uploadPerfil$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ProfileUseCaseGeneral this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileUseCaseGeneral$uploadPerfil$1(ProfileUseCaseGeneral profileUseCaseGeneral, Continuation<? super ProfileUseCaseGeneral$uploadPerfil$1> continuation) {
        super(continuation);
        this.this$0 = profileUseCaseGeneral;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10397uploadPerfil0E7RQCE = this.this$0.m10397uploadPerfil0E7RQCE(0L, null, this);
        return objM10397uploadPerfil0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10397uploadPerfil0E7RQCE : Result.m8541boximpl(objM10397uploadPerfil0E7RQCE);
    }
}
