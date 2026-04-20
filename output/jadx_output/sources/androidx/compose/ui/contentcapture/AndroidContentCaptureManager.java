package androidx.compose.ui.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.LongSparseArray;
import android.view.View;
import android.view.autofill.AutofillId;
import android.view.translation.TranslationRequestValue;
import android.view.translation.TranslationResponseValue;
import android.view.translation.ViewTranslationRequest;
import android.view.translation.ViewTranslationResponse;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.ScatterMap;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.platform.SemanticsUtils_androidKt;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.platform.coreshims.ViewCompatShims;
import androidx.compose.ui.platform.coreshims.ViewStructureCompat;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsNode_androidKt;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: compiled from: AndroidContentCaptureManager.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u0084\u00012\u00020\u00012\u00020\u0002:\u0006\u0082\u0001\u0083\u0001\u0084\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u00106\u001a\u00020\"2\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\"2\u0006\u00107\u001a\u000208H\u0016J\u0010\u0010=\u001a\u00020\"2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010@\u001a\u00020\"2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010A\u001a\u00020\"H\u0080@¢\u0006\u0004\bB\u0010CJ\r\u0010D\u001a\u00020\"H\u0000¢\u0006\u0002\bEJ\r\u0010F\u001a\u00020\"H\u0000¢\u0006\u0002\bGJ\b\u0010H\u001a\u00020\"H\u0002J\u0018\u0010I\u001a\u00020\"2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u000201H\u0002J\u0016\u0010M\u001a\u00020\"2\f\u0010N\u001a\b\u0012\u0004\u0012\u00020)0(H\u0002J\u0018\u0010O\u001a\u00020\"2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020SH\u0002J\b\u0010T\u001a\u00020\"H\u0002J\b\u0010U\u001a\u00020\"H\u0002J\u0016\u0010V\u001a\u0004\u0018\u00010W*\u00020K2\u0006\u0010X\u001a\u00020QH\u0002J&\u0010Y\u001a\u00020\"*\u00020K2\u0018\u0010Z\u001a\u0014\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\"0[H\u0002JG\u0010\\\u001a\u00020\"\"\u0004\b\u0000\u0010]*\b\u0012\u0004\u0012\u0002H]0^2\u0018\u0010Z\u001a\u0014\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u0002H]\u0012\u0004\u0012\u00020\"0[2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u0002H]\u0012\u0004\u0012\u00020\u001f0`H\u0082\bJ\u001a\u0010a\u001a\u00020\"2\u0006\u0010b\u001a\u00020Q2\b\u0010c\u001a\u0004\u0018\u00010WH\u0002J\u0010\u0010d\u001a\u00020\"2\u0006\u0010b\u001a\u00020QH\u0002J\b\u0010e\u001a\u00020\"H\u0002J\u0018\u0010f\u001a\u00020\"2\u0006\u0010X\u001a\u00020Q2\u0006\u0010g\u001a\u00020KH\u0002J\u0010\u0010h\u001a\u00020\"2\u0006\u0010g\u001a\u00020KH\u0002J\u0010\u0010i\u001a\u00020\"2\u0006\u0010g\u001a\u00020KH\u0002J\r\u0010j\u001a\u00020\"H\u0000¢\u0006\u0002\bkJ\r\u0010l\u001a\u00020\"H\u0000¢\u0006\u0002\bmJ\r\u0010n\u001a\u00020\"H\u0000¢\u0006\u0002\boJ\b\u0010p\u001a\u00020\"H\u0002J\b\u0010q\u001a\u00020\"H\u0002J\b\u0010r\u001a\u00020\"H\u0002J-\u0010s\u001a\u00020\"2\u0006\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020w2\u000e\u0010x\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010z0yH\u0001¢\u0006\u0002\b{J'\u0010|\u001a\u00020\"2\u0006\u0010}\u001a\u00020\u00002\u000f\u0010~\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00010\u007fH\u0001¢\u0006\u0003\b\u0081\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\"\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR&\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\"\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(8@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u000e\u0010.\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020100X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u000201X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000205X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u00020\u001f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<¨\u0006\u0085\u0001"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroid/view/View$OnAttachStateChangeListener;", "view", "Landroidx/compose/ui/platform/AndroidComposeView;", "onContentCaptureSession", "Lkotlin/Function0;", "Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function0;)V", "getView", "()Landroidx/compose/ui/platform/AndroidComposeView;", "getOnContentCaptureSession", "()Lkotlin/jvm/functions/Function0;", "setOnContentCaptureSession", "(Lkotlin/jvm/functions/Function0;)V", "contentCaptureSession", "getContentCaptureSession$ui$annotations", "()V", "getContentCaptureSession$ui", "()Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", "setContentCaptureSession$ui", "(Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;)V", "bufferedEvents", "", "Landroidx/compose/ui/contentcapture/ContentCaptureEvent;", "SendRecurringContentCaptureEventsIntervalMillis", "", "translateStatus", "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;", "currentSemanticsNodesInvalidated", "", "boundsUpdateChannel", "Lkotlinx/coroutines/channels/Channel;", "", "handler", "Landroid/os/Handler;", "getHandler$ui", "()Landroid/os/Handler;", "currentSemanticsNodes", "Landroidx/collection/IntObjectMap;", "Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;", "getCurrentSemanticsNodes$ui", "()Landroidx/collection/IntObjectMap;", "setCurrentSemanticsNodes$ui", "(Landroidx/collection/IntObjectMap;)V", "currentSemanticsNodesSnapshotTimestampMillis", "previousSemanticsNodes", "Landroidx/collection/MutableIntObjectMap;", "Landroidx/compose/ui/platform/SemanticsNodeCopy;", "previousSemanticsRoot", "checkingForSemanticsChanges", "contentCaptureChangeChecker", "Ljava/lang/Runnable;", "onViewAttachedToWindow", "v", "Landroid/view/View;", "onViewDetachedFromWindow", "isEnabled", "isEnabled$ui", "()Z", "onStart", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onStop", "boundsUpdatesEventLoop", "boundsUpdatesEventLoop$ui", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSemanticsChange", "onSemanticsChange$ui", "onLayoutChange", "onLayoutChange$ui", "sendContentCaptureDisappearEvents", "sendContentCaptureAppearEvents", "newNode", "Landroidx/compose/ui/semantics/SemanticsNode;", "oldNode", "checkForContentCapturePropertyChanges", "newSemanticsNodes", "sendContentCaptureTextUpdateEvent", TtmlNode.ATTR_ID, "", "newText", "", "updateSemanticsCopy", "notifySubtreeStateChangeIfNeeded", "toViewStructure", "Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;", "index", "fastForEachReplacedVisibleChildren", "action", "Lkotlin/Function2;", "fastForEachIndexedWithFilter", ExifInterface.GPS_DIRECTION_TRUE, "", "predicate", "Lkotlin/Function1;", "bufferContentCaptureViewAppeared", "virtualId", "viewStructure", "bufferContentCaptureViewDisappeared", "notifyContentCaptureChanges", "updateBuffersOnAppeared", "node", "updateBuffersOnDisappeared", "updateTranslationOnAppeared", "onShowTranslation", "onShowTranslation$ui", "onHideTranslation", "onHideTranslation$ui", "onClearTranslation", "onClearTranslation$ui", "showTranslatedText", "hideTranslatedText", "clearTranslatedText", "onCreateVirtualViewTranslationRequests", "virtualIds", "", "supportedFormats", "", "requestsCollector", "Ljava/util/function/Consumer;", "Landroid/view/translation/ViewTranslationRequest;", "onCreateVirtualViewTranslationRequests$ui", "onVirtualViewTranslationResponses", "contentCaptureManager", "response", "Landroid/util/LongSparseArray;", "Landroid/view/translation/ViewTranslationResponse;", "onVirtualViewTranslationResponses$ui", "TranslateStatus", "ViewTranslationHelperMethods", "Companion", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AndroidContentCaptureManager implements DefaultLifecycleObserver, View.OnAttachStateChangeListener {
    public static final String VIEW_STRUCTURE_BUNDLE_KEY_ADDITIONAL_INDEX = "android.view.ViewStructure.extra.EXTRA_VIEW_NODE_INDEX";
    public static final String VIEW_STRUCTURE_BUNDLE_KEY_TIMESTAMP = "android.view.contentcapture.EventTimestamp";
    private boolean checkingForSemanticsChanges;
    private ContentCaptureSessionWrapper contentCaptureSession;
    private long currentSemanticsNodesSnapshotTimestampMillis;
    private Function0<? extends ContentCaptureSessionWrapper> onContentCaptureSession;
    private SemanticsNodeCopy previousSemanticsRoot;
    private final AndroidComposeView view;
    public static final int $stable = 8;
    private final List<ContentCaptureEvent> bufferedEvents = new ArrayList();
    private long SendRecurringContentCaptureEventsIntervalMillis = 100;
    private TranslateStatus translateStatus = TranslateStatus.SHOW_ORIGINAL;
    private boolean currentSemanticsNodesInvalidated = true;
    private final Channel<Unit> boundsUpdateChannel = ChannelKt.Channel$default(1, null, null, 6, null);
    private final Handler handler = new Handler(Looper.getMainLooper());
    private IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes = IntObjectMapKt.intObjectMapOf();
    private MutableIntObjectMap<SemanticsNodeCopy> previousSemanticsNodes = IntObjectMapKt.mutableIntObjectMapOf();
    private final Runnable contentCaptureChangeChecker = new Runnable() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            AndroidContentCaptureManager.contentCaptureChangeChecker$lambda$0(this.f$0);
        }
    };

    /* JADX INFO: compiled from: AndroidContentCaptureManager.android.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;", "", "<init>", "(Ljava/lang/String;I)V", "SHOW_ORIGINAL", "SHOW_TRANSLATED", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private enum TranslateStatus {
        SHOW_ORIGINAL,
        SHOW_TRANSLATED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

        public static EnumEntries<TranslateStatus> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: AndroidContentCaptureManager.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ContentCaptureEventType.values().length];
            try {
                iArr[ContentCaptureEventType.VIEW_APPEAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ContentCaptureEventType.VIEW_DISAPPEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ void getContentCaptureSession$ui$annotations() {
    }

    public AndroidContentCaptureManager(AndroidComposeView view, Function0<? extends ContentCaptureSessionWrapper> function0) {
        this.view = view;
        this.onContentCaptureSession = function0;
        this.previousSemanticsRoot = new SemanticsNodeCopy(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), IntObjectMapKt.intObjectMapOf());
    }

    public final AndroidComposeView getView() {
        return this.view;
    }

    public final Function0<ContentCaptureSessionWrapper> getOnContentCaptureSession() {
        return this.onContentCaptureSession;
    }

    public final void setOnContentCaptureSession(Function0<? extends ContentCaptureSessionWrapper> function0) {
        this.onContentCaptureSession = function0;
    }

    /* JADX INFO: renamed from: getContentCaptureSession$ui, reason: from getter */
    public final ContentCaptureSessionWrapper getContentCaptureSession() {
        return this.contentCaptureSession;
    }

    public final void setContentCaptureSession$ui(ContentCaptureSessionWrapper contentCaptureSessionWrapper) {
        this.contentCaptureSession = contentCaptureSessionWrapper;
    }

    /* JADX INFO: renamed from: getHandler$ui, reason: from getter */
    public final Handler getHandler() {
        return this.handler;
    }

    public final void setCurrentSemanticsNodes$ui(IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap) {
        this.currentSemanticsNodes = intObjectMap;
    }

    public final IntObjectMap<SemanticsNodeWithAdjustedBounds> getCurrentSemanticsNodes$ui() {
        if (this.currentSemanticsNodesInvalidated) {
            this.currentSemanticsNodesInvalidated = false;
            this.currentSemanticsNodes = SemanticsOwnerKt.getAllUncoveredSemanticsNodesToIntObjectMap(this.view.getSemanticsOwner(), -1, new Function1<SemanticsNode, Boolean>() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager$currentSemanticsNodes$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SemanticsNode it) {
                    return Boolean.valueOf(SemanticsNode_androidKt.isAccessibilityIgnoredLink(it));
                }
            });
            this.currentSemanticsNodesSnapshotTimestampMillis = System.currentTimeMillis();
        }
        return this.currentSemanticsNodes;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
    
        throw r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final void contentCaptureChangeChecker$lambda$0(AndroidContentCaptureManager this$0) {
        if (this$0.isEnabled$ui()) {
            Trace.beginSection("ContentCapture:changeChecker");
            try {
                Owner.measureAndLayout$default(this$0.view, false, 1, null);
                this$0.sendContentCaptureDisappearEvents();
                Trace.beginSection("ContentCapture:sendAppearEvents");
                this$0.sendContentCaptureAppearEvents(this$0.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), this$0.previousSemanticsRoot);
                Unit unit = Unit.INSTANCE;
                Trace.endSection();
                this$0.checkForContentCapturePropertyChanges(this$0.getCurrentSemanticsNodes$ui());
                this$0.updateSemanticsCopy();
                this$0.checkingForSemanticsChanges = false;
                Unit unit2 = Unit.INSTANCE;
            } finally {
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View v) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View v) {
        this.handler.removeCallbacks(this.contentCaptureChangeChecker);
        this.contentCaptureSession = null;
    }

    public final boolean isEnabled$ui() {
        return ContentCaptureManager.INSTANCE.isEnabled() && this.contentCaptureSession != null;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner owner) {
        this.contentCaptureSession = this.onContentCaptureSession.invoke();
        updateBuffersOnAppeared(-1, this.view.getSemanticsOwner().getUnmergedRootSemanticsNode());
        notifyContentCaptureChanges();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner owner) {
        updateBuffersOnDisappeared(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode());
        notifyContentCaptureChanges();
        this.contentCaptureSession = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x008e -> B:15:0x004e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object boundsUpdatesEventLoop$ui(Continuation<? super Unit> continuation) {
        AndroidContentCaptureManager$boundsUpdatesEventLoop$1 androidContentCaptureManager$boundsUpdatesEventLoop$1;
        AndroidContentCaptureManager androidContentCaptureManager;
        ChannelIterator<Unit> it;
        ChannelIterator<Unit> channelIterator;
        AndroidContentCaptureManager androidContentCaptureManager2;
        Object obj;
        Object $result;
        Object objHasNext;
        if (continuation instanceof AndroidContentCaptureManager$boundsUpdatesEventLoop$1) {
            androidContentCaptureManager$boundsUpdatesEventLoop$1 = (AndroidContentCaptureManager$boundsUpdatesEventLoop$1) continuation;
            if ((androidContentCaptureManager$boundsUpdatesEventLoop$1.label & Integer.MIN_VALUE) != 0) {
                androidContentCaptureManager$boundsUpdatesEventLoop$1.label -= Integer.MIN_VALUE;
            } else {
                androidContentCaptureManager$boundsUpdatesEventLoop$1 = new AndroidContentCaptureManager$boundsUpdatesEventLoop$1(this, continuation);
            }
        }
        Object $result2 = androidContentCaptureManager$boundsUpdatesEventLoop$1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (androidContentCaptureManager$boundsUpdatesEventLoop$1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                androidContentCaptureManager = this;
                it = androidContentCaptureManager.boundsUpdateChannel.iterator();
                androidContentCaptureManager$boundsUpdatesEventLoop$1.L$0 = it;
                androidContentCaptureManager$boundsUpdatesEventLoop$1.label = 1;
                objHasNext = it.hasNext(androidContentCaptureManager$boundsUpdatesEventLoop$1);
                if (objHasNext == $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objHasNext;
                channelIterator = it;
                androidContentCaptureManager2 = androidContentCaptureManager;
                obj = obj2;
                if (!((Boolean) $result2).booleanValue()) {
                    channelIterator.next();
                    if (androidContentCaptureManager2.isEnabled$ui()) {
                        androidContentCaptureManager2.notifyContentCaptureChanges();
                    }
                    if (!androidContentCaptureManager2.checkingForSemanticsChanges) {
                        androidContentCaptureManager2.checkingForSemanticsChanges = true;
                        androidContentCaptureManager2.handler.post(androidContentCaptureManager2.contentCaptureChangeChecker);
                    }
                    long j = androidContentCaptureManager2.SendRecurringContentCaptureEventsIntervalMillis;
                    androidContentCaptureManager$boundsUpdatesEventLoop$1.L$0 = channelIterator;
                    androidContentCaptureManager$boundsUpdatesEventLoop$1.label = 2;
                    if (DelayKt.delay(j, androidContentCaptureManager$boundsUpdatesEventLoop$1) == obj) {
                        return obj;
                    }
                    $result2 = $result;
                    $result3 = obj;
                    androidContentCaptureManager = androidContentCaptureManager2;
                    it = channelIterator;
                    androidContentCaptureManager$boundsUpdatesEventLoop$1.L$0 = it;
                    androidContentCaptureManager$boundsUpdatesEventLoop$1.label = 1;
                    objHasNext = it.hasNext(androidContentCaptureManager$boundsUpdatesEventLoop$1);
                    if (objHasNext == $result3) {
                    }
                } else {
                    return Unit.INSTANCE;
                }
                break;
            case 1:
                ChannelIterator<Unit> channelIterator2 = (ChannelIterator) androidContentCaptureManager$boundsUpdatesEventLoop$1.L$0;
                ResultKt.throwOnFailure($result2);
                channelIterator = channelIterator2;
                androidContentCaptureManager2 = this;
                obj = $result3;
                $result = $result2;
                if (!((Boolean) $result2).booleanValue()) {
                }
                break;
            case 2:
                androidContentCaptureManager = this;
                it = (ChannelIterator) androidContentCaptureManager$boundsUpdatesEventLoop$1.L$0;
                ResultKt.throwOnFailure($result2);
                androidContentCaptureManager$boundsUpdatesEventLoop$1.L$0 = it;
                androidContentCaptureManager$boundsUpdatesEventLoop$1.label = 1;
                objHasNext = it.hasNext(androidContentCaptureManager$boundsUpdatesEventLoop$1);
                if (objHasNext == $result3) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void onSemanticsChange$ui() {
        this.currentSemanticsNodesInvalidated = true;
        if (isEnabled$ui() && !this.checkingForSemanticsChanges) {
            this.checkingForSemanticsChanges = true;
            this.handler.post(this.contentCaptureChangeChecker);
        }
    }

    public final void onLayoutChange$ui() {
        this.currentSemanticsNodesInvalidated = true;
        if (isEnabled$ui()) {
            notifySubtreeStateChangeIfNeeded();
        }
    }

    private final void sendContentCaptureDisappearEvents() {
        IntObjectMap this_$iv;
        int $i$f$forEachKey;
        IntObjectMap this_$iv2;
        int $i$f$forEachKey2;
        int i;
        IntObjectMap this_$iv3 = this.previousSemanticsNodes;
        int $i$f$forEachKey3 = 0;
        int[] k$iv = this_$iv3.keys;
        long[] m$iv$iv = this_$iv3.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                this_$iv = this_$iv3;
                $i$f$forEachKey = $i$f$forEachKey3;
            } else {
                int i2 = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128)) {
                        this_$iv2 = this_$iv3;
                        $i$f$forEachKey2 = $i$f$forEachKey3;
                        i = i2;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        i = i2;
                        int key = k$iv[index$iv$iv];
                        this_$iv2 = this_$iv3;
                        $i$f$forEachKey2 = $i$f$forEachKey3;
                        if (!getCurrentSemanticsNodes$ui().containsKey(key)) {
                            bufferContentCaptureViewDisappeared(key);
                            notifySubtreeStateChangeIfNeeded();
                        }
                    }
                    slot$iv$iv >>= i;
                    j$iv$iv++;
                    i2 = i;
                    this_$iv3 = this_$iv2;
                    $i$f$forEachKey3 = $i$f$forEachKey2;
                }
                this_$iv = this_$iv3;
                $i$f$forEachKey = $i$f$forEachKey3;
                if (bitCount$iv$iv != i2) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            this_$iv3 = this_$iv;
            $i$f$forEachKey3 = $i$f$forEachKey;
        }
    }

    private final void sendContentCaptureAppearEvents(SemanticsNode newNode, final SemanticsNodeCopy oldNode) {
        fastForEachReplacedVisibleChildren(newNode, new Function2<Integer, SemanticsNode, Unit>() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager.sendContentCaptureAppearEvents.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, SemanticsNode semanticsNode) {
                invoke(num.intValue(), semanticsNode);
                return Unit.INSTANCE;
            }

            public final void invoke(int index, SemanticsNode child) {
                if (!oldNode.getChildren().contains(child.getId())) {
                    this.updateBuffersOnAppeared(index, child);
                    this.notifySubtreeStateChangeIfNeeded();
                }
            }
        });
        List<SemanticsNode> replacedChildren$ui = newNode.getReplacedChildren$ui();
        int size = replacedChildren$ui.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = replacedChildren$ui.get(index$iv);
            SemanticsNode child = (SemanticsNode) item$iv;
            IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
            int key$iv = child.getId();
            if (currentSemanticsNodes$ui.containsKey(key$iv)) {
                IntObjectMap this_$iv = this.previousSemanticsNodes;
                int key$iv2 = child.getId();
                if (this_$iv.containsKey(key$iv2)) {
                    Object value$iv = this.previousSemanticsNodes.get(child.getId());
                    if (value$iv != null) {
                        SemanticsNodeCopy prevNodeCopy = (SemanticsNodeCopy) value$iv;
                        sendContentCaptureAppearEvents(child, prevNodeCopy);
                    } else {
                        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("node not present in pruned tree before this change");
                        throw new KotlinNothingValueException();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0132 A[EDGE_INSN: B:44:0x0132->B:107:0x026b BREAK  A[LOOP:2: B:22:0x00a4->B:45:0x0134]] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0236 A[EDGE_INSN: B:80:0x0236->B:110:0x026b BREAK  A[LOOP:4: B:51:0x0173->B:81:0x0238]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void checkForContentCapturePropertyChanges(IntObjectMap<SemanticsNodeWithAdjustedBounds> newSemanticsNodes) {
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap;
        int $i$f$forEachKey;
        int[] k$iv;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap2;
        int $i$f$forEachIndexed;
        long[] m$iv$iv;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap3;
        int $i$f$forEachKey2;
        int[] k$iv2;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap4;
        int $i$f$forEachIndexed2;
        long[] m$iv$iv2;
        int j$iv$iv;
        int j$iv$iv2;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap5 = newSemanticsNodes;
        int $i$f$forEachKey3 = 0;
        int[] k$iv3 = intObjectMap5.keys;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap6 = intObjectMap5;
        int $i$f$forEachIndexed3 = 0;
        long[] m$iv$iv3 = intObjectMap6.metadata;
        int lastIndex$iv$iv = m$iv$iv3.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv3[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                intObjectMap = intObjectMap5;
                $i$f$forEachKey = $i$f$forEachKey3;
                k$iv = k$iv3;
                intObjectMap2 = intObjectMap6;
                $i$f$forEachIndexed = $i$f$forEachIndexed3;
                m$iv$iv = m$iv$iv3;
            } else {
                int i = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv3 = 0;
                while (j$iv$iv3 < bitCount$iv$iv) {
                    long value$iv$iv$iv = slot$iv$iv & 255;
                    if (!(value$iv$iv$iv < 128)) {
                        intObjectMap3 = intObjectMap5;
                        $i$f$forEachKey2 = $i$f$forEachKey3;
                        k$iv2 = k$iv3;
                        intObjectMap4 = intObjectMap6;
                        $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                        m$iv$iv2 = m$iv$iv3;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv3;
                        int id = k$iv3[index$iv$iv];
                        int i2 = i;
                        SemanticsNodeCopy oldNode = this.previousSemanticsNodes.get(id);
                        intObjectMap3 = intObjectMap5;
                        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = newSemanticsNodes.get(id);
                        SemanticsNode newNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.getSemanticsNode() : null;
                        if (newNode != null) {
                            if (oldNode == null) {
                                ScatterMap this_$iv = newNode.getUnmergedConfig().getProps$ui();
                                $i$f$forEachKey2 = $i$f$forEachKey3;
                                Object[] k$iv4 = this_$iv.keys;
                                long[] m$iv$iv4 = this_$iv.metadata;
                                int lastIndex$iv$iv2 = m$iv$iv4.length - 2;
                                int i$iv$iv2 = 0;
                                if (0 <= lastIndex$iv$iv2) {
                                    while (true) {
                                        long slot$iv$iv2 = m$iv$iv4[i$iv$iv2];
                                        k$iv2 = k$iv3;
                                        intObjectMap4 = intObjectMap6;
                                        $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                                        m$iv$iv2 = m$iv$iv3;
                                        long $this$maskEmptyOrDeleted$iv$iv$iv2 = ((~slot$iv$iv2) << 7) & slot$iv$iv2 & (-9187201950435737472L);
                                        if ($this$maskEmptyOrDeleted$iv$iv$iv2 != -9187201950435737472L) {
                                            int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                                            int j$iv$iv4 = 0;
                                            while (j$iv$iv4 < bitCount$iv$iv2) {
                                                long value$iv$iv$iv2 = slot$iv$iv2 & 255;
                                                if (!(value$iv$iv$iv2 < 128)) {
                                                    j$iv$iv2 = j$iv$iv4;
                                                } else {
                                                    int index$iv$iv2 = (i$iv$iv2 << 3) + j$iv$iv4;
                                                    j$iv$iv2 = j$iv$iv4;
                                                    SemanticsPropertyKey key = (SemanticsPropertyKey) k$iv4[index$iv$iv2];
                                                    if (Intrinsics.areEqual(key, SemanticsProperties.INSTANCE.getText())) {
                                                        List list = (List) SemanticsConfigurationKt.getOrNull(newNode.getUnmergedConfig(), SemanticsProperties.INSTANCE.getText());
                                                        sendContentCaptureTextUpdateEvent(newNode.getId(), String.valueOf(list != null ? (AnnotatedString) CollectionsKt.firstOrNull(list) : null));
                                                    }
                                                }
                                                slot$iv$iv2 >>= i2;
                                                j$iv$iv4 = j$iv$iv2 + 1;
                                            }
                                            int j$iv$iv5 = i2;
                                            if (bitCount$iv$iv2 == j$iv$iv5) {
                                                if (i$iv$iv2 != lastIndex$iv$iv2) {
                                                    i$iv$iv2++;
                                                    $i$f$forEachIndexed3 = $i$f$forEachIndexed2;
                                                    m$iv$iv3 = m$iv$iv2;
                                                    k$iv3 = k$iv2;
                                                    intObjectMap6 = intObjectMap4;
                                                    i2 = 8;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    k$iv2 = k$iv3;
                                    intObjectMap4 = intObjectMap6;
                                    $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                                    m$iv$iv2 = m$iv$iv3;
                                }
                            } else {
                                $i$f$forEachKey2 = $i$f$forEachKey3;
                                k$iv2 = k$iv3;
                                intObjectMap4 = intObjectMap6;
                                $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                                m$iv$iv2 = m$iv$iv3;
                                ScatterMap this_$iv2 = newNode.getUnmergedConfig().getProps$ui();
                                Object[] k$iv5 = this_$iv2.keys;
                                ScatterMap this_$iv$iv = this_$iv2;
                                int $i$f$forEachIndexed4 = 0;
                                long[] m$iv$iv5 = this_$iv$iv.metadata;
                                int lastIndex$iv$iv3 = m$iv$iv5.length - 2;
                                int i$iv$iv3 = 0;
                                if (0 <= lastIndex$iv$iv3) {
                                    while (true) {
                                        long slot$iv$iv3 = m$iv$iv5[i$iv$iv3];
                                        Object[] k$iv6 = k$iv5;
                                        ScatterMap this_$iv$iv2 = this_$iv$iv;
                                        int $i$f$forEachIndexed5 = $i$f$forEachIndexed4;
                                        long[] m$iv$iv6 = m$iv$iv5;
                                        long $this$maskEmptyOrDeleted$iv$iv$iv3 = ((~slot$iv$iv3) << 7) & slot$iv$iv3 & (-9187201950435737472L);
                                        if ($this$maskEmptyOrDeleted$iv$iv$iv3 != -9187201950435737472L) {
                                            int bitCount$iv$iv3 = 8 - ((~(i$iv$iv3 - lastIndex$iv$iv3)) >>> 31);
                                            int j$iv$iv6 = 0;
                                            while (j$iv$iv6 < bitCount$iv$iv3) {
                                                long value$iv$iv$iv3 = slot$iv$iv3 & 255;
                                                if (!(value$iv$iv$iv3 < 128)) {
                                                    j$iv$iv = j$iv$iv6;
                                                } else {
                                                    int index$iv$iv3 = (i$iv$iv3 << 3) + j$iv$iv6;
                                                    j$iv$iv = j$iv$iv6;
                                                    SemanticsPropertyKey key2 = (SemanticsPropertyKey) k$iv6[index$iv$iv3];
                                                    if (Intrinsics.areEqual(key2, SemanticsProperties.INSTANCE.getText())) {
                                                        List list2 = (List) SemanticsConfigurationKt.getOrNull(oldNode.getUnmergedConfig(), SemanticsProperties.INSTANCE.getText());
                                                        AnnotatedString oldText = list2 != null ? (AnnotatedString) CollectionsKt.firstOrNull(list2) : null;
                                                        List list3 = (List) SemanticsConfigurationKt.getOrNull(newNode.getUnmergedConfig(), SemanticsProperties.INSTANCE.getText());
                                                        AnnotatedString newText = list3 != null ? (AnnotatedString) CollectionsKt.firstOrNull(list3) : null;
                                                        if (!Intrinsics.areEqual(oldText, newText)) {
                                                            sendContentCaptureTextUpdateEvent(newNode.getId(), String.valueOf(newText));
                                                        }
                                                    }
                                                }
                                                slot$iv$iv3 >>= 8;
                                                j$iv$iv6 = j$iv$iv + 1;
                                            }
                                            if (bitCount$iv$iv3 == 8) {
                                                if (i$iv$iv3 != lastIndex$iv$iv3) {
                                                    i$iv$iv3++;
                                                    $i$f$forEachIndexed4 = $i$f$forEachIndexed5;
                                                    m$iv$iv5 = m$iv$iv6;
                                                    k$iv5 = k$iv6;
                                                    this_$iv$iv = this_$iv$iv2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("no value for specified key");
                            throw new KotlinNothingValueException();
                        }
                    }
                    slot$iv$iv >>= 8;
                    j$iv$iv3++;
                    i = 8;
                    intObjectMap5 = intObjectMap3;
                    $i$f$forEachKey3 = $i$f$forEachKey2;
                    $i$f$forEachIndexed3 = $i$f$forEachIndexed2;
                    m$iv$iv3 = m$iv$iv2;
                    k$iv3 = k$iv2;
                    intObjectMap6 = intObjectMap4;
                }
                intObjectMap = intObjectMap5;
                $i$f$forEachKey = $i$f$forEachKey3;
                k$iv = k$iv3;
                intObjectMap2 = intObjectMap6;
                $i$f$forEachIndexed = $i$f$forEachIndexed3;
                m$iv$iv = m$iv$iv3;
                if (bitCount$iv$iv != i) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            intObjectMap5 = intObjectMap;
            $i$f$forEachKey3 = $i$f$forEachKey;
            $i$f$forEachIndexed3 = $i$f$forEachIndexed;
            m$iv$iv3 = m$iv$iv;
            k$iv3 = k$iv;
            intObjectMap6 = intObjectMap2;
        }
    }

    private final void sendContentCaptureTextUpdateEvent(int id, String newText) {
        ContentCaptureSessionWrapper session;
        if (Build.VERSION.SDK_INT >= 29 && (session = this.contentCaptureSession) != null) {
            AutofillId autofillId = session.newAutofillId(id);
            if (autofillId != null) {
                session.notifyViewTextChanged(autofillId, newText);
            } else {
                InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Invalid content capture ID");
                throw new KotlinNothingValueException();
            }
        }
    }

    private final void updateSemanticsCopy() {
        int[] k$iv;
        Object[] v$iv;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap;
        int $i$f$forEachIndexed;
        int i;
        int[] k$iv2;
        Object[] v$iv2;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap2;
        int $i$f$forEachIndexed2;
        this.previousSemanticsNodes.clear();
        IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
        int $i$f$forEach = 0;
        int[] k$iv3 = currentSemanticsNodes$ui.keys;
        Object[] v$iv3 = currentSemanticsNodes$ui.values;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap3 = currentSemanticsNodes$ui;
        int $i$f$forEachIndexed3 = 0;
        long[] m$iv$iv = intObjectMap3.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 <= lastIndex$iv$iv) {
            while (true) {
                long slot$iv$iv = m$iv$iv[i$iv$iv];
                IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap4 = currentSemanticsNodes$ui;
                int $i$f$forEach2 = $i$f$forEach;
                if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) == -9187201950435737472L) {
                    k$iv = k$iv3;
                    v$iv = v$iv3;
                    intObjectMap = intObjectMap3;
                    $i$f$forEachIndexed = $i$f$forEachIndexed3;
                } else {
                    int i2 = 8;
                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                    int j$iv$iv = 0;
                    while (j$iv$iv < bitCount$iv$iv) {
                        long value$iv$iv$iv = 255 & slot$iv$iv;
                        if (!(value$iv$iv$iv < 128)) {
                            i = i2;
                            k$iv2 = k$iv3;
                            v$iv2 = v$iv3;
                            intObjectMap2 = intObjectMap3;
                            $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                        } else {
                            int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                            i = i2;
                            int key = k$iv3[index$iv$iv];
                            SemanticsNodeWithAdjustedBounds value = (SemanticsNodeWithAdjustedBounds) v$iv3[index$iv$iv];
                            k$iv2 = k$iv3;
                            v$iv2 = v$iv3;
                            intObjectMap2 = intObjectMap3;
                            $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                            this.previousSemanticsNodes.set(key, new SemanticsNodeCopy(value.getSemanticsNode(), getCurrentSemanticsNodes$ui()));
                        }
                        slot$iv$iv >>= i;
                        j$iv$iv++;
                        i2 = i;
                        k$iv3 = k$iv2;
                        v$iv3 = v$iv2;
                        intObjectMap3 = intObjectMap2;
                        $i$f$forEachIndexed3 = $i$f$forEachIndexed2;
                    }
                    k$iv = k$iv3;
                    v$iv = v$iv3;
                    intObjectMap = intObjectMap3;
                    $i$f$forEachIndexed = $i$f$forEachIndexed3;
                    if (bitCount$iv$iv != i2) {
                        break;
                    }
                }
                if (i$iv$iv == lastIndex$iv$iv) {
                    break;
                }
                i$iv$iv++;
                currentSemanticsNodes$ui = intObjectMap4;
                $i$f$forEach = $i$f$forEach2;
                k$iv3 = k$iv;
                v$iv3 = v$iv;
                intObjectMap3 = intObjectMap;
                $i$f$forEachIndexed3 = $i$f$forEachIndexed;
            }
        }
        this.previousSemanticsRoot = new SemanticsNodeCopy(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), getCurrentSemanticsNodes$ui());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifySubtreeStateChangeIfNeeded() {
        this.boundsUpdateChannel.mo10050trySendJP2dKIU(Unit.INSTANCE);
    }

    private final ViewStructureCompat toViewStructure(SemanticsNode $this$toViewStructure, int index) {
        AutofillIdCompat rootAutofillId;
        AutofillId parentAutofillId;
        String it;
        ContentCaptureSessionWrapper session = this.contentCaptureSession;
        if (session == null || Build.VERSION.SDK_INT < 29 || (rootAutofillId = ViewCompatShims.getAutofillId(this.view)) == null) {
            return null;
        }
        SemanticsNode parentNode = $this$toViewStructure.getParent();
        if (parentNode != null) {
            parentAutofillId = session.newAutofillId(parentNode.getId());
            if (parentAutofillId == null) {
                return null;
            }
        } else {
            parentAutofillId = rootAutofillId.toAutofillId();
        }
        ViewStructureCompat structure = session.newVirtualViewStructure(parentAutofillId, $this$toViewStructure.getId());
        if (structure == null) {
            return null;
        }
        SemanticsConfiguration configuration = $this$toViewStructure.getUnmergedConfig();
        if (configuration.contains(SemanticsProperties.INSTANCE.getPassword())) {
            return null;
        }
        Bundle it2 = structure.getExtras();
        if (it2 != null) {
            it2.putLong(VIEW_STRUCTURE_BUNDLE_KEY_TIMESTAMP, this.currentSemanticsNodesSnapshotTimestampMillis);
            it2.putInt(VIEW_STRUCTURE_BUNDLE_KEY_ADDITIONAL_INDEX, index);
        }
        String it3 = (String) SemanticsConfigurationKt.getOrNull(configuration, SemanticsProperties.INSTANCE.getTestTag());
        if (it3 != null) {
            structure.setId($this$toViewStructure.getId(), null, null, it3);
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.getOrNull(configuration, SemanticsProperties.INSTANCE.getIsTraversalGroup());
        if (bool != null) {
            bool.booleanValue();
            structure.setClassName("android.widget.ViewGroup");
        }
        List it4 = (List) SemanticsConfigurationKt.getOrNull(configuration, SemanticsProperties.INSTANCE.getText());
        if (it4 != null) {
            structure.setClassName(AndroidComposeViewAccessibilityDelegateCompat.TextClassName);
            structure.setText(ListUtilsKt.fastJoinToString$default(it4, "\n", null, null, 0, null, null, 62, null));
        }
        AnnotatedString it5 = (AnnotatedString) SemanticsConfigurationKt.getOrNull(configuration, SemanticsProperties.INSTANCE.getEditableText());
        if (it5 != null) {
            structure.setClassName(AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName);
            structure.setText(it5);
        }
        List it6 = (List) SemanticsConfigurationKt.getOrNull(configuration, SemanticsProperties.INSTANCE.getContentDescription());
        if (it6 != null) {
            structure.setContentDescription(ListUtilsKt.fastJoinToString$default(it6, "\n", null, null, 0, null, null, 62, null));
        }
        Role role = (Role) SemanticsConfigurationKt.getOrNull(configuration, SemanticsProperties.INSTANCE.getRole());
        if (role != null && (it = SemanticsUtils_androidKt.m6675toLegacyClassNameV4PA4sw(role.getValue())) != null) {
            structure.setClassName(it);
        }
        TextLayoutResult it7 = SemanticsUtils_androidKt.getTextLayoutResult(configuration);
        if (it7 != null) {
            TextLayoutInput input = it7.getLayoutInput();
            float px = TextUnit.m7699getValueimpl(input.getStyle().m6959getFontSizeXSAIIZE()) * input.getDensity().getDensity() * input.getDensity().getFontScale();
            structure.setTextStyle(px, 0, 0, 0);
        }
        Rect $this$toViewStructure_u24lambda_u248 = $this$toViewStructure.getBoundsInParent$ui();
        structure.setDimens((int) $this$toViewStructure_u24lambda_u248.getLeft(), (int) $this$toViewStructure_u24lambda_u248.getTop(), 0, 0, (int) ($this$toViewStructure_u24lambda_u248.getRight() - $this$toViewStructure_u24lambda_u248.getLeft()), (int) ($this$toViewStructure_u24lambda_u248.getBottom() - $this$toViewStructure_u24lambda_u248.getTop()));
        return structure;
    }

    private final void fastForEachReplacedVisibleChildren(SemanticsNode $this$fastForEachReplacedVisibleChildren, Function2<? super Integer, ? super SemanticsNode, Unit> function2) {
        List<SemanticsNode> replacedChildren$ui = $this$fastForEachReplacedVisibleChildren.getReplacedChildren$ui();
        int i$iv = 0;
        int size = replacedChildren$ui.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = replacedChildren$ui.get(index$iv);
            SemanticsNode it = (SemanticsNode) item$iv;
            IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
            int key$iv = it.getId();
            if (currentSemanticsNodes$ui.containsKey(key$iv)) {
                function2.invoke(Integer.valueOf(i$iv), item$iv);
                i$iv++;
            }
        }
    }

    private final <T> void fastForEachIndexedWithFilter(List<? extends T> list, Function2<? super Integer, ? super T, Unit> function2, Function1<? super T, Boolean> function1) {
        int i = 0;
        int size = list.size();
        for (int index = 0; index < size; index++) {
            Object item = list.get(index);
            if (function1.invoke(item).booleanValue()) {
                function2.invoke(Integer.valueOf(i), item);
                i++;
            }
        }
    }

    private final void bufferContentCaptureViewAppeared(int virtualId, ViewStructureCompat viewStructure) {
        if (viewStructure == null) {
            return;
        }
        this.bufferedEvents.add(new ContentCaptureEvent(virtualId, this.currentSemanticsNodesSnapshotTimestampMillis, ContentCaptureEventType.VIEW_APPEAR, viewStructure));
    }

    private final void bufferContentCaptureViewDisappeared(int virtualId) {
        this.bufferedEvents.add(new ContentCaptureEvent(virtualId, this.currentSemanticsNodesSnapshotTimestampMillis, ContentCaptureEventType.VIEW_DISAPPEAR, null));
    }

    private final void notifyContentCaptureChanges() {
        ContentCaptureSessionWrapper session = this.contentCaptureSession;
        if (session != null && Build.VERSION.SDK_INT >= 29 && !this.bufferedEvents.isEmpty()) {
            List<ContentCaptureEvent> list = this.bufferedEvents;
            int size = list.size();
            for (int index$iv = 0; index$iv < size; index$iv++) {
                Object item$iv = list.get(index$iv);
                ContentCaptureEvent event = (ContentCaptureEvent) item$iv;
                switch (WhenMappings.$EnumSwitchMapping$0[event.getType().ordinal()]) {
                    case 1:
                        ViewStructureCompat node = event.getStructureCompat();
                        if (node != null) {
                            session.notifyViewAppeared(node.toViewStructure());
                        }
                        break;
                    case 2:
                        AutofillId autofillId = session.newAutofillId(event.getId());
                        if (autofillId != null) {
                            session.notifyViewDisappeared(autofillId);
                        }
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
            session.flush();
            this.bufferedEvents.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBuffersOnAppeared(int index, SemanticsNode node) {
        if (!isEnabled$ui()) {
            return;
        }
        updateTranslationOnAppeared(node);
        bufferContentCaptureViewAppeared(node.getId(), toViewStructure(node, index));
        fastForEachReplacedVisibleChildren(node, new Function2<Integer, SemanticsNode, Unit>() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager.updateBuffersOnAppeared.1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, SemanticsNode semanticsNode) {
                invoke(num.intValue(), semanticsNode);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, SemanticsNode child) {
                AndroidContentCaptureManager.this.updateBuffersOnAppeared(i, child);
            }
        });
    }

    private final void updateBuffersOnDisappeared(SemanticsNode node) {
        if (!isEnabled$ui()) {
            return;
        }
        bufferContentCaptureViewDisappeared(node.getId());
        List<SemanticsNode> replacedChildren$ui = node.getReplacedChildren$ui();
        int size = replacedChildren$ui.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = replacedChildren$ui.get(index$iv);
            SemanticsNode child = (SemanticsNode) item$iv;
            updateBuffersOnDisappeared(child);
        }
    }

    private final void updateTranslationOnAppeared(SemanticsNode node) {
        AccessibilityAction accessibilityAction;
        Function1 function1;
        Function1 function12;
        SemanticsConfiguration config = node.getUnmergedConfig();
        Boolean isShowingTextSubstitution = (Boolean) SemanticsConfigurationKt.getOrNull(config, SemanticsProperties.INSTANCE.getIsShowingTextSubstitution());
        if (this.translateStatus == TranslateStatus.SHOW_ORIGINAL && Intrinsics.areEqual((Object) isShowingTextSubstitution, (Object) true)) {
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(config, SemanticsActions.INSTANCE.getShowTextSubstitution());
            if (accessibilityAction2 != null && (function12 = (Function1) accessibilityAction2.getAction()) != null) {
                return;
            }
            return;
        }
        if (this.translateStatus == TranslateStatus.SHOW_TRANSLATED && Intrinsics.areEqual((Object) isShowingTextSubstitution, (Object) false) && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(config, SemanticsActions.INSTANCE.getShowTextSubstitution())) != null && (function1 = (Function1) accessibilityAction.getAction()) != null) {
        }
    }

    public final void onShowTranslation$ui() {
        this.translateStatus = TranslateStatus.SHOW_TRANSLATED;
        showTranslatedText();
    }

    public final void onHideTranslation$ui() {
        this.translateStatus = TranslateStatus.SHOW_ORIGINAL;
        hideTranslatedText();
    }

    public final void onClearTranslation$ui() {
        this.translateStatus = TranslateStatus.SHOW_ORIGINAL;
        clearTranslatedText();
    }

    private final void showTranslatedText() {
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap;
        int $i$f$forEachValue;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap2;
        int $i$f$forEachValue2;
        int i;
        AccessibilityAction accessibilityAction;
        Function1 function1;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
        int $i$f$forEachValue3 = 0;
        Object[] v$iv = currentSemanticsNodes$ui.values;
        long[] m$iv$iv = currentSemanticsNodes$ui.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                intObjectMap = currentSemanticsNodes$ui;
                $i$f$forEachValue = $i$f$forEachValue3;
            } else {
                int i2 = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128)) {
                        intObjectMap2 = currentSemanticsNodes$ui;
                        $i$f$forEachValue2 = $i$f$forEachValue3;
                        i = i2;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        SemanticsNodeWithAdjustedBounds node = (SemanticsNodeWithAdjustedBounds) v$iv[index$iv$iv];
                        i = i2;
                        SemanticsConfiguration config = node.getSemanticsNode().getUnmergedConfig();
                        intObjectMap2 = currentSemanticsNodes$ui;
                        $i$f$forEachValue2 = $i$f$forEachValue3;
                        if (Intrinsics.areEqual(SemanticsConfigurationKt.getOrNull(config, SemanticsProperties.INSTANCE.getIsShowingTextSubstitution()), (Object) false) && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(config, SemanticsActions.INSTANCE.getShowTextSubstitution())) != null && (function1 = (Function1) accessibilityAction.getAction()) != null) {
                        }
                    }
                    slot$iv$iv >>= i;
                    j$iv$iv++;
                    $i$f$forEachValue3 = $i$f$forEachValue2;
                    i2 = i;
                    currentSemanticsNodes$ui = intObjectMap2;
                }
                intObjectMap = currentSemanticsNodes$ui;
                $i$f$forEachValue = $i$f$forEachValue3;
                if (bitCount$iv$iv != i2) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            $i$f$forEachValue3 = $i$f$forEachValue;
            currentSemanticsNodes$ui = intObjectMap;
        }
    }

    private final void hideTranslatedText() {
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap;
        int $i$f$forEachValue;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap2;
        int $i$f$forEachValue2;
        int i;
        AccessibilityAction accessibilityAction;
        Function1 function1;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
        int $i$f$forEachValue3 = 0;
        Object[] v$iv = currentSemanticsNodes$ui.values;
        long[] m$iv$iv = currentSemanticsNodes$ui.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                intObjectMap = currentSemanticsNodes$ui;
                $i$f$forEachValue = $i$f$forEachValue3;
            } else {
                int i2 = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128)) {
                        intObjectMap2 = currentSemanticsNodes$ui;
                        $i$f$forEachValue2 = $i$f$forEachValue3;
                        i = i2;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        SemanticsNodeWithAdjustedBounds node = (SemanticsNodeWithAdjustedBounds) v$iv[index$iv$iv];
                        i = i2;
                        SemanticsConfiguration config = node.getSemanticsNode().getUnmergedConfig();
                        intObjectMap2 = currentSemanticsNodes$ui;
                        $i$f$forEachValue2 = $i$f$forEachValue3;
                        if (Intrinsics.areEqual(SemanticsConfigurationKt.getOrNull(config, SemanticsProperties.INSTANCE.getIsShowingTextSubstitution()), (Object) true) && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(config, SemanticsActions.INSTANCE.getShowTextSubstitution())) != null && (function1 = (Function1) accessibilityAction.getAction()) != null) {
                        }
                    }
                    slot$iv$iv >>= i;
                    j$iv$iv++;
                    $i$f$forEachValue3 = $i$f$forEachValue2;
                    i2 = i;
                    currentSemanticsNodes$ui = intObjectMap2;
                }
                intObjectMap = currentSemanticsNodes$ui;
                $i$f$forEachValue = $i$f$forEachValue3;
                if (bitCount$iv$iv != i2) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            $i$f$forEachValue3 = $i$f$forEachValue;
            currentSemanticsNodes$ui = intObjectMap;
        }
    }

    private final void clearTranslatedText() {
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap2;
        int i;
        AccessibilityAction accessibilityAction;
        Function0 function0;
        IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
        Object[] v$iv = currentSemanticsNodes$ui.values;
        long[] m$iv$iv = currentSemanticsNodes$ui.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                intObjectMap = currentSemanticsNodes$ui;
            } else {
                int i2 = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128)) {
                        intObjectMap2 = currentSemanticsNodes$ui;
                        i = i2;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        SemanticsNodeWithAdjustedBounds node = (SemanticsNodeWithAdjustedBounds) v$iv[index$iv$iv];
                        i = i2;
                        SemanticsConfiguration config = node.getSemanticsNode().getUnmergedConfig();
                        intObjectMap2 = currentSemanticsNodes$ui;
                        if (SemanticsConfigurationKt.getOrNull(config, SemanticsProperties.INSTANCE.getIsShowingTextSubstitution()) != null && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(config, SemanticsActions.INSTANCE.getClearTextSubstitution())) != null && (function0 = (Function0) accessibilityAction.getAction()) != null) {
                        }
                    }
                    slot$iv$iv >>= i;
                    j$iv$iv++;
                    i2 = i;
                    currentSemanticsNodes$ui = intObjectMap2;
                }
                intObjectMap = currentSemanticsNodes$ui;
                if (bitCount$iv$iv != i2) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            currentSemanticsNodes$ui = intObjectMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: AndroidContentCaptureManager.android.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0007J \u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0007J \u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0002¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods;", "", "<init>", "()V", "onCreateVirtualViewTranslationRequests", "", "contentCaptureManager", "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;", "virtualIds", "", "supportedFormats", "", "requestsCollector", "Ljava/util/function/Consumer;", "Landroid/view/translation/ViewTranslationRequest;", "onVirtualViewTranslationResponses", "response", "Landroid/util/LongSparseArray;", "Landroid/view/translation/ViewTranslationResponse;", "doTranslation", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    static final class ViewTranslationHelperMethods {
        public static final ViewTranslationHelperMethods INSTANCE = new ViewTranslationHelperMethods();

        private ViewTranslationHelperMethods() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void onCreateVirtualViewTranslationRequests(AndroidContentCaptureManager contentCaptureManager, long[] virtualIds, int[] supportedFormats, Consumer<ViewTranslationRequest> requestsCollector) {
            SemanticsNode semanticsNode;
            String strFastJoinToString$default;
            for (long j : virtualIds) {
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = contentCaptureManager.getCurrentSemanticsNodes$ui().get((int) j);
                if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode()) != null) {
                    ViewTranslationRequest.Builder builder = new ViewTranslationRequest.Builder(contentCaptureManager.getView().getAutofillId(), semanticsNode.getId());
                    List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig(), SemanticsProperties.INSTANCE.getText());
                    if (list != null && (strFastJoinToString$default = ListUtilsKt.fastJoinToString$default(list, "\n", null, null, 0, null, null, 62, null)) != null) {
                        builder.setValue("android:text", TranslationRequestValue.forText(new AnnotatedString(strFastJoinToString$default, null, 2, 0 == true ? 1 : 0)));
                        requestsCollector.accept(builder.build());
                    }
                }
            }
        }

        public final void onVirtualViewTranslationResponses(final AndroidContentCaptureManager contentCaptureManager, final LongSparseArray<ViewTranslationResponse> response) {
            if (Build.VERSION.SDK_INT < 31) {
                return;
            }
            if (Intrinsics.areEqual(Looper.getMainLooper().getThread(), Thread.currentThread())) {
                doTranslation(contentCaptureManager, response);
            } else {
                contentCaptureManager.getView().post(new Runnable() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager$ViewTranslationHelperMethods$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidContentCaptureManager.ViewTranslationHelperMethods.INSTANCE.doTranslation(contentCaptureManager, response);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final void doTranslation(AndroidContentCaptureManager contentCaptureManager, LongSparseArray<ViewTranslationResponse> response) {
            TranslationResponseValue value;
            CharSequence text;
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
            SemanticsNode semanticsNode;
            AccessibilityAction accessibilityAction;
            Function1 function1;
            int size = response.size();
            for (int i = 0; i < size; i++) {
                long jKeyAt = response.keyAt(i);
                ViewTranslationResponse viewTranslationResponse = response.get(jKeyAt);
                if (viewTranslationResponse != null && (value = viewTranslationResponse.getValue("android:text")) != null && (text = value.getText()) != null && (semanticsNodeWithAdjustedBounds = contentCaptureManager.getCurrentSemanticsNodes$ui().get((int) jKeyAt)) != null && (semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode()) != null && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig(), SemanticsActions.INSTANCE.getSetTextSubstitution())) != null && (function1 = (Function1) accessibilityAction.getAction()) != null) {
                }
            }
        }
    }

    public final void onCreateVirtualViewTranslationRequests$ui(long[] virtualIds, int[] supportedFormats, Consumer<ViewTranslationRequest> requestsCollector) {
        ViewTranslationHelperMethods.INSTANCE.onCreateVirtualViewTranslationRequests(this, virtualIds, supportedFormats, requestsCollector);
    }

    public final void onVirtualViewTranslationResponses$ui(AndroidContentCaptureManager contentCaptureManager, LongSparseArray<ViewTranslationResponse> response) {
        ViewTranslationHelperMethods.INSTANCE.onVirtualViewTranslationResponses(contentCaptureManager, response);
    }
}
