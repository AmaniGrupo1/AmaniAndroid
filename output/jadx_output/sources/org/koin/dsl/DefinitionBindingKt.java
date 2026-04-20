package org.koin.dsl;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Callbacks;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.module.OptionDslMarker;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: DefinitionBinding.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a5\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0087\u0004\u001a)\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001H\u0087\b\u001a\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u0001H\u0007\u001a,\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00012\u0010\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\nH\u0087\u0004¢\u0006\u0002\u0010\u000b\u001a?\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00012\u001e\u0010\f\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u0002H\u0007`\u000fH\u0087\u0004¨\u0006\u0010"}, d2 = {"bind", "Lorg/koin/core/definition/KoinDefinition;", ExifInterface.LATITUDE_SOUTH, "", "clazz", "Lkotlin/reflect/KClass;", "override", ExifInterface.GPS_DIRECTION_TRUE, "binds", "classes", "", "(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)Lorg/koin/core/definition/KoinDefinition;", "onClose", "Lkotlin/Function1;", "", "Lorg/koin/core/definition/OnCloseCallback;", "koin-core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class DefinitionBindingKt {
    @OptionDslMarker
    public static final <S> KoinDefinition<? extends S> bind(KoinDefinition<? extends S> koinDefinition, KClass<S> clazz) {
        String value;
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        koinDefinition.getFactory().getBeanDefinition().setSecondaryTypes(CollectionsKt.plus((Collection<? extends KClass<S>>) koinDefinition.getFactory().getBeanDefinition().getSecondaryTypes(), clazz));
        Qualifier typeQualifier$iv = koinDefinition.getFactory().getBeanDefinition().getQualifier();
        Qualifier scopeQualifier$iv = koinDefinition.getFactory().getBeanDefinition().getScopeQualifier();
        StringBuilder $this$indexKey_u24lambda_u240$iv = new StringBuilder();
        $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(clazz));
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        if (typeQualifier$iv == null || (value = typeQualifier$iv.getValue()) == null) {
            value = "";
        }
        $this$indexKey_u24lambda_u240$iv.append(value);
        $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
        $this$indexKey_u24lambda_u240$iv.append(scopeQualifier$iv);
        String mapping = $this$indexKey_u24lambda_u240$iv.toString();
        koinDefinition.getModule().saveMapping(mapping, koinDefinition.getFactory());
        return koinDefinition;
    }

    @OptionDslMarker
    public static final /* synthetic */ <S> KoinDefinition<? extends S> bind(KoinDefinition<? extends S> koinDefinition) {
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LATITUDE_SOUTH);
        bind(koinDefinition, Reflection.getOrCreateKotlinClass(Object.class));
        return koinDefinition;
    }

    @OptionDslMarker
    public static final <T> KoinDefinition<T> override(KoinDefinition<T> koinDefinition) {
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        koinDefinition.getFactory().getBeanDefinition().setAllowOverride(true);
        return koinDefinition;
    }

    @OptionDslMarker
    public static final KoinDefinition<?> binds(KoinDefinition<?> koinDefinition, KClass<?>[] classes) {
        String value;
        KoinDefinition<?> koinDefinition2 = koinDefinition;
        Intrinsics.checkNotNullParameter(koinDefinition2, "<this>");
        Intrinsics.checkNotNullParameter(classes, "classes");
        BeanDefinition<?> beanDefinition = koinDefinition2.getFactory().getBeanDefinition();
        beanDefinition.setSecondaryTypes(CollectionsKt.plus((Collection) beanDefinition.getSecondaryTypes(), (Object[]) classes));
        int length = classes.length;
        int i = 0;
        while (i < length) {
            KClass<?> kClass = classes[i];
            Qualifier typeQualifier$iv = koinDefinition2.getFactory().getBeanDefinition().getQualifier();
            Qualifier scopeQualifier$iv = koinDefinition2.getFactory().getBeanDefinition().getScopeQualifier();
            StringBuilder $this$indexKey_u24lambda_u240$iv = new StringBuilder();
            $this$indexKey_u24lambda_u240$iv.append(KClassExtKt.getFullName(kClass));
            $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
            if (typeQualifier$iv == null || (value = typeQualifier$iv.getValue()) == null) {
                value = "";
            }
            $this$indexKey_u24lambda_u240$iv.append(value);
            $this$indexKey_u24lambda_u240$iv.append(AbstractJsonLexerKt.COLON);
            $this$indexKey_u24lambda_u240$iv.append(scopeQualifier$iv);
            String mapping = $this$indexKey_u24lambda_u240$iv.toString();
            koinDefinition.getModule().saveMapping(mapping, koinDefinition.getFactory());
            i++;
            koinDefinition2 = koinDefinition;
        }
        return koinDefinition;
    }

    @OptionDslMarker
    public static final <T> KoinDefinition<T> onClose(KoinDefinition<T> koinDefinition, Function1<? super T, Unit> onClose) {
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        koinDefinition.getFactory().getBeanDefinition().setCallbacks(new Callbacks<>(onClose));
        return koinDefinition;
    }
}
