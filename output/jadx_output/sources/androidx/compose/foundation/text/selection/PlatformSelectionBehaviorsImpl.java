package androidx.compose.foundation.text.selection;

import android.app.RemoteAction;
import android.content.Context;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope_androidKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: PlatformSelectionBehaviors.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\"\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001eH\u0096@¢\u0006\u0004\b\"\u0010#J \u0010$\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001eH\u0082@¢\u0006\u0004\b&\u0010#J*\u0010'\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001e2\b\u0010(\u001a\u0004\u0018\u00010)H\u0096@¢\u0006\u0004\b*\u0010+J \u0010,\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001eH\u0096@¢\u0006\u0004\b-\u0010#J(\u0010.\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\u000fH\u0082@¢\u0006\u0004\b0\u00101J<\u00104\u001a\u00020%*\u0002052\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001e2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020%07¢\u0006\u0002\b8H\u0000¢\u0006\u0004\b9\u0010:J\u001f\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b=\u0010>J?\u0010?\u001a\u0004\u0018\u0001H@\"\u0004\b\u0000\u0010@2'\u0010A\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H@0C\u0012\u0006\u0012\u0004\u0018\u0001030B¢\u0006\u0002\b8H\u0082@¢\u0006\u0002\u0010DR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R/\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u00118B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u000e\u00102\u001a\u000203X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006E"}, d2 = {"Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;", "Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "context", "Landroid/content/Context;", "selectedTextType", "Landroidx/compose/foundation/text/selection/SelectedTextType;", "localeList", "Landroidx/compose/ui/text/intl/LocaleList;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "textClassificationSession", "Landroid/view/textclassifier/TextClassifier;", "<set-?>", "Landroidx/compose/foundation/text/selection/TextClassificationResult;", "textClassificationResult", "getTextClassificationResult", "()Landroidx/compose/foundation/text/selection/TextClassificationResult;", "setTextClassificationResult", "(Landroidx/compose/foundation/text/selection/TextClassificationResult;)V", "textClassificationResult$delegate", "Landroidx/compose/runtime/MutableState;", "androidLocalList", "Landroid/os/LocaleList;", "getAndroidLocalList", "()Landroid/os/LocaleList;", "suggestSelectionForLongPressOrDoubleClick", "Landroidx/compose/ui/text/TextRange;", "text", "", "selection", "suggestSelectionForLongPressOrDoubleClick-pYaCw-w", "(Ljava/lang/CharSequence;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onShowContextMenuOrSelectionToolbar", "", "onShowContextMenuOrSelectionToolbar-Sb-Bc2M", "onShowContextMenu", "secondaryClickLocation", "Landroidx/compose/ui/geometry/Offset;", "onShowContextMenu-_2OEclM", "(Ljava/lang/CharSequence;JLandroidx/compose/ui/geometry/Offset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onShowSelectionToolbar", "onShowSelectionToolbar-Sb-Bc2M", "classifyText", "textClassifier", "classifyText-M8tDOmk", "(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "AssistantItemKey", "", "addSmartSelectionTextContextMenuItems", "Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;", "child", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "addSmartSelectionTextContextMenuItems-YmzfRxQ$foundation", "(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Ljava/lang/CharSequence;JLkotlin/jvm/functions/Function1;)V", "tryGetTextClassification", "Landroid/view/textclassifier/TextClassification;", "tryGetTextClassification-FDrldGo", "(Ljava/lang/CharSequence;J)Landroid/view/textclassifier/TextClassification;", "requireTextClassificationSession", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PlatformSelectionBehaviorsImpl implements PlatformSelectionBehaviors {
    public static final int $stable = 8;
    private final Context context;
    private final CoroutineContext coroutineContext;
    private final LocaleList localeList;
    private final SelectedTextType selectedTextType;
    private TextClassifier textClassificationSession;
    private final Mutex mutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: renamed from: textClassificationResult$delegate, reason: from kotlin metadata */
    private final MutableState textClassificationResult = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    private final Object AssistantItemKey = new Object();

    public PlatformSelectionBehaviorsImpl(CoroutineContext coroutineContext, Context context, SelectedTextType selectedTextType, LocaleList localeList) {
        this.coroutineContext = coroutineContext;
        this.context = context;
        this.selectedTextType = selectedTextType;
        this.localeList = localeList;
    }

    private final TextClassificationResult getTextClassificationResult() {
        State $this$getValue$iv = this.textClassificationResult;
        return (TextClassificationResult) $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextClassificationResult(TextClassificationResult textClassificationResult) {
        MutableState $this$setValue$iv = this.textClassificationResult;
        $this$setValue$iv.setValue(textClassificationResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.os.LocaleList getAndroidLocalList() {
        android.os.LocaleList androidLocaleList;
        LocaleList it = this.localeList;
        return (it == null || (androidLocaleList = TextClassifierHelperMethods.INSTANCE.toAndroidLocaleList(it)) == null) ? new android.os.LocaleList(Locale.INSTANCE.getCurrent().getPlatformLocale()) : androidLocaleList;
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    /* JADX INFO: renamed from: suggestSelectionForLongPressOrDoubleClick-pYaCw-w */
    public Object mo1592suggestSelectionForLongPressOrDoubleClickpYaCww(CharSequence text, long j, Continuation<? super TextRange> continuation) {
        if (!(text.length() == 0) && !TextRange.m6922getCollapsedimpl(j)) {
            return requireTextClassificationSession(new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(text, j, this, null), continuation);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onShowContextMenuOrSelectionToolbar-Sb-Bc2M, reason: not valid java name */
    public final Object m1596onShowContextMenuOrSelectionToolbarSbBc2M(CharSequence text, long j, Continuation<? super Unit> continuation) {
        if ((text.length() == 0) || TextRange.m6922getCollapsedimpl(j)) {
            return Unit.INSTANCE;
        }
        return requireTextClassificationSession(new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(this, text, j, null), continuation);
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    /* JADX INFO: renamed from: onShowContextMenu-_2OEclM */
    public Object mo1590onShowContextMenu_2OEclM(CharSequence text, long j, Offset secondaryClickLocation, Continuation<? super Unit> continuation) {
        Object objM1596onShowContextMenuOrSelectionToolbarSbBc2M = m1596onShowContextMenuOrSelectionToolbarSbBc2M(text, j, continuation);
        return objM1596onShowContextMenuOrSelectionToolbarSbBc2M == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM1596onShowContextMenuOrSelectionToolbarSbBc2M : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    /* JADX INFO: renamed from: onShowSelectionToolbar-Sb-Bc2M */
    public Object mo1591onShowSelectionToolbarSbBc2M(CharSequence text, long j, Continuation<? super Unit> continuation) {
        Object objM1596onShowContextMenuOrSelectionToolbarSbBc2M = m1596onShowContextMenuOrSelectionToolbarSbBc2M(text, j, continuation);
        return objM1596onShowContextMenuOrSelectionToolbarSbBc2M == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM1596onShowContextMenuOrSelectionToolbarSbBc2M : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8 A[Catch: all -> 0x0110, TRY_LEAVE, TryCatch #0 {all -> 0x0110, blocks: (B:19:0x0095, B:21:0x009d, B:26:0x00a8), top: B:47:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX INFO: renamed from: classifyText-M8tDOmk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1595classifyTextM8tDOmk(CharSequence text, long j, TextClassifier textClassifier, Continuation<? super Unit> continuation) throws Throwable {
        PlatformSelectionBehaviorsImpl$classifyText$1 platformSelectionBehaviorsImpl$classifyText$1;
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        long j2;
        Mutex $this$withLock_u24default$iv;
        Object owner$iv;
        CharSequence text2;
        TextClassifier textClassifier2;
        Object owner$iv2;
        Mutex $this$withLock_u24default$iv2;
        TextClassificationResult textClassificationResult;
        TextClassification textClassification;
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl2;
        long j3;
        CharSequence text3;
        if (continuation instanceof PlatformSelectionBehaviorsImpl$classifyText$1) {
            platformSelectionBehaviorsImpl$classifyText$1 = (PlatformSelectionBehaviorsImpl$classifyText$1) continuation;
            if ((platformSelectionBehaviorsImpl$classifyText$1.label & Integer.MIN_VALUE) != 0) {
                platformSelectionBehaviorsImpl$classifyText$1.label -= Integer.MIN_VALUE;
            } else {
                platformSelectionBehaviorsImpl$classifyText$1 = new PlatformSelectionBehaviorsImpl$classifyText$1(this, continuation);
            }
        }
        PlatformSelectionBehaviorsImpl$classifyText$1 platformSelectionBehaviorsImpl$classifyText$12 = platformSelectionBehaviorsImpl$classifyText$1;
        Object $result = platformSelectionBehaviorsImpl$classifyText$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z = true;
        switch (platformSelectionBehaviorsImpl$classifyText$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                platformSelectionBehaviorsImpl = this;
                j2 = j;
                $this$withLock_u24default$iv = platformSelectionBehaviorsImpl.mutex;
                owner$iv = null;
                platformSelectionBehaviorsImpl$classifyText$12.L$0 = text;
                platformSelectionBehaviorsImpl$classifyText$12.L$1 = textClassifier;
                platformSelectionBehaviorsImpl$classifyText$12.L$2 = $this$withLock_u24default$iv;
                platformSelectionBehaviorsImpl$classifyText$12.J$0 = j2;
                platformSelectionBehaviorsImpl$classifyText$12.label = 1;
                if ($this$withLock_u24default$iv.lock(null, platformSelectionBehaviorsImpl$classifyText$12) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                text2 = text;
                textClassifier2 = textClassifier;
                try {
                    textClassificationResult = platformSelectionBehaviorsImpl.getTextClassificationResult();
                    if (textClassificationResult != null || !PlatformSelectionBehaviors_androidKt.m1601canReuseh5sm0ck(textClassificationResult, text2, j2)) {
                        z = false;
                    }
                    if (!z) {
                        return Unit.INSTANCE;
                    }
                    try {
                        Unit unit = Unit.INSTANCE;
                        $this$withLock_u24default$iv2.unlock(owner$iv2);
                        TextClassification.Request request = new TextClassification.Request.Builder(text2, TextRange.m6926getMinimpl(j2), TextRange.m6925getMaximpl(j2)).setDefaultLocales(platformSelectionBehaviorsImpl.getAndroidLocalList()).build();
                        textClassification = textClassifier2.classifyText(request);
                        Mutex $this$withLock_u24default$iv3 = platformSelectionBehaviorsImpl.mutex;
                        platformSelectionBehaviorsImpl$classifyText$12.L$0 = text2;
                        platformSelectionBehaviorsImpl$classifyText$12.L$1 = textClassification;
                        platformSelectionBehaviorsImpl$classifyText$12.L$2 = $this$withLock_u24default$iv3;
                        platformSelectionBehaviorsImpl$classifyText$12.J$0 = j2;
                        platformSelectionBehaviorsImpl$classifyText$12.label = 2;
                        if ($this$withLock_u24default$iv3.lock(null, platformSelectionBehaviorsImpl$classifyText$12) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        platformSelectionBehaviorsImpl2 = platformSelectionBehaviorsImpl;
                        $this$withLock_u24default$iv2 = $this$withLock_u24default$iv3;
                        owner$iv2 = null;
                        j3 = j2;
                        text3 = text2;
                        try {
                            platformSelectionBehaviorsImpl2.setTextClassificationResult(new TextClassificationResult(text3, j3, textClassification, null));
                            Unit unit2 = Unit.INSTANCE;
                            $this$withLock_u24default$iv2.unlock(owner$iv2);
                            return Unit.INSTANCE;
                        } finally {
                            $this$withLock_u24default$iv2.unlock(owner$iv2);
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                throw th;
            case 1:
                platformSelectionBehaviorsImpl = this;
                long j4 = platformSelectionBehaviorsImpl$classifyText$12.J$0;
                $this$withLock_u24default$iv = (Mutex) platformSelectionBehaviorsImpl$classifyText$12.L$2;
                TextClassifier textClassifier3 = (TextClassifier) platformSelectionBehaviorsImpl$classifyText$12.L$1;
                CharSequence text4 = (CharSequence) platformSelectionBehaviorsImpl$classifyText$12.L$0;
                ResultKt.throwOnFailure($result);
                owner$iv = null;
                j2 = j4;
                textClassifier2 = textClassifier3;
                text2 = text4;
                textClassificationResult = platformSelectionBehaviorsImpl.getTextClassificationResult();
                if (textClassificationResult != null) {
                    break;
                }
                z = false;
                if (!z) {
                }
                throw th;
            case 2:
                platformSelectionBehaviorsImpl2 = this;
                long j5 = platformSelectionBehaviorsImpl$classifyText$12.J$0;
                Mutex $this$withLock_u24default$iv4 = (Mutex) platformSelectionBehaviorsImpl$classifyText$12.L$2;
                textClassification = (TextClassification) platformSelectionBehaviorsImpl$classifyText$12.L$1;
                CharSequence text5 = (CharSequence) platformSelectionBehaviorsImpl$classifyText$12.L$0;
                ResultKt.throwOnFailure($result);
                owner$iv2 = null;
                $this$withLock_u24default$iv2 = $this$withLock_u24default$iv4;
                j3 = j5;
                text3 = text5;
                platformSelectionBehaviorsImpl2.setTextClassificationResult(new TextClassificationResult(text3, j3, textClassification, null));
                Unit unit22 = Unit.INSTANCE;
                $this$withLock_u24default$iv2.unlock(owner$iv2);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: addSmartSelectionTextContextMenuItems-YmzfRxQ$foundation, reason: not valid java name */
    public final void m1597addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(TextContextMenuBuilderScope $this$addSmartSelectionTextContextMenuItems_u2dYmzfRxQ, CharSequence text, long j, Function1<? super TextContextMenuBuilderScope, Unit> function1) {
        TextClassification textClassification = m1598tryGetTextClassificationFDrldGo(text, j);
        if (textClassification == null) {
            function1.invoke($this$addSmartSelectionTextContextMenuItems_u2dYmzfRxQ);
            return;
        }
        if (!textClassification.getActions().isEmpty()) {
            TextContextMenuBuilderScope_androidKt.textClassificationItem($this$addSmartSelectionTextContextMenuItems_u2dYmzfRxQ, this.AssistantItemKey, textClassification, 0);
        } else if (TextClassifierHelperMethods.INSTANCE.hasLegacyAssistItem$foundation(textClassification)) {
            TextContextMenuBuilderScope_androidKt.textClassificationItem($this$addSmartSelectionTextContextMenuItems_u2dYmzfRxQ, this.AssistantItemKey, textClassification, -1);
        }
        function1.invoke($this$addSmartSelectionTextContextMenuItems_u2dYmzfRxQ);
        List<RemoteAction> actions = textClassification.getActions();
        int size = actions.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = actions.get(index$iv);
            int index = index$iv;
            if (index > 0) {
                TextContextMenuBuilderScope_androidKt.textClassificationItem($this$addSmartSelectionTextContextMenuItems_u2dYmzfRxQ, this.AssistantItemKey, textClassification, index);
            }
        }
    }

    /* JADX INFO: renamed from: tryGetTextClassification-FDrldGo, reason: not valid java name */
    public final TextClassification m1598tryGetTextClassificationFDrldGo(CharSequence text, long selection) {
        TextClassification textClassification;
        boolean acquired = Mutex.DefaultImpls.tryLock$default(this.mutex, null, 1, null);
        if (!acquired) {
            return null;
        }
        TextClassificationResult textClassificationResult = getTextClassificationResult();
        boolean z = false;
        if (textClassificationResult != null && PlatformSelectionBehaviors_androidKt.m1601canReuseh5sm0ck(textClassificationResult, text, selection)) {
            z = true;
        }
        if (z) {
            textClassification = textClassificationResult.getTextClassification();
        } else {
            textClassification = null;
        }
        Mutex.DefaultImpls.unlock$default(this.mutex, null, 1, null);
        return textClassification;
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2, reason: invalid class name */
    /* JADX INFO: compiled from: PlatformSelectionBehaviors.android.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2", f = "PlatformSelectionBehaviors.android.kt", i = {0, 1}, l = {369, 273, 282}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"}, v = 1)
    static final class AnonymousClass2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function2<TextClassifier, Continuation<? super T>, Object> $block;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function2<? super TextClassifier, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PlatformSelectionBehaviorsImpl.this.new AnonymousClass2(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00ae A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws Throwable {
            PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
            Object owner$iv;
            Mutex $this$withLock_u24default$iv;
            Object $this$withLock_u24default$iv2;
            TextClassifier textClassificationSession;
            Object objWithTimeoutOrNull;
            Object $result2;
            Object obj;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        Mutex $this$withLock_u24default$iv3 = PlatformSelectionBehaviorsImpl.this.mutex;
                        platformSelectionBehaviorsImpl = PlatformSelectionBehaviorsImpl.this;
                        owner$iv = null;
                        this.L$0 = $this$withLock_u24default$iv3;
                        this.L$1 = platformSelectionBehaviorsImpl;
                        this.label = 1;
                        if ($this$withLock_u24default$iv3.lock(null, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $this$withLock_u24default$iv = $this$withLock_u24default$iv3;
                        $this$withLock_u24default$iv2 = null;
                        textClassificationSession = platformSelectionBehaviorsImpl.textClassificationSession;
                        if (textClassificationSession != null && !textClassificationSession.isDestroyed()) {
                            $this$withLock_u24default$iv.unlock(owner$iv);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 3;
                            Object objWithTimeoutOrNull2 = TimeoutKt.withTimeoutOrNull(200L, new AnonymousClass1(textClassificationSession, this.$block, null), this);
                            return objWithTimeoutOrNull2 != coroutine_suspended ? coroutine_suspended : objWithTimeoutOrNull2;
                        }
                        PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 = new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1(platformSelectionBehaviorsImpl, null);
                        this.L$0 = $this$withLock_u24default$iv;
                        this.L$1 = null;
                        this.label = 2;
                        objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(300L, platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1, this);
                        if (objWithTimeoutOrNull != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        Object obj2 = $this$withLock_u24default$iv2;
                        $result2 = $result;
                        $result = objWithTimeoutOrNull;
                        obj = obj2;
                        try {
                            textClassificationSession = (TextClassifier) $result;
                            $this$withLock_u24default$iv.unlock(owner$iv);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 3;
                            Object objWithTimeoutOrNull22 = TimeoutKt.withTimeoutOrNull(200L, new AnonymousClass1(textClassificationSession, this.$block, null), this);
                            if (objWithTimeoutOrNull22 != coroutine_suspended) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            $this$withLock_u24default$iv.unlock(owner$iv);
                            throw th;
                        }
                        break;
                    case 1:
                        $this$withLock_u24default$iv2 = null;
                        platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) this.L$1;
                        owner$iv = null;
                        $this$withLock_u24default$iv = (Mutex) this.L$0;
                        ResultKt.throwOnFailure($result);
                        textClassificationSession = platformSelectionBehaviorsImpl.textClassificationSession;
                        if (textClassificationSession != null) {
                            $this$withLock_u24default$iv.unlock(owner$iv);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 3;
                            Object objWithTimeoutOrNull222 = TimeoutKt.withTimeoutOrNull(200L, new AnonymousClass1(textClassificationSession, this.$block, null), this);
                            if (objWithTimeoutOrNull222 != coroutine_suspended) {
                            }
                        }
                        PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$12 = new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1(platformSelectionBehaviorsImpl, null);
                        this.L$0 = $this$withLock_u24default$iv;
                        this.L$1 = null;
                        this.label = 2;
                        objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(300L, platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$12, this);
                        if (objWithTimeoutOrNull != coroutine_suspended) {
                        }
                        break;
                    case 2:
                        owner$iv = null;
                        $this$withLock_u24default$iv = (Mutex) this.L$0;
                        ResultKt.throwOnFailure($result);
                        obj = null;
                        $result2 = $result;
                        textClassificationSession = (TextClassifier) $result;
                        $this$withLock_u24default$iv.unlock(owner$iv);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        Object objWithTimeoutOrNull2222 = TimeoutKt.withTimeoutOrNull(200L, new AnonymousClass1(textClassificationSession, this.$block, null), this);
                        if (objWithTimeoutOrNull2222 != coroutine_suspended) {
                        }
                        break;
                    case 3:
                        ResultKt.throwOnFailure($result);
                        return $result;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: PlatformSelectionBehaviors.android.kt */
        @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1", f = "PlatformSelectionBehaviors.android.kt", i = {}, l = {283}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
            final /* synthetic */ Function2<TextClassifier, Continuation<? super T>, Object> $block;
            final /* synthetic */ TextClassifier $textClassificationSession;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(TextClassifier textClassifier, Function2<? super TextClassifier, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$textClassificationSession = textClassifier;
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$textClassificationSession, this.$block, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        TextClassifier textClassifier = this.$textClassificationSession;
                        if (textClassifier == null) {
                            return null;
                        }
                        Function2<TextClassifier, Continuation<? super T>, Object> function2 = this.$block;
                        this.label = 1;
                        Object objInvoke = function2.invoke(textClassifier, this);
                        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        return $result;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Object requireTextClassificationSession(Function2<? super TextClassifier, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return BuildersKt.withContext(this.coroutineContext, new AnonymousClass2(function2, null), continuation);
    }
}
