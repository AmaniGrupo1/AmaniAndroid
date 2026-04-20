package org.koin.compose.module;

import androidx.compose.runtime.RememberObserver;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.annotation.KoinExperimentalAPI;
import org.koin.core.module.Module;

/* JADX INFO: compiled from: CompositionKoinModuleLoader.kt */
/* JADX INFO: loaded from: classes23.dex */
@KoinExperimentalAPI
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0014H\u0016J\b\u0010\u0017\u001a\u00020\u0014H\u0002R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011¨\u0006\u0018"}, d2 = {"Lorg/koin/compose/module/CompositionKoinModuleLoader;", "Landroidx/compose/runtime/RememberObserver;", "modules", "", "Lorg/koin/core/module/Module;", "koin", "Lorg/koin/core/Koin;", "unloadOnForgotten", "", "unloadOnAbandoned", "<init>", "(Ljava/util/List;Lorg/koin/core/Koin;ZZ)V", "getModules", "()Ljava/util/List;", "getKoin", "()Lorg/koin/core/Koin;", "getUnloadOnForgotten", "()Z", "getUnloadOnAbandoned", "onRemembered", "", "onForgotten", "onAbandoned", "unloadModules", "koin-compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CompositionKoinModuleLoader implements RememberObserver {
    public static final int $stable = 8;
    private final Koin koin;
    private final List<Module> modules;
    private final boolean unloadOnAbandoned;
    private final boolean unloadOnForgotten;

    public CompositionKoinModuleLoader(List<Module> modules, Koin koin, boolean unloadOnForgotten, boolean unloadOnAbandoned) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Intrinsics.checkNotNullParameter(koin, "koin");
        this.modules = modules;
        this.koin = koin;
        this.unloadOnForgotten = unloadOnForgotten;
        this.unloadOnAbandoned = unloadOnAbandoned;
        this.koin.getLogger().debug(this + " -> load modules");
        Koin.loadModules$default(this.koin, this.modules, false, false, 6, null);
    }

    public final List<Module> getModules() {
        return this.modules;
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final boolean getUnloadOnForgotten() {
        return this.unloadOnForgotten;
    }

    public final boolean getUnloadOnAbandoned() {
        return this.unloadOnAbandoned;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        if (this.unloadOnForgotten) {
            unloadModules();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        if (this.unloadOnAbandoned) {
            unloadModules();
        }
    }

    private final void unloadModules() {
        this.koin.getLogger().debug(this + " -> unload modules");
        this.koin.unloadModules(this.modules);
    }
}
