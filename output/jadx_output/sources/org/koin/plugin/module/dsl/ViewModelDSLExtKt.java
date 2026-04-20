package org.koin.plugin.module.dsl;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.module.KoinDslMarker;
import org.koin.core.module.Module;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: ViewModelDSLExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u0007\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"viewModel", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/module/Module;", "Lorg/koin/dsl/ScopeDSL;", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelDSLExtKt {
    @KoinDslMarker
    public static final <T extends ViewModel> KoinDefinition<T> viewModel(Module $this$viewModel) {
        Intrinsics.checkNotNullParameter($this$viewModel, "<this>");
        throw new NotImplementedError("An operation is not implemented: " + CreateDSLKt.USE_KOIN_COMPILER_PLUGIN);
    }

    @KoinDslMarker
    public static final <T extends ViewModel> KoinDefinition<T> viewModel(ScopeDSL $this$viewModel) {
        Intrinsics.checkNotNullParameter($this$viewModel, "<this>");
        throw new NotImplementedError("An operation is not implemented: " + CreateDSLKt.USE_KOIN_COMPILER_PLUGIN);
    }
}
