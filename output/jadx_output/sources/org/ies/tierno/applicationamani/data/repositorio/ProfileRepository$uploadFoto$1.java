package org.ies.tierno.applicationamani.data.repositorio;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ProfileRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.ProfileRepository", f = "ProfileRepository.kt", i = {0, 0}, l = {21}, m = "uploadFoto-0E7RQCE", n = {"file", TtmlNode.ATTR_ID}, s = {"L$0", "J$0"})
final class ProfileRepository$uploadFoto$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ProfileRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileRepository$uploadFoto$1(ProfileRepository profileRepository, Continuation<? super ProfileRepository$uploadFoto$1> continuation) {
        super(continuation);
        this.this$0 = profileRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10376uploadFoto0E7RQCE = this.this$0.m10376uploadFoto0E7RQCE(0L, null, this);
        return objM10376uploadFoto0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10376uploadFoto0E7RQCE : Result.m8541boximpl(objM10376uploadFoto0E7RQCE);
    }
}
