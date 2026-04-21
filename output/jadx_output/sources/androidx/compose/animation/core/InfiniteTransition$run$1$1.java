package androidx.compose.animation.core;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: InfiniteTransition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1", f = "InfiniteTransition.kt", i = {0, 0, 1, 1}, l = {TsExtractor.TS_STREAM_TYPE_AC4, 193}, m = "invokeSuspend", n = {"$this$LaunchedEffect", "durationScale", "$this$LaunchedEffect", "durationScale"}, s = {"L$0", "L$1", "L$0", "L$1"}, v = 1)
final class InfiniteTransition$run$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<State<Long>> $toolingOverride;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ InfiniteTransition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfiniteTransition$run$1$1(MutableState<State<Long>> mutableState, InfiniteTransition infiniteTransition, Continuation<? super InfiniteTransition$run$1$1> continuation) {
        super(2, continuation);
        this.$toolingOverride = mutableState;
        this.this$0 = infiniteTransition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        InfiniteTransition$run$1$1 infiniteTransition$run$1$1 = new InfiniteTransition$run$1$1(this.$toolingOverride, this.this$0, continuation);
        infiniteTransition$run$1$1.L$0 = obj;
        return infiniteTransition$run$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((InfiniteTransition$run$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x008a -> B:9:0x0045). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 1
            switch(r1) {
                case 0: goto L34;
                case 1: goto L24;
                case 2: goto L13;
                default: goto La;
            }
        La:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L13:
            java.lang.Object r1 = r9.L$1
            kotlin.jvm.internal.Ref$FloatRef r1 = (kotlin.jvm.internal.Ref.FloatRef) r1
            java.lang.Object r3 = r9.L$0
            kotlinx.coroutines.CoroutineScope r3 = (kotlinx.coroutines.CoroutineScope) r3
            kotlin.ResultKt.throwOnFailure(r10)
            r4 = r3
            r3 = r1
            r1 = r4
            r4 = r9
            goto L8d
        L24:
            java.lang.Object r1 = r9.L$1
            kotlin.jvm.internal.Ref$FloatRef r1 = (kotlin.jvm.internal.Ref.FloatRef) r1
            java.lang.Object r3 = r9.L$0
            kotlinx.coroutines.CoroutineScope r3 = (kotlinx.coroutines.CoroutineScope) r3
            kotlin.ResultKt.throwOnFailure(r10)
            r4 = r3
            r3 = r1
            r1 = r4
            r4 = r9
            goto L5f
        L34:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r1 = r9.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.jvm.internal.Ref$FloatRef r3 = new kotlin.jvm.internal.Ref$FloatRef
            r3.<init>()
            r4 = 1065353216(0x3f800000, float:1.0)
            r3.element = r4
            r4 = r9
        L45:
            androidx.compose.runtime.MutableState<androidx.compose.runtime.State<java.lang.Long>> r5 = r4.$toolingOverride
            androidx.compose.animation.core.InfiniteTransition r6 = r4.this$0
            androidx.compose.animation.core.InfiniteTransition$run$1$1$$ExternalSyntheticLambda0 r7 = new androidx.compose.animation.core.InfiniteTransition$run$1$1$$ExternalSyntheticLambda0
            r7.<init>()
            r5 = r4
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r4.L$0 = r1
            r4.L$1 = r3
            r4.label = r2
            java.lang.Object r5 = androidx.compose.animation.core.InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(r7, r5)
            if (r5 != r0) goto L5f
            return r0
        L5f:
            float r5 = r3.element
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 != 0) goto L68
            r5 = r2
            goto L69
        L68:
            r5 = 0
        L69:
            if (r5 == 0) goto L45
            androidx.compose.animation.core.InfiniteTransition$run$1$1$$ExternalSyntheticLambda1 r5 = new androidx.compose.animation.core.InfiniteTransition$run$1$1$$ExternalSyntheticLambda1
            r5.<init>()
            kotlinx.coroutines.flow.Flow r5 = androidx.compose.runtime.SnapshotStateKt.snapshotFlow(r5)
            androidx.compose.animation.core.InfiniteTransition$run$1$1$3 r6 = new androidx.compose.animation.core.InfiniteTransition$run$1$1$3
            r7 = 0
            r6.<init>(r7)
            kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
            r7 = r4
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r4.L$0 = r1
            r4.L$1 = r3
            r8 = 2
            r4.label = r8
            java.lang.Object r5 = kotlinx.coroutines.flow.FlowKt.first(r5, r6, r7)
            if (r5 != r0) goto L8d
            return r0
        L8d:
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.InfiniteTransition$run$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit invokeSuspend$lambda$0(MutableState $toolingOverride, InfiniteTransition this$0, Ref.FloatRef $durationScale, CoroutineScope $$this$LaunchedEffect, long it) {
        State state = (State) $toolingOverride.getValue();
        long currentTimeNanos = state != null ? ((Number) state.getValue()).longValue() : it;
        if (this$0.startTimeNanos == Long.MIN_VALUE) {
            this$0.startTimeNanos = it;
            MutableVector this_$iv = this$0._animations;
            Object[] content$iv = this_$iv.content;
            int size$iv = this_$iv.getSize();
            for (int i$iv = 0; i$iv < size$iv; i$iv++) {
                ((InfiniteTransition.TransitionAnimationState) content$iv[i$iv]).reset$animation_core();
            }
            $durationScale.element = SuspendAnimationKt.getDurationScale($$this$LaunchedEffect.getCoroutineContext());
        } else if (!($durationScale.element == SuspendAnimationKt.getDurationScale($$this$LaunchedEffect.getCoroutineContext()))) {
        }
        if ($durationScale.element == 0.0f) {
            MutableVector this_$iv2 = this$0._animations;
            Object[] content$iv2 = this_$iv2.content;
            int size$iv2 = this_$iv2.getSize();
            for (int i$iv2 = 0; i$iv2 < size$iv2; i$iv2++) {
                ((InfiniteTransition.TransitionAnimationState) content$iv2[i$iv2]).skipToEnd$animation_core();
            }
        } else {
            long playTimeNanos = (long) ((currentTimeNanos - this$0.startTimeNanos) / $durationScale.element);
            this$0.onFrame(playTimeNanos);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$1$3, reason: invalid class name */
    /* JADX INFO: compiled from: InfiniteTransition.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1$3", f = "InfiniteTransition.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass3 extends SuspendLambda implements Function2<Float, Continuation<? super Boolean>, Object> {
        /* synthetic */ float F$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
            anonymousClass3.F$0 = ((Number) obj).floatValue();
            return anonymousClass3;
        }

        public final Object invoke(float f, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(Float.valueOf(f), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Float f, Continuation<? super Boolean> continuation) {
            return invoke(f.floatValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    float it = this.F$0;
                    return Boxing.boxBoolean(it > 0.0f);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
