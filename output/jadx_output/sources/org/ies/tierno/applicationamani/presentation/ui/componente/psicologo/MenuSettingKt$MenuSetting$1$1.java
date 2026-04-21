package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MenuSetting.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt$MenuSetting$1$1", f = "MenuSetting.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MenuSettingKt$MenuSetting$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Long $idPsicologo;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MenuSettingKt$MenuSetting$1$1(Long l, Continuation<? super MenuSettingKt$MenuSetting$1$1> continuation) {
        super(2, continuation);
        this.$idPsicologo = l;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MenuSettingKt$MenuSetting$1$1(this.$idPsicologo, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MenuSettingKt$MenuSetting$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                System.out.println((Object) ("ID Psicologo actualizado: " + this.$idPsicologo));
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
