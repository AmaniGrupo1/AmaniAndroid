package org.koin.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Scope.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
public final class Koin$injectOrNull$$inlined$injectOrNull$1<T> implements Function0<T> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ Scope this$0;

    public Koin$injectOrNull$$inlined$injectOrNull$1(Scope scope, Qualifier qualifier, Function0 function0) {
        this.this$0 = scope;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final T invoke() {
        Scope scope = this.this$0;
        Qualifier qualifier = this.$qualifier;
        Function0<? extends ParametersHolder> function0 = this.$parameters;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) scope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }
}
