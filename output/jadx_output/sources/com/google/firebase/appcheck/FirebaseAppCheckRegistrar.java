package com.google.firebase.appcheck;

import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.heartbeatinfo.HeartBeatConsumerComponent;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes22.dex */
public class FirebaseAppCheckRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-app-check";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        final Qualified<Executor> uiExecutor = Qualified.qualified(UiThread.class, Executor.class);
        final Qualified<Executor> liteExecutor = Qualified.qualified(Lightweight.class, Executor.class);
        final Qualified<Executor> backgroundExecutor = Qualified.qualified(Background.class, Executor.class);
        final Qualified<ScheduledExecutorService> blockingScheduledExecutorService = Qualified.qualified(Blocking.class, ScheduledExecutorService.class);
        return Arrays.asList(Component.builder(FirebaseAppCheck.class, InteropAppCheckTokenProvider.class).name(LIBRARY_NAME).add(Dependency.required((Class<?>) FirebaseApp.class)).add(Dependency.required(uiExecutor)).add(Dependency.required(liteExecutor)).add(Dependency.required(backgroundExecutor)).add(Dependency.required(blockingScheduledExecutorService)).add(Dependency.optionalProvider((Class<?>) HeartBeatController.class)).factory(new ComponentFactory() { // from class: com.google.firebase.appcheck.FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return FirebaseAppCheckRegistrar.lambda$getComponents$0(uiExecutor, liteExecutor, backgroundExecutor, blockingScheduledExecutorService, componentContainer);
            }
        }).alwaysEager().build(), HeartBeatConsumerComponent.create(), LibraryVersionComponent.create(LIBRARY_NAME, "17.1.0"));
    }

    static /* synthetic */ FirebaseAppCheck lambda$getComponents$0(Qualified uiExecutor, Qualified liteExecutor, Qualified backgroundExecutor, Qualified blockingScheduledExecutorService, ComponentContainer container) {
        return new DefaultFirebaseAppCheck((FirebaseApp) container.get(FirebaseApp.class), container.getProvider(HeartBeatController.class), (Executor) container.get(uiExecutor), (Executor) container.get(liteExecutor), (Executor) container.get(backgroundExecutor), (ScheduledExecutorService) container.get(blockingScheduledExecutorService));
    }
}
