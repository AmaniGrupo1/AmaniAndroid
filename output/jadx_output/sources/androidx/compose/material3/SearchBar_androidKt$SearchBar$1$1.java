package androidx.compose.material3;

import androidx.activity.BackEventCompat;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SearchBar.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SearchBar_androidKt$SearchBar$1$1", f = "SearchBar.android.kt", i = {}, l = {191}, m = "invokeSuspend", n = {}, s = {})
final class SearchBar_androidKt$SearchBar$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Animatable<Float, AnimationVector1D> $animationProgress;
    final /* synthetic */ MutableState<BackEventCompat> $currentBackEvent;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ MutableFloatState $finalBackProgress;
    final /* synthetic */ MutableState<BackEventCompat> $firstBackEvent;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchBar_androidKt$SearchBar$1$1(Animatable<Float, AnimationVector1D> animatable, boolean z, MutableFloatState mutableFloatState, MutableState<BackEventCompat> mutableState, MutableState<BackEventCompat> mutableState2, Continuation<? super SearchBar_androidKt$SearchBar$1$1> continuation) {
        super(2, continuation);
        this.$animationProgress = animatable;
        this.$expanded = z;
        this.$finalBackProgress = mutableFloatState;
        this.$firstBackEvent = mutableState;
        this.$currentBackEvent = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SearchBar_androidKt$SearchBar$1$1(this.$animationProgress, this.$expanded, this.$finalBackProgress, this.$firstBackEvent, this.$currentBackEvent, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SearchBar_androidKt$SearchBar$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        SearchBar_androidKt$SearchBar$1$1 searchBar_androidKt$SearchBar$1$1;
        FiniteAnimationSpec animationSpec;
        SearchBar_androidKt$SearchBar$1$1 searchBar_androidKt$SearchBar$1$12;
        Object $result2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                searchBar_androidKt$SearchBar$1$1 = this;
                boolean animationInProgress = searchBar_androidKt$SearchBar$1$1.$animationProgress.getValue().floatValue() > 0.0f && searchBar_androidKt$SearchBar$1$1.$animationProgress.getValue().floatValue() < 1.0f;
                if (animationInProgress) {
                    animationSpec = SearchBar_androidKt.AnimationPredictiveBackExitFloatSpec;
                } else {
                    boolean animationInProgress2 = searchBar_androidKt$SearchBar$1$1.$expanded;
                    animationSpec = animationInProgress2 ? SearchBar_androidKt.AnimationEnterFloatSpec : SearchBar_androidKt.AnimationExitFloatSpec;
                }
                float targetValue = searchBar_androidKt$SearchBar$1$1.$expanded ? 1.0f : 0.0f;
                if (!(searchBar_androidKt$SearchBar$1$1.$animationProgress.getValue().floatValue() == targetValue)) {
                    Animatable<Float, AnimationVector1D> animatable = searchBar_androidKt$SearchBar$1$1.$animationProgress;
                    SearchBar_androidKt$SearchBar$1$1 searchBar_androidKt$SearchBar$1$13 = searchBar_androidKt$SearchBar$1$1;
                    searchBar_androidKt$SearchBar$1$1.label = 1;
                    if (animatable.animateTo(Boxing.boxFloat(targetValue), (4 & 2) != 0 ? animatable.defaultSpringSpec : animationSpec, (4 & 4) != 0 ? animatable.getVelocity() : null, (4 & 8) != 0 ? null : null, searchBar_androidKt$SearchBar$1$13) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    searchBar_androidKt$SearchBar$1$12 = searchBar_androidKt$SearchBar$1$1;
                    $result2 = $result;
                    searchBar_androidKt$SearchBar$1$1 = searchBar_androidKt$SearchBar$1$12;
                }
                if (!searchBar_androidKt$SearchBar$1$1.$expanded) {
                    searchBar_androidKt$SearchBar$1$1.$finalBackProgress.setFloatValue(Float.NaN);
                    searchBar_androidKt$SearchBar$1$1.$firstBackEvent.setValue(null);
                    searchBar_androidKt$SearchBar$1$1.$currentBackEvent.setValue(null);
                }
                return Unit.INSTANCE;
            case 1:
                searchBar_androidKt$SearchBar$1$12 = this;
                $result2 = $result;
                ResultKt.throwOnFailure($result2);
                searchBar_androidKt$SearchBar$1$1 = searchBar_androidKt$SearchBar$1$12;
                if (!searchBar_androidKt$SearchBar$1$1.$expanded) {
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
