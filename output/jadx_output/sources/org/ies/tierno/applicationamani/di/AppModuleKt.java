package org.ies.tierno.applicationamani.di;

import android.content.Context;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ies.tierno.applicationamani.data.AuthRepository;
import org.ies.tierno.applicationamani.data.SituacionRepository;
import org.ies.tierno.applicationamani.data.local.AuthEventChannel;
import org.ies.tierno.applicationamani.data.local.TokenDataStore;
import org.ies.tierno.applicationamani.data.local.TokenHolder;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.data.remoto.AuthApi;
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService;
import org.ies.tierno.applicationamani.data.remoto.CitasApi;
import org.ies.tierno.applicationamani.data.remoto.FileStorageService;
import org.ies.tierno.applicationamani.data.remoto.FirebaseInstance;
import org.ies.tierno.applicationamani.data.remoto.ProfileApi;
import org.ies.tierno.applicationamani.data.remoto.SituacionApi;
import org.ies.tierno.applicationamani.data.remoto.TestApi;
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository;
import org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl;
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository;
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository;
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi;
import org.ies.tierno.applicationamani.domain.usecases.GetMessagesUseCase;
import org.ies.tierno.applicationamani.domain.usecases.ListarSituacionUseCase;
import org.ies.tierno.applicationamani.domain.usecases.MarkMessageDeliveredUseCase;
import org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase;
import org.ies.tierno.applicationamani.domain.usecases.ObserveTypingUseCase;
import org.ies.tierno.applicationamani.domain.usecases.ObserveUserOnlineUseCase;
import org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase;
import org.ies.tierno.applicationamani.domain.usecases.StartTypingUseCase;
import org.ies.tierno.applicationamani.domain.usecases.StopTypingUseCase;
import org.ies.tierno.applicationamani.domain.usecases.UpdateUserOnlineUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase;
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase;
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase;
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase;
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral;
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo;
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel;
import org.koin.android.ext.koin.ModuleExtKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;

