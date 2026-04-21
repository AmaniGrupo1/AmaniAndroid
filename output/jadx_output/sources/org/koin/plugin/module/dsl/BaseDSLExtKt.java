package org.koin.plugin.module.dsl;

import androidx.exifinterface.media.ExifInterface;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.module.KoinDslMarker;
import org.koin.core.module.Module;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: BaseDSLExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u0007\u001a\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u0007\u001a\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0006H\u0007\u001a\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"single", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/module/Module;", "factory", "scoped", "Lorg/koin/dsl/ScopeDSL;", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class BaseDSLExtKt {
    @KoinDslMarker
    public static final <T> KoinDefinition<T> single(Module $this$single) {
        Intrinsics.checkNotNullParameter($this$single, "<this>");
        CreateDSLKt.USE_KOIN_COMPILER_PLUGIN("single<T>()");
        throw new KotlinNothingValueException();
    }

    @KoinDslMarker
    public static final <T> KoinDefinition<T> factory(Module $this$factory) {
        Intrinsics.checkNotNullParameter($this$factory, "<this>");
        CreateDSLKt.USE_KOIN_COMPILER_PLUGIN("factory<T>()");
        throw new KotlinNothingValueException();
    }

    @KoinDslMarker
    public static final <T> KoinDefinition<T> scoped(ScopeDSL $this$scoped) {
        Intrinsics.checkNotNullParameter($this$scoped, "<this>");
        CreateDSLKt.USE_KOIN_COMPILER_PLUGIN("ScopeDSL.scoped<T>()");
        throw new KotlinNothingValueException();
    }

    @KoinDslMarker
    public static final <T> KoinDefinition<T> factory(ScopeDSL $this$factory) {
        Intrinsics.checkNotNullParameter($this$factory, "<this>");
        CreateDSLKt.USE_KOIN_COMPILER_PLUGIN("ScopeDSL.factory<T>()");
        throw new KotlinNothingValueException();
    }
}
