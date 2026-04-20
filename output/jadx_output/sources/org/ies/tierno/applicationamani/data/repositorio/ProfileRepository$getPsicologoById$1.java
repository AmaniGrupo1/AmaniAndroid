package org.ies.tierno.applicationamani.data.repositorio;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ProfileRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.ProfileRepository", f = "ProfileRepository.kt", i = {0}, l = {57}, m = "getPsicologoById-gIAlu-s", n = {"idPsicologo"}, s = {"J$0"})
final class ProfileRepository$getPsicologoById$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ProfileRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileRepository$getPsicologoById$1(ProfileRepository profileRepository, Continuation<? super ProfileRepository$getPsicologoById$1> continuation) {
        super(continuation);
        this.this$0 = profileRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10374getPsicologoByIdgIAlus = this.this$0.m10374getPsicologoByIdgIAlus(0L, this);
        return objM10374getPsicologoByIdgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10374getPsicologoByIdgIAlus : Result.m8541boximpl(objM10374getPsicologoByIdgIAlus);
    }
}
