package org.koin.core.definition;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.koin.core.module.KoinDslMarker;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: BeanDefinition.kt */
/* JADX INFO: loaded from: classes23.dex */
@KoinDslMarker
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Bx\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012'\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\f\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0012\b\u0002\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015Bj\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012'\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\f\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0011¢\u0006\u0004\b\u0014\u0010\u0016J\n\u00108\u001a\u000209H\u0096\u0080\u0004J\u0014\u0010:\u001a\u00020\u00132\b\u0010;\u001a\u0004\u0018\u00010\u0002H\u0096\u0082\u0004J\u0015\u0010<\u001a\u00020\u00132\n\u0010=\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0086\bJ'\u0010>\u001a\u00020\u00132\n\u0010=\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010?\u001a\u00020\u0004H\u0086\bJ\n\u0010@\u001a\u00020AH\u0096\u0080\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001dR2\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\f¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R$\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R \u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00101\u001a\u00020\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006B"}, d2 = {"Lorg/koin/core/definition/BeanDefinition;", ExifInterface.GPS_DIRECTION_TRUE, "", "scopeQualifier", "Lorg/koin/core/qualifier/Qualifier;", "primaryType", "Lkotlin/reflect/KClass;", "qualifier", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/ParametersHolder;", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/definition/Definition;", "kind", "Lorg/koin/core/definition/Kind;", "secondaryTypes", "", "allowOverride", "", "<init>", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Ljava/lang/Boolean;)V", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V", "getScopeQualifier", "()Lorg/koin/core/qualifier/Qualifier;", "getPrimaryType", "()Lkotlin/reflect/KClass;", "getQualifier", "setQualifier", "(Lorg/koin/core/qualifier/Qualifier;)V", "getDefinition", "()Lkotlin/jvm/functions/Function2;", "getKind", "()Lorg/koin/core/definition/Kind;", "getSecondaryTypes", "()Ljava/util/List;", "setSecondaryTypes", "(Ljava/util/List;)V", "getAllowOverride", "()Ljava/lang/Boolean;", "setAllowOverride", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "callbacks", "Lorg/koin/core/definition/Callbacks;", "getCallbacks", "()Lorg/koin/core/definition/Callbacks;", "setCallbacks", "(Lorg/koin/core/definition/Callbacks;)V", "_createdAtStart", "get_createdAtStart$annotations", "()V", "get_createdAtStart", "()Z", "set_createdAtStart", "(Z)V", "toString", "", "equals", "other", "hasType", "clazz", "is", "scopeDefinition", "hashCode", "", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeanDefinition<T> {
    private boolean _createdAtStart;
    private Boolean allowOverride;
    private Callbacks<T> callbacks;
    private final Function2<Scope, ParametersHolder, T> definition;
    private final Kind kind;
    private final KClass<?> primaryType;
    private Qualifier qualifier;
    private final Qualifier scopeQualifier;
    private List<? extends KClass<?>> secondaryTypes;

    public static /* synthetic */ void get_createdAtStart$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BeanDefinition(Qualifier scopeQualifier, KClass<?> primaryType, Qualifier qualifier, Function2<? super Scope, ? super ParametersHolder, ? extends T> definition, Kind kind, List<? extends KClass<?>> secondaryTypes, Boolean allowOverride) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        this.scopeQualifier = scopeQualifier;
        this.primaryType = primaryType;
        this.qualifier = qualifier;
        this.definition = definition;
        this.kind = kind;
        this.secondaryTypes = secondaryTypes;
        this.allowOverride = allowOverride;
        this.callbacks = new Callbacks<>(null, 1, null);
    }

    public /* synthetic */ BeanDefinition(Qualifier qualifier, KClass kClass, Qualifier qualifier2, Function2 function2, Kind kind, List list, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(qualifier, kClass, (i & 4) != 0 ? null : qualifier2, function2, kind, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? null : bool);
    }

    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public final KClass<?> getPrimaryType() {
        return this.primaryType;
    }

    public final Qualifier getQualifier() {
        return this.qualifier;
    }

    public final void setQualifier(Qualifier qualifier) {
        this.qualifier = qualifier;
    }

    public final Function2<Scope, ParametersHolder, T> getDefinition() {
        return this.definition;
    }

    public final Kind getKind() {
        return this.kind;
    }

    public final List<KClass<?>> getSecondaryTypes() {
        return this.secondaryTypes;
    }

    public final void setSecondaryTypes(List<? extends KClass<?>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.secondaryTypes = list;
    }

    public final Boolean getAllowOverride() {
        return this.allowOverride;
    }

    public final void setAllowOverride(Boolean bool) {
        this.allowOverride = bool;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility constructor - use primary constructor")
    public /* synthetic */ BeanDefinition(Qualifier scopeQualifier, KClass primaryType, Qualifier qualifier, Function2 definition, Kind kind, List secondaryTypes) {
        this(scopeQualifier, primaryType, qualifier, definition, kind, secondaryTypes, null);
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
    }

    public final Callbacks<T> getCallbacks() {
        return this.callbacks;
    }

    public final void setCallbacks(Callbacks<T> callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "<set-?>");
        this.callbacks = callbacks;
    }

    public final boolean get_createdAtStart() {
        return this._createdAtStart;
    }

    public final void set_createdAtStart(boolean z) {
        this._createdAtStart = z;
    }

    public String toString() {
        StringBuilder $this$toString_u24lambda_u240 = new StringBuilder();
        $this$toString_u24lambda_u240.append(AbstractJsonLexerKt.BEGIN_LIST);
        $this$toString_u24lambda_u240.append(this.kind);
        $this$toString_u24lambda_u240.append(": '");
        $this$toString_u24lambda_u240.append(KClassExtKt.getFullName(this.primaryType));
        $this$toString_u24lambda_u240.append('\'');
        if (this.qualifier != null) {
            $this$toString_u24lambda_u240.append(",qualifier:");
            $this$toString_u24lambda_u240.append(this.qualifier);
        }
        if (!Intrinsics.areEqual(this.scopeQualifier, ScopeRegistry.INSTANCE.getRootScopeQualifier())) {
            $this$toString_u24lambda_u240.append(",scope:");
            $this$toString_u24lambda_u240.append(this.scopeQualifier);
        }
        if (!this.secondaryTypes.isEmpty()) {
            $this$toString_u24lambda_u240.append(",binds:");
            CollectionsKt.joinTo(this.secondaryTypes, $this$toString_u24lambda_u240, (124 & 2) != 0 ? ", " : ",", (124 & 4) != 0 ? "" : null, (124 & 8) != 0 ? "" : null, (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : new Function1() { // from class: org.koin.core.definition.BeanDefinition$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BeanDefinition.toString$lambda$0$0((KClass) obj);
                }
            });
        }
        $this$toString_u24lambda_u240.append(AbstractJsonLexerKt.END_LIST);
        return $this$toString_u24lambda_u240.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$0$0(KClass it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return KClassExtKt.getFullName(it);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>");
        return Intrinsics.areEqual(this.primaryType, ((BeanDefinition) other).primaryType) && Intrinsics.areEqual(this.qualifier, ((BeanDefinition) other).qualifier) && Intrinsics.areEqual(this.scopeQualifier, ((BeanDefinition) other).scopeQualifier);
    }

    public final boolean hasType(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return Intrinsics.areEqual(getPrimaryType(), clazz) || getSecondaryTypes().contains(clazz);
    }

    public final boolean is(KClass<?> clazz, Qualifier qualifier, Qualifier scopeDefinition) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeDefinition, "scopeDefinition");
        return (Intrinsics.areEqual(getPrimaryType(), clazz) || getSecondaryTypes().contains(clazz)) && Intrinsics.areEqual(getQualifier(), qualifier) && Intrinsics.areEqual(getScopeQualifier(), scopeDefinition);
    }

    public int hashCode() {
        Qualifier qualifier = this.qualifier;
        int result = qualifier != null ? qualifier.hashCode() : 0;
        return (((result * 31) + this.primaryType.hashCode()) * 31) + this.scopeQualifier.hashCode();
    }
}
