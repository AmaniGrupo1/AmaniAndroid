package org.ies.tierno.applicationamani.presentation.viewmodels.profile;

import android.net.Uri;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral;
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfeleResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;

/* JADX INFO: compiled from: ProfilePsicologoViewModel.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\n8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\fR\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\n8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\fR\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\n8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\f¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;", "Landroidx/lifecycle/ViewModel;", "profileUseCaseGeneral", "Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;)V", "_perfil", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;", "perfil", "Lkotlinx/coroutines/flow/StateFlow;", "getPerfil", "()Lkotlinx/coroutines/flow/StateFlow;", "_pacientesProfile", "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfeleResponseDTO;", "pacientesProfile", "getPacientesProfile", "_isLoading", "", "isLoading", "_error", "", "error", "getError", "fetchProfile", "", TtmlNode.ATTR_ID, "", "uploadFotoPerfil", "imageUri", "Landroid/net/Uri;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ProfilePsicologoViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<String> _error;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<PacienteProfeleResponseDTO> _pacientesProfile;
    private final MutableStateFlow<PsicologoProfileResponseDTO> _perfil;
    private final ProfileUseCaseGeneral profileUseCaseGeneral;

    public ProfilePsicologoViewModel(ProfileUseCaseGeneral profileUseCaseGeneral) {
        Intrinsics.checkNotNullParameter(profileUseCaseGeneral, "profileUseCaseGeneral");
        this.profileUseCaseGeneral = profileUseCaseGeneral;
        this._perfil = StateFlowKt.MutableStateFlow(null);
        this._pacientesProfile = StateFlowKt.MutableStateFlow(null);
        this._isLoading = StateFlowKt.MutableStateFlow(false);
        this._error = StateFlowKt.MutableStateFlow(null);
    }

    public final StateFlow<PsicologoProfileResponseDTO> getPerfil() {
        return this._perfil;
    }

    public final StateFlow<PacienteProfeleResponseDTO> getPacientesProfile() {
        return this._pacientesProfile;
    }

    public final StateFlow<Boolean> isLoading() {
        return this._isLoading;
    }

    public final StateFlow<String> getError() {
        return this._error;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel$fetchProfile$1, reason: invalid class name */
    /* JADX INFO: compiled from: ProfilePsicologoViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel$fetchProfile$1", f = "ProfilePsicologoViewModel.kt", i = {}, l = {36}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$id = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ProfilePsicologoViewModel.this.new AnonymousClass1(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objM10394getProfilegIAlus = ProfilePsicologoViewModel.this.profileUseCaseGeneral.m10394getProfilegIAlus(this.$id, this);
                    if (objM10394getProfilegIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = objM10394getProfilegIAlus;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    result = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ProfilePsicologoViewModel profilePsicologoViewModel = ProfilePsicologoViewModel.this;
            if (Result.m8549isSuccessimpl(result)) {
                profilePsicologoViewModel._perfil.setValue((PsicologoProfileResponseDTO) result);
                profilePsicologoViewModel._error.setValue(null);
            }
            ProfilePsicologoViewModel profilePsicologoViewModel2 = ProfilePsicologoViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = profilePsicologoViewModel2._error;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error desconocido";
                }
                mutableStateFlow.setValue(message);
            }
            ProfilePsicologoViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void fetchProfile(long id) {
        this._isLoading.setValue(true);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(id, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel$uploadFotoPerfil$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ProfilePsicologoViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel$uploadFotoPerfil$1", f = "ProfilePsicologoViewModel.kt", i = {0, 0, 0}, l = {59}, m = "invokeSuspend", n = {"file", "requestBody", "multipartBody"}, s = {"L$0", "L$1", "L$2"})
    static final class C08401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $id;
        final /* synthetic */ Uri $imageUri;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ ProfilePsicologoViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08401(Uri uri, ProfilePsicologoViewModel profilePsicologoViewModel, long j, Continuation<? super C08401> continuation) {
            super(2, continuation);
            this.$imageUri = uri;
            this.this$0 = profilePsicologoViewModel;
            this.$id = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C08401(this.$imageUri, this.this$0, this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        String path = this.$imageUri.getPath();
                        if (path == null) {
                            return Unit.INSTANCE;
                        }
                        File file = new File(path);
                        RequestBody requestBody = RequestBody.INSTANCE.create(file, MediaType.INSTANCE.parse("image/jpeg"));
                        MultipartBody.Part multipartBody = MultipartBody.Part.INSTANCE.createFormData("file", file.getName(), requestBody);
                        this.L$0 = SpillingKt.nullOutSpilledVariable(file);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(requestBody);
                        this.L$2 = SpillingKt.nullOutSpilledVariable(multipartBody);
                        this.label = 1;
                        Object objM10397uploadPerfil0E7RQCE = this.this$0.profileUseCaseGeneral.m10397uploadPerfil0E7RQCE(this.$id, multipartBody, this);
                        if (objM10397uploadPerfil0E7RQCE == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        result = objM10397uploadPerfil0E7RQCE;
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        result = ((Result) $result).getValue();
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ProfilePsicologoViewModel profilePsicologoViewModel = this.this$0;
                if (Result.m8549isSuccessimpl(result)) {
                    profilePsicologoViewModel._perfil.setValue((PsicologoProfileResponseDTO) result);
                    profilePsicologoViewModel._error.setValue(null);
                }
                ProfilePsicologoViewModel profilePsicologoViewModel2 = this.this$0;
                Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                if (thM8545exceptionOrNullimpl != null) {
                    MutableStateFlow mutableStateFlow = profilePsicologoViewModel2._error;
                    String message = thM8545exceptionOrNullimpl.getMessage();
                    if (message == null) {
                        message = "Error al subir foto";
                    }
                    mutableStateFlow.setValue(message);
                }
            } catch (Exception e) {
                this.this$0._error.setValue("Error al procesar la imagen: " + e.getMessage());
            }
            this.this$0._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void uploadFotoPerfil(long id, Uri imageUri) {
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        this._isLoading.setValue(true);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08401(imageUri, this, id, null), 3, null);
    }
}
