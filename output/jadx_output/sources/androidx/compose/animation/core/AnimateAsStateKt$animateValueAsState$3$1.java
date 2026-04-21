package androidx.compose.animation.core;

import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: AnimateAsState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", i = {0}, l = {418}, m = "invokeSuspend", n = {"$this$LaunchedEffect"}, s = {"L$0"}, v = 1)
final class AnimateAsStateKt$animateValueAsState$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
    final /* synthetic */ Animatable<T, V> $animatable;
    final /* synthetic */ Channel<T> $channel;
    final /* synthetic */ State<Function1<T, Unit>> $listener$delegate;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimateAsStateKt$animateValueAsState$3$1(Channel<T> channel, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends Function1<? super T, Unit>> state2, Continuation<? super AnimateAsStateKt$animateValueAsState$3$1> continuation) {
        super(2, continuation);
        this.$channel = channel;
        this.$animatable = animatable;
        this.$animSpec$delegate = state;
        this.$listener$delegate = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AnimateAsStateKt$animateValueAsState$3$1 animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(this.$channel, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, continuation);
        animateAsStateKt$animateValueAsState$3$1.L$0 = obj;
        return animateAsStateKt$animateValueAsState$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AnimateAsStateKt$animateValueAsState$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004a -> B:12:0x004f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        AnimateAsStateKt$animateValueAsState$3$1 animateAsStateKt$animateValueAsState$3$1;
        CoroutineScope $this$LaunchedEffect;
        ChannelIterator channelIterator;
        Object $result;
        Object $result2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Object $result3 = obj;
                CoroutineScope $this$LaunchedEffect2 = (CoroutineScope) this.L$0;
                CoroutineScope $this$LaunchedEffect3 = $this$LaunchedEffect2;
                ChannelIterator it = this.$channel.iterator();
                AnimateAsStateKt$animateValueAsState$3$1 animateAsStateKt$animateValueAsState$3$12 = this;
                animateAsStateKt$animateValueAsState$3$12.L$0 = $this$LaunchedEffect3;
                animateAsStateKt$animateValueAsState$3$12.L$1 = it;
                animateAsStateKt$animateValueAsState$3$12.label = 1;
                Object objHasNext = it.hasNext(animateAsStateKt$animateValueAsState$3$12);
                if (objHasNext != coroutine_suspended) {
                    return coroutine_suspended;
                }
                animateAsStateKt$animateValueAsState$3$1 = animateAsStateKt$animateValueAsState$3$12;
                $this$LaunchedEffect = $this$LaunchedEffect3;
                channelIterator = it;
                $result = $result3;
                $result2 = objHasNext;
                if (!((Boolean) $result2).booleanValue()) {
                    Object target = channelIterator.next();
                    Object objM10069getOrNullimpl = ChannelResult.m10069getOrNullimpl(animateAsStateKt$animateValueAsState$3$1.$channel.mo10057tryReceivePtdJZtk());
                    if (objM10069getOrNullimpl != null) {
                        target = objM10069getOrNullimpl;
                    }
                    Object newTarget = target;
                    BuildersKt__Builders_commonKt.launch$default($this$LaunchedEffect, null, null, new AnonymousClass1(newTarget, animateAsStateKt$animateValueAsState$3$1.$animatable, animateAsStateKt$animateValueAsState$3$1.$animSpec$delegate, animateAsStateKt$animateValueAsState$3$1.$listener$delegate, null), 3, null);
                    $result3 = $result;
                    it = channelIterator;
                    $this$LaunchedEffect3 = $this$LaunchedEffect;
                    animateAsStateKt$animateValueAsState$3$12 = animateAsStateKt$animateValueAsState$3$1;
                    animateAsStateKt$animateValueAsState$3$12.L$0 = $this$LaunchedEffect3;
                    animateAsStateKt$animateValueAsState$3$12.L$1 = it;
                    animateAsStateKt$animateValueAsState$3$12.label = 1;
                    Object objHasNext2 = it.hasNext(animateAsStateKt$animateValueAsState$3$12);
                    if (objHasNext2 != coroutine_suspended) {
                    }
                } else {
                    return Unit.INSTANCE;
                }
                break;
            case 1:
                $result2 = obj;
                ChannelIterator channelIterator2 = (ChannelIterator) this.L$1;
                CoroutineScope $this$LaunchedEffect4 = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure($result2);
                animateAsStateKt$animateValueAsState$3$1 = this;
                $this$LaunchedEffect = $this$LaunchedEffect4;
                channelIterator = channelIterator2;
                $result = $result2;
                if (!((Boolean) $result2).booleanValue()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: AnimateAsState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1", f = "AnimateAsState.kt", i = {}, l = {427}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
        final /* synthetic */ Animatable<T, V> $animatable;
        final /* synthetic */ State<Function1<T, Unit>> $listener$delegate;
        final /* synthetic */ T $newTarget;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(T t, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends Function1<? super T, Unit>> state2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$newTarget = t;
            this.$animatable = animatable;
            this.$animSpec$delegate = state;
            this.$listener$delegate = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$newTarget, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Function1 function1AnimateValueAsState$lambda$3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    if (!Intrinsics.areEqual(this.$newTarget, this.$animatable.getTargetValue())) {
                        Animatable<T, V> animatable = this.$animatable;
                        T t = this.$newTarget;
                        AnimationSpec animationSpecAnimateValueAsState$lambda$5 = AnimateAsStateKt.animateValueAsState$lambda$5(this.$animSpec$delegate);
                        this.label = 1;
                        if (animatable.animateTo(t, (4 & 2) != 0 ? animatable.defaultSpringSpec : animationSpecAnimateValueAsState$lambda$5, (4 & 4) != 0 ? animatable.getVelocity() : null, (4 & 8) != 0 ? null : null, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        function1AnimateValueAsState$lambda$3 = AnimateAsStateKt.animateValueAsState$lambda$3(this.$listener$delegate);
                        if (function1AnimateValueAsState$lambda$3 != null) {
                            function1AnimateValueAsState$lambda$3.invoke(this.$animatable.getValue());
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    function1AnimateValueAsState$lambda$3 = AnimateAsStateKt.animateValueAsState$lambda$3(this.$listener$delegate);
                    if (function1AnimateValueAsState$lambda$3 != null) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
