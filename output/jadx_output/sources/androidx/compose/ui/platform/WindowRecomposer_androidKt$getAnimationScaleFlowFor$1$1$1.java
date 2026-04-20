package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: WindowRecomposer.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1", f = "WindowRecomposer.android.kt", i = {0, 1}, l = {115, 122}, m = "invokeSuspend", n = {"$this$flow", "$this$flow"}, s = {"L$0", "L$0"}, v = 1)
final class WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 extends SuspendLambda implements Function2<FlowCollector<? super Float>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Uri $animationScaleUri;
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ Channel<Unit> $channel;
    final /* synthetic */ WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 $contentObserver;
    final /* synthetic */ ContentResolver $resolver;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(ContentResolver contentResolver, Uri uri, WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1, Channel<Unit> channel, Context context, Continuation<? super WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1> continuation) {
        super(2, continuation);
        this.$resolver = contentResolver;
        this.$animationScaleUri = uri;
        this.$contentObserver = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;
        this.$channel = channel;
        this.$applicationContext = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(this.$resolver, this.$animationScaleUri, this.$contentObserver, this.$channel, this.$applicationContext, continuation);
        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = obj;
        return windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super Float> flowCollector, Continuation<? super Unit> continuation) {
        return ((WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0062 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: all -> 0x00ab, TRY_LEAVE, TryCatch #3 {all -> 0x00ab, blocks: (B:21:0x0069, B:23:0x0071), top: B:43:0x0069 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0099 -> B:38:0x0052). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) throws Throwable {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
        FlowCollector $this$flow;
        ChannelIterator<Unit> it;
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12;
        FlowCollector $this$flow2;
        Object obj;
        Object $result2;
        Object objHasNext;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$flow = (FlowCollector) this.L$0;
                    this.$resolver.registerContentObserver(this.$animationScaleUri, false, this.$contentObserver);
                    try {
                        it = this.$channel.iterator();
                        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = this;
                        try {
                            windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = $this$flow;
                            windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$1 = it;
                            windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.label = 1;
                            objHasNext = it.hasNext(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1);
                            if (objHasNext == $result3) {
                                return $result3;
                            }
                            Object obj2 = $result3;
                            $result2 = $result;
                            $result = objHasNext;
                            windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12 = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
                            $this$flow2 = $this$flow;
                            obj = obj2;
                            try {
                                if (((Boolean) $result).booleanValue()) {
                                    windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12.$resolver.unregisterContentObserver(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12.$contentObserver);
                                    return Unit.INSTANCE;
                                }
                                it.next();
                                float newValue = Settings.Global.getFloat(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12.$applicationContext.getContentResolver(), "animator_duration_scale", 1.0f);
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12.L$0 = $this$flow2;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12.L$1 = it;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12.label = 2;
                                if ($this$flow2.emit(Boxing.boxFloat(newValue), windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12) == obj) {
                                    return obj;
                                }
                                $result = $result2;
                                $result3 = obj;
                                $this$flow = $this$flow2;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = $this$flow;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$1 = it;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.label = 1;
                                objHasNext = it.hasNext(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1);
                                if (objHasNext == $result3) {
                                }
                            } catch (Throwable th) {
                                th = th;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12;
                                windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.$resolver.unregisterContentObserver(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.$contentObserver);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.$resolver.unregisterContentObserver(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.$contentObserver);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = this;
                        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.$resolver.unregisterContentObserver(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.$contentObserver);
                        throw th;
                    }
                    break;
                case 1:
                    ChannelIterator<Unit> channelIterator = (ChannelIterator) this.L$1;
                    FlowCollector $this$flow3 = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure($result);
                    windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$12 = this;
                    $this$flow2 = $this$flow3;
                    it = channelIterator;
                    obj = $result3;
                    $result2 = $result;
                    if (((Boolean) $result).booleanValue()) {
                    }
                    break;
                case 2:
                    ChannelIterator<Unit> channelIterator2 = (ChannelIterator) this.L$1;
                    FlowCollector $this$flow4 = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure($result);
                    it = channelIterator2;
                    $this$flow = $this$flow4;
                    windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = this;
                    windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = $this$flow;
                    windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$1 = it;
                    windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.label = 1;
                    objHasNext = it.hasNext(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1);
                    if (objHasNext == $result3) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th4) {
            th = th4;
            windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = this;
        }
    }
}
