package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.Owner;
import androidx.media3.extractor.ts.TsExtractor;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: PlatformTextInputModifierNode.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0086@¢\u0006\u0002\u0010\t\u001a(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u000b0\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001aE\u0010\u0015\u001a\u00020\u0001*\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00142'\u0010\u0018\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0082@¢\u0006\u0002\u0010\u0019\"\u0016\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"establishTextInputSession", "", "Landroidx/compose/ui/platform/PlatformTextInputModifierNode;", "block", "Lkotlin/Function2;", "Landroidx/compose/ui/platform/PlatformTextInputSessionScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/platform/PlatformTextInputModifierNode;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "InterceptPlatformTextInput", "", "interceptor", "Landroidx/compose/ui/platform/PlatformTextInputInterceptor;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/ui/platform/PlatformTextInputInterceptor;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "LocalChainedPlatformTextInputInterceptor", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/ui/platform/ChainedPlatformTextInputInterceptor;", "interceptedTextInputSession", "Landroidx/compose/ui/node/Owner;", "chainedInterceptor", "session", "(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/ChainedPlatformTextInputInterceptor;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PlatformTextInputModifierNodeKt {
    private static final ProvidableCompositionLocal<ChainedPlatformTextInputInterceptor> LocalChainedPlatformTextInputInterceptor = CompositionLocalKt.staticCompositionLocalOf(new Function0<ChainedPlatformTextInputInterceptor>() { // from class: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ChainedPlatformTextInputInterceptor invoke() {
            return null;
        }
    });

    /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlatformTextInputModifierNode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.platform.PlatformTextInputModifierNodeKt", f = "PlatformTextInputModifierNode.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_DTS_HD}, m = "establishTextInputSession", n = {}, s = {}, v = 1)
    static final class C05731 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05731(Continuation<? super C05731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlatformTextInputModifierNodeKt.establishTextInputSession(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlatformTextInputModifierNode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.platform.PlatformTextInputModifierNodeKt", f = "PlatformTextInputModifierNode.kt", i = {}, l = {184, 186}, m = "interceptedTextInputSession", n = {}, s = {}, v = 1)
    static final class C05741 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05741(Continuation<? super C05741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlatformTextInputModifierNodeKt.interceptedTextInputSession(null, null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object establishTextInputSession(PlatformTextInputModifierNode $this$establishTextInputSession, Function2<? super PlatformTextInputSessionScope, ? super Continuation<?>, ? extends Object> function2, Continuation<?> continuation) {
        C05731 c05731;
        if (continuation instanceof C05731) {
            c05731 = (C05731) continuation;
            if ((c05731.label & Integer.MIN_VALUE) != 0) {
                c05731.label -= Integer.MIN_VALUE;
            } else {
                c05731 = new C05731(continuation);
            }
        }
        Object $result = c05731.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c05731.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (!$this$establishTextInputSession.getNode().getIsAttached()) {
                    throw new IllegalArgumentException("establishTextInputSession called from an unattached node".toString());
                }
                Owner owner = DelegatableNodeKt.requireOwner($this$establishTextInputSession);
                ChainedPlatformTextInputInterceptor handler = (ChainedPlatformTextInputInterceptor) DelegatableNodeKt.requireLayoutNode($this$establishTextInputSession).getCompositionLocalMap().get(LocalChainedPlatformTextInputInterceptor);
                c05731.label = 1;
                if (interceptedTextInputSession(owner, handler, function2, c05731) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        throw new KotlinNothingValueException();
    }

    public static final void InterceptPlatformTextInput(final PlatformTextInputInterceptor interceptor, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-1892278287);
        ComposerKt.sourceInformation($composer2, "C(InterceptPlatformTextInput)P(1)156@7639L7,162@8034L77,168@8332L136:PlatformTextInputModifierNode.kt#itgzvw");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer2.changed(interceptor) : $composer2.changedInstance(interceptor) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (!$composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1892278287, $dirty, -1, "androidx.compose.ui.platform.InterceptPlatformTextInput (PlatformTextInputModifierNode.kt:155)");
            }
            ProvidableCompositionLocal<ChainedPlatformTextInputInterceptor> providableCompositionLocal = LocalChainedPlatformTextInputInterceptor;
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(providableCompositionLocal);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ChainedPlatformTextInputInterceptor parent = (ChainedPlatformTextInputInterceptor) objConsume;
            ComposerKt.sourceInformationMarkerStart($composer2, -1708249186, "CC(remember):PlatformTextInputModifierNode.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(parent);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new ChainedPlatformTextInputInterceptor(interceptor, parent);
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ChainedPlatformTextInputInterceptor chainedInterceptor = (ChainedPlatformTextInputInterceptor) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            chainedInterceptor.updateInterceptor(interceptor);
            CompositionLocalKt.CompositionLocalProvider(LocalChainedPlatformTextInputInterceptor.provides(chainedInterceptor), function2, $composer2, ProvidedValue.$stable | ($dirty & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.InterceptPlatformTextInput.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    PlatformTextInputModifierNodeKt.InterceptPlatformTextInput(interceptor, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object interceptedTextInputSession(Owner $this$interceptedTextInputSession, ChainedPlatformTextInputInterceptor chainedInterceptor, Function2<? super PlatformTextInputSessionScope, ? super Continuation<?>, ? extends Object> function2, Continuation<?> continuation) {
        C05741 c05741;
        if (continuation instanceof C05741) {
            c05741 = (C05741) continuation;
            if ((c05741.label & Integer.MIN_VALUE) != 0) {
                c05741.label -= Integer.MIN_VALUE;
            } else {
                c05741 = new C05741(continuation);
            }
        }
        Object $result = c05741.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c05741.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (chainedInterceptor == null) {
                    c05741.label = 1;
                    if ($this$interceptedTextInputSession.textInputSession(function2, c05741) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    throw new KotlinNothingValueException();
                }
                c05741.label = 2;
                if (chainedInterceptor.textInputSession($this$interceptedTextInputSession, function2, c05741) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                throw new KotlinNothingValueException();
            case 1:
                ResultKt.throwOnFailure($result);
                throw new KotlinNothingValueException();
            case 2:
                ResultKt.throwOnFailure($result);
                throw new KotlinNothingValueException();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
