package org.koin.core.instance;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.Values;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.error.MissingScopeValueException;
import org.koin.core.scope.Scope;
import org.koin.mp.KoinPlatformTools;

/* JADX INFO: compiled from: ScopedInstanceFactory.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u000f\u001a\u00020\u0010J!\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u0014\u001a\u00028\u0000H\u0001¢\u0006\u0002\u0010\u0015J\u0012\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0015\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0016¢\u0006\u0002\u0010\u001dJ\u0015\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0016¢\u0006\u0002\u0010\u001dJ\b\u0010\u001f\u001a\u00020\u0012H\u0016J\u001a\u0010 \u001a\u00020\u00122\n\u0010!\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\"\u001a\u00020#R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u0012\u0012\b\u0012\u00060\rj\u0002`\u000e\u0012\u0004\u0012\u00028\u00000\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lorg/koin/core/instance/ScopedInstanceFactory;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/instance/InstanceFactory;", "beanDefinition", "Lorg/koin/core/definition/BeanDefinition;", "holdInstance", "", "<init>", "(Lorg/koin/core/definition/BeanDefinition;Z)V", "getHoldInstance", "()Z", "values", "", "", "Lorg/koin/core/scope/ScopeID;", "size", "", "saveValue", "", TtmlNode.ATTR_ID, Values.VECTOR_MAP_VECTORS_KEY, "(Ljava/lang/String;Ljava/lang/Object;)V", "isCreated", "context", "Lorg/koin/core/instance/ResolutionContext;", "drop", "scope", "Lorg/koin/core/scope/Scope;", "create", "(Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;", "get", "dropAll", "refreshInstance", "scopeID", "instance", "", "koin-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScopedInstanceFactory<T> extends InstanceFactory<T> {
    private final boolean holdInstance;
    private Map<String, T> values;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScopedInstanceFactory(BeanDefinition<T> beanDefinition, boolean holdInstance) {
        super(beanDefinition);
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.holdInstance = holdInstance;
        this.values = KoinPlatformTools.INSTANCE.safeHashMap();
    }

    public /* synthetic */ ScopedInstanceFactory(BeanDefinition beanDefinition, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(beanDefinition, (i & 2) != 0 ? true : z);
    }

    public final boolean getHoldInstance() {
        return this.holdInstance;
    }

    public final int size() {
        return this.values.size();
    }

    public final void saveValue(String id, T value) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.values.put(id, value);
    }

    @Override // org.koin.core.instance.InstanceFactory
    public boolean isCreated(ResolutionContext context) {
        Scope scope;
        String scopeId = (context == null || (scope = context.getScope()) == null) ? null : scope.getId();
        Map<String, T> map = this.values;
        return scopeId == null ? !map.isEmpty() : map.get(scopeId) != null;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public void drop(final Scope scope) {
        if (scope != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit drop$lambda$0$0(ScopedInstanceFactory this$0, Scope $s) {
        T tRemove = this$0.values.remove($s.getId());
        Function1<T, Unit> onClose = this$0.getBeanDefinition().getCallbacks().getOnClose();
        if (onClose == null) {
            return null;
        }
        onClose.invoke(tRemove);
        return Unit.INSTANCE;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T create(ResolutionContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        T t = this.values.get(context.getScope().getId());
        if (t != null) {
            return t;
        }
        T t2 = (T) super.create(context);
        if (!this.holdInstance) {
            return t2;
        }
        this.values.put(context.getScope().getId(), t2);
        return t2;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T get(final ResolutionContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!Intrinsics.areEqual(context.getScope().getScopeQualifier(), getBeanDefinition().getScopeQualifier()) && !Intrinsics.areEqual(context.getScopeArchetype(), getBeanDefinition().getScopeQualifier())) {
            throw new IllegalStateException(("Wrong Scope qualifier: trying to open instance for " + context.getScope().getId() + " in " + getBeanDefinition()).toString());
        }
        T t = this.values.get(context.getScope().getId());
        if (t != null) {
            return t;
        }
        return (T) KoinPlatformTools.INSTANCE.m10543synchronized(this, new Function0() { // from class: org.koin.core.instance.ScopedInstanceFactory$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScopedInstanceFactory.get$lambda$0(this.f$0, context);
            }
        });
    }

    static final Object get$lambda$0(ScopedInstanceFactory scopedInstanceFactory, ResolutionContext resolutionContext) throws InstanceCreationException, MissingScopeValueException {
        T t = scopedInstanceFactory.values.get(resolutionContext.getScope().getId());
        if (t != null) {
            return t;
        }
        if (!scopedInstanceFactory.holdInstance) {
            throw new MissingScopeValueException("No value for scope '" + resolutionContext.getScope().getId() + "' in " + scopedInstanceFactory.getBeanDefinition());
        }
        Object objCreate = super.create(resolutionContext);
        if (scopedInstanceFactory.holdInstance) {
            scopedInstanceFactory.values.put(resolutionContext.getScope().getId(), (T) objCreate);
            return objCreate;
        }
        return objCreate;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public void dropAll() {
        KoinPlatformTools.INSTANCE.m10543synchronized(this, new Function0() { // from class: org.koin.core.instance.ScopedInstanceFactory$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScopedInstanceFactory.dropAll$lambda$0(this.f$0);
            }
        });
    }

    static final Unit dropAll$lambda$0(ScopedInstanceFactory this$0) {
        if (!this$0.values.isEmpty()) {
            Function1 onClose = this$0.getBeanDefinition().getCallbacks().getOnClose();
            if (onClose != null) {
                Iterable $this$forEach$iv = this$0.values.values();
                Iterator<T> it = $this$forEach$iv.iterator();
                while (it.hasNext()) {
                    onClose.invoke(it.next());
                }
            }
            this$0.values.clear();
        }
        return Unit.INSTANCE;
    }

    public final void refreshInstance(final String scopeID, final Object instance) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        Intrinsics.checkNotNullParameter(instance, "instance");
        KoinPlatformTools.INSTANCE.m10543synchronized(this, new Function0() { // from class: org.koin.core.instance.ScopedInstanceFactory$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScopedInstanceFactory.refreshInstance$lambda$0(this.f$0, scopeID, instance);
            }
        });
    }

    static final Unit refreshInstance$lambda$0(ScopedInstanceFactory this$0, String $scopeID, Object $instance) {
        this$0.values.put($scopeID, $instance);
        return Unit.INSTANCE;
    }
}
