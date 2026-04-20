package org.koin.compose.activity;

import android.app.Activity;
import androidx.activity.compose.LocalActivityKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: KoinActivityInject.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aG\u0010\u0000\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0016\b\n\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000b"}, d2 = {"koinActivityInject", ExifInterface.GPS_DIRECTION_TRUE, "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "scope", "Lorg/koin/core/scope/Scope;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KoinActivityInjectKt {
    @FunctionKeyMeta(endOffset = 2173, key = -931294658, startOffset = 1694)
    public static final /* synthetic */ <T> T koinActivityInject(Qualifier qualifier, Scope scope, Function0<? extends ParametersHolder> function0, Composer composer, int i, int i2) {
        Scope scope2;
        ComposerKt.sourceInformationMarkerStart(composer, -931294658, "CC(koinActivityInject)N(qualifier,scope,parameters)45@1798L7,49@2078L93:KoinActivityInject.kt#a42xie");
        if ((i2 & 1) != 0) {
            qualifier = null;
        }
        if ((i2 & 2) != 0) {
            ProvidableCompositionLocal<Activity> localActivity = LocalActivityKt.getLocalActivity();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composer.consume(localActivity);
            ComposerKt.sourceInformationMarkerEnd(composer);
            AndroidScopeComponent androidScopeComponent = objConsume instanceof AndroidScopeComponent ? (AndroidScopeComponent) objConsume : null;
            if (androidScopeComponent == null || (scope2 = androidScopeComponent.getScope()) == null) {
                throw new IllegalStateException("Activity is not an AndroidScopeComponent. Make your activity implement AndroidScopeComponent to use koinActivityInject".toString());
            }
            scope = scope2;
        }
        if ((i2 & 4) != 0) {
            function0 = null;
        }
        ParametersHolder parametersHolderInvoke = function0 != null ? function0.invoke() : null;
        ComposerKt.sourceInformationMarkerStart(composer, -1620956389, "CC(remember):KoinActivityInject.kt#9igjgp");
        boolean zChanged = composer.changed(qualifier) | composer.changed(scope) | composer.changed(parametersHolderInvoke);
        T t = (T) composer.rememberedValue();
        if (zChanged || t == Composer.INSTANCE.getEmpty()) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            Object withParameters = scope.getWithParameters(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parametersHolderInvoke);
            composer.updateRememberedValue(withParameters);
            t = (T) withParameters;
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        ComposerKt.sourceInformationMarkerEnd(composer);
        return t;
    }
}
