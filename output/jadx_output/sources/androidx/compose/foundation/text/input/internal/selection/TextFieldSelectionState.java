package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.content.TransferableContent;
import androidx.compose.foundation.content.TransferableContent_androidKt;
import androidx.compose.foundation.content.internal.ReceiveContentConfiguration;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldCursor_androidKt;
import androidx.compose.foundation.text.TextLayoutHelperKt;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequester;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextFieldCharSequenceKt;
import androidx.compose.foundation.text.input.internal.IndexTransformationType;
import androidx.compose.foundation.text.input.internal.MathUtilsKt;
import androidx.compose.foundation.text.input.internal.SelectionWedgeAffinity;
import androidx.compose.foundation.text.input.internal.TextLayoutState;
import androidx.compose.foundation.text.input.internal.TextLayoutStateKt;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.input.internal.WedgeAffinity;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionGestures_androidKt;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.SelectionLayout;
import androidx.compose.foundation.text.selection.SelectionLayoutKt;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.foundation.text.selection.TextSelectionDelegateKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.ClipMetadata;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.firebase.firestore.model.Values;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: TextFieldSelectionState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0001\u0018\u00002\u00020\u0001:\u0006ã\u0001ä\u0001å\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\tH\u0000¢\u0006\u0002\bzJ\b\u0010{\u001a\u00020\tH\u0002J\u0006\u0010|\u001a\u00020}J\u0006\u0010~\u001a\u00020}J\u001c\u0010\u007f\u001a\u00020}2\b\u0010\u0080\u0001\u001a\u00030\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J\u001d\u0010\u0084\u0001\u001a\u00020}2\b\u0010\u0080\u0001\u001a\u00030\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J@\u0010\u0085\u0001\u001a\u0002022\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u00142\u0007\u0010\u0086\u0001\u001a\u00020*2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tJ\u0015\u0010\u0087\u0001\u001a\u000202*\u00030\u0088\u0001H\u0086@¢\u0006\u0003\u0010\u0089\u0001J\u001e\u0010\u008a\u0001\u001a\u000202*\u00030\u0088\u00012\u0007\u0010\u008b\u0001\u001a\u00020\tH\u0086@¢\u0006\u0003\u0010\u008c\u0001J\u0010\u0010\u008d\u0001\u001a\u000202H\u0086@¢\u0006\u0003\u0010\u008e\u0001J\u000f\u0010\u008f\u0001\u001a\u0002022\u0006\u0010]\u001a\u00020\\J\u0007\u0010\u0090\u0001\u001a\u000202J\u0015\u0010\u0091\u0001\u001a\u000202*\u00030\u0088\u0001H\u0086@¢\u0006\u0003\u0010\u0089\u0001J?\u0010\u0092\u0001\u001a\u000202*\u00030\u0088\u00012\n\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0094\u00012\r\u0010\u0095\u0001\u001a\b\u0012\u0004\u0012\u000202012\r\u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u00020201H\u0086@¢\u0006\u0003\u0010\u0097\u0001J\u0019\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0099\u0001\u001a\u00020;¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0015\u0010\u009c\u0001\u001a\u000202*\u00030\u0088\u0001H\u0082@¢\u0006\u0003\u0010\u0089\u0001J$\u0010\u009d\u0001\u001a\u000202*\u00030\u0088\u00012\r\u0010\u0095\u0001\u001a\b\u0012\u0004\u0012\u00020201H\u0086@¢\u0006\u0003\u0010\u009e\u0001J\u0007\u0010\u009f\u0001\u001a\u000202J\u001e\u0010 \u0001\u001a\u000202*\u00030\u0088\u00012\u0007\u0010\u008b\u0001\u001a\u00020\tH\u0082@¢\u0006\u0003\u0010\u008c\u0001J\u0010\u0010¡\u0001\u001a\u000202H\u0082@¢\u0006\u0003\u0010\u008e\u0001J\u0010\u0010¢\u0001\u001a\u000202H\u0082@¢\u0006\u0003\u0010\u008e\u0001J\t\u0010¨\u0001\u001a\u00020}H\u0002J \u0010©\u0001\u001a\u00020x2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0006\u0010y\u001a\u00020\tH\u0000¢\u0006\u0003\bª\u0001J\u001b\u0010«\u0001\u001a\u00020;2\u0007\u0010\u008b\u0001\u001a\u00020\tH\u0002¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001J\"\u0010®\u0001\u001a\u0002022\u0007\u0010¯\u0001\u001a\u00020J2\u0007\u0010°\u0001\u001a\u00020;¢\u0006\u0006\b±\u0001\u0010²\u0001J\t\u0010³\u0001\u001a\u000202H\u0002J\u0007\u0010´\u0001\u001a\u000202J\u0007\u0010µ\u0001\u001a\u00020\tJ\n\u0010¶\u0001\u001a\u00020\tH\u0086\bJ\u0010\u0010·\u0001\u001a\u000202H\u0086@¢\u0006\u0003\u0010\u008e\u0001J\n\u0010¸\u0001\u001a\u0005\u0018\u00010¹\u0001J\u0007\u0010º\u0001\u001a\u00020\tJ\n\u0010»\u0001\u001a\u00020\tH\u0086\bJ\u001b\u0010¼\u0001\u001a\u0002022\t\b\u0002\u0010½\u0001\u001a\u00020\tH\u0086@¢\u0006\u0003\u0010¾\u0001J\u001d\u0010¿\u0001\u001a\u0005\u0018\u00010¹\u00012\t\b\u0002\u0010½\u0001\u001a\u00020\tH\u0000¢\u0006\u0003\bÀ\u0001J\u0010\u0010Ã\u0001\u001a\u000202H\u0086@¢\u0006\u0003\u0010\u008e\u0001J\u0007\u0010Ä\u0001\u001a\u00020\tJ\n\u0010Å\u0001\u001a\u00020\tH\u0086\bJ\u0010\u0010Æ\u0001\u001a\u000202H\u0086@¢\u0006\u0003\u0010\u008e\u0001J\u0010\u0010Ç\u0001\u001a\u000202H\u0082@¢\u0006\u0003\u0010\u008e\u0001J\u0018\u0010È\u0001\u001a\u0002022\u0007\u0010 \u001a\u00030¹\u0001H\u0000¢\u0006\u0003\bÉ\u0001J\u0007\u0010Ê\u0001\u001a\u00020\tJ\u0007\u0010Ë\u0001\u001a\u000202J\u0007\u0010Ì\u0001\u001a\u00020\tJ\u0007\u0010Í\u0001\u001a\u000202J\u0019\u0010\u0086\u0001\u001a\u0002022\u0007\u0010Î\u0001\u001a\u00020}H\u0082@¢\u0006\u0003\u0010Ï\u0001J\u0007\u0010Ð\u0001\u001a\u000202J\t\u0010Ñ\u0001\u001a\u000202H\u0002JX\u0010Ò\u0001\u001a\u00030Ó\u00012\b\u0010Ô\u0001\u001a\u00030\u0083\u00012\u0007\u0010Õ\u0001\u001a\u00020p2\u0007\u0010Ö\u0001\u001a\u00020p2\u0007\u0010\u008b\u0001\u001a\u00020\t2\b\u0010×\u0001\u001a\u00030Ø\u00012\t\b\u0002\u0010Ù\u0001\u001a\u00020\t2\t\b\u0002\u0010Ú\u0001\u001a\u00020\tH\u0000¢\u0006\u0006\bÛ\u0001\u0010Ü\u0001JD\u0010Ý\u0001\u001a\u00030Ó\u00012\u0007\u0010Þ\u0001\u001a\u00020p2\u0007\u0010ß\u0001\u001a\u00020p2\n\u0010à\u0001\u001a\u0005\u0018\u00010Ó\u00012\u0007\u0010\u008b\u0001\u001a\u00020\t2\b\u0010×\u0001\u001a\u00030Ø\u0001H\u0002¢\u0006\u0006\bá\u0001\u0010â\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u001e\u0010\n\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001bR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R+\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b,\u0010\u001b\"\u0004\b-\u0010\u001dR\"\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u00107\u001a\f\u0012\u0006\u0012\u0004\u0018\u000108\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u00104\"\u0004\b:\u00106R+\u0010<\u001a\u00020;2\u0006\u0010+\u001a\u00020;8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bA\u0010/\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0014\u0010B\u001a\u00020;8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010>R+\u0010D\u001a\u00020;2\u0006\u0010+\u001a\u00020;8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bG\u0010/\u001a\u0004\bE\u0010>\"\u0004\bF\u0010@R\u0011\u0010H\u001a\u00020;8F¢\u0006\u0006\u001a\u0004\bI\u0010>R/\u0010K\u001a\u0004\u0018\u00010J2\b\u0010+\u001a\u0004\u0018\u00010J8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\bP\u0010/\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR+\u0010R\u001a\u00020Q2\u0006\u0010+\u001a\u00020Q8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\bW\u0010/\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR+\u0010X\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b[\u0010/\u001a\u0004\bY\u0010\u001b\"\u0004\bZ\u0010\u001dR+\u0010]\u001a\u00020\\2\u0006\u0010+\u001a\u00020\\8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bb\u0010/\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR+\u0010c\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t8F@@X\u0086\u008e\u0002¢\u0006\u0012\n\u0004\bf\u0010/\u001a\u0004\bd\u0010\u001b\"\u0004\be\u0010\u001dR\u0016\u0010g\u001a\u0004\u0018\u00010h8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bi\u0010jR\u0014\u0010k\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bl\u0010\u001bR\u0010\u0010m\u001a\u0004\u0018\u00010nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020pX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010q\u001a\u0004\u0018\u00010rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\"\u0010£\u0001\u001a\u0004\u0018\u00010}8@X\u0080\u0084\u0002¢\u0006\u0010\n\u0006\b¦\u0001\u0010§\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001R\u0010\u0010Á\u0001\u001a\u00030Â\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006æ\u0001"}, d2 = {"Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;", "", "textFieldState", "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;", "textLayoutState", "Landroidx/compose/foundation/text/input/internal/TextLayoutState;", "density", "Landroidx/compose/ui/unit/Density;", "enabled", "", "readOnly", "isFocused", "isPassword", "toolbarRequester", "Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "platformSelectionBehaviors", "Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;", "clipboard", "Landroidx/compose/ui/platform/Clipboard;", "<init>", "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZZLandroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Landroidx/compose/ui/platform/Clipboard;)V", "getTextFieldState$foundation", "()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;", "getTextLayoutState$foundation", "()Landroidx/compose/foundation/text/input/internal/TextLayoutState;", "()Z", "setFocused", "(Z)V", "getPlatformSelectionBehaviors$foundation", "()Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;", Values.VECTOR_MAP_VECTORS_KEY, "getEnabled", "getReadOnly", "hapticFeedBack", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "getHapticFeedBack", "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "setHapticFeedBack", "(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V", "textToolbarHandler", "Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;", "<set-?>", "isInTouchMode", "setInTouchMode", "isInTouchMode$delegate", "Landroidx/compose/runtime/MutableState;", "requestAutofillAction", "Lkotlin/Function0;", "", "getRequestAutofillAction", "()Lkotlin/jvm/functions/Function0;", "setRequestAutofillAction", "(Lkotlin/jvm/functions/Function0;)V", "receiveContentConfiguration", "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;", "getReceiveContentConfiguration", "setReceiveContentConfiguration", "Landroidx/compose/ui/geometry/Offset;", "startTextLayoutPositionInWindow", "getStartTextLayoutPositionInWindow-F1C5BW0", "()J", "setStartTextLayoutPositionInWindow-k-4lQ0M", "(J)V", "startTextLayoutPositionInWindow$delegate", "currentTextLayoutPositionInWindow", "getCurrentTextLayoutPositionInWindow-F1C5BW0", "rawHandleDragPosition", "getRawHandleDragPosition-F1C5BW0", "setRawHandleDragPosition-k-4lQ0M", "rawHandleDragPosition$delegate", "handleDragPosition", "getHandleDragPosition-F1C5BW0", "Landroidx/compose/foundation/text/Handle;", "draggingHandle", "getDraggingHandle", "()Landroidx/compose/foundation/text/Handle;", "setDraggingHandle", "(Landroidx/compose/foundation/text/Handle;)V", "draggingHandle$delegate", "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;", "directDragGestureInitiator", "getDirectDragGestureInitiator", "()Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;", "setDirectDragGestureInitiator", "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;)V", "directDragGestureInitiator$delegate", "showCursorHandle", "getShowCursorHandle", "setShowCursorHandle", "showCursorHandle$delegate", "Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;", "textToolbarState", "getTextToolbarState", "()Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;", "setTextToolbarState", "(Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;)V", "textToolbarState$delegate", "textToolbarShown", "getTextToolbarShown", "setTextToolbarShown$foundation", "textToolbarShown$delegate", "textLayoutCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getTextLayoutCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "editable", "getEditable$foundation", "previousSelectionLayout", "Landroidx/compose/foundation/text/selection/SelectionLayout;", "previousRawDragOffset", "", "pressInteraction", "Landroidx/compose/foundation/interaction/PressInteraction$Press;", "getPressInteraction", "()Landroidx/compose/foundation/interaction/PressInteraction$Press;", "setPressInteraction", "(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V", "getCursorHandleState", "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;", "includePosition", "getCursorHandleState$foundation", "isCursorHandleInVisibleBounds", "getCursorRect", "Landroidx/compose/ui/geometry/Rect;", "getFocusRect", "calculateCursorRect", "layoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "visualText", "Landroidx/compose/foundation/text/input/TextFieldCharSequence;", "calculateSelectionRect", "update", "showTextToolbar", "cursorHandleGestures", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selectionHandleGestures", "isStartHandle", "(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startToolbarAndHandlesVisibilityObserver", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateTextToolbarState", "dispose", "detectTouchMode", "detectTextFieldTapGestures", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "requestFocus", "showKeyboard", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "placeCursorAtNearestOffset", "offset", "placeCursorAtNearestOffset-k-4lQ0M", "(J)Z", "detectCursorHandleDragGestures", "textFieldSelectionGestures", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maybeSuggestSelectionRange", "detectSelectionHandleDragGestures", "observeTextChanges", "observeTextToolbarVisibility", "derivedVisibleContentBounds", "getDerivedVisibleContentBounds$foundation", "()Landroidx/compose/ui/geometry/Rect;", "derivedVisibleContentBounds$delegate", "Landroidx/compose/runtime/State;", "getContentRect", "getSelectionHandleState", "getSelectionHandleState$foundation", "getHandlePosition", "getHandlePosition-tuRUvjQ", "(Z)J", "updateHandleDragging", "handle", "position", "updateHandleDragging-Uv8p0NA", "(Landroidx/compose/foundation/text/Handle;J)V", "markStartContentVisibleOffset", "clearHandleDragging", "canShowCutMenuItem", "isCutAllowed", "cut", "cutWithResult", "Landroidx/compose/ui/text/AnnotatedString;", "canShowCopyMenuItem", "isCopyAllowed", "copy", "cancelSelection", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "copyWithResult", "copyWithResult$foundation", "clipboardPasteState", "Landroidx/compose/foundation/text/input/internal/selection/ClipboardPasteState;", "updateClipboardEntry", "canShowPasteMenuItem", "isPasteAllowed", "paste", "pasteAsPlainText", "onPasteEvent", "onPasteEvent$foundation", "canShowSelectAllMenuItem", "selectAll", "canShowAutofillMenuItem", "autofill", "contentRect", "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deselect", "hideTextToolbar", "updateSelection", "Landroidx/compose/ui/text/TextRange;", "textFieldCharSequence", "startOffset", "endOffset", "adjustment", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "allowPreviousSelectionCollapsed", "isStartOfSelection", "updateSelection-SsL-Rf8$foundation", "(Landroidx/compose/foundation/text/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZZ)J", "getTextFieldSelection", "rawStartOffset", "rawEndOffset", "previousSelection", "getTextFieldSelection-qeG_v_k", "(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J", "InputType", "TextFieldMouseSelectionObserver", "TextFieldTextDragObserver", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TextFieldSelectionState {
    public static final int $stable = 8;
    private Clipboard clipboard;
    private ClipboardPasteState clipboardPasteState;
    private final CoroutineScope coroutineScope;
    private Density density;
    private boolean enabled;
    private HapticFeedback hapticFeedBack;
    private boolean isFocused;
    private boolean isPassword;
    private final PlatformSelectionBehaviors platformSelectionBehaviors;
    private PressInteraction.Press pressInteraction;
    private SelectionLayout previousSelectionLayout;
    private boolean readOnly;
    private Function0<? extends ReceiveContentConfiguration> receiveContentConfiguration;
    private Function0<Unit> requestAutofillAction;
    private final TransformedTextFieldState textFieldState;
    private final TextLayoutState textLayoutState;
    private TextToolbarHandler textToolbarHandler;
    private final ToolbarRequester toolbarRequester;

    /* JADX INFO: renamed from: isInTouchMode$delegate, reason: from kotlin metadata */
    private final MutableState isInTouchMode = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);

    /* JADX INFO: renamed from: startTextLayoutPositionInWindow$delegate, reason: from kotlin metadata */
    private final MutableState startTextLayoutPositionInWindow = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m4441boximpl(Offset.INSTANCE.m4467getUnspecifiedF1C5BW0()), null, 2, null);

    /* JADX INFO: renamed from: rawHandleDragPosition$delegate, reason: from kotlin metadata */
    private final MutableState rawHandleDragPosition = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m4441boximpl(Offset.INSTANCE.m4467getUnspecifiedF1C5BW0()), null, 2, null);

    /* JADX INFO: renamed from: draggingHandle$delegate, reason: from kotlin metadata */
    private final MutableState draggingHandle = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);

    /* JADX INFO: renamed from: directDragGestureInitiator$delegate, reason: from kotlin metadata */
    private final MutableState directDragGestureInitiator = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(InputType.None, null, 2, null);

    /* JADX INFO: renamed from: showCursorHandle$delegate, reason: from kotlin metadata */
    private final MutableState showCursorHandle = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);

    /* JADX INFO: renamed from: textToolbarState$delegate, reason: from kotlin metadata */
    private final MutableState textToolbarState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TextToolbarState.None, null, 2, null);

    /* JADX INFO: renamed from: textToolbarShown$delegate, reason: from kotlin metadata */
    private final MutableState textToolbarShown = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
    private int previousRawDragOffset = -1;

    /* JADX INFO: renamed from: derivedVisibleContentBounds$delegate, reason: from kotlin metadata */
    private final State derivedVisibleContentBounds = SnapshotStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TextFieldSelectionState.derivedVisibleContentBounds_delegate$lambda$0(this.f$0);
        }
    });

    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;", "", "<init>", "(Ljava/lang/String;I)V", "None", "Touch", "Mouse", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum InputType {
        None,
        Touch,
        Mouse;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

        public static EnumEntries<InputType> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IndexTransformationType.values().length];
            try {
                iArr[IndexTransformationType.Untransformed.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[IndexTransformationType.Deletion.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[IndexTransformationType.Insertion.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[IndexTransformationType.Replacement.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectCursorHandleDragGestures$1, reason: invalid class name */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", i = {0, 0}, l = {676}, m = "detectCursorHandleDragGestures", n = {"cursorDragStart", "cursorDragDelta"}, s = {"L$0", "L$1"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.detectCursorHandleDragGestures(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectSelectionHandleDragGestures$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", i = {0, 0, 0}, l = {1137}, m = "detectSelectionHandleDragGestures", n = {"dragBeginPosition", "dragTotalDistance", "handle"}, s = {"L$0", "L$1", "L$2"}, v = 1)
    static final class C03231 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03231(Continuation<? super C03231> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.detectSelectionHandleDragGestures(null, false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$paste$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", i = {1}, l = {1544, 1546, 1546}, m = "paste", n = {"receiveContentConfiguration"}, s = {"L$0"}, v = 1)
    static final class C03271 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03271(Continuation<? super C03271> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.paste(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$pasteAsPlainText$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", i = {}, l = {1577, 1577}, m = "pasteAsPlainText", n = {}, s = {}, v = 1)
    static final class C03281 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03281(Continuation<? super C03281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.pasteAsPlainText(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState", f = "TextFieldSelectionState.kt", i = {}, l = {537}, m = "startToolbarAndHandlesVisibilityObserver", n = {}, s = {}, v = 1)
    static final class C03301 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03301(Continuation<? super C03301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldSelectionState.this.startToolbarAndHandlesVisibilityObserver(this);
        }
    }

    public TextFieldSelectionState(TransformedTextFieldState textFieldState, TextLayoutState textLayoutState, Density density, boolean enabled, boolean readOnly, boolean isFocused, boolean isPassword, ToolbarRequester toolbarRequester, CoroutineScope coroutineScope, PlatformSelectionBehaviors platformSelectionBehaviors, Clipboard clipboard) {
        this.textFieldState = textFieldState;
        this.textLayoutState = textLayoutState;
        this.density = density;
        this.isFocused = isFocused;
        this.isPassword = isPassword;
        this.toolbarRequester = toolbarRequester;
        this.coroutineScope = coroutineScope;
        this.platformSelectionBehaviors = platformSelectionBehaviors;
        this.clipboard = clipboard;
        this.enabled = enabled;
        this.readOnly = readOnly;
        this.clipboardPasteState = new ClipboardPasteState(this.clipboard);
    }

    /* JADX INFO: renamed from: getTextFieldState$foundation, reason: from getter */
    public final TransformedTextFieldState getTextFieldState() {
        return this.textFieldState;
    }

    /* JADX INFO: renamed from: getTextLayoutState$foundation, reason: from getter */
    public final TextLayoutState getTextLayoutState() {
        return this.textLayoutState;
    }

    /* JADX INFO: renamed from: isFocused, reason: from getter */
    public final boolean getIsFocused() {
        return this.isFocused;
    }

    public final void setFocused(boolean z) {
        this.isFocused = z;
    }

    /* JADX INFO: renamed from: getPlatformSelectionBehaviors$foundation, reason: from getter */
    public final PlatformSelectionBehaviors getPlatformSelectionBehaviors() {
        return this.platformSelectionBehaviors;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getReadOnly() {
        return this.readOnly;
    }

    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public final void setHapticFeedBack(HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final boolean isInTouchMode() {
        State $this$getValue$iv = this.isInTouchMode;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    public final void setInTouchMode(boolean z) {
        MutableState $this$setValue$iv = this.isInTouchMode;
        $this$setValue$iv.setValue(Boolean.valueOf(z));
    }

    public final Function0<Unit> getRequestAutofillAction() {
        return this.requestAutofillAction;
    }

    public final void setRequestAutofillAction(Function0<Unit> function0) {
        this.requestAutofillAction = function0;
    }

    public final Function0<ReceiveContentConfiguration> getReceiveContentConfiguration() {
        return this.receiveContentConfiguration;
    }

    public final void setReceiveContentConfiguration(Function0<? extends ReceiveContentConfiguration> function0) {
        this.receiveContentConfiguration = function0;
    }

    /* JADX INFO: renamed from: getStartTextLayoutPositionInWindow-F1C5BW0, reason: not valid java name */
    private final long m1503getStartTextLayoutPositionInWindowF1C5BW0() {
        State $this$getValue$iv = this.startTextLayoutPositionInWindow;
        return ((Offset) $this$getValue$iv.getValue()).m4462unboximpl();
    }

    /* JADX INFO: renamed from: setStartTextLayoutPositionInWindow-k-4lQ0M, reason: not valid java name */
    private final void m1506setStartTextLayoutPositionInWindowk4lQ0M(long j) {
        MutableState $this$setValue$iv = this.startTextLayoutPositionInWindow;
        $this$setValue$iv.setValue(Offset.m4441boximpl(j));
    }

    /* JADX INFO: renamed from: getCurrentTextLayoutPositionInWindow-F1C5BW0, reason: not valid java name */
    private final long m1500getCurrentTextLayoutPositionInWindowF1C5BW0() {
        LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
        return textLayoutCoordinates != null ? LayoutCoordinatesKt.positionInWindow(textLayoutCoordinates) : Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
    }

    /* JADX INFO: renamed from: getRawHandleDragPosition-F1C5BW0, reason: not valid java name */
    private final long m1502getRawHandleDragPositionF1C5BW0() {
        State $this$getValue$iv = this.rawHandleDragPosition;
        return ((Offset) $this$getValue$iv.getValue()).m4462unboximpl();
    }

    /* JADX INFO: renamed from: setRawHandleDragPosition-k-4lQ0M, reason: not valid java name */
    private final void m1505setRawHandleDragPositionk4lQ0M(long j) {
        MutableState $this$setValue$iv = this.rawHandleDragPosition;
        $this$setValue$iv.setValue(Offset.m4441boximpl(j));
    }

    /* JADX INFO: renamed from: getHandleDragPosition-F1C5BW0, reason: not valid java name */
    public final long m1508getHandleDragPositionF1C5BW0() {
        if ((m1502getRawHandleDragPositionF1C5BW0() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
        }
        if ((9223372034707292159L & m1503getStartTextLayoutPositionInWindowF1C5BW0()) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return TextLayoutStateKt.m1454fromDecorationToTextLayoutUv8p0NA(this.textLayoutState, m1502getRawHandleDragPositionF1C5BW0());
        }
        return Offset.m4457plusMKHz9U(m1502getRawHandleDragPositionF1C5BW0(), Offset.m4456minusMKHz9U(m1503getStartTextLayoutPositionInWindowF1C5BW0(), m1500getCurrentTextLayoutPositionInWindowF1C5BW0()));
    }

    public final Handle getDraggingHandle() {
        State $this$getValue$iv = this.draggingHandle;
        return (Handle) $this$getValue$iv.getValue();
    }

    public final void setDraggingHandle(Handle handle) {
        MutableState $this$setValue$iv = this.draggingHandle;
        $this$setValue$iv.setValue(handle);
    }

    public final InputType getDirectDragGestureInitiator() {
        State $this$getValue$iv = this.directDragGestureInitiator;
        return (InputType) $this$getValue$iv.getValue();
    }

    public final void setDirectDragGestureInitiator(InputType inputType) {
        MutableState $this$setValue$iv = this.directDragGestureInitiator;
        $this$setValue$iv.setValue(inputType);
    }

    public final boolean getShowCursorHandle() {
        State $this$getValue$iv = this.showCursorHandle;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    public final void setShowCursorHandle(boolean z) {
        MutableState $this$setValue$iv = this.showCursorHandle;
        $this$setValue$iv.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextToolbarState getTextToolbarState() {
        State $this$getValue$iv = this.textToolbarState;
        return (TextToolbarState) $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextToolbarState(TextToolbarState textToolbarState) {
        MutableState $this$setValue$iv = this.textToolbarState;
        $this$setValue$iv.setValue(textToolbarState);
    }

    public final boolean getTextToolbarShown() {
        State $this$getValue$iv = this.textToolbarShown;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    public final void setTextToolbarShown$foundation(boolean z) {
        MutableState $this$setValue$iv = this.textToolbarShown;
        $this$setValue$iv.setValue(Boolean.valueOf(z));
    }

    private final LayoutCoordinates getTextLayoutCoordinates() {
        LayoutCoordinates it = this.textLayoutState.getTextLayoutNodeCoordinates();
        if (it == null || !it.isAttached()) {
            return null;
        }
        return it;
    }

    public final boolean getEditable$foundation() {
        return this.enabled && !this.readOnly;
    }

    public final PressInteraction.Press getPressInteraction() {
        return this.pressInteraction;
    }

    public final void setPressInteraction(PressInteraction.Press press) {
        this.pressInteraction = press;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final TextFieldHandleState getCursorHandleState$foundation(boolean includePosition) {
        TextFieldCharSequence text = this.textFieldState.getVisualText();
        boolean showCursorHandle = getShowCursorHandle();
        boolean visible = true;
        boolean notBeingDragged = getDirectDragGestureInitiator() == InputType.None;
        Handle draggingHandle = getDraggingHandle();
        if (showCursorHandle && notBeingDragged && TextRange.m6922getCollapsedimpl(text.getSelection()) && text.shouldShowSelection()) {
            if (!(text.length() > 0) || (draggingHandle != Handle.Cursor && !isCursorHandleInVisibleBounds())) {
            }
        } else {
            visible = false;
        }
        if (visible) {
            return new TextFieldHandleState(true, includePosition ? getCursorRect().m4479getBottomCenterF1C5BW0() : Offset.INSTANCE.m4467getUnspecifiedF1C5BW0(), 0.0f, ResolvedTextDirection.Ltr, false, null);
        }
        return TextFieldHandleState.INSTANCE.getHidden();
    }

    private final boolean isCursorHandleInVisibleBounds() {
        Rect rectVisibleBounds;
        Snapshot.Companion this_$iv = Snapshot.INSTANCE;
        Snapshot previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
        Function1<Object, Unit> readObserver = previousSnapshot$iv != null ? previousSnapshot$iv.getReadObserver() : null;
        Snapshot newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
        try {
            long position = getCursorRect().m4479getBottomCenterF1C5BW0();
            this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
            LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
            if (textLayoutCoordinates == null || (rectVisibleBounds = SelectionManagerKt.visibleBounds(textLayoutCoordinates)) == null) {
                return false;
            }
            return SelectionManagerKt.m1635containsInclusiveUv8p0NA(rectVisibleBounds, position);
        } catch (Throwable th) {
            this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
            throw th;
        }
    }

    public final Rect getCursorRect() {
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Rect.INSTANCE.getZero();
        }
        TextFieldCharSequence value = this.textFieldState.getVisualText();
        return calculateCursorRect(layoutResult, value);
    }

    public final Rect getFocusRect() {
        Rect focusRectInTextLayout;
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Rect.INSTANCE.getZero();
        }
        if (!this.isFocused) {
            return FocusProperties.INSTANCE.getUnsetFocusRect();
        }
        TextFieldCharSequence value = this.textFieldState.getVisualText();
        if (TextRange.m6922getCollapsedimpl(value.getSelection())) {
            focusRectInTextLayout = calculateCursorRect(layoutResult, value);
        } else {
            focusRectInTextLayout = calculateSelectionRect(layoutResult, value);
        }
        return TextLayoutStateKt.fromTextLayoutToDecoration(this.textLayoutState, focusRectInTextLayout);
    }

    private final Rect calculateCursorRect(TextLayoutResult layoutResult, TextFieldCharSequence visualText) {
        float cursorCenterX;
        float coercedCursorCenterX;
        if (!TextRange.m6922getCollapsedimpl(visualText.getSelection())) {
            return Rect.INSTANCE.getZero();
        }
        Rect cursorRect = layoutResult.getCursorRect(TextRange.m6928getStartimpl(visualText.getSelection()));
        Density $this$calculateCursorRect_u24lambda_u240 = this.density;
        float cursorWidth = RangesKt.coerceAtLeast((float) Math.floor($this$calculateCursorRect_u24lambda_u240.mo405toPx0680j_4(TextFieldCursor_androidKt.getDefaultCursorThickness())), 1.0f);
        if (layoutResult.getLayoutInput().getLayoutDirection() == LayoutDirection.Ltr) {
            cursorCenterX = cursorRect.getLeft() + (cursorWidth / 2);
        } else {
            cursorCenterX = cursorRect.getRight() - (cursorWidth / 2);
        }
        float f = 2;
        float it = RangesKt.coerceAtLeast(RangesKt.coerceAtMost(cursorCenterX, ((int) (layoutResult.getSize() >> 32)) - (cursorWidth / f)), cursorWidth / f);
        if (((int) cursorWidth) % 2 == 1) {
            coercedCursorCenterX = ((float) Math.floor(it)) + 0.5f;
        } else {
            coercedCursorCenterX = (float) Math.rint(it);
        }
        return new Rect(coercedCursorCenterX - (cursorWidth / f), cursorRect.getTop(), (cursorWidth / f) + coercedCursorCenterX, cursorRect.getBottom());
    }

    private final Rect calculateSelectionRect(TextLayoutResult layoutResult, TextFieldCharSequence visualText) {
        if (TextRange.m6922getCollapsedimpl(visualText.getSelection())) {
            return Rect.INSTANCE.getZero();
        }
        int lineStart = layoutResult.getLineForOffset(TextRange.m6928getStartimpl(visualText.getSelection()));
        int lineEnd = layoutResult.getLineForOffset(TextRange.m6923getEndimpl(visualText.getSelection()));
        if (lineStart == lineEnd) {
            float startHorizontal = layoutResult.getHorizontalPosition(TextRange.m6928getStartimpl(visualText.getSelection()), true);
            float endHorizontal = layoutResult.getHorizontalPosition(TextRange.m6923getEndimpl(visualText.getSelection()), true);
            return new Rect(Math.min(startHorizontal, endHorizontal), layoutResult.getLineTop(lineStart), Math.max(startHorizontal, endHorizontal), layoutResult.getLineBottom(lineEnd));
        }
        Path path = layoutResult.getPathForRange(TextRange.m6926getMinimpl(visualText.getSelection()), TextRange.m6925getMaximpl(visualText.getSelection()));
        return path.getBounds();
    }

    public final void update(HapticFeedback hapticFeedBack, Clipboard clipboard, TextToolbarHandler showTextToolbar, Density density, boolean enabled, boolean readOnly, boolean isPassword) {
        if (!enabled) {
            hideTextToolbar();
        }
        this.hapticFeedBack = hapticFeedBack;
        this.clipboard = clipboard;
        this.textToolbarHandler = showTextToolbar;
        this.density = density;
        this.enabled = enabled;
        this.readOnly = readOnly;
        this.isPassword = isPassword;
        if (clipboard != clipboard) {
            this.clipboardPasteState = new ClipboardPasteState(clipboard);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2, reason: invalid class name */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2", f = "TextFieldSelectionState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
        final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PointerInputScope pointerInputScope, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$this_cursorHandleGestures = pointerInputScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = TextFieldSelectionState.this.new AnonymousClass2(this.$this_cursorHandleGestures, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$1", f = "TextFieldSelectionState.kt", i = {}, l = {493}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = textFieldSelectionState;
                this.$this_cursorHandleGestures = pointerInputScope;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$this_cursorHandleGestures, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (this.this$0.detectTouchMode(this.$this_cursorHandleGestures, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass1(TextFieldSelectionState.this, this.$this_cursorHandleGestures, null), 1, null);
                    BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new C00372(TextFieldSelectionState.this, this.$this_cursorHandleGestures, null), 1, null);
                    return BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass3(this.$this_cursorHandleGestures, TextFieldSelectionState.this, null), 1, null);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$2", f = "TextFieldSelectionState.kt", i = {}, l = {494}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class C00372 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00372(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, Continuation<? super C00372> continuation) {
                super(2, continuation);
                this.this$0 = textFieldSelectionState;
                this.$this_cursorHandleGestures = pointerInputScope;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00372(this.this$0, this.$this_cursorHandleGestures, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00372) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (this.this$0.detectCursorHandleDragGestures(this.$this_cursorHandleGestures, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$3, reason: invalid class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$3", f = "TextFieldSelectionState.kt", i = {}, l = {496}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $this_cursorHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(PointerInputScope pointerInputScope, TextFieldSelectionState textFieldSelectionState, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$this_cursorHandleGestures = pointerInputScope;
                this.this$0 = textFieldSelectionState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass3(this.$this_cursorHandleGestures, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        PointerInputScope pointerInputScope = this.$this_cursorHandleGestures;
                        final TextFieldSelectionState textFieldSelectionState = this.this$0;
                        this.label = 1;
                        if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, new Function1() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$cursorHandleGestures$2$3$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return TextFieldSelectionState.AnonymousClass2.AnonymousClass3.invokeSuspend$lambda$0(textFieldSelectionState, (Offset) obj);
                            }
                        }, this, 7, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }

            static final Unit invokeSuspend$lambda$0(TextFieldSelectionState this$0, Offset it) {
                this$0.setTextToolbarState(this$0.getTextToolbarState() == TextToolbarState.Cursor ? TextToolbarState.None : TextToolbarState.Cursor);
                return Unit.INSTANCE;
            }
        }
    }

    public final Object cursorHandleGestures(PointerInputScope $this$cursorHandleGestures, Continuation<? super Unit> continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new AnonymousClass2($this$cursorHandleGestures, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2", f = "TextFieldSelectionState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C03292 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
        final /* synthetic */ boolean $isStartHandle;
        final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03292(PointerInputScope pointerInputScope, boolean z, Continuation<? super C03292> continuation) {
            super(2, continuation);
            this.$this_selectionHandleGestures = pointerInputScope;
            this.$isStartHandle = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03292 c03292 = TextFieldSelectionState.this.new C03292(this.$this_selectionHandleGestures, this.$isStartHandle, continuation);
            c03292.L$0 = obj;
            return c03292;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
            return ((C03292) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$1", f = "TextFieldSelectionState.kt", i = {}, l = {506}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = textFieldSelectionState;
                this.$this_selectionHandleGestures = pointerInputScope;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$this_selectionHandleGestures, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (this.this$0.detectTouchMode(this.$this_selectionHandleGestures, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass1(TextFieldSelectionState.this, this.$this_selectionHandleGestures, null), 1, null);
                    Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new C00382(this.$this_selectionHandleGestures, TextFieldSelectionState.this, this.$isStartHandle, null), 1, null);
                    final TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
                    jobLaunch$default.invokeOnCompletion(new Function1() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return TextFieldSelectionState.C03292.invokeSuspend$lambda$0(textFieldSelectionState, (Throwable) obj2);
                        }
                    });
                    return BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass4(TextFieldSelectionState.this, this.$this_selectionHandleGestures, this.$isStartHandle, null), 1, null);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$2", f = "TextFieldSelectionState.kt", i = {}, l = {508}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class C00382 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ boolean $isStartHandle;
            final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00382(PointerInputScope pointerInputScope, TextFieldSelectionState textFieldSelectionState, boolean z, Continuation<? super C00382> continuation) {
                super(2, continuation);
                this.$this_selectionHandleGestures = pointerInputScope;
                this.this$0 = textFieldSelectionState;
                this.$isStartHandle = z;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00382(this.$this_selectionHandleGestures, this.this$0, this.$isStartHandle, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00382) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        PointerInputScope pointerInputScope = this.$this_selectionHandleGestures;
                        final TextFieldSelectionState textFieldSelectionState = this.this$0;
                        final boolean z = this.$isStartHandle;
                        TapOnPosition tapOnPosition = new TapOnPosition() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.selectionHandleGestures.2.2.1
                            @Override // androidx.compose.foundation.text.input.internal.selection.TapOnPosition
                            /* JADX INFO: renamed from: onEvent-k-4lQ0M */
                            public final void mo1488onEventk4lQ0M(long it) {
                                Handle handle;
                                textFieldSelectionState.markStartContentVisibleOffset();
                                TextFieldSelectionState textFieldSelectionState2 = textFieldSelectionState;
                                if (z) {
                                    handle = Handle.SelectionStart;
                                } else {
                                    handle = Handle.SelectionEnd;
                                }
                                textFieldSelectionState2.m1510updateHandleDraggingUv8p0NA(handle, SelectionHandlesKt.m1608getAdjustedCoordinatesk4lQ0M(textFieldSelectionState.m1501getHandlePositiontuRUvjQ(z)));
                            }
                        };
                        final TextFieldSelectionState textFieldSelectionState2 = this.this$0;
                        this.label = 1;
                        if (PressDownGestureKt.detectPressDownGesture(pointerInputScope, tapOnPosition, new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$2$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return TextFieldSelectionState.C03292.C00382.invokeSuspend$lambda$0(textFieldSelectionState2);
                            }
                        }, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }

            static final Unit invokeSuspend$lambda$0(TextFieldSelectionState this$0) {
                this$0.clearHandleDragging();
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$4, reason: invalid class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$selectionHandleGestures$2$4", f = "TextFieldSelectionState.kt", i = {}, l = {526}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ boolean $isStartHandle;
            final /* synthetic */ PointerInputScope $this_selectionHandleGestures;
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass4(TextFieldSelectionState textFieldSelectionState, PointerInputScope pointerInputScope, boolean z, Continuation<? super AnonymousClass4> continuation) {
                super(2, continuation);
                this.this$0 = textFieldSelectionState;
                this.$this_selectionHandleGestures = pointerInputScope;
                this.$isStartHandle = z;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass4(this.this$0, this.$this_selectionHandleGestures, this.$isStartHandle, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (this.this$0.detectSelectionHandleDragGestures(this.$this_selectionHandleGestures, this.$isStartHandle, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }

        static final Unit invokeSuspend$lambda$0(TextFieldSelectionState this$0, Throwable it) {
            this$0.clearHandleDragging();
            return Unit.INSTANCE;
        }
    }

    public final Object selectionHandleGestures(PointerInputScope $this$selectionHandleGestures, boolean isStartHandle, Continuation<? super Unit> continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C03292($this$selectionHandleGestures, isStartHandle, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object startToolbarAndHandlesVisibilityObserver(Continuation<? super Unit> continuation) throws Throwable {
        C03301 c03301;
        Throwable th;
        TextFieldSelectionState textFieldSelectionState;
        Object objCoroutineScope;
        if (continuation instanceof C03301) {
            c03301 = (C03301) continuation;
            if ((c03301.label & Integer.MIN_VALUE) != 0) {
                c03301.label -= Integer.MIN_VALUE;
            } else {
                c03301 = new C03301(continuation);
            }
        }
        Object $result = c03301.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c03301.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    C03312 c03312 = new C03312(null);
                    c03301.label = 1;
                    objCoroutineScope = CoroutineScopeKt.coroutineScope(c03312, c03301);
                    if (objCoroutineScope == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    textFieldSelectionState = this;
                    textFieldSelectionState.setShowCursorHandle(false);
                    if (textFieldSelectionState.getTextToolbarState() != TextToolbarState.None) {
                        textFieldSelectionState.hideTextToolbar();
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    textFieldSelectionState = this;
                    textFieldSelectionState.setShowCursorHandle(false);
                    if (textFieldSelectionState.getTextToolbarState() != TextToolbarState.None) {
                        textFieldSelectionState.hideTextToolbar();
                    }
                    throw th;
                }
            case 1:
                textFieldSelectionState = this;
                try {
                    ResultKt.throwOnFailure($result);
                    objCoroutineScope = $result;
                    textFieldSelectionState.setShowCursorHandle(false);
                    if (textFieldSelectionState.getTextToolbarState() != TextToolbarState.None) {
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    textFieldSelectionState.setShowCursorHandle(false);
                    if (textFieldSelectionState.getTextToolbarState() != TextToolbarState.None) {
                    }
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2", f = "TextFieldSelectionState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C03312 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C03312(Continuation<? super C03312> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03312 c03312 = TextFieldSelectionState.this.new C03312(continuation);
            c03312.L$0 = obj;
            return c03312;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
            return ((C03312) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$1", f = "TextFieldSelectionState.kt", i = {}, l = {538}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TextFieldSelectionState textFieldSelectionState, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = textFieldSelectionState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (this.this$0.observeTextChanges(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, null, new AnonymousClass1(TextFieldSelectionState.this, null), 3, null);
                    return BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, null, new C00392(TextFieldSelectionState.this, null), 3, null);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: TextFieldSelectionState.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$startToolbarAndHandlesVisibilityObserver$2$2", f = "TextFieldSelectionState.kt", i = {}, l = {539}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class C00392 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ TextFieldSelectionState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00392(TextFieldSelectionState textFieldSelectionState, Continuation<? super C00392> continuation) {
                super(2, continuation);
                this.this$0 = textFieldSelectionState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00392(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00392) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (this.this$0.observeTextToolbarVisibility(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }
    }

    public final void updateTextToolbarState(TextToolbarState textToolbarState) {
        setTextToolbarState(textToolbarState);
    }

    public final void dispose() {
        hideTextToolbar();
        this.hapticFeedBack = null;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectTouchMode$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$detectTouchMode$2", f = "TextFieldSelectionState.kt", i = {0}, l = {566}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope"}, s = {"L$0"}, v = 1)
    static final class C03242 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C03242(Continuation<? super C03242> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03242 c03242 = TextFieldSelectionState.this.new C03242(continuation);
            c03242.L$0 = obj;
            return c03242;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((C03242) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0037 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0038 -> B:12:0x003e). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitPointerEventScope;
            C03242 c03242;
            Object objAwaitPointerEvent;
            Object $result2;
            C03242 c032422;
            AwaitPointerEventScope $this$awaitPointerEventScope2;
            Object obj;
            Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    c03242 = this;
                    c03242.L$0 = $this$awaitPointerEventScope;
                    c03242.label = 1;
                    objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Initial, c03242);
                    if (objAwaitPointerEvent == $result3) {
                        return $result3;
                    }
                    Object obj2 = $result3;
                    $result2 = $result;
                    $result = objAwaitPointerEvent;
                    c032422 = c03242;
                    $this$awaitPointerEventScope2 = $this$awaitPointerEventScope;
                    obj = obj2;
                    PointerEvent event = (PointerEvent) $result;
                    TextFieldSelectionState.this.setInTouchMode(SelectionGestures_androidKt.isMouseOrTouchPad(event));
                    $result = $result2;
                    $result3 = obj;
                    $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                    c03242 = c032422;
                    c03242.L$0 = $this$awaitPointerEventScope;
                    c03242.label = 1;
                    objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Initial, c03242);
                    if (objAwaitPointerEvent == $result3) {
                    }
                    break;
                case 1:
                    AwaitPointerEventScope $this$awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c032422 = this;
                    $this$awaitPointerEventScope2 = $this$awaitPointerEventScope3;
                    obj = $result3;
                    $result2 = $result;
                    PointerEvent event2 = (PointerEvent) $result;
                    TextFieldSelectionState.this.setInTouchMode(SelectionGestures_androidKt.isMouseOrTouchPad(event2));
                    $result = $result2;
                    $result3 = obj;
                    $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                    c03242 = c032422;
                    c03242.L$0 = $this$awaitPointerEventScope;
                    c03242.label = 1;
                    objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Initial, c03242);
                    if (objAwaitPointerEvent == $result3) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object detectTouchMode(PointerInputScope $this$detectTouchMode, Continuation<? super Unit> continuation) {
        Object objAwaitPointerEventScope = $this$detectTouchMode.awaitPointerEventScope(new C03242(null), continuation);
        return objAwaitPointerEventScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitPointerEventScope : Unit.INSTANCE;
    }

    public final Object detectTextFieldTapGestures(PointerInputScope $this$detectTextFieldTapGestures, MutableInteractionSource interactionSource, Function0<Unit> function0, Function0<Unit> function02, Continuation<? super Unit> continuation) {
        Object objDetectTextFieldTapGestures = TextFieldSelectionState_androidKt.detectTextFieldTapGestures(this, $this$detectTextFieldTapGestures, interactionSource, function0, function02, continuation);
        return objDetectTextFieldTapGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDetectTextFieldTapGestures : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: placeCursorAtNearestOffset-k-4lQ0M, reason: not valid java name */
    public final boolean m1509placeCursorAtNearestOffsetk4lQ0M(long offset) {
        int index;
        IndexTransformationType type$iv;
        boolean z;
        int untransformedCursor;
        SelectionWedgeAffinity selectionWedgeAffinity;
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null || (index = layoutResult.m6898getOffsetForPositionk4lQ0M(offset)) == -1) {
            return false;
        }
        SelectionWedgeAffinity selectionWedgeAffinity2 = null;
        TransformedTextFieldState $this$getIndexTransformationType$iv = this.textFieldState;
        long untransformed$iv = $this$getIndexTransformationType$iv.m1461mapFromTransformedjx7JFs(index);
        long retransformed$iv = $this$getIndexTransformationType$iv.m1464mapToTransformedGEjPoXI(untransformed$iv);
        if (TextRange.m6922getCollapsedimpl(untransformed$iv) && TextRange.m6922getCollapsedimpl(retransformed$iv)) {
            type$iv = IndexTransformationType.Untransformed;
        } else if (!TextRange.m6922getCollapsedimpl(untransformed$iv) && !TextRange.m6922getCollapsedimpl(retransformed$iv)) {
            type$iv = IndexTransformationType.Replacement;
        } else if (TextRange.m6922getCollapsedimpl(untransformed$iv) && !TextRange.m6922getCollapsedimpl(retransformed$iv)) {
            type$iv = IndexTransformationType.Insertion;
        } else {
            type$iv = IndexTransformationType.Deletion;
        }
        IndexTransformationType type = type$iv;
        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
                z = false;
                untransformedCursor = TextRange.m6928getStartimpl(untransformed$iv);
                break;
            case 2:
                z = false;
                untransformedCursor = TextRange.m6928getStartimpl(untransformed$iv);
                break;
            case 3:
                z = false;
                Rect wedgeStartCursorRect = layoutResult.getCursorRect(TextRange.m6928getStartimpl(retransformed$iv));
                Rect wedgeEndCursorRect = layoutResult.getCursorRect(TextRange.m6923getEndimpl(retransformed$iv));
                if (MathUtilsKt.m1406findClosestRect9KIMszo(offset, wedgeStartCursorRect, wedgeEndCursorRect) < 0) {
                    selectionWedgeAffinity = new SelectionWedgeAffinity(WedgeAffinity.Start);
                } else {
                    selectionWedgeAffinity = new SelectionWedgeAffinity(WedgeAffinity.End);
                }
                selectionWedgeAffinity2 = selectionWedgeAffinity;
                untransformedCursor = TextRange.m6928getStartimpl(untransformed$iv);
                break;
            case 4:
                z = false;
                Rect wedgeStartCursorRect2 = layoutResult.getCursorRect(TextRange.m6928getStartimpl(retransformed$iv));
                Rect wedgeEndCursorRect2 = layoutResult.getCursorRect(TextRange.m6923getEndimpl(retransformed$iv));
                if (MathUtilsKt.m1406findClosestRect9KIMszo(offset, wedgeStartCursorRect2, wedgeEndCursorRect2) < 0) {
                    untransformedCursor = TextRange.m6928getStartimpl(untransformed$iv);
                } else {
                    untransformedCursor = TextRange.m6923getEndimpl(untransformed$iv);
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        long untransformedCursorRange = TextRangeKt.TextRange(untransformedCursor);
        if (TextRange.m6921equalsimpl0(untransformedCursorRange, this.textFieldState.getUntransformedText().getSelection()) && (selectionWedgeAffinity2 == null || Intrinsics.areEqual(selectionWedgeAffinity2, this.textFieldState.getSelectionWedgeAffinity()))) {
            return z;
        }
        this.textFieldState.m1467selectUntransformedCharsIn5zctL8(untransformedCursorRange);
        if (selectionWedgeAffinity2 != null) {
            SelectionWedgeAffinity it = selectionWedgeAffinity2;
            this.textFieldState.setSelectionWedgeAffinity(it);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object detectCursorHandleDragGestures(PointerInputScope $this$detectCursorHandleDragGestures, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Ref.LongRef cursorDragStart;
        TextFieldSelectionState textFieldSelectionState;
        Ref.LongRef cursorDragDelta;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        AnonymousClass1 anonymousClass12 = anonymousClass1;
        Object $result = anonymousClass12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                final Ref.LongRef cursorDragStart2 = new Ref.LongRef();
                cursorDragStart2.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
                final Ref.LongRef cursorDragDelta2 = new Ref.LongRef();
                cursorDragDelta2.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
                try {
                    Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$0(cursorDragStart2, this, cursorDragDelta2, (Offset) obj);
                        }
                    };
                    Function0 function0 = new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$1(cursorDragStart2, cursorDragDelta2, this);
                        }
                    };
                    Function0 function02 = new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$2(cursorDragStart2, cursorDragDelta2, this);
                        }
                    };
                    Function2 function2 = new Function2() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$3(cursorDragDelta2, this, cursorDragStart2, (PointerInputChange) obj, (Offset) obj2);
                        }
                    };
                    anonymousClass12.L$0 = cursorDragStart2;
                    anonymousClass12.L$1 = cursorDragDelta2;
                    anonymousClass12.label = 1;
                    if (DragGestureDetectorKt.detectDragGestures($this$detectCursorHandleDragGestures, function1, function0, function02, function2, anonymousClass12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    cursorDragStart = cursorDragStart2;
                    textFieldSelectionState = this;
                    cursorDragDelta = cursorDragDelta2;
                    detectCursorHandleDragGestures$onDragStop(cursorDragStart, cursorDragDelta, textFieldSelectionState);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    cursorDragStart = cursorDragStart2;
                    textFieldSelectionState = this;
                    cursorDragDelta = cursorDragDelta2;
                    detectCursorHandleDragGestures$onDragStop(cursorDragStart, cursorDragDelta, textFieldSelectionState);
                    throw th;
                }
            case 1:
                textFieldSelectionState = this;
                cursorDragDelta = (Ref.LongRef) anonymousClass12.L$1;
                cursorDragStart = (Ref.LongRef) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    detectCursorHandleDragGestures$onDragStop(cursorDragStart, cursorDragDelta, textFieldSelectionState);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    detectCursorHandleDragGestures$onDragStop(cursorDragStart, cursorDragDelta, textFieldSelectionState);
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private static final void detectCursorHandleDragGestures$onDragStop(Ref.LongRef cursorDragStart, Ref.LongRef cursorDragDelta, TextFieldSelectionState this$0) {
        if ((9223372034707292159L & cursorDragStart.element) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            cursorDragStart.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
            cursorDragDelta.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
            this$0.clearHandleDragging();
        }
    }

    static final Unit detectCursorHandleDragGestures$lambda$0(Ref.LongRef $cursorDragStart, TextFieldSelectionState this$0, Ref.LongRef $cursorDragDelta, Offset it) {
        $cursorDragStart.element = SelectionHandlesKt.m1608getAdjustedCoordinatesk4lQ0M(this$0.getCursorRect().m4479getBottomCenterF1C5BW0());
        $cursorDragDelta.element = Offset.INSTANCE.m4468getZeroF1C5BW0();
        this$0.setInTouchMode(true);
        this$0.markStartContentVisibleOffset();
        this$0.m1510updateHandleDraggingUv8p0NA(Handle.Cursor, $cursorDragStart.element);
        return Unit.INSTANCE;
    }

    static final Unit detectCursorHandleDragGestures$lambda$1(Ref.LongRef $cursorDragStart, Ref.LongRef $cursorDragDelta, TextFieldSelectionState this$0) {
        detectCursorHandleDragGestures$onDragStop($cursorDragStart, $cursorDragDelta, this$0);
        return Unit.INSTANCE;
    }

    static final Unit detectCursorHandleDragGestures$lambda$2(Ref.LongRef $cursorDragStart, Ref.LongRef $cursorDragDelta, TextFieldSelectionState this$0) {
        detectCursorHandleDragGestures$onDragStop($cursorDragStart, $cursorDragDelta, this$0);
        return Unit.INSTANCE;
    }

    static final Unit detectCursorHandleDragGestures$lambda$3(Ref.LongRef $cursorDragDelta, TextFieldSelectionState this$0, Ref.LongRef $cursorDragStart, PointerInputChange change, Offset dragAmount) {
        $cursorDragDelta.element = Offset.m4457plusMKHz9U($cursorDragDelta.element, dragAmount.m4462unboximpl());
        this$0.m1510updateHandleDraggingUv8p0NA(Handle.Cursor, Offset.m4457plusMKHz9U($cursorDragStart.element, $cursorDragDelta.element));
        if (this$0.m1509placeCursorAtNearestOffsetk4lQ0M(this$0.m1508getHandleDragPositionF1C5BW0())) {
            change.consume();
            HapticFeedback hapticFeedback = this$0.hapticFeedBack;
            if (hapticFeedback != null) {
                hapticFeedback.mo5466performHapticFeedbackCdsT49E(HapticFeedbackType.INSTANCE.m5483getTextHandleMove5zf0vsI());
            }
        }
        return Unit.INSTANCE;
    }

    public final Object textFieldSelectionGestures(PointerInputScope $this$textFieldSelectionGestures, Function0<Unit> function0, Continuation<? super Unit> continuation) {
        Object objTextFieldSelectionGestures = TextFieldSelectionState_androidKt.textFieldSelectionGestures(this, $this$textFieldSelectionGestures, new TextFieldMouseSelectionObserver(function0), new TextFieldTextDragObserver(function0), continuation);
        return objTextFieldSelectionGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objTextFieldSelectionGestures : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010 \u001a\u00020\u0004H\u0016J\u0017\u0010!\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\nH\u0016¢\u0006\u0004\b%\u0010#R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldMouseSelectionObserver;", "Landroidx/compose/foundation/text/selection/MouseSelectionObserver;", "requestFocus", "Lkotlin/Function0;", "", "<init>", "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/functions/Function0;)V", "dragBeginOffsetInText", "", "dragBeginPosition", "Landroidx/compose/ui/geometry/Offset;", "J", "isDoubleOrTripleClickOnly", "", "onStart", "downPosition", "adjustment", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "clickCount", "onStart-9KIMszo", "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;I)Z", "onDrag", "dragPosition", "onDrag-3MmeM6k", "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z", "updateSelection", "Landroidx/compose/ui/text/TextRange;", "layoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "isStartOfSelection", "updateSelection-12glfjA", "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/ui/text/TextLayoutResult;Z)J", "onDragDone", "onExtend", "onExtend-k-4lQ0M", "(J)Z", "onExtendDrag", "onExtendDrag-k-4lQ0M", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
    final class TextFieldMouseSelectionObserver implements MouseSelectionObserver {
        private int dragBeginOffsetInText = -1;
        private long dragBeginPosition = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
        private boolean isDoubleOrTripleClickOnly = true;
        private final Function0<Unit> requestFocus;

        public TextFieldMouseSelectionObserver(Function0<Unit> function0) {
            this.requestFocus = function0;
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onStart-9KIMszo, reason: not valid java name */
        public boolean mo1516onStart9KIMszo(long downPosition, SelectionAdjustment adjustment, int clickCount) {
            TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState().getLayoutResult();
            if (TextFieldSelectionState.this.getEnabled() && layoutResult != null) {
                if (!(TextFieldSelectionState.this.getTextFieldState().getVisualText().length() == 0)) {
                    this.isDoubleOrTripleClickOnly = clickCount >= 2;
                    TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldMouseSelectionObserver$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.TextFieldMouseSelectionObserver.onStart_9KIMszo$lambda$0();
                        }
                    });
                    TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.Mouse);
                    this.requestFocus.invoke();
                    TextFieldSelectionState.this.previousRawDragOffset = -1;
                    this.dragBeginOffsetInText = -1;
                    this.dragBeginPosition = downPosition;
                    long newSelection = m1512updateSelection12glfjA(downPosition, adjustment, layoutResult, true);
                    this.dragBeginOffsetInText = TextRange.m6928getStartimpl(newSelection);
                    return true;
                }
            }
            return false;
        }

        static final String onStart_9KIMszo$lambda$0() {
            return "Mouse.onStart";
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onDrag-3MmeM6k, reason: not valid java name */
        public boolean mo1513onDrag3MmeM6k(final long dragPosition, SelectionAdjustment adjustment) {
            TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState().getLayoutResult();
            if (TextFieldSelectionState.this.getEnabled() && layoutResult != null) {
                if (!(TextFieldSelectionState.this.getTextFieldState().getVisualText().length() == 0)) {
                    TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldMouseSelectionObserver$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.TextFieldMouseSelectionObserver.onDrag_3MmeM6k$lambda$0(dragPosition);
                        }
                    });
                    long prevSelection = TextFieldSelectionState.this.getTextFieldState().getVisualText().getSelection();
                    long newSelection = m1512updateSelection12glfjA(dragPosition, adjustment, layoutResult, false);
                    if (!TextRange.m6921equalsimpl0(prevSelection, newSelection)) {
                        this.isDoubleOrTripleClickOnly = false;
                    }
                    return true;
                }
            }
            return false;
        }

        static final String onDrag_3MmeM6k$lambda$0(long j) {
            return "Mouse.onDrag " + ((Object) Offset.m4460toStringimpl(j));
        }

        /* JADX INFO: renamed from: updateSelection-12glfjA, reason: not valid java name */
        private final long m1512updateSelection12glfjA(long dragPosition, SelectionAdjustment adjustment, TextLayoutResult layoutResult, boolean isStartOfSelection) {
            int iM1449getOffsetForPosition3MmeM6k;
            int textLength = layoutResult.getLayoutInput().getText().length();
            if (this.dragBeginOffsetInText >= 0 && this.dragBeginOffsetInText <= textLength) {
                iM1449getOffsetForPosition3MmeM6k = this.dragBeginOffsetInText;
            } else {
                iM1449getOffsetForPosition3MmeM6k = TextFieldSelectionState.this.getTextLayoutState().m1449getOffsetForPosition3MmeM6k(this.dragBeginPosition, false);
            }
            int startOffset = iM1449getOffsetForPosition3MmeM6k;
            int endOffset = TextFieldSelectionState.this.getTextLayoutState().m1449getOffsetForPosition3MmeM6k(dragPosition, false);
            long newSelection = TextFieldSelectionState.this.m1511updateSelectionSsLRf8$foundation(TextFieldSelectionState.this.getTextFieldState().getVisualText(), startOffset, endOffset, false, adjustment, false, isStartOfSelection);
            if (this.dragBeginOffsetInText == -1 && !TextRange.m6922getCollapsedimpl(newSelection)) {
                this.dragBeginOffsetInText = TextRange.m6928getStartimpl(newSelection);
            }
            if (TextRange.m6927getReversedimpl(newSelection)) {
                newSelection = TextFieldSelectionStateKt.m1518reverse5zctL8(newSelection);
            }
            TextFieldSelectionState.this.getTextFieldState().m1466selectCharsIn5zctL8(newSelection);
            TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Selection);
            return newSelection;
        }

        static final String onDragDone$lambda$0() {
            return "Mouse.onDragDone";
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        public void onDragDone() {
            TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldMouseSelectionObserver$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return TextFieldSelectionState.TextFieldMouseSelectionObserver.onDragDone$lambda$0();
                }
            });
            TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.None);
            if (this.isDoubleOrTripleClickOnly) {
                TextFieldSelectionState.this.maybeSuggestSelectionRange();
            }
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onExtend-k-4lQ0M, reason: not valid java name */
        public boolean mo1514onExtendk4lQ0M(long downPosition) {
            TextLayoutResult layoutResult = TextFieldSelectionState.this.getTextLayoutState().getLayoutResult();
            if (TextFieldSelectionState.this.getEnabled() && layoutResult != null) {
                if (!(TextFieldSelectionState.this.getTextFieldState().getVisualText().length() == 0)) {
                    TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldMouseSelectionObserver$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.TextFieldMouseSelectionObserver.onExtend_k_4lQ0M$lambda$0();
                        }
                    });
                    this.isDoubleOrTripleClickOnly = false;
                    this.requestFocus.invoke();
                    m1512updateSelection12glfjA(downPosition, SelectionAdjustment.INSTANCE.getNone(), layoutResult, false);
                    return true;
                }
            }
            return false;
        }

        static final String onExtend_k_4lQ0M$lambda$0() {
            return "Mouse.onExtend";
        }

        static final String onExtendDrag_k_4lQ0M$lambda$0() {
            return "Mouse.onExtendDrag";
        }

        @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
        /* JADX INFO: renamed from: onExtendDrag-k-4lQ0M, reason: not valid java name */
        public boolean mo1515onExtendDragk4lQ0M(long dragPosition) {
            TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldMouseSelectionObserver$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return TextFieldSelectionState.TextFieldMouseSelectionObserver.onExtendDrag_k_4lQ0M$lambda$0();
                }
            });
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016J\u001f\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\nH\u0016¢\u0006\u0004\b\"\u0010\u0017R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\f\u001a\u00020\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$TextFieldTextDragObserver;", "Landroidx/compose/foundation/text/TextDragObserver;", "requestFocus", "Lkotlin/Function0;", "", "<init>", "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/functions/Function0;)V", "dragBeginOffsetInText", "", "dragBeginPosition", "Landroidx/compose/ui/geometry/Offset;", "J", "dragTotalDistance", "actingHandle", "Landroidx/compose/foundation/text/Handle;", "isLongPressSelectionOnly", "", "selectionAdjustmentMode", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "onDragStop", "onDown", "point", "onDown-k-4lQ0M", "(J)V", "onUp", "onStop", "onCancel", "onStart", "startPoint", "selectionAdjustment", "onStart-3MmeM6k", "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V", "onDrag", "delta", "onDrag-k-4lQ0M", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
    final class TextFieldTextDragObserver implements TextDragObserver {
        private final Function0<Unit> requestFocus;
        private int dragBeginOffsetInText = -1;
        private long dragBeginPosition = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
        private long dragTotalDistance = Offset.INSTANCE.m4468getZeroF1C5BW0();
        private Handle actingHandle = Handle.SelectionEnd;
        private boolean isLongPressSelectionOnly = true;
        private SelectionAdjustment selectionAdjustmentMode = SelectionAdjustment.INSTANCE.getNone();

        public TextFieldTextDragObserver(Function0<Unit> function0) {
            this.requestFocus = function0;
        }

        private final void onDragStop() {
            if ((9223372034707292159L & this.dragBeginPosition) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldTextDragObserver$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return TextFieldSelectionState.TextFieldTextDragObserver.onDragStop$lambda$0();
                    }
                });
                TextFieldSelectionState.this.clearHandleDragging();
                this.dragBeginOffsetInText = -1;
                this.dragBeginPosition = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
                this.dragTotalDistance = Offset.INSTANCE.m4468getZeroF1C5BW0();
                TextFieldSelectionState.this.previousRawDragOffset = -1;
                this.selectionAdjustmentMode = SelectionAdjustment.INSTANCE.getNone();
                TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.None);
                this.requestFocus.invoke();
                if (this.isLongPressSelectionOnly) {
                    TextFieldSelectionState.this.maybeSuggestSelectionRange();
                }
            }
        }

        static final String onDragStop$lambda$0() {
            return "Touch.onDragStop";
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        /* JADX INFO: renamed from: onDown-k-4lQ0M */
        public void mo1253onDownk4lQ0M(long point) {
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        public void onUp() {
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        public void onStop() {
            onDragStop();
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        public void onCancel() {
            onDragStop();
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        /* JADX INFO: renamed from: onStart-3MmeM6k */
        public void mo1255onStart3MmeM6k(final long startPoint, SelectionAdjustment selectionAdjustment) {
            if (TextFieldSelectionState.this.getEnabled()) {
                TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldTextDragObserver$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return TextFieldSelectionState.TextFieldTextDragObserver.onStart_3MmeM6k$lambda$0(startPoint);
                    }
                });
                TextFieldSelectionState.this.m1510updateHandleDraggingUv8p0NA(this.actingHandle, startPoint);
                TextFieldSelectionState.this.setShowCursorHandle(false);
                TextFieldSelectionState.this.setDirectDragGestureInitiator(InputType.Touch);
                this.dragBeginPosition = startPoint;
                this.dragTotalDistance = Offset.INSTANCE.m4468getZeroF1C5BW0();
                TextFieldSelectionState.this.previousRawDragOffset = -1;
                this.isLongPressSelectionOnly = true;
                this.selectionAdjustmentMode = selectionAdjustment;
                if (TextFieldSelectionState.this.getTextLayoutState().getLayoutResult() == null) {
                    return;
                }
                boolean zM1450isPositionOnTextk4lQ0M = TextFieldSelectionState.this.getTextLayoutState().m1450isPositionOnTextk4lQ0M(startPoint);
                TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
                if (!zM1450isPositionOnTextk4lQ0M) {
                    int offset = TextLayoutState.m1446getOffsetForPosition3MmeM6k$default(textFieldSelectionState.getTextLayoutState(), startPoint, false, 2, null);
                    HapticFeedback hapticFeedBack = TextFieldSelectionState.this.getHapticFeedBack();
                    if (hapticFeedBack != null) {
                        hapticFeedBack.mo5466performHapticFeedbackCdsT49E(HapticFeedbackType.INSTANCE.m5483getTextHandleMove5zf0vsI());
                    }
                    TextFieldSelectionState.this.getTextFieldState().placeCursorBeforeCharAt(offset);
                    TextFieldSelectionState.this.setShowCursorHandle(true);
                    this.isLongPressSelectionOnly = false;
                    TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Cursor);
                    return;
                }
                if (textFieldSelectionState.getTextFieldState().getVisualText().length() == 0) {
                    return;
                }
                int offset2 = TextLayoutState.m1446getOffsetForPosition3MmeM6k$default(TextFieldSelectionState.this.getTextLayoutState(), startPoint, false, 2, null);
                long newSelection = TextFieldSelectionState.m1507updateSelectionSsLRf8$foundation$default(TextFieldSelectionState.this, new TextFieldCharSequence(TextFieldSelectionState.this.getTextFieldState().getVisualText(), TextRange.INSTANCE.m6933getZerod9O1mEE(), null, null, null, null, 60, null), offset2, offset2, false, this.selectionAdjustmentMode, false, false, 96, null);
                TextFieldSelectionState.this.getTextFieldState().m1466selectCharsIn5zctL8(newSelection);
                TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Selection);
                this.dragBeginOffsetInText = TextRange.m6928getStartimpl(newSelection);
            }
        }

        static final String onStart_3MmeM6k$lambda$0(long j) {
            return "Touch.onDragStart after longPress at " + ((Object) Offset.m4460toStringimpl(j));
        }

        @Override // androidx.compose.foundation.text.TextDragObserver
        /* JADX INFO: renamed from: onDrag-k-4lQ0M */
        public void mo1254onDragk4lQ0M(long delta) {
            int startOffset;
            int endOffset;
            SelectionAdjustment adjustment;
            Handle handle;
            SelectionAdjustment none;
            if (TextFieldSelectionState.this.getEnabled() && TextFieldSelectionState.this.getTextLayoutState().getLayoutResult() != null) {
                if (!(TextFieldSelectionState.this.getTextFieldState().getVisualText().length() == 0)) {
                    this.dragTotalDistance = Offset.m4457plusMKHz9U(this.dragTotalDistance, delta);
                    final long currentDragPosition = Offset.m4457plusMKHz9U(this.dragBeginPosition, this.dragTotalDistance);
                    TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$TextFieldTextDragObserver$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.TextFieldTextDragObserver.onDrag_k_4lQ0M$lambda$0(currentDragPosition);
                        }
                    });
                    if (this.dragBeginOffsetInText < 0 && !TextFieldSelectionState.this.getTextLayoutState().m1450isPositionOnTextk4lQ0M(currentDragPosition)) {
                        int startOffset2 = TextLayoutState.m1446getOffsetForPosition3MmeM6k$default(TextFieldSelectionState.this.getTextLayoutState(), this.dragBeginPosition, false, 2, null);
                        int endOffset2 = TextLayoutState.m1446getOffsetForPosition3MmeM6k$default(TextFieldSelectionState.this.getTextLayoutState(), currentDragPosition, false, 2, null);
                        if (startOffset2 == endOffset2) {
                            none = SelectionAdjustment.INSTANCE.getNone();
                        } else {
                            none = this.selectionAdjustmentMode;
                        }
                        startOffset = startOffset2;
                        endOffset = endOffset2;
                        adjustment = none;
                    } else {
                        Integer numValueOf = Integer.valueOf(this.dragBeginOffsetInText);
                        int it = numValueOf.intValue();
                        if (!(it >= 0)) {
                            numValueOf = null;
                        }
                        int startOffset3 = numValueOf != null ? numValueOf.intValue() : TextFieldSelectionState.this.getTextLayoutState().m1449getOffsetForPosition3MmeM6k(this.dragBeginPosition, false);
                        int endOffset3 = TextFieldSelectionState.this.getTextLayoutState().m1449getOffsetForPosition3MmeM6k(currentDragPosition, false);
                        if (this.dragBeginOffsetInText < 0 && startOffset3 == endOffset3) {
                            return;
                        }
                        SelectionAdjustment adjustment2 = this.selectionAdjustmentMode;
                        TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.Selection);
                        startOffset = startOffset3;
                        endOffset = endOffset3;
                        adjustment = adjustment2;
                    }
                    long prevSelection = TextFieldSelectionState.this.getTextFieldState().getVisualText().getSelection();
                    long newSelection = TextFieldSelectionState.m1507updateSelectionSsLRf8$foundation$default(TextFieldSelectionState.this, TextFieldSelectionState.this.getTextFieldState().getVisualText(), startOffset, endOffset, false, adjustment, false, false, 64, null);
                    if (this.dragBeginOffsetInText == -1 && !TextRange.m6922getCollapsedimpl(newSelection)) {
                        this.dragBeginOffsetInText = TextRange.m6928getStartimpl(newSelection);
                    }
                    if (TextRange.m6927getReversedimpl(newSelection)) {
                        newSelection = TextFieldSelectionStateKt.m1518reverse5zctL8(newSelection);
                    }
                    if (!TextRange.m6921equalsimpl0(newSelection, prevSelection)) {
                        if (TextRange.m6928getStartimpl(newSelection) != TextRange.m6928getStartimpl(prevSelection) && TextRange.m6923getEndimpl(newSelection) == TextRange.m6923getEndimpl(prevSelection)) {
                            handle = Handle.SelectionStart;
                        } else if (TextRange.m6928getStartimpl(newSelection) != TextRange.m6928getStartimpl(prevSelection) || TextRange.m6923getEndimpl(newSelection) == TextRange.m6923getEndimpl(prevSelection)) {
                            float newMiddle = (TextRange.m6928getStartimpl(newSelection) + TextRange.m6923getEndimpl(newSelection)) / 2.0f;
                            float prevMiddle = (TextRange.m6928getStartimpl(prevSelection) + TextRange.m6923getEndimpl(prevSelection)) / 2.0f;
                            if (newMiddle > prevMiddle) {
                                handle = Handle.SelectionEnd;
                            } else {
                                handle = Handle.SelectionStart;
                            }
                        } else {
                            handle = Handle.SelectionEnd;
                        }
                        this.actingHandle = handle;
                        this.isLongPressSelectionOnly = false;
                    }
                    if (TextRange.m6922getCollapsedimpl(prevSelection) || !TextRange.m6922getCollapsedimpl(newSelection)) {
                        TextFieldSelectionState.this.getTextFieldState().m1466selectCharsIn5zctL8(newSelection);
                    }
                    TextFieldSelectionState.this.m1510updateHandleDraggingUv8p0NA(this.actingHandle, currentDragPosition);
                }
            }
        }

        static final String onDrag_k_4lQ0M$lambda$0(long $currentDragPosition) {
            return "Touch.onDrag at " + ((Object) Offset.m4460toStringimpl($currentDragPosition));
        }
    }

    public final void maybeSuggestSelectionRange() {
        PlatformSelectionBehaviors platformSelectionBehaviors = this.platformSelectionBehaviors;
        if (platformSelectionBehaviors == null) {
            return;
        }
        CharSequence text = this.textFieldState.getVisualText().getText();
        long selection = this.textFieldState.getVisualText().getSelection();
        if ((text.length() > 0) && !TextRange.m6922getCollapsedimpl(selection)) {
            BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, CoroutineStart.UNDISPATCHED, new C03251(platformSelectionBehaviors, text, selection, this, null), 1, null);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$maybeSuggestSelectionRange$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$maybeSuggestSelectionRange$1", f = "TextFieldSelectionState.kt", i = {}, l = {1095}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C03251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PlatformSelectionBehaviors $platformSelectionBehaviors;
        final /* synthetic */ long $selection;
        final /* synthetic */ CharSequence $text;
        int label;
        final /* synthetic */ TextFieldSelectionState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03251(PlatformSelectionBehaviors platformSelectionBehaviors, CharSequence charSequence, long j, TextFieldSelectionState textFieldSelectionState, Continuation<? super C03251> continuation) {
            super(2, continuation);
            this.$platformSelectionBehaviors = platformSelectionBehaviors;
            this.$text = charSequence;
            this.$selection = j;
            this.this$0 = textFieldSelectionState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03251(this.$platformSelectionBehaviors, this.$text, this.$selection, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objMo1592suggestSelectionForLongPressOrDoubleClickpYaCww = this.$platformSelectionBehaviors.mo1592suggestSelectionForLongPressOrDoubleClickpYaCww(this.$text, this.$selection, this);
                    if (objMo1592suggestSelectionForLongPressOrDoubleClickpYaCww == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objMo1592suggestSelectionForLongPressOrDoubleClickpYaCww;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            TextRange suggestedSelection = (TextRange) $result;
            if (!this.this$0.isPassword && suggestedSelection != null && Intrinsics.areEqual(this.this$0.getTextFieldState().getVisualText().getText(), this.$text) && TextRange.m6921equalsimpl0(this.this$0.getTextFieldState().getVisualText().getSelection(), this.$selection)) {
                if (!TextRange.m6921equalsimpl0(suggestedSelection.getPackedValue(), this.this$0.getTextFieldState().getVisualText().getSelection())) {
                    this.this$0.getTextFieldState().m1466selectCharsIn5zctL8(suggestedSelection.getPackedValue());
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object detectSelectionHandleDragGestures(PointerInputScope $this$detectSelectionHandleDragGestures, boolean isStartHandle, Continuation<? super Unit> continuation) throws Throwable {
        C03231 c03231;
        final Ref.LongRef dragBeginPosition;
        final Handle handle;
        final boolean z;
        Ref.LongRef dragBeginPosition2;
        final TextFieldSelectionState textFieldSelectionState;
        final Handle handle2;
        Ref.LongRef dragTotalDistance;
        if (continuation instanceof C03231) {
            c03231 = (C03231) continuation;
            if ((c03231.label & Integer.MIN_VALUE) != 0) {
                c03231.label -= Integer.MIN_VALUE;
            } else {
                c03231 = new C03231(continuation);
            }
        }
        C03231 c032312 = c03231;
        Object $result = c032312.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c032312.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.LongRef dragBeginPosition3 = new Ref.LongRef();
                dragBeginPosition3.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
                final Ref.LongRef dragTotalDistance2 = new Ref.LongRef();
                dragTotalDistance2.element = Offset.INSTANCE.m4468getZeroF1C5BW0();
                Handle handle3 = isStartHandle ? Handle.SelectionStart : Handle.SelectionEnd;
                if (isStartHandle) {
                    dragBeginPosition = dragBeginPosition3;
                    handle = handle3;
                    z = true;
                } else {
                    dragBeginPosition = dragBeginPosition3;
                    handle = handle3;
                    z = false;
                }
                try {
                    Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$0(dragBeginPosition, this, z, handle, dragTotalDistance2, (Offset) obj);
                        }
                    };
                    boolean z2 = false;
                    Function0 function0 = new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$1(dragBeginPosition, this, dragTotalDistance2);
                        }
                    };
                    Function0 function02 = new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$2(dragBeginPosition, this, dragTotalDistance2);
                        }
                    };
                    if (isStartHandle) {
                        z2 = true;
                    }
                    final boolean z3 = z2;
                    final Handle handle4 = handle;
                    final Ref.LongRef dragBeginPosition4 = dragBeginPosition;
                    try {
                        Function2 function2 = new Function2() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda11
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$3(dragTotalDistance2, this, handle4, dragBeginPosition4, z3, (PointerInputChange) obj, (Offset) obj2);
                            }
                        };
                        dragTotalDistance2 = dragTotalDistance2;
                        dragBeginPosition = dragBeginPosition4;
                        handle = handle4;
                        c032312.L$0 = dragBeginPosition;
                        c032312.L$1 = dragTotalDistance2;
                        c032312.L$2 = handle;
                        c032312.label = 1;
                        if (DragGestureDetectorKt.detectDragGestures($this$detectSelectionHandleDragGestures, function1, function0, function02, function2, c032312) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        dragBeginPosition2 = dragBeginPosition;
                        textFieldSelectionState = this;
                        handle2 = handle;
                        dragTotalDistance = dragTotalDistance2;
                        TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$4(this.f$0, handle2);
                            }
                        });
                        if (textFieldSelectionState.getDraggingHandle() == handle2) {
                            detectSelectionHandleDragGestures$onDragStop(dragBeginPosition2, textFieldSelectionState, dragTotalDistance);
                        }
                        return Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        dragBeginPosition2 = dragBeginPosition4;
                        textFieldSelectionState = this;
                        handle2 = handle4;
                        dragTotalDistance = dragTotalDistance2;
                        TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$4(this.f$0, handle2);
                            }
                        });
                        if (textFieldSelectionState.getDraggingHandle() == handle2) {
                            detectSelectionHandleDragGestures$onDragStop(dragBeginPosition2, textFieldSelectionState, dragTotalDistance);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    dragBeginPosition2 = dragBeginPosition;
                    textFieldSelectionState = this;
                    handle2 = handle;
                    dragTotalDistance = dragTotalDistance2;
                }
                break;
            case 1:
                textFieldSelectionState = this;
                handle2 = (Handle) c032312.L$2;
                dragTotalDistance = (Ref.LongRef) c032312.L$1;
                dragBeginPosition2 = (Ref.LongRef) c032312.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$4(this.f$0, handle2);
                        }
                    });
                    if (textFieldSelectionState.getDraggingHandle() == handle2) {
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    TextFieldSelectionStateKt.logDebug(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.detectSelectionHandleDragGestures$lambda$4(this.f$0, handle2);
                        }
                    });
                    if (textFieldSelectionState.getDraggingHandle() == handle2) {
                    }
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private static final void detectSelectionHandleDragGestures$onDragStop(Ref.LongRef dragBeginPosition, TextFieldSelectionState this$0, Ref.LongRef dragTotalDistance) {
        if ((9223372034707292159L & dragBeginPosition.element) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            this$0.clearHandleDragging();
            dragBeginPosition.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
            dragTotalDistance.element = Offset.INSTANCE.m4468getZeroF1C5BW0();
            this$0.previousRawDragOffset = -1;
        }
    }

    static final Unit detectSelectionHandleDragGestures$lambda$0(Ref.LongRef $dragBeginPosition, TextFieldSelectionState this$0, boolean $isStartHandle, Handle $handle, Ref.LongRef $dragTotalDistance, Offset it) {
        $dragBeginPosition.element = SelectionHandlesKt.m1608getAdjustedCoordinatesk4lQ0M(this$0.m1501getHandlePositiontuRUvjQ($isStartHandle));
        this$0.m1510updateHandleDraggingUv8p0NA($handle, $dragBeginPosition.element);
        $dragTotalDistance.element = Offset.INSTANCE.m4468getZeroF1C5BW0();
        this$0.previousRawDragOffset = -1;
        return Unit.INSTANCE;
    }

    static final Unit detectSelectionHandleDragGestures$lambda$1(Ref.LongRef $dragBeginPosition, TextFieldSelectionState this$0, Ref.LongRef $dragTotalDistance) {
        detectSelectionHandleDragGestures$onDragStop($dragBeginPosition, this$0, $dragTotalDistance);
        return Unit.INSTANCE;
    }

    static final Unit detectSelectionHandleDragGestures$lambda$2(Ref.LongRef $dragBeginPosition, TextFieldSelectionState this$0, Ref.LongRef $dragTotalDistance) {
        detectSelectionHandleDragGestures$onDragStop($dragBeginPosition, this$0, $dragTotalDistance);
        return Unit.INSTANCE;
    }

    static final Unit detectSelectionHandleDragGestures$lambda$3(Ref.LongRef $dragTotalDistance, TextFieldSelectionState this$0, Handle $handle, Ref.LongRef $dragBeginPosition, boolean $isStartHandle, PointerInputChange pointerInputChange, Offset delta) {
        int startOffset;
        int endOffset;
        $dragTotalDistance.element = Offset.m4457plusMKHz9U($dragTotalDistance.element, delta.m4462unboximpl());
        TextLayoutResult layoutResult = this$0.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Unit.INSTANCE;
        }
        this$0.m1510updateHandleDraggingUv8p0NA($handle, Offset.m4457plusMKHz9U($dragBeginPosition.element, $dragTotalDistance.element));
        if ($isStartHandle) {
            startOffset = layoutResult.m6898getOffsetForPositionk4lQ0M(this$0.m1508getHandleDragPositionF1C5BW0());
        } else {
            startOffset = TextRange.m6928getStartimpl(this$0.textFieldState.getVisualText().getSelection());
        }
        if ($isStartHandle) {
            endOffset = TextRange.m6923getEndimpl(this$0.textFieldState.getVisualText().getSelection());
        } else {
            endOffset = layoutResult.m6898getOffsetForPositionk4lQ0M(this$0.m1508getHandleDragPositionF1C5BW0());
        }
        long prevSelection = this$0.textFieldState.getVisualText().getSelection();
        long newSelection = m1507updateSelectionSsLRf8$foundation$default(this$0, this$0.textFieldState.getVisualText(), startOffset, endOffset, $isStartHandle, SelectionAdjustment.INSTANCE.getCharacterWithWordAccelerate(), false, false, 96, null);
        if (TextRange.m6922getCollapsedimpl(prevSelection) || !TextRange.m6922getCollapsedimpl(newSelection)) {
            this$0.textFieldState.m1466selectCharsIn5zctL8(newSelection);
        }
        return Unit.INSTANCE;
    }

    static final String detectSelectionHandleDragGestures$lambda$4(TextFieldSelectionState this$0, Handle $handle) {
        return "Selection Handle drag cancelled for draggingHandle: " + this$0.getDraggingHandle() + " definedOn: " + $handle;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$observeTextChanges$3, reason: invalid class name */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function2<TextFieldCharSequence, CharSequence, Boolean> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        AnonymousClass3() {
            super(2, TextFieldCharSequence.class, "contentEquals", "contentEquals(Ljava/lang/CharSequence;)Z", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Boolean invoke(TextFieldCharSequence p0, CharSequence p1) {
            return Boolean.valueOf(p0.contentEquals(p1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object observeTextChanges(Continuation<? super Unit> continuation) {
        Object objCollect = FlowKt.drop(FlowKt.distinctUntilChanged(SnapshotStateKt.snapshotFlow(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.textFieldState.getVisualText();
            }
        }), AnonymousClass3.INSTANCE), 1).collect(new FlowCollector() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.observeTextChanges.4
            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                return emit((TextFieldCharSequence) value, (Continuation<? super Unit>) $completion);
            }

            public final Object emit(TextFieldCharSequence it, Continuation<? super Unit> continuation2) {
                TextFieldSelectionState.this.setShowCursorHandle(false);
                TextFieldSelectionState.this.updateTextToolbarState(TextToolbarState.None);
                return Unit.INSTANCE;
            }
        }, continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object observeTextToolbarVisibility(Continuation<? super Unit> continuation) {
        Flow flowDistinctUntilChangedBy;
        Flow $this$observeTextToolbarVisibility_u24lambda_u241 = SnapshotStateKt.snapshotFlow(new Function0() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getDerivedVisibleContentBounds$foundation();
            }
        });
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            flowDistinctUntilChangedBy = FlowKt.distinctUntilChangedBy($this$observeTextToolbarVisibility_u24lambda_u241, new Function1() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(TextFieldSelectionState.observeTextToolbarVisibility$lambda$1$0((Rect) obj));
                }
            });
        } else {
            flowDistinctUntilChangedBy = $this$observeTextToolbarVisibility_u24lambda_u241;
        }
        Object objCollect = flowDistinctUntilChangedBy.collect(new FlowCollector() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState.observeTextToolbarVisibility.4
            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                return emit((Rect) value, (Continuation<? super Unit>) $completion);
            }

            public final Object emit(Rect rect, Continuation<? super Unit> continuation2) {
                TextFieldSelectionState textFieldSelectionState = TextFieldSelectionState.this;
                if (rect != null) {
                    Object objShowTextToolbar = textFieldSelectionState.showTextToolbar(rect, continuation2);
                    return objShowTextToolbar == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objShowTextToolbar : Unit.INSTANCE;
                }
                textFieldSelectionState.hideTextToolbar();
                return Unit.INSTANCE;
            }
        }, continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean observeTextToolbarVisibility$lambda$1$0(Rect it) {
        return it == null;
    }

    public final Rect getDerivedVisibleContentBounds$foundation() {
        State $this$getValue$iv = this.derivedVisibleContentBounds;
        return (Rect) $this$getValue$iv.getValue();
    }

    static final Rect derivedVisibleContentBounds_delegate$lambda$0(TextFieldSelectionState this$0) {
        LayoutCoordinates textLayoutCoordinates;
        boolean isCollapsedSelection = TextRange.m6922getCollapsedimpl(this$0.textFieldState.getVisualText().getSelection());
        boolean textToolbarStateVisible = (isCollapsedSelection && this$0.getTextToolbarState() == TextToolbarState.Cursor) || (!isCollapsedSelection && this$0.getTextToolbarState() == TextToolbarState.Selection);
        boolean textToolbarVisible = textToolbarStateVisible && this$0.getDraggingHandle() == null && this$0.isInTouchMode();
        if (!textToolbarVisible || (textLayoutCoordinates = this$0.getTextLayoutCoordinates()) == null) {
            return null;
        }
        Rect visibleBounds = SelectionManagerKt.visibleBounds(textLayoutCoordinates);
        long visibleBoundsTopLeftInRoot = textLayoutCoordinates.mo6152localToRootMKHz9U(visibleBounds.m4487getTopLeftF1C5BW0());
        Rect visibleBoundsInRoot = RectKt.m4492Recttz77jQw(visibleBoundsTopLeftInRoot, visibleBounds.m4485getSizeNHjbRc());
        Rect contentRect = this$0.getContentRect();
        if (!contentRect.overlaps(visibleBoundsInRoot)) {
            return null;
        }
        return contentRect.intersect(visibleBoundsInRoot);
    }

    private final Rect getContentRect() {
        LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
        if (textLayoutCoordinates == null) {
            androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("textLayoutCoordinates should not be null.");
            throw new KotlinNothingValueException();
        }
        TextFieldCharSequence text = this.textFieldState.getVisualText();
        if (TextRange.m6922getCollapsedimpl(text.getSelection())) {
            Rect cursorRect = getCursorRect();
            long topLeft = textLayoutCoordinates.mo6152localToRootMKHz9U(cursorRect.m4487getTopLeftF1C5BW0());
            return RectKt.m4492Recttz77jQw(topLeft, cursorRect.m4485getSizeNHjbRc());
        }
        long startOffset = textLayoutCoordinates.mo6152localToRootMKHz9U(m1501getHandlePositiontuRUvjQ(true));
        long endOffset = textLayoutCoordinates.mo6152localToRootMKHz9U(m1501getHandlePositiontuRUvjQ(false));
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Rect.INSTANCE.getZero();
        }
        float y$iv = layoutResult.getCursorRect(TextRange.m6928getStartimpl(text.getSelection())).getTop();
        long v1$iv$iv = Float.floatToRawIntBits(0.0f);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        int bits$iv$iv$iv = (int) (textLayoutCoordinates.mo6152localToRootMKHz9U(Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L))) & 4294967295L);
        float startTop = Float.intBitsToFloat(bits$iv$iv$iv);
        float y$iv2 = layoutResult.getCursorRect(TextRange.m6923getEndimpl(text.getSelection())).getTop();
        long v1$iv$iv2 = Float.floatToRawIntBits(0.0f);
        long v2$iv$iv2 = Float.floatToRawIntBits(y$iv2);
        int bits$iv$iv$iv2 = (int) (textLayoutCoordinates.mo6152localToRootMKHz9U(Offset.m4444constructorimpl((v1$iv$iv2 << 32) | (v2$iv$iv2 & 4294967295L))) & 4294967295L);
        float endTop = Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (startOffset >> 32);
        int bits$iv$iv$iv4 = (int) (endOffset >> 32);
        float fMin = Math.min(Float.intBitsToFloat(bits$iv$iv$iv3), Float.intBitsToFloat(bits$iv$iv$iv4));
        int bits$iv$iv$iv5 = (int) (startOffset >> 32);
        int bits$iv$iv$iv6 = (int) (endOffset >> 32);
        int bits$iv$iv$iv7 = (int) (startOffset & 4294967295L);
        int bits$iv$iv$iv8 = (int) (endOffset & 4294967295L);
        return new Rect(fMin, Math.min(startTop, endTop), Math.max(Float.intBitsToFloat(bits$iv$iv$iv5), Float.intBitsToFloat(bits$iv$iv$iv6)), Math.max(Float.intBitsToFloat(bits$iv$iv$iv7), Float.intBitsToFloat(bits$iv$iv$iv8)));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final TextFieldHandleState getSelectionHandleState$foundation(boolean isStartHandle, boolean includePosition) {
        boolean visible;
        long coercedPosition;
        Rect it;
        Rect rectVisibleBounds;
        Handle handle = isStartHandle ? Handle.SelectionStart : Handle.SelectionEnd;
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return TextFieldHandleState.INSTANCE.getHidden();
        }
        long selection = this.textFieldState.getVisualText().getSelection();
        if (TextRange.m6922getCollapsedimpl(selection)) {
            return TextFieldHandleState.INSTANCE.getHidden();
        }
        long position = m1501getHandlePositiontuRUvjQ(isStartHandle);
        if (getDirectDragGestureInitiator() != InputType.None) {
            visible = false;
        } else {
            if (getDraggingHandle() != handle) {
                LayoutCoordinates textLayoutCoordinates = getTextLayoutCoordinates();
                if ((textLayoutCoordinates == null || (rectVisibleBounds = SelectionManagerKt.visibleBounds(textLayoutCoordinates)) == null) ? false : SelectionManagerKt.m1635containsInclusiveUv8p0NA(rectVisibleBounds, position)) {
                }
            }
            visible = true;
        }
        if (visible && this.textFieldState.getVisualText().shouldShowSelection()) {
            int directionOffset = isStartHandle ? TextRange.m6928getStartimpl(selection) : Math.max(TextRange.m6923getEndimpl(selection) - 1, 0);
            ResolvedTextDirection direction = layoutResult.getBidiRunDirection(directionOffset);
            boolean handlesCrossed = TextRange.m6927getReversedimpl(selection);
            if (includePosition) {
                LayoutCoordinates textLayoutCoordinates2 = getTextLayoutCoordinates();
                coercedPosition = (textLayoutCoordinates2 == null || (it = SelectionManagerKt.visibleBounds(textLayoutCoordinates2)) == null) ? position : TextLayoutStateKt.m1453coerceIn3MmeM6k(position, it);
            } else {
                coercedPosition = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
            }
            int handleOffset = isStartHandle ? TextRange.m6928getStartimpl(selection) : TextRange.m6923getEndimpl(selection);
            return new TextFieldHandleState(true, coercedPosition, TextLayoutHelperKt.getLineHeight(layoutResult, handleOffset), direction, handlesCrossed, null);
        }
        return TextFieldHandleState.INSTANCE.getHidden();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getHandlePosition-tuRUvjQ, reason: not valid java name */
    public final long m1501getHandlePositiontuRUvjQ(boolean isStartHandle) {
        int offset;
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        long selection = this.textFieldState.getVisualText().getSelection();
        if (isStartHandle) {
            offset = TextRange.m6928getStartimpl(selection);
        } else {
            offset = TextRange.m6923getEndimpl(selection);
        }
        return TextSelectionDelegateKt.getSelectionHandleCoordinates(layoutResult, offset, isStartHandle, TextRange.m6927getReversedimpl(selection));
    }

    /* JADX INFO: renamed from: updateHandleDragging-Uv8p0NA, reason: not valid java name */
    public final void m1510updateHandleDraggingUv8p0NA(Handle handle, long position) {
        setDraggingHandle(handle);
        m1505setRawHandleDragPositionk4lQ0M(position);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void markStartContentVisibleOffset() {
        m1506setStartTextLayoutPositionInWindowk4lQ0M(m1500getCurrentTextLayoutPositionInWindowF1C5BW0());
    }

    public final void clearHandleDragging() {
        setDraggingHandle(null);
        m1505setRawHandleDragPositionk4lQ0M(Offset.INSTANCE.m4467getUnspecifiedF1C5BW0());
        m1506setStartTextLayoutPositionInWindowk4lQ0M(Offset.INSTANCE.m4467getUnspecifiedF1C5BW0());
    }

    public final boolean canShowCutMenuItem() {
        return (!TextRange.m6922getCollapsedimpl(getTextFieldState().getVisualText().getSelection()) && getEditable$foundation() && !this.isPassword) && ClipboardUtils_androidKt.isWriteSupported(this.clipboard);
    }

    public final boolean isCutAllowed() {
        return (TextRange.m6922getCollapsedimpl(getTextFieldState().getVisualText().getSelection()) || !getEditable$foundation() || this.isPassword) ? false : true;
    }

    public final Object cut(Continuation<? super Unit> continuation) {
        Object clipEntry;
        AnnotatedString cutValue = cutWithResult();
        return (cutValue != null && (clipEntry = this.clipboard.setClipEntry(ClipboardUtils_androidKt.toClipEntry(cutValue), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? clipEntry : Unit.INSTANCE;
    }

    public final AnnotatedString cutWithResult() {
        if (!((TextRange.m6922getCollapsedimpl(getTextFieldState().getVisualText().getSelection()) || !getEditable$foundation() || this.isPassword) ? false : true)) {
            return null;
        }
        CharSequence selectedText = TextFieldCharSequenceKt.getSelectedText(this.textFieldState.getVisualText());
        AnnotatedString annotatedString = new AnnotatedString(selectedText.toString(), null, 2, null);
        this.textFieldState.deleteSelectedText();
        return annotatedString;
    }

    public final boolean canShowCopyMenuItem() {
        return (!TextRange.m6922getCollapsedimpl(getTextFieldState().getVisualText().getSelection()) && !this.isPassword) && ClipboardUtils_androidKt.isWriteSupported(this.clipboard);
    }

    public final boolean isCopyAllowed() {
        return (TextRange.m6922getCollapsedimpl(getTextFieldState().getVisualText().getSelection()) || this.isPassword) ? false : true;
    }

    public static /* synthetic */ Object copy$default(TextFieldSelectionState textFieldSelectionState, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return textFieldSelectionState.copy(z, continuation);
    }

    public final Object copy(boolean cancelSelection, Continuation<? super Unit> continuation) {
        Object clipEntry;
        AnnotatedString valueToCopy = copyWithResult$foundation(cancelSelection);
        return (valueToCopy != null && (clipEntry = this.clipboard.setClipEntry(ClipboardUtils_androidKt.toClipEntry(valueToCopy), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? clipEntry : Unit.INSTANCE;
    }

    public static /* synthetic */ AnnotatedString copyWithResult$foundation$default(TextFieldSelectionState textFieldSelectionState, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return textFieldSelectionState.copyWithResult$foundation(z);
    }

    public final AnnotatedString copyWithResult$foundation(boolean cancelSelection) {
        if (!((TextRange.m6922getCollapsedimpl(getTextFieldState().getVisualText().getSelection()) || this.isPassword) ? false : true)) {
            return null;
        }
        CharSequence selectedText = TextFieldCharSequenceKt.getSelectedText(this.textFieldState.getVisualText());
        AnnotatedString annotatedString = new AnnotatedString(selectedText.toString(), null, 2, null);
        if (cancelSelection) {
            this.textFieldState.collapseSelectionToMax();
        }
        return annotatedString;
    }

    public final Object updateClipboardEntry(Continuation<? super Unit> continuation) {
        Object objUpdate = this.clipboardPasteState.update(continuation);
        return objUpdate == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdate : Unit.INSTANCE;
    }

    public final boolean canShowPasteMenuItem() {
        if (!getEditable$foundation() || !ClipboardUtils_androidKt.isReadSupported(this.clipboard)) {
            return false;
        }
        if (this.clipboardPasteState.get_hasText()) {
            return true;
        }
        Function0<? extends ReceiveContentConfiguration> function0 = this.receiveContentConfiguration;
        return (function0 != null ? function0.invoke() : null) != null && this.clipboardPasteState.get_hasClip();
    }

    public final boolean isPasteAllowed() {
        return getEditable$foundation();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object paste(Continuation<? super Unit> continuation) {
        C03271 c03271;
        TextFieldSelectionState textFieldSelectionState;
        ReceiveContentConfiguration receiveContentConfiguration;
        Object clipEntry;
        ClipEntry clipEntry2;
        ClipEntry clipEntry3;
        String clipboardText;
        if (continuation instanceof C03271) {
            c03271 = (C03271) continuation;
            if ((c03271.label & Integer.MIN_VALUE) != 0) {
                c03271.label -= Integer.MIN_VALUE;
            } else {
                c03271 = new C03271(continuation);
            }
        }
        Object $result = c03271.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c03271.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                textFieldSelectionState = this;
                Function0<? extends ReceiveContentConfiguration> function0 = textFieldSelectionState.receiveContentConfiguration;
                if (function0 == null || (receiveContentConfiguration = function0.invoke()) == null) {
                    c03271.label = 1;
                    if (textFieldSelectionState.pasteAsPlainText(c03271) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                Clipboard clipboard = textFieldSelectionState.clipboard;
                c03271.L$0 = receiveContentConfiguration;
                c03271.label = 2;
                clipEntry = clipboard.getClipEntry(c03271);
                if (clipEntry == coroutine_suspended) {
                    return coroutine_suspended;
                }
                clipEntry2 = (ClipEntry) clipEntry;
                if (clipEntry2 != null) {
                    c03271.L$0 = null;
                    c03271.label = 3;
                    if (textFieldSelectionState.pasteAsPlainText(c03271) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                ClipMetadata clipMetadata = clipEntry2.getClipMetadata();
                TransferableContent remaining = receiveContentConfiguration.getReceiveContentListener().onReceive(new TransferableContent(clipEntry2, clipMetadata, TransferableContent.Source.INSTANCE.m363getClipboardkB6V9T0(), null, 8, null));
                if (remaining != null && (clipEntry3 = remaining.getClipEntry()) != null && (clipboardText = TransferableContent_androidKt.readPlainText(clipEntry3)) != null) {
                    TransformedTextFieldState.replaceSelectedText$default(textFieldSelectionState.textFieldState, clipboardText, false, TextFieldEditUndoBehavior.NeverMerge, false, 10, null);
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            case 2:
                textFieldSelectionState = this;
                receiveContentConfiguration = (ReceiveContentConfiguration) c03271.L$0;
                ResultKt.throwOnFailure($result);
                clipEntry = $result;
                clipEntry2 = (ClipEntry) clipEntry;
                if (clipEntry2 != null) {
                }
                break;
            case 3:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object pasteAsPlainText(Continuation<? super Unit> continuation) {
        C03281 c03281;
        TextFieldSelectionState textFieldSelectionState;
        Object clipEntry;
        ClipEntry clipEntry2;
        Object text;
        TextFieldSelectionState textFieldSelectionState2;
        String clipboardText;
        if (continuation instanceof C03281) {
            c03281 = (C03281) continuation;
            if ((c03281.label & Integer.MIN_VALUE) != 0) {
                c03281.label -= Integer.MIN_VALUE;
            } else {
                c03281 = new C03281(continuation);
            }
        }
        Object $result = c03281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c03281.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                textFieldSelectionState = this;
                Clipboard clipboard = textFieldSelectionState.clipboard;
                c03281.label = 1;
                clipEntry = clipboard.getClipEntry(c03281);
                if (clipEntry != coroutine_suspended) {
                    clipEntry2 = (ClipEntry) clipEntry;
                    if (clipEntry2 != null) {
                        c03281.label = 2;
                        text = ClipboardUtils_androidKt.readText(clipEntry2, c03281);
                        if (text != coroutine_suspended) {
                            textFieldSelectionState2 = textFieldSelectionState;
                            clipboardText = (String) text;
                            if (clipboardText != null) {
                                TransformedTextFieldState.replaceSelectedText$default(textFieldSelectionState2.textFieldState, clipboardText, false, TextFieldEditUndoBehavior.NeverMerge, false, 10, null);
                                return Unit.INSTANCE;
                            }
                        }
                    }
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            case 1:
                textFieldSelectionState = this;
                ResultKt.throwOnFailure($result);
                clipEntry = $result;
                clipEntry2 = (ClipEntry) clipEntry;
                if (clipEntry2 != null) {
                }
                return Unit.INSTANCE;
            case 2:
                textFieldSelectionState2 = this;
                ResultKt.throwOnFailure($result);
                text = $result;
                clipboardText = (String) text;
                if (clipboardText != null) {
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void onPasteEvent$foundation(AnnotatedString value) {
        if (getEditable$foundation()) {
            TransformedTextFieldState.replaceSelectedText$default(this.textFieldState, value.getText(), false, TextFieldEditUndoBehavior.NeverMerge, false, 10, null);
        }
    }

    public final boolean canShowSelectAllMenuItem() {
        return TextRange.m6924getLengthimpl(this.textFieldState.getVisualText().getSelection()) != this.textFieldState.getVisualText().length();
    }

    public final void selectAll() {
        this.textFieldState.selectAll();
    }

    public final boolean canShowAutofillMenuItem() {
        return getEditable$foundation() && TextRange.m6922getCollapsedimpl(this.textFieldState.getVisualText().getSelection());
    }

    public final void autofill() {
        Function0<Unit> function0 = this.requestAutofillAction;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showTextToolbar(Rect contentRect, Continuation<? super Unit> continuation) {
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            this.toolbarRequester.show();
        } else {
            TextToolbarHandler textToolbarHandler = this.textToolbarHandler;
            if (textToolbarHandler != null) {
                Object objShowTextToolbar = textToolbarHandler.showTextToolbar(this, contentRect, continuation);
                return objShowTextToolbar == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objShowTextToolbar : Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    public final void deselect() {
        if (!TextRange.m6922getCollapsedimpl(this.textFieldState.getVisualText().getSelection())) {
            this.textFieldState.collapseSelectionToEnd();
        }
        setShowCursorHandle(false);
        updateTextToolbarState(TextToolbarState.None);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideTextToolbar() {
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            this.toolbarRequester.hide();
            return;
        }
        TextToolbarHandler textToolbarHandler = this.textToolbarHandler;
        if (textToolbarHandler != null) {
            textToolbarHandler.hideTextToolbar();
        }
    }

    /* JADX INFO: renamed from: updateSelection-SsL-Rf8$foundation$default, reason: not valid java name */
    public static /* synthetic */ long m1507updateSelectionSsLRf8$foundation$default(TextFieldSelectionState textFieldSelectionState, TextFieldCharSequence textFieldCharSequence, int i, int i2, boolean z, SelectionAdjustment selectionAdjustment, boolean z2, boolean z3, int i3, Object obj) {
        if ((i3 & 32) != 0) {
            z2 = false;
        }
        if ((i3 & 64) != 0) {
            z3 = false;
        }
        return textFieldSelectionState.m1511updateSelectionSsLRf8$foundation(textFieldCharSequence, i, i2, z, selectionAdjustment, z2, z3);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX INFO: renamed from: updateSelection-SsL-Rf8$foundation, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long m1511updateSelectionSsLRf8$foundation(TextFieldCharSequence textFieldCharSequence, int startOffset, int endOffset, boolean isStartHandle, SelectionAdjustment adjustment, boolean allowPreviousSelectionCollapsed, boolean isStartOfSelection) {
        boolean onlyChangeIsReversed;
        HapticFeedback hapticFeedback;
        TextRange textRangeM6916boximpl = TextRange.m6916boximpl(textFieldCharSequence.getSelection());
        long it = textRangeM6916boximpl.getPackedValue();
        if (!(!isStartOfSelection && (allowPreviousSelectionCollapsed || !TextRange.m6922getCollapsedimpl(it)))) {
            textRangeM6916boximpl = null;
        }
        long newSelection = m1504getTextFieldSelectionqeG_v_k(startOffset, endOffset, textRangeM6916boximpl, isStartHandle, adjustment);
        if (TextRange.m6921equalsimpl0(newSelection, textFieldCharSequence.getSelection())) {
            return newSelection;
        }
        if (TextRange.m6927getReversedimpl(newSelection) != TextRange.m6927getReversedimpl(textFieldCharSequence.getSelection())) {
            long $this$updateSelection_SsL_Rf8_u24lambda_u241 = TextRangeKt.TextRange(TextRange.m6923getEndimpl(newSelection), TextRange.m6928getStartimpl(newSelection));
            onlyChangeIsReversed = TextRange.m6921equalsimpl0($this$updateSelection_SsL_Rf8_u24lambda_u241, textFieldCharSequence.getSelection());
        }
        if (isInTouchMode() && !onlyChangeIsReversed && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.mo5466performHapticFeedbackCdsT49E(HapticFeedbackType.INSTANCE.m5483getTextHandleMove5zf0vsI());
        }
        return newSelection;
    }

    /* JADX INFO: renamed from: getTextFieldSelection-qeG_v_k, reason: not valid java name */
    private final long m1504getTextFieldSelectionqeG_v_k(int rawStartOffset, int rawEndOffset, TextRange previousSelection, boolean isStartHandle, SelectionAdjustment adjustment) {
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return TextRange.INSTANCE.m6933getZerod9O1mEE();
        }
        if (previousSelection == null && Intrinsics.areEqual(adjustment, SelectionAdjustment.INSTANCE.getCharacter())) {
            return TextRangeKt.TextRange(rawStartOffset, rawEndOffset);
        }
        SelectionLayout selectionLayout = SelectionLayoutKt.m1611getTextFieldSelectionLayoutRcvTLA(layoutResult, rawStartOffset, rawEndOffset, this.previousRawDragOffset, previousSelection != null ? previousSelection.getPackedValue() : TextRange.INSTANCE.m6933getZerod9O1mEE(), previousSelection == null, isStartHandle);
        if (previousSelection != null && !selectionLayout.shouldRecomputeSelection(this.previousSelectionLayout)) {
            return previousSelection.getPackedValue();
        }
        long result = adjustment.adjust(selectionLayout).m1602toTextRanged9O1mEE();
        this.previousSelectionLayout = selectionLayout;
        this.previousRawDragOffset = isStartHandle ? rawStartOffset : rawEndOffset;
        return result;
    }
}
