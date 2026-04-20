package org.ies.tierno.applicationamani.di;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.ies.tierno.applicationamani.data.local.AuthEventChannel;
import org.ies.tierno.applicationamani.data.local.TokenHolder;
import org.ies.tierno.applicationamani.data.remoto.AuthApi;
import org.ies.tierno.applicationamani.data.remoto.AuthInterceptor;
import org.ies.tierno.applicationamani.data.remoto.CitasApi;
import org.ies.tierno.applicationamani.data.remoto.CustomerClient;
import org.ies.tierno.applicationamani.data.remoto.ProfileApi;
import org.ies.tierno.applicationamani.data.remoto.SituacionApi;
import org.ies.tierno.applicationamani.data.remoto.TestApi;
import org.ies.tierno.applicationamani.data.remoto.TokenRefreshInterceptor;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: RetrofitModule.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"retrofitModule", "Lorg/koin/core/module/Module;", "getRetrofitModule", "()Lorg/koin/core/module/Module;", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class RetrofitModuleKt {
    private static final Module retrofitModule = ModuleDSLKt.module$default(false, new Function1() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda9
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return RetrofitModuleKt.retrofitModule$lambda$9((Module) obj);
        }
    }, 1, null);

    public static final Module getRetrofitModule() {
        return retrofitModule;
    }

    static final Unit retrofitModule$lambda$9(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 function2 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$0((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(AuthInterceptor.class), null, function2, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory);
        }
        new KoinDefinition(module, singleInstanceFactory);
        Function2 function22 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$1((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory2 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(TokenRefreshInterceptor.class), null, function22, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory2);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory2);
        }
        new KoinDefinition(module, singleInstanceFactory2);
        Function2 function23 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$2((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory3 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(Retrofit.class), null, function23, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory3);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory3);
        }
        new KoinDefinition(module, singleInstanceFactory3);
        Function2 function24 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$3((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory4 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CustomerClient.class), null, function24, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory4);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory4);
        }
        new KoinDefinition(module, singleInstanceFactory4);
        Function2 function25 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$4((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory5 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(AuthApi.class), null, function25, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory5);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory5);
        }
        new KoinDefinition(module, singleInstanceFactory5);
        Function2 function26 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$5((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory6 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(CitasApi.class), null, function26, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory6);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory6);
        }
        new KoinDefinition(module, singleInstanceFactory6);
        Function2 function27 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$6((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory7 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(SituacionApi.class), null, function27, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory7);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory7);
        }
        new KoinDefinition(module, singleInstanceFactory7);
        Function2 function28 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$7((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory8 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(TestApi.class), null, function28, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory8);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory8);
        }
        new KoinDefinition(module, singleInstanceFactory8);
        Function2 function29 = new Function2() { // from class: org.ies.tierno.applicationamani.di.RetrofitModuleKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return RetrofitModuleKt.retrofitModule$lambda$9$lambda$8((Scope) obj, (ParametersHolder) obj2);
            }
        };
        SingleInstanceFactory<?> singleInstanceFactory9 = new SingleInstanceFactory<>(new BeanDefinition(ScopeRegistry.INSTANCE.getRootScopeQualifier(), Reflection.getOrCreateKotlinClass(ProfileApi.class), null, function29, Kind.Singleton, CollectionsKt.emptyList(), null, 64, null));
        module.indexPrimaryType(singleInstanceFactory9);
        if (module.get_createdAtStart()) {
            module.prepareForCreationAtStart(singleInstanceFactory9);
        }
        new KoinDefinition(module, singleInstanceFactory9);
        return Unit.INSTANCE;
    }

    static final AuthInterceptor retrofitModule$lambda$9$lambda$0(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthInterceptor((TokenHolder) single.get(Reflection.getOrCreateKotlinClass(TokenHolder.class), null, null));
    }

    static final TokenRefreshInterceptor retrofitModule$lambda$9$lambda$1(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TokenRefreshInterceptor((AuthEventChannel) single.get(Reflection.getOrCreateKotlinClass(AuthEventChannel.class), null, null));
    }

    static final Retrofit retrofitModule$lambda$9$lambda$2(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        OkHttpClient okHttpClient = new OkHttpClient.Builder().addInterceptor((Interceptor) single.get(Reflection.getOrCreateKotlinClass(AuthInterceptor.class), null, null)).addInterceptor((Interceptor) single.get(Reflection.getOrCreateKotlinClass(TokenRefreshInterceptor.class), null, null)).build();
        Gson gson = new GsonBuilder().serializeNulls().registerTypeAdapter(LocalDate.class, new RetrofitModuleKt$retrofitModule$1$3$gson$1()).registerTypeAdapter(LocalTime.class, new RetrofitModuleKt$retrofitModule$1$3$gson$2()).registerTypeAdapter(LocalDateTime.class, new RetrofitModuleKt$retrofitModule$1$3$gson$3()).create();
        return new Retrofit.Builder().baseUrl("http://192.168.1.20:8080/").addConverterFactory(GsonConverterFactory.create(gson)).client(okHttpClient).build();
    }

    static final CustomerClient retrofitModule$lambda$9$lambda$3(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object objCreate = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), null, null)).create(CustomerClient.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (CustomerClient) objCreate;
    }

    static final AuthApi retrofitModule$lambda$9$lambda$4(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object objCreate = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), null, null)).create(AuthApi.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (AuthApi) objCreate;
    }

    static final CitasApi retrofitModule$lambda$9$lambda$5(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object objCreate = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), null, null)).create(CitasApi.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (CitasApi) objCreate;
    }

    static final SituacionApi retrofitModule$lambda$9$lambda$6(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object objCreate = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), null, null)).create(SituacionApi.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (SituacionApi) objCreate;
    }

    static final TestApi retrofitModule$lambda$9$lambda$7(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object objCreate = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), null, null)).create(TestApi.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (TestApi) objCreate;
    }

    static final ProfileApi retrofitModule$lambda$9$lambda$8(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object objCreate = ((Retrofit) single.get(Reflection.getOrCreateKotlinClass(Retrofit.class), null, null)).create(ProfileApi.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (ProfileApi) objCreate;
    }
}
