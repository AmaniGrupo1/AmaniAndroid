package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.R;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.core.os.HandlerCompat;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import com.google.firebase.firestore.model.Values;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: WindowRecomposer.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u0003\u001a\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002\u001a \u0010\u0019\u001a\u00020\u0014*\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\",\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u00032\b\u0010\u0000\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007\" \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000\"\u0018\u0010\u0010\u001a\u00020\u0003*\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012\"\u001e\u0010\u0013\u001a\u00020\u0014*\u00020\u00038@X\u0080\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, d2 = {Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/runtime/CompositionContext;", "compositionContext", "Landroid/view/View;", "getCompositionContext", "(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;", "setCompositionContext", "(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V", "findViewTreeCompositionContext", "animationScale", "", "Landroid/content/Context;", "Lkotlinx/coroutines/flow/StateFlow;", "", "getAnimationScaleFlowFor", "applicationContext", "contentChild", "getContentChild", "(Landroid/view/View;)Landroid/view/View;", "windowRecomposer", "Landroidx/compose/runtime/Recomposer;", "getWindowRecomposer$annotations", "(Landroid/view/View;)V", "getWindowRecomposer", "(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;", "createLifecycleAwareWindowRecomposer", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class WindowRecomposer_androidKt {
    private static final Map<Context, StateFlow<Float>> animationScale = new LinkedHashMap();

    public static /* synthetic */ void getWindowRecomposer$annotations(View view) {
    }

    public static final CompositionContext getCompositionContext(View $this$compositionContext) {
        Object tag = $this$compositionContext.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    public static final void setCompositionContext(View $this$compositionContext, CompositionContext value) {
        $this$compositionContext.setTag(R.id.androidx_compose_ui_view_composition_context, value);
    }

    public static final CompositionContext findViewTreeCompositionContext(View $this$findViewTreeCompositionContext) {
        CompositionContext found = getCompositionContext($this$findViewTreeCompositionContext);
        if (found != null) {
            return found;
        }
        for (ViewParent parent = $this$findViewTreeCompositionContext.getParent(); found == null && (parent instanceof View); parent = ViewTree.getParentOrViewTreeDisjointParent((View) parent)) {
            found = getCompositionContext((View) parent);
        }
        return found;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r12v1, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    public static final StateFlow<Float> getAnimationScaleFlowFor(Context applicationContext) throws Throwable {
        StateFlow<Float> stateFlowStateIn;
        Object lock$iv = animationScale;
        synchronized (lock$iv) {
            try {
                Map<Context, StateFlow<Float>> map = animationScale;
                StateFlow<Float> stateFlow = map.get(applicationContext);
                if (stateFlow == null) {
                    ContentResolver resolver = applicationContext.getContentResolver();
                    Uri animationScaleUri = Settings.Global.getUriFor("animator_duration_scale");
                    final Channel channel = ChannelKt.Channel$default(-1, null, null, 6, null);
                    final Handler handlerCreateAsync = HandlerCompat.createAsync(Looper.getMainLooper());
                    try {
                        stateFlowStateIn = FlowKt.stateIn(FlowKt.flow(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(resolver, animationScaleUri, new ContentObserver(handlerCreateAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                            @Override // android.database.ContentObserver
                            public void onChange(boolean selfChange, Uri uri) {
                                channel.mo10050trySendJP2dKIU(Unit.INSTANCE);
                            }
                        }, channel, applicationContext, null)), CoroutineScopeKt.MainScope(), SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 0L, 0L, 3, null), Float.valueOf(Settings.Global.getFloat(applicationContext.getContentResolver(), "animator_duration_scale", 1.0f)));
                        map.put(applicationContext, stateFlowStateIn);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } else {
                    stateFlowStateIn = stateFlow;
                }
                return stateFlowStateIn;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static final View getContentChild(View $this$contentChild) {
        View self = $this$contentChild;
        ViewParent parent = self.getParent();
        while (parent instanceof View) {
            if (((View) parent).getId() == 16908290) {
                return self;
            }
            self = parent;
            parent = self.getParent();
        }
        return self;
    }

    public static final Recomposer getWindowRecomposer(View $this$windowRecomposer) {
        boolean value$iv = $this$windowRecomposer.isAttachedToWindow();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException("Cannot locate windowRecomposer; View " + $this$windowRecomposer + " is not attached to a window");
        }
        View rootView = getContentChild($this$windowRecomposer);
        CompositionContext rootParentRef = getCompositionContext(rootView);
        if (rootParentRef == null) {
            return WindowRecomposerPolicy.INSTANCE.createAndInstallWindowRecomposer$ui(rootView);
        }
        if (rootParentRef instanceof Recomposer) {
            return (Recomposer) rootParentRef;
        }
        throw new IllegalStateException("root viewTreeParentCompositionContext is not a Recomposer".toString());
    }

    public static /* synthetic */ Recomposer createLifecycleAwareWindowRecomposer$default(View view, CoroutineContext coroutineContext, Lifecycle lifecycle, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            lifecycle = null;
        }
        return createLifecycleAwareWindowRecomposer(view, coroutineContext, lifecycle);
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [T, androidx.compose.ui.platform.MotionDurationScaleImpl] */
    public static final Recomposer createLifecycleAwareWindowRecomposer(final View $this$createLifecycleAwareWindowRecomposer, CoroutineContext coroutineContext, Lifecycle lifecycle) {
        PausableMonotonicFrameClock $this$createLifecycleAwareWindowRecomposer_u24lambda_u240_u240;
        CoroutineContext baseContext = (coroutineContext.get(ContinuationInterceptor.INSTANCE) == null || coroutineContext.get(MonotonicFrameClock.INSTANCE) == null) ? AndroidUiDispatcher.INSTANCE.getCurrentThread().plus(coroutineContext) : coroutineContext;
        MonotonicFrameClock it = (MonotonicFrameClock) baseContext.get(MonotonicFrameClock.INSTANCE);
        Lifecycle viewTreeLifecycle = null;
        if (it != null) {
            $this$createLifecycleAwareWindowRecomposer_u24lambda_u240_u240 = new PausableMonotonicFrameClock(it);
            $this$createLifecycleAwareWindowRecomposer_u24lambda_u240_u240.pause();
        } else {
            $this$createLifecycleAwareWindowRecomposer_u24lambda_u240_u240 = null;
        }
        final PausableMonotonicFrameClock pausableClock = $this$createLifecycleAwareWindowRecomposer_u24lambda_u240_u240;
        final Ref.ObjectRef systemDurationScaleSettingConsumer = new Ref.ObjectRef();
        MotionDurationScale motionDurationScale = (MotionDurationScale) baseContext.get(MotionDurationScale.INSTANCE);
        if (motionDurationScale == null) {
            ?? motionDurationScaleImpl = new MotionDurationScaleImpl();
            systemDurationScaleSettingConsumer.element = motionDurationScaleImpl;
            motionDurationScale = (MotionDurationScale) motionDurationScaleImpl;
        }
        CoroutineContext contextWithClockAndMotionScale = baseContext.plus(pausableClock != null ? pausableClock : EmptyCoroutineContext.INSTANCE).plus(motionDurationScale);
        final Recomposer recomposer = new Recomposer(contextWithClockAndMotionScale);
        recomposer.pauseCompositionFrameClock();
        final CoroutineScope runRecomposeScope = CoroutineScopeKt.CoroutineScope(contextWithClockAndMotionScale);
        if (lifecycle == null) {
            LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get($this$createLifecycleAwareWindowRecomposer);
            if (lifecycleOwner != null) {
                viewTreeLifecycle = lifecycleOwner.getLifecycleRegistry();
            }
        } else {
            viewTreeLifecycle = lifecycle;
        }
        if (viewTreeLifecycle == null) {
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("ViewTreeLifecycleOwner not found from " + $this$createLifecycleAwareWindowRecomposer);
            throw new KotlinNothingValueException();
        }
        $this$createLifecycleAwareWindowRecomposer.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View v) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View v) {
                $this$createLifecycleAwareWindowRecomposer.removeOnAttachStateChangeListener(this);
                recomposer.cancel();
            }
        });
        viewTreeLifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer.2

            /* JADX INFO: renamed from: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings */
            /* JADX INFO: compiled from: WindowRecomposer.android.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[Lifecycle.Event.values().length];
                    try {
                        iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                    } catch (NoSuchFieldError e) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                    } catch (NoSuchFieldError e2) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                    } catch (NoSuchFieldError e3) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                    } catch (NoSuchFieldError e4) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                    } catch (NoSuchFieldError e5) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                    } catch (NoSuchFieldError e6) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                    } catch (NoSuchFieldError e7) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                switch (WhenMappings.$EnumSwitchMapping$0[event.ordinal()]) {
                    case 1:
                        BuildersKt__Builders_commonKt.launch$default(runRecomposeScope, null, CoroutineStart.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(systemDurationScaleSettingConsumer, recomposer, source, this, $this$createLifecycleAwareWindowRecomposer, null), 1, null);
                        return;
                    case 2:
                        PausableMonotonicFrameClock pausableMonotonicFrameClock = pausableClock;
                        if (pausableMonotonicFrameClock != null) {
                            pausableMonotonicFrameClock.resume();
                        }
                        recomposer.resumeCompositionFrameClock();
                        return;
                    case 3:
                        recomposer.pauseCompositionFrameClock();
                        return;
                    case 4:
                        recomposer.cancel();
                        break;
                    case 5:
                    case 6:
                    case 7:
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
        });
        return recomposer;
    }
}