/* JADX INFO: compiled from: AppModule.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"appModule", "Lorg/koin/core/module/Module;", "getAppModule", "()Lorg/koin/core/module/Module;", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class AppModuleKt {
    private static final Module appModule = ModuleDSLKt.module$default(false, new Function1() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda52
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return AppModuleKt.appModule$lambda$52((Module) obj);
        }
    }, 1, null);

    public static final Module getAppModule() {
        return appModule;
    }

    static final Unit appModule$lambda$52(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 function2 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$0((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(TokenDataStore.class), null, function2, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        Function2 function22 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$1((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(TokenHolder.class), null, function22, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        Function2 function23 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$2((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(AuthEventChannel.class), null, function23, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        Function2 function24 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$3((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, function24, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        Function2 function25 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda44
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$4((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(AuthRepository.class), null, function25, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        Function2 function26 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda47
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$5((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(TestRepositoryApi.class), null, function26, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        Function2 function27 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda48
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$6((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(SituacionRepository.class), null, function27, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        Function2 function28 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda49
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$7((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CitasRepository.class), null, function28, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        Function2 function29 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda50
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$8((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, function29, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        Function2 function210 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda51
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$9((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory10 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(FirebaseInstance.class), null, function210, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory10);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory10);
        }
        new KoinDefinition(module, singleInstanceFactory10);
        Function2 function211 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$10((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory11 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ChatFirebaseService.class), null, function211, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory11);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory11);
        }
        new KoinDefinition(module, singleInstanceFactory11);
        Function2 function212 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$11((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory12 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ChatRepository.class), null, function212, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory12);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory12);
        }
        new KoinDefinition(module, singleInstanceFactory12);
        Function2 function213 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$12((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory13 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(FileStorageService.class), null, function213, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory13);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory13);
        }
        new KoinDefinition(module, singleInstanceFactory13);
        Function2 function214 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$13((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(LoginUseCase.class), null, function214, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory);
        new KoinDefinition(module, factoryInstanceFactory);
        Function2 function215 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$14((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory2 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(GetAllClientAndPsicologoUseCase.class), null, function215, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory2);
        new KoinDefinition(module, factoryInstanceFactory2);
        Function2 function216 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$15((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory3 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CrearPreguntaUseCase.class), null, function216, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory3);
        new KoinDefinition(module, factoryInstanceFactory3);
        Function2 function217 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$16((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory4 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarPreguntasUseCase.class), null, function217, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory4);
        new KoinDefinition(module, factoryInstanceFactory4);
        Function2 function218 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$17((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory5 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(DarBajaPacienteUseCase.class), null, function218, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory5);
        new KoinDefinition(module, factoryInstanceFactory5);
        Function2 function219 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$18((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory6 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(TodosLosPacientesUseCase.class), null, function219, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory6);
        new KoinDefinition(module, factoryInstanceFactory6);
        Function2 function220 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$19((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory7 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarPsicologoAdminUseCase.class), null, function220, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory7);
        new KoinDefinition(module, factoryInstanceFactory7);
        Function2 function221 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$20((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory8 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(AsignarPacienteAlPsicologoUseCase.class), null, function221, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory8);
        new KoinDefinition(module, factoryInstanceFactory8);
        Function2 function222 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$21((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory9 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ResponderTestUseCase.class), null, function222, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory9);
        new KoinDefinition(module, factoryInstanceFactory9);
        Function2 function223 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$22((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory10 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarSituacionUseCase.class), null, function223, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory10);
        new KoinDefinition(module, factoryInstanceFactory10);
        Function2 function224 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$23((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory11 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarPacientesByPsicologo.class), null, function224, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory11);
        new KoinDefinition(module, factoryInstanceFactory11);
        Function2 function225 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$24((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory12 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ProfileUseCaseGeneral.class), null, function225, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory12);
        new KoinDefinition(module, factoryInstanceFactory12);
        Function2 function226 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$25((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory13 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(SendMessageUseCase.class), null, function226, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory13);
        new KoinDefinition(module, factoryInstanceFactory13);
        Function2 function227 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$26((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory14 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(GetMessagesUseCase.class), null, function227, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory14);
        new KoinDefinition(module, factoryInstanceFactory14);
        Function2 function228 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$27((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory15 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(MarkMessagesAsReadUseCase.class), null, function228, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory15);
        new KoinDefinition(module, factoryInstanceFactory15);
        Function2 function229 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$28((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory16 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(StartTypingUseCase.class), null, function229, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory16);
        new KoinDefinition(module, factoryInstanceFactory16);
        Function2 function230 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$29((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory17 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(StopTypingUseCase.class), null, function230, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory17);
        new KoinDefinition(module, factoryInstanceFactory17);
        Function2 function231 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$30((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory18 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ObserveTypingUseCase.class), null, function231, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory18);
        new KoinDefinition(module, factoryInstanceFactory18);
        Function2 function232 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$31((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory19 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ObserveUserOnlineUseCase.class), null, function232, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory19);
        new KoinDefinition(module, factoryInstanceFactory19);
        Function2 function233 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$32((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory20 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(MarkMessageDeliveredUseCase.class), null, function233, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory20);
        new KoinDefinition(module, factoryInstanceFactory20);
        Function2 function234 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$33((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory21 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(UpdateUserOnlineUseCase.class), null, function234, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory21);
        new KoinDefinition(module, factoryInstanceFactory21);
        Function2 function235 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$34((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory22 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(LoginViewModel.class), null, function235, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory22);
        new KoinDefinition(module, factoryInstanceFactory22);
        Function2 function236 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$35((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory23 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(GetAllPacientAndPsicologoVeiwModel.class), null, function236, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory23);
        new KoinDefinition(module, factoryInstanceFactory23);
        Function2 function237 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$36((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory24 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CrearPreguntaViewModel.class), null, function237, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory24);
        new KoinDefinition(module, factoryInstanceFactory24);
        Function2 function238 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$37((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory25 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarPacientesViewModel.class), null, function238, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory25);
        new KoinDefinition(module, factoryInstanceFactory25);
        Function2 function239 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$38((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory26 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarPsicologosAdminViewModel.class), null, function239, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory26);
        new KoinDefinition(module, factoryInstanceFactory26);
        Function2 function240 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$39((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory27 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(PrincipalClienteViewModel.class), null, function240, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory27);
        new KoinDefinition(module, factoryInstanceFactory27);
        Function2 function241 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$40((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory28 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(SettingsClienteViewModel.class), null, function241, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory28);
        new KoinDefinition(module, factoryInstanceFactory28);
        Function2 function242 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$41((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory29 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(SituacionViewModel.class), null, function242, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory29);
        new KoinDefinition(module, factoryInstanceFactory29);
        Function2 function243 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$42((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory30 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CitasViewModel.class), null, function243, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory30);
        new KoinDefinition(module, factoryInstanceFactory30);
        Function2 function244 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$43((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory31 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(QuestionnaireViewModel.class), null, function244, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory31);
        new KoinDefinition(module, factoryInstanceFactory31);
        Function2 function245 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda38
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$44((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory32 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(PsicologoAgendaViewModel.class), null, function245, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory32);
        new KoinDefinition(module, factoryInstanceFactory32);
        Function2 function246 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda39
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$45((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory33 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CuestionarioViewModel.class), null, function246, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory33);
        new KoinDefinition(module, factoryInstanceFactory33);
        Function2 function247 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda40
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$46((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory34 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarPacientesByPsicologoViewModel.class), null, function247, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory34);
        new KoinDefinition(module, factoryInstanceFactory34);
        Function2 function248 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda41
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$47((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory35 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ProfilePsicologoViewModel.class), null, function248, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory35);
        new KoinDefinition(module, factoryInstanceFactory35);
        Function2 function249 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$48((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory36 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(PacienteViewModel.class), null, function249, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory36);
        new KoinDefinition(module, factoryInstanceFactory36);
        Function2 function250 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$49((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory37 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ListarTerapiasViewModel.class), null, function250, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory37);
        new KoinDefinition(module, factoryInstanceFactory37);
        Function2 function251 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda45
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$50((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory38 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ChatListViewModel.class), null, function251, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory38);
        new KoinDefinition(module, factoryInstanceFactory38);
        Function2 function252 = new Function2() { // from class: org.ies.tierno.applicationamani.di.AppModuleKt$$ExternalSyntheticLambda46
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$52$lambda$51((Scope) obj, (ParametersHolder) obj2);
            }
        };
        FactoryInstanceFactory factoryInstanceFactory39 = new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ChatViewModel.class), null, function252, Kind.Factory, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(factoryInstanceFactory39);
        new KoinDefinition(module, factoryInstanceFactory39);
        return Unit.INSTANCE;
    }

    static final TokenDataStore appModule$lambda$52$lambda$0(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TokenDataStore(ModuleExtKt.androidContext(single));
    }

    static final TokenHolder appModule$lambda$52$lambda$1(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TokenHolder((TokenDataStore) single.get(Reflection.getOrCreateKotlinClass(TokenDataStore.class), null, null));
    }

    static final AuthEventChannel appModule$lambda$52$lambda$2(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthEventChannel();
    }

    static final UserSessionDataStore appModule$lambda$52$lambda$3(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new UserSessionDataStore((Context) single.get(Reflection.getOrCreateKotlinClass(Context.class), null, null));
    }

    static final AuthRepository appModule$lambda$52$lambda$4(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthRepository((AuthApi) single.get(Reflection.getOrCreateKotlinClass(AuthApi.class), null, null), (TokenDataStore) single.get(Reflection.getOrCreateKotlinClass(TokenDataStore.class), null, null), (UserSessionDataStore) single.get(Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, null));
    }

    static final TestRepositoryApi appModule$lambda$52$lambda$5(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TestRepositoryApi((TestApi) single.get(Reflection.getOrCreateKotlinClass(TestApi.class), null, null));
    }

    static final SituacionRepository appModule$lambda$52$lambda$6(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SituacionRepository((SituacionApi) single.get(Reflection.getOrCreateKotlinClass(SituacionApi.class), null, null));
    }

    static final CitasRepository appModule$lambda$52$lambda$7(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CitasRepository((CitasApi) single.get(Reflection.getOrCreateKotlinClass(CitasApi.class), null, null));
    }

    static final ProfileRepository appModule$lambda$52$lambda$8(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ProfileRepository((ProfileApi) single.get(Reflection.getOrCreateKotlinClass(ProfileApi.class), null, null));
    }

    static final FirebaseInstance appModule$lambda$52$lambda$9(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return FirebaseInstance.INSTANCE;
    }

    static final ChatFirebaseService appModule$lambda$52$lambda$10(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ChatFirebaseService((FirebaseInstance) single.get(Reflection.getOrCreateKotlinClass(FirebaseInstance.class), null, null));
    }

    static final ChatRepository appModule$lambda$52$lambda$11(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ChatRepositoryImpl((ChatFirebaseService) single.get(Reflection.getOrCreateKotlinClass(ChatFirebaseService.class), null, null));
    }

    static final FileStorageService appModule$lambda$52$lambda$12(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new FileStorageService((FirebaseInstance) single.get(Reflection.getOrCreateKotlinClass(FirebaseInstance.class), null, null), ModuleExtKt.androidContext(single));
    }

    static final LoginUseCase appModule$lambda$52$lambda$13(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new LoginUseCase((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final GetAllClientAndPsicologoUseCase appModule$lambda$52$lambda$14(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new GetAllClientAndPsicologoUseCase((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final CrearPreguntaUseCase appModule$lambda$52$lambda$15(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CrearPreguntaUseCase((TestRepositoryApi) factory.get(Reflection.getOrCreateKotlinClass(TestRepositoryApi.class), null, null));
    }

    static final ListarPreguntasUseCase appModule$lambda$52$lambda$16(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarPreguntasUseCase((TestRepositoryApi) factory.get(Reflection.getOrCreateKotlinClass(TestRepositoryApi.class), null, null));
    }

    static final DarBajaPacienteUseCase appModule$lambda$52$lambda$17(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new DarBajaPacienteUseCase((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final TodosLosPacientesUseCase appModule$lambda$52$lambda$18(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TodosLosPacientesUseCase((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final ListarPsicologoAdminUseCase appModule$lambda$52$lambda$19(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarPsicologoAdminUseCase((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final AsignarPacienteAlPsicologoUseCase appModule$lambda$52$lambda$20(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AsignarPacienteAlPsicologoUseCase((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final ResponderTestUseCase appModule$lambda$52$lambda$21(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ResponderTestUseCase((TestRepositoryApi) factory.get(Reflection.getOrCreateKotlinClass(TestRepositoryApi.class), null, null));
    }

    static final ListarSituacionUseCase appModule$lambda$52$lambda$22(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarSituacionUseCase((SituacionRepository) factory.get(Reflection.getOrCreateKotlinClass(SituacionRepository.class), null, null));
    }

    static final ListarPacientesByPsicologo appModule$lambda$52$lambda$23(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarPacientesByPsicologo((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    static final ProfileUseCaseGeneral appModule$lambda$52$lambda$24(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ProfileUseCaseGeneral((ProfileRepository) factory.get(Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, null));
    }

    static final SendMessageUseCase appModule$lambda$52$lambda$25(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SendMessageUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final GetMessagesUseCase appModule$lambda$52$lambda$26(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new GetMessagesUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final MarkMessagesAsReadUseCase appModule$lambda$52$lambda$27(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new MarkMessagesAsReadUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final StartTypingUseCase appModule$lambda$52$lambda$28(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new StartTypingUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final StopTypingUseCase appModule$lambda$52$lambda$29(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new StopTypingUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final ObserveTypingUseCase appModule$lambda$52$lambda$30(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ObserveTypingUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final ObserveUserOnlineUseCase appModule$lambda$52$lambda$31(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ObserveUserOnlineUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final MarkMessageDeliveredUseCase appModule$lambda$52$lambda$32(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new MarkMessageDeliveredUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final UpdateUserOnlineUseCase appModule$lambda$52$lambda$33(Scope factory, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new UpdateUserOnlineUseCase((ChatRepository) factory.get(Reflection.getOrCreateKotlinClass(ChatRepository.class), null, null));
    }

    static final LoginViewModel appModule$lambda$52$lambda$34(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new LoginViewModel((LoginUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(LoginUseCase.class), null, null), (AsignarPacienteAlPsicologoUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(AsignarPacienteAlPsicologoUseCase.class), null, null), (UserSessionDataStore) viewModel.get(Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, null));
    }

    static final GetAllPacientAndPsicologoVeiwModel appModule$lambda$52$lambda$35(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new GetAllPacientAndPsicologoVeiwModel((GetAllClientAndPsicologoUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(GetAllClientAndPsicologoUseCase.class), null, null));
    }

    static final CrearPreguntaViewModel appModule$lambda$52$lambda$36(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CrearPreguntaViewModel((CrearPreguntaUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(CrearPreguntaUseCase.class), null, null));
    }

    static final ListarPacientesViewModel appModule$lambda$52$lambda$37(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarPacientesViewModel((TodosLosPacientesUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(TodosLosPacientesUseCase.class), null, null), (DarBajaPacienteUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(DarBajaPacienteUseCase.class), null, null));
    }

    static final ListarPsicologosAdminViewModel appModule$lambda$52$lambda$38(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarPsicologosAdminViewModel((ListarPsicologoAdminUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(ListarPsicologoAdminUseCase.class), null, null));
    }

    static final PrincipalClienteViewModel appModule$lambda$52$lambda$39(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new PrincipalClienteViewModel();
    }

    static final SettingsClienteViewModel appModule$lambda$52$lambda$40(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SettingsClienteViewModel();
    }

    static final SituacionViewModel appModule$lambda$52$lambda$41(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SituacionViewModel((ListarSituacionUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(ListarSituacionUseCase.class), null, null));
    }

    static final CitasViewModel appModule$lambda$52$lambda$42(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CitasViewModel((CitasRepository) viewModel.get(Reflection.getOrCreateKotlinClass(CitasRepository.class), null, null), (ProfileRepository) viewModel.get(Reflection.getOrCreateKotlinClass(ProfileRepository.class), null, null), (UserSessionDataStore) viewModel.get(Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, null));
    }

    static final QuestionnaireViewModel appModule$lambda$52$lambda$43(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new QuestionnaireViewModel();
    }

    static final PsicologoAgendaViewModel appModule$lambda$52$lambda$44(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new PsicologoAgendaViewModel((CitasRepository) viewModel.get(Reflection.getOrCreateKotlinClass(CitasRepository.class), null, null), (AuthRepository) viewModel.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null), (UserSessionDataStore) viewModel.get(Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, null));
    }

    static final CuestionarioViewModel appModule$lambda$52$lambda$45(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CuestionarioViewModel((ListarPreguntasUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(ListarPreguntasUseCase.class), null, null));
    }

    static final ListarPacientesByPsicologoViewModel appModule$lambda$52$lambda$46(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarPacientesByPsicologoViewModel((ListarPacientesByPsicologo) viewModel.get(Reflection.getOrCreateKotlinClass(ListarPacientesByPsicologo.class), null, null));
    }

    static final ProfilePsicologoViewModel appModule$lambda$52$lambda$47(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ProfilePsicologoViewModel((ProfileUseCaseGeneral) viewModel.get(Reflection.getOrCreateKotlinClass(ProfileUseCaseGeneral.class), null, null));
    }

    static final PacienteViewModel appModule$lambda$52$lambda$48(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new PacienteViewModel((ProfileUseCaseGeneral) viewModel.get(Reflection.getOrCreateKotlinClass(ProfileUseCaseGeneral.class), null, null));
    }

    static final ListarTerapiasViewModel appModule$lambda$52$lambda$49(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ListarTerapiasViewModel((CitasRepository) viewModel.get(Reflection.getOrCreateKotlinClass(CitasRepository.class), null, null));
    }

    static final ChatListViewModel appModule$lambda$52$lambda$50(Scope viewModel, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ChatListViewModel((UserSessionDataStore) viewModel.get(Reflection.getOrCreateKotlinClass(UserSessionDataStore.class), null, null), (ProfileUseCaseGeneral) viewModel.get(Reflection.getOrCreateKotlinClass(ProfileUseCaseGeneral.class), null, null), (ListarPacientesByPsicologo) viewModel.get(Reflection.getOrCreateKotlinClass(ListarPacientesByPsicologo.class), null, null));
    }

    static final ChatViewModel appModule$lambda$52$lambda$51(Scope viewModel, ParametersHolder parametersHolder) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(parametersHolder, "<destruct>");
        long currentUserId = ((Number) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
        long otherUserId = ((Number) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(Long.class))).longValue();
        return new ChatViewModel(currentUserId, otherUserId, (SendMessageUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(SendMessageUseCase.class), null, null), (GetMessagesUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(GetMessagesUseCase.class), null, null), (MarkMessagesAsReadUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(MarkMessagesAsReadUseCase.class), null, null), (MarkMessageDeliveredUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(MarkMessageDeliveredUseCase.class), null, null), (FileStorageService) viewModel.get(Reflection.getOrCreateKotlinClass(FileStorageService.class), null, null), (StartTypingUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(StartTypingUseCase.class), null, null), (StopTypingUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(StopTypingUseCase.class), null, null), (ObserveTypingUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(ObserveTypingUseCase.class), null, null), (ObserveUserOnlineUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(ObserveUserOnlineUseCase.class), null, null), (UpdateUserOnlineUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(UpdateUserOnlineUseCase.class), null, null), ModuleExtKt.androidContext(viewModel));
    }
}
