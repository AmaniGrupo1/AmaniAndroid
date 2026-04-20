package org.ies.tierno.applicationamani.presentation.viewmodels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LoginViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "esMenor", "nombre", "", "telefono", "email", "dni"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$tutorValido$1", f = "LoginViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class LoginViewModel$tutorValido$1 extends SuspendLambda implements Function6<Boolean, String, String, String, String, Continuation<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    /* synthetic */ Object L$3;
    /* synthetic */ boolean Z$0;
    int label;

    LoginViewModel$tutorValido$1(Continuation<? super LoginViewModel$tutorValido$1> continuation) {
        super(6, continuation);
    }

    @Override // kotlin.jvm.functions.Function6
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, String str, String str2, String str3, String str4, Continuation<? super Boolean> continuation) {
        return invoke(bool.booleanValue(), str, str2, str3, str4, continuation);
    }

    public final Object invoke(boolean z, String str, String str2, String str3, String str4, Continuation<? super Boolean> continuation) {
        LoginViewModel$tutorValido$1 loginViewModel$tutorValido$1 = new LoginViewModel$tutorValido$1(continuation);
        loginViewModel$tutorValido$1.Z$0 = z;
        loginViewModel$tutorValido$1.L$0 = str;
        loginViewModel$tutorValido$1.L$1 = str2;
        loginViewModel$tutorValido$1.L$2 = str3;
        loginViewModel$tutorValido$1.L$3 = str4;
        return loginViewModel$tutorValido$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        boolean esMenor = this.Z$0;
        String nombre = (String) this.L$0;
        String telefono = (String) this.L$1;
        String email = (String) this.L$2;
        String dni = (String) this.L$3;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                boolean z = true;
                if (esMenor) {
                    if (StringsKt.isBlank(nombre) || StringsKt.isBlank(telefono) || StringsKt.isBlank(email)) {
                        z = false;
                    } else {
                        if (new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(email) && !StringsKt.isBlank(dni)) {
                            if (!new Regex("^[0-9]{8}[A-Za-z]$").matches(dni)) {
                            }
                        }
                    }
                }
                return Boxing.boxBoolean(z);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
