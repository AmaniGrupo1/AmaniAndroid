package org.koin.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.FunctionKeyMeta;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: Inject.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aC\u0010\u0000\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0012\b\b\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\tH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\n\u001a4\u0010\u0000\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\bH\u0087\b¢\u0006\u0002\u0010\f\u001a,\u0010\u0000\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0087\b¢\u0006\u0002\u0010\r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"koinInject", ExifInterface.GPS_DIRECTION_TRUE, "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "scope", "Lorg/koin/core/scope/Scope;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersHolder;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;", "parametersHolder", "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;", "(Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;", "koin-compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class InjectKt {
    @FunctionKeyMeta(endOffset = 1836, key = 414512006, startOffset = 1543)
    public static final /* synthetic */ <T> T koinInject(Qualifier qualifier, Scope scope, Function0<? extends ParametersHolder> parameters, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        ComposerKt.sourceInformationMarkerStart(composer, 414512006, "CC(koinInject)N(qualifier,scope,parameters)45@1624L18,49@1741L93:Inject.kt#8jjlyv");
        if ((i2 & 1) != 0) {
            qualifier = null;
        }
        if ((i2 & 2) != 0) {
            scope = KoinApplicationKt.currentKoinScope(composer, 0);
        }
        ParametersHolder parametersHolderInvoke = parameters.invoke();
        ComposerKt.sourceInformationMarkerStart(composer, -1085914333, "CC(remember):Inject.kt#9igjgp");
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

    @FunctionKeyMeta(endOffset = 2449, key = 820244696, startOffset = 2165)
    public static final /* synthetic */ <T> T koinInject(Qualifier qualifier, Scope scope, ParametersHolder parametersHolder, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(parametersHolder, "parametersHolder");
        ComposerKt.sourceInformationMarkerStart(composer, 820244696, "CC(koinInject)N(qualifier,scope,parametersHolder)68@2246L18,71@2324L123:Inject.kt#8jjlyv");
        if ((i2 & 1) != 0) {
            qualifier = null;
        }
        if ((i2 & 2) != 0) {
            scope = KoinApplicationKt.currentKoinScope(composer, 0);
        }
        ComposerKt.sourceInformationMarkerStart(composer, -2018824397, "CC(remember):Inject.kt#9igjgp");
        boolean zChanged = composer.changed(qualifier) | composer.changed(scope) | composer.changed(parametersHolder);
        T t = (T) composer.rememberedValue();
        if (zChanged || t == Composer.INSTANCE.getEmpty()) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            Object withParameters = scope.getWithParameters(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parametersHolder);
            composer.updateRememberedValue(withParameters);
            t = (T) withParameters;
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        ComposerKt.sourceInformationMarkerEnd(composer);
        return t;
    }

    @FunctionKeyMeta(endOffset = 2862, key = -1168520582, startOffset = 2669)
    public static final /* synthetic */ <T> T koinInject(Qualifier qualifier, Scope scope, Composer composer, int i, int i2) {
        Qualifier qualifier2;
        Scope scopeCurrentKoinScope;
        ComposerKt.sourceInformationMarkerStart(composer, -1168520582, "CC(koinInject)N(qualifier,scope)88@2750L18,90@2787L73:Inject.kt#8jjlyv");
        if ((i2 & 1) != 0) {
            qualifier2 = null;
        } else {
            qualifier2 = qualifier;
        }
        if ((i2 & 2) == 0) {
            scopeCurrentKoinScope = scope;
        } else {
            scopeCurrentKoinScope = KoinApplicationKt.currentKoinScope(composer, 0);
        }
        ComposerKt.sourceInformationMarkerStart(composer, -1961811197, "CC(remember):Inject.kt#9igjgp");
        boolean zChanged = composer.changed(qualifier2) | composer.changed(scopeCurrentKoinScope);
        T t = (T) composer.rememberedValue();
        if (zChanged || t == Composer.INSTANCE.getEmpty()) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            Object obj = Scope.get$default(scopeCurrentKoinScope, Reflection.getOrCreateKotlinClass(Object.class), qualifier2, null, 4, null);
            composer.updateRememberedValue(obj);
            t = (T) obj;
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        ComposerKt.sourceInformationMarkerEnd(composer);
        return t;
    }
}
