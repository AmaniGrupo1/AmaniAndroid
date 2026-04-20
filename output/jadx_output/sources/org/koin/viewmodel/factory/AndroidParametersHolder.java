package org.koin.viewmodel.factory;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.parameter.ParametersHolder;

/* JADX INFO: compiled from: AndroidParametersHolder.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0016¢\u0006\u0002\u0010\u000fJ!\u0010\u0010\u001a\u0004\u0018\u0001H\n\"\u0004\b\u0000\u0010\n2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0016¢\u0006\u0002\u0010\u0011J.\u0010\u0012\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0082\b¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lorg/koin/viewmodel/factory/AndroidParametersHolder;", "Lorg/koin/core/parameter/ParametersHolder;", "initialValues", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersDefinition;", "extras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;)V", "elementAt", ExifInterface.GPS_DIRECTION_TRUE, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "", "clazz", "Lkotlin/reflect/KClass;", "(ILkotlin/reflect/KClass;)Ljava/lang/Object;", "getOrNull", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "createSavedStateHandleOrElse", "block", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "koin-core-viewmodel_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AndroidParametersHolder extends ParametersHolder {
    private final CreationExtras extras;

    /* JADX WARN: Illegal instructions before constructor call */
    public AndroidParametersHolder(Function0<? extends ParametersHolder> function0, CreationExtras extras) {
        ParametersHolder parametersHolderInvoke;
        List<Object> values;
        ArrayList mutableList;
        Intrinsics.checkNotNullParameter(extras, "extras");
        super((function0 == null || (parametersHolderInvoke = function0.invoke()) == null || (values = parametersHolderInvoke.getValues()) == null || (mutableList = CollectionsKt.toMutableList((Collection) values)) == null) ? new ArrayList() : mutableList, null, 2, null);
        this.extras = extras;
    }

    public /* synthetic */ AndroidParametersHolder(Function0 function0, CreationExtras creationExtras, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function0, creationExtras);
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public <T> T elementAt(int i, KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (!Intrinsics.areEqual(clazz, Reflection.getOrCreateKotlinClass(SavedStateHandle.class))) {
            return (T) super.elementAt(i, clazz);
        }
        return (T) SavedStateHandleSupport.createSavedStateHandle(this.extras);
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public <T> T getOrNull(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (!Intrinsics.areEqual(clazz, Reflection.getOrCreateKotlinClass(SavedStateHandle.class))) {
            return (T) super.getOrNull(clazz);
        }
        return (T) SavedStateHandleSupport.createSavedStateHandle(this.extras);
    }

    private final <T> T createSavedStateHandleOrElse(KClass<?> clazz, Function0<? extends T> block) {
        if (Intrinsics.areEqual(clazz, Reflection.getOrCreateKotlinClass(SavedStateHandle.class))) {
            return (T) SavedStateHandleSupport.createSavedStateHandle(this.extras);
        }
        return block.invoke();
    }
}
