package coil.intercept;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import coil.EventListener;
import coil.intercept.EngineInterceptor;
import coil.request.ImageRequest;
import coil.request.Options;
import coil.size.Size;
import coil.transform.Transformation;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: EngineInterceptor.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil/intercept/EngineInterceptor$ExecuteResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "coil.intercept.EngineInterceptor$transform$3", f = "EngineInterceptor.kt", i = {0, 0, 0}, l = {246}, m = "invokeSuspend", n = {"$this$withContext", "$this$foldIndices$iv", "i$iv"}, s = {"L$0", "L$1", "I$0"})
final class EngineInterceptor$transform$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super EngineInterceptor.ExecuteResult>, Object> {
    final /* synthetic */ EventListener $eventListener;
    final /* synthetic */ Options $options;
    final /* synthetic */ ImageRequest $request;
    final /* synthetic */ EngineInterceptor.ExecuteResult $result;
    final /* synthetic */ List<Transformation> $transformations;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ EngineInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    EngineInterceptor$transform$3(EngineInterceptor engineInterceptor, EngineInterceptor.ExecuteResult executeResult, Options options, List<? extends Transformation> list, EventListener eventListener, ImageRequest imageRequest, Continuation<? super EngineInterceptor$transform$3> continuation) {
        super(2, continuation);
        this.this$0 = engineInterceptor;
        this.$result = executeResult;
        this.$options = options;
        this.$transformations = list;
        this.$eventListener = eventListener;
        this.$request = imageRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        EngineInterceptor$transform$3 engineInterceptor$transform$3 = new EngineInterceptor$transform$3(this.this$0, this.$result, this.$options, this.$transformations, this.$eventListener, this.$request, continuation);
        engineInterceptor$transform$3.L$0 = obj;
        return engineInterceptor$transform$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super EngineInterceptor.ExecuteResult> continuation) {
        return ((EngineInterceptor$transform$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x008a -> B:13:0x0090). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        EngineInterceptor$transform$3 engineInterceptor$transform$3;
        Object accumulator$iv;
        Bitmap output;
        CoroutineScope $this$withContext;
        Object $result;
        Options options;
        int i$iv;
        List<Transformation> list;
        int size;
        Object $result2;
        Object $result3;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                engineInterceptor$transform$3 = this;
                accumulator$iv = obj;
                CoroutineScope $this$withContext2 = (CoroutineScope) engineInterceptor$transform$3.L$0;
                output = engineInterceptor$transform$3.this$0.convertDrawableToBitmap(engineInterceptor$transform$3.$result.getDrawable(), engineInterceptor$transform$3.$options, engineInterceptor$transform$3.$transformations);
                engineInterceptor$transform$3.$eventListener.transformStart(engineInterceptor$transform$3.$request, output);
                List<Transformation> list2 = engineInterceptor$transform$3.$transformations;
                $this$withContext = $this$withContext2;
                $result = null;
                options = engineInterceptor$transform$3.$options;
                i$iv = 0;
                list = list2;
                size = list2.size();
                if (i$iv < size) {
                    Transformation transformation = list.get(i$iv);
                    Size size2 = options.getSize();
                    engineInterceptor$transform$3.L$0 = $this$withContext;
                    engineInterceptor$transform$3.L$1 = list;
                    engineInterceptor$transform$3.L$2 = options;
                    engineInterceptor$transform$3.I$0 = i$iv;
                    engineInterceptor$transform$3.I$1 = size;
                    engineInterceptor$transform$3.label = 1;
                    Object objTransform = transformation.transform(output, size2, engineInterceptor$transform$3);
                    if (objTransform == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj3 = $result;
                    $result2 = accumulator$iv;
                    $result3 = objTransform;
                    obj2 = obj3;
                    CoroutineScopeKt.ensureActive($this$withContext);
                    i$iv++;
                    Object obj4 = obj2;
                    output = (Bitmap) $result3;
                    accumulator$iv = $result2;
                    $result = obj4;
                    if (i$iv < size) {
                        engineInterceptor$transform$3.$eventListener.transformEnd(engineInterceptor$transform$3.$request, output);
                        EngineInterceptor.ExecuteResult executeResult = engineInterceptor$transform$3.$result;
                        Context context$iv = engineInterceptor$transform$3.$request.getContext();
                        Bitmap $this$toDrawable$iv = output;
                        Resources resources$iv$iv = context$iv.getResources();
                        return EngineInterceptor.ExecuteResult.copy$default(executeResult, new BitmapDrawable(resources$iv$iv, $this$toDrawable$iv), false, null, null, 14, null);
                    }
                }
                break;
            case 1:
                engineInterceptor$transform$3 = this;
                $result3 = obj;
                size = engineInterceptor$transform$3.I$1;
                i$iv = engineInterceptor$transform$3.I$0;
                options = (Options) engineInterceptor$transform$3.L$2;
                list = (List) engineInterceptor$transform$3.L$1;
                $this$withContext = (CoroutineScope) engineInterceptor$transform$3.L$0;
                ResultKt.throwOnFailure($result3);
                obj2 = null;
                $result2 = $result3;
                CoroutineScopeKt.ensureActive($this$withContext);
                i$iv++;
                Object obj42 = obj2;
                output = (Bitmap) $result3;
                accumulator$iv = $result2;
                $result = obj42;
                if (i$iv < size) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
