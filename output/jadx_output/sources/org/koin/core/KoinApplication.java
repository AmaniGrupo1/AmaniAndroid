package org.koin.core;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.KoinApplicationDslMarker;
import org.koin.core.module.Module;
import org.koin.core.option.KoinOption;
import org.koin.core.time.DurationExtKt;
import org.koin.mp.KoinPlatformTools;

/* JADX INFO: compiled from: KoinApplication.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 &2\u00020\u0001:\u0001&B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\f\"\u00020\u000b¢\u0006\u0002\u0010\rJ\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\b\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tJ\u0016\u0010\u0013\u001a\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002J\u001a\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u0016J7\u0010\u0018\u001a\u00020\u00002*\u0010\u0019\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u001a0\f\"\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u001a¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\u0010J\u001b\u0010#\u001a\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eH\u0000¢\u0006\u0002\b$J\u0015\u0010#\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u000bH\u0000¢\u0006\u0002\b$R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lorg/koin/core/KoinApplication;", "", "<init>", "()V", "koin", "Lorg/koin/core/Koin;", "getKoin", "()Lorg/koin/core/Koin;", "allowOverride", "", "modules", "Lorg/koin/core/module/Module;", "", "([Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;", "", "createEagerInstances", "", "strictOverride", "override", "loadModules", "properties", "values", "", "", "options", "optionValue", "Lkotlin/Pair;", "Lorg/koin/core/option/KoinOption;", "([Lkotlin/Pair;)Lorg/koin/core/KoinApplication;", "logger", "Lorg/koin/core/logger/Logger;", "printLogger", "level", "Lorg/koin/core/logger/Level;", "close", "unloadModules", "unloadModules$koin_core", "module", "Companion", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
@KoinApplicationDslMarker
public class KoinApplication {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Koin koin = new Koin();
    private boolean allowOverride = true;

    protected KoinApplication() {
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final KoinApplication modules(Module modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        return modules(CollectionsKt.listOf(modules));
    }

    public final KoinApplication modules(Module... modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        return modules(ArraysKt.toList(modules));
    }

    public final KoinApplication modules(List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Logger this_$iv = this.koin.getLogger();
        Level lvl$iv = Level.INFO;
        if (!(this_$iv.getLevel().compareTo(lvl$iv) <= 0)) {
            loadModules(modules);
        } else {
            TimeSource.Monotonic $this$measureTime$iv$iv = TimeSource.Monotonic.INSTANCE;
            long mark$iv$iv = $this$measureTime$iv$iv.m10010markNowz9LOYto();
            loadModules(modules);
            long duration = TimeSource.Monotonic.ValueTimeMark.m10015elapsedNowUwyO8pc(mark$iv$iv);
            int count = this.koin.getInstanceRegistry().size();
            this.koin.getLogger().display(Level.INFO, "Started " + count + " definitions in " + DurationExtKt.m10542getInMsLRDsOJo(duration) + " ms");
        }
        return this;
    }

    public final void createEagerInstances() {
        this.koin.createEagerInstances();
    }

    public final void strictOverride() {
        this.allowOverride = false;
    }

    public final void allowOverride(boolean override) {
        this.allowOverride = override;
    }

    private final void loadModules(List<Module> modules) {
        this.koin.loadModules(modules, this.allowOverride, false);
    }

    public final KoinApplication properties(Map<String, ? extends Object> values) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.koin.getPropertyRegistry().saveProperties(values);
        return this;
    }

    public final KoinApplication options(Pair<? extends KoinOption, ? extends Object>... optionValue) {
        Intrinsics.checkNotNullParameter(optionValue, "optionValue");
        this.koin.getOptionRegistry().setValues$koin_core(MapsKt.toMap(optionValue));
        return this;
    }

    public final KoinApplication logger(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.koin.setupLogger(logger);
        return this;
    }

    public static /* synthetic */ KoinApplication printLogger$default(KoinApplication koinApplication, Level level, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: printLogger");
        }
        if ((i & 1) != 0) {
            level = Level.INFO;
        }
        return koinApplication.printLogger(level);
    }

    public final KoinApplication printLogger(Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.koin.setupLogger(KoinPlatformTools.INSTANCE.defaultLogger(level));
        return this;
    }

    public final void close() {
        this.koin.close();
    }

    public final void unloadModules$koin_core(List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.koin.unloadModules(modules);
    }

    public final void unloadModules$koin_core(Module module) {
        Intrinsics.checkNotNullParameter(module, "module");
        this.koin.unloadModules(CollectionsKt.listOf(module));
    }

    /* JADX INFO: compiled from: KoinApplication.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lorg/koin/core/KoinApplication$Companion;", "", "<init>", "()V", "init", "Lorg/koin/core/KoinApplication;", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KoinApplication init() {
            KoinApplication app = new KoinApplication();
            return app;
        }
    }
}
