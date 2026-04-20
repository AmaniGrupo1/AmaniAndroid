package org.koin.compose.application;

import androidx.compose.runtime.RememberObserver;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.context.DefaultContextExtKt;
import org.koin.core.logger.Logger;
import org.koin.mp.KoinPlatform;

/* JADX INFO: compiled from: CompositionKoinApplicationLoader.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u000fH\u0002R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lorg/koin/compose/application/CompositionKoinApplicationLoader;", "Landroidx/compose/runtime/RememberObserver;", "koinApplication", "Lorg/koin/core/KoinApplication;", "<init>", "(Lorg/koin/core/KoinApplication;)V", "getKoinApplication", "()Lorg/koin/core/KoinApplication;", "koin", "Lorg/koin/core/Koin;", "getKoin", "()Lorg/koin/core/Koin;", "setKoin", "(Lorg/koin/core/Koin;)V", "onAbandoned", "", "onForgotten", "onRemembered", TtmlNode.START, "stop", "koin-compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CompositionKoinApplicationLoader implements RememberObserver {
    public static final int $stable = 8;
    private Koin koin;
    private final KoinApplication koinApplication;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositionKoinApplicationLoader() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public CompositionKoinApplicationLoader(KoinApplication koinApplication) {
        this.koinApplication = koinApplication;
        start();
    }

    public /* synthetic */ CompositionKoinApplicationLoader(KoinApplication koinApplication, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : koinApplication);
    }

    public final KoinApplication getKoinApplication() {
        return this.koinApplication;
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final void setKoin(Koin koin) {
        this.koin = koin;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        Logger logger;
        Koin koin = this.koin;
        if (koin != null && (logger = koin.getLogger()) != null) {
            logger.warn("CompositionKoinApplicationLoader - onAbandoned - " + this);
        }
        stop();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        Logger logger;
        Koin koin = this.koin;
        if (koin != null && (logger = koin.getLogger()) != null) {
            logger.debug("CompositionKoinApplicationLoader - onForgotten - " + this);
        }
        this.koin = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        start();
    }

    private final void start() {
        if (KoinPlatform.INSTANCE.getKoinOrNull() == null && this.koinApplication != null) {
            try {
                this.koin = DefaultContextExtKt.startKoin(this.koinApplication).getKoin();
                Koin koin = this.koin;
                Intrinsics.checkNotNull(koin);
                koin.getLogger().debug(this + " -> attach Koin instance " + this.koin);
                return;
            } catch (Exception e) {
                throw new IllegalStateException(("Can't start Koin from Compose context - " + e).toString());
            }
        }
        if (KoinPlatform.INSTANCE.getKoinOrNull() != null) {
            this.koin = KoinPlatform.INSTANCE.getKoin();
            Koin koin2 = this.koin;
            Intrinsics.checkNotNull(koin2);
            koin2.getLogger().debug(this + " -> re-attach Koin instance " + this.koin);
            return;
        }
        throw new IllegalStateException("Can't start Koin context, no koinApplication argument found nor existing context".toString());
    }

    private final void stop() {
        Logger logger;
        Koin koin = this.koin;
        if (koin != null && (logger = koin.getLogger()) != null) {
            logger.warn("CompositionKoinApplicationLoader - stop");
        }
        this.koin = null;
        DefaultContextExtKt.stopKoin();
    }
}
