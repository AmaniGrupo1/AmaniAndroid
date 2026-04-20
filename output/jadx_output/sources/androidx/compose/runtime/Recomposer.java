package androidx.compose.runtime;

import androidx.autofill.HintConstants;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.internal.Utils_androidKt;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot;
import androidx.compose.runtime.snapshots.TransparentObserverSnapshot;
import androidx.compose.runtime.tooling.ComposeStackTraceMode;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.CompositionObserverKt;
import androidx.compose.runtime.tooling.CompositionRegistrationObserver;
import androidx.compose.runtime.tooling.ObservableComposition;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.navigation.compose.ComposeNavigator;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: Recomposer.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000ð\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 í\u00012\u00020\u0001:\né\u0001ê\u0001ë\u0001ì\u0001í\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010R\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101H\u0002J\b\u0010S\u001a\u000202H\u0002J\u0006\u0010a\u001a\u00020bJ\b\u0010c\u001a\u000206H\u0002J\u001d\u0010c\u001a\u0002022\u0012\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u0002020eH\u0082\bJ\u0010\u0010f\u001a\u0002022\u0006\u0010g\u001a\u00020\u0014H\u0002J\u000e\u0010h\u001a\u000202H\u0086@¢\u0006\u0002\u0010iJ&\u0010j\u001a\u0002022\u0006\u0010k\u001a\u00020\u00162\n\b\u0002\u0010l\u001a\u0004\u0018\u00010\u00192\b\b\u0002\u0010m\u001a\u000206H\u0002J\u0017\u0010n\u001a\u0002022\f\u0010o\u001a\b\u0012\u0004\u0012\u0002020pH\u0082\bJ\u000e\u0010q\u001a\b\u0012\u0004\u0012\u00020\u00190\u001bH\u0002J\u000e\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00190\u001bH\u0002J\b\u0010s\u001a\u000202H\u0002J\u0010\u0010t\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0002J\u0010\u0010v\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0002J\u0010\u0010w\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0002J\u0010\u0010x\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0002J\u0015\u0010y\u001a\u00020z2\u0006\u0010{\u001a\u00020OH\u0000¢\u0006\u0002\b|J\n\u0010}\u001a\u0004\u0018\u000108H\u0002J\b\u0010~\u001a\u000202H\u0002J\u0010\u0010\u007f\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0002J\u0018\u0010\u0080\u0001\u001a\u0002022\u0006\u0010D\u001a\u00020\u0003H\u0087@¢\u0006\u0003\u0010\u0081\u0001J$\u0010\u0082\u0001\u001a\u0002022\b\u0010\u0083\u0001\u001a\u00030\u0084\u00012\b\u0010\u0085\u0001\u001a\u00030\u0086\u0001H\u0082@¢\u0006\u0003\u0010\u0087\u0001J\u000f\u0010\u008a\u0001\u001a\u000202H\u0082@¢\u0006\u0002\u0010iJV\u0010\u008b\u0001\u001a\u0002022D\u0010o\u001a@\b\u0001\u0012\u0005\u0012\u00030\u008d\u0001\u0012\u0017\u0012\u00150\u0084\u0001¢\u0006\u000f\b\u008e\u0001\u0012\n\b\u008f\u0001\u0012\u0005\b\b(\u0083\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u0002020\u0090\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u008c\u0001¢\u0006\u0003\b\u0091\u0001H\u0082@¢\u0006\u0003\u0010\u0092\u0001J\u0007\u0010\u0093\u0001\u001a\u000202J\u0007\u0010\u0094\u0001\u001a\u000202J\u000f\u0010\u0095\u0001\u001a\u000202H\u0086@¢\u0006\u0002\u0010iJ\u0019\u0010\u0096\u0001\u001a\u00030\u0097\u00012\r\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u0002020pH\u0016J/\u0010\u0099\u0001\u001a\u0002022\u0006\u0010u\u001a\u00020\u00192\u0013\u0010\u009a\u0001\u001a\u000e\u0012\u0004\u0012\u0002020p¢\u0006\u0003\b\u009b\u0001H\u0010¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001J@\u0010\u009e\u0001\u001a\t\u0012\u0004\u0012\u00020?0\u009f\u00012\u0006\u0010u\u001a\u00020\u00192\b\u0010 \u0001\u001a\u00030¡\u00012\u0013\u0010\u009a\u0001\u001a\u000e\u0012\u0004\u0012\u0002020p¢\u0006\u0003\b\u009b\u0001H\u0010¢\u0006\u0006\b¢\u0001\u0010£\u0001J8\u0010¤\u0001\u001a\t\u0012\u0004\u0012\u00020?0\u009f\u00012\u0006\u0010u\u001a\u00020\u00192\b\u0010 \u0001\u001a\u00030¡\u00012\u000e\u0010¥\u0001\u001a\t\u0012\u0004\u0012\u00020?0\u009f\u0001H\u0010¢\u0006\u0003\b¦\u0001J\u0018\u0010§\u0001\u001a\u0002022\u0007\u0010¨\u0001\u001a\u00020?H\u0010¢\u0006\u0003\b©\u0001J\u0011\u0010ª\u0001\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0002J$\u0010«\u0001\u001a\u0004\u0018\u00010\u00192\u0006\u0010u\u001a\u00020\u00192\u000f\u0010¬\u0001\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001dH\u0002J/\u0010\u00ad\u0001\u001a\b\u0012\u0004\u0012\u00020\u00190\u001b2\r\u0010®\u0001\u001a\b\u0012\u0004\u0012\u00020\"0\u001b2\u000f\u0010¬\u0001\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001dH\u0002J\t\u0010¯\u0001\u001a\u000202H\u0002J\u001d\u0010°\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002020e2\u0006\u0010u\u001a\u00020\u0019H\u0002J.\u0010±\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002020e2\u0006\u0010u\u001a\u00020\u00192\u000f\u0010¬\u0001\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001dH\u0002J@\u0010²\u0001\u001a\u0003H³\u0001\"\u0005\b\u0000\u0010³\u00012\u0006\u0010u\u001a\u00020\u00192\u000f\u0010¬\u0001\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001d2\r\u0010o\u001a\t\u0012\u0005\u0012\u0003H³\u00010pH\u0082\b¢\u0006\u0003\u0010´\u0001J\u0013\u0010µ\u0001\u001a\u0002022\b\u0010¶\u0001\u001a\u00030·\u0001H\u0002J\u000f\u0010¾\u0001\u001a\u000202H\u0086@¢\u0006\u0002\u0010iJ\u0007\u0010¿\u0001\u001a\u000202J\u0007\u0010À\u0001\u001a\u000202J\u001f\u0010Ì\u0001\u001a\u0002022\u000e\u0010Í\u0001\u001a\t\u0012\u0005\u0012\u00030Î\u00010/H\u0010¢\u0006\u0003\bÏ\u0001J\u0017\u0010Ð\u0001\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0010¢\u0006\u0003\bÑ\u0001J\u0017\u0010Ò\u0001\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0010¢\u0006\u0003\bÓ\u0001J\u0017\u0010Ô\u0001\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0010¢\u0006\u0003\bÕ\u0001J\u0018\u0010Ö\u0001\u001a\u0002022\u0007\u0010¨\u0001\u001a\u00020?H\u0010¢\u0006\u0003\b×\u0001J\u0018\u0010Ø\u0001\u001a\u0002022\u0007\u0010Ù\u0001\u001a\u00020\"H\u0010¢\u0006\u0003\bÚ\u0001J\u0018\u0010Û\u0001\u001a\u0002022\u0007\u0010Ù\u0001\u001a\u00020\"H\u0010¢\u0006\u0003\bÜ\u0001J/\u0010Ý\u0001\u001a\u0002022\u0007\u0010Ù\u0001\u001a\u00020\"2\u0007\u0010Þ\u0001\u001a\u00020+2\f\u0010ß\u0001\u001a\u0007\u0012\u0002\b\u00030à\u0001H\u0010¢\u0006\u0003\bá\u0001J\u0017\u0010â\u0001\u001a\u0002022\u0006\u0010u\u001a\u00020\u0019H\u0010¢\u0006\u0003\bã\u0001J\u001a\u0010ä\u0001\u001a\u0004\u0018\u00010+2\u0007\u0010Ù\u0001\u001a\u00020\"H\u0010¢\u0006\u0003\bå\u0001R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00190\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010#\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100%\u0012\u0004\u0012\u00020\"0$X\u0082\u0004¢\u0006\u0004\n\u0002\u0010&R\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020+0*X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0$X\u0082\u0004¢\u0006\u0004\n\u0002\u0010&R\u0016\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000206X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u000206X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010=\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020?\u0018\u00010\u001d0>X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0014\u0010D\u001a\u00020\u00038PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bE\u0010CR\u0014\u0010F\u001a\u0002068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0014\u0010I\u001a\u0002068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010HR\u0014\u0010K\u001a\u0002068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bL\u0010HR\u001c\u0010M\u001a\n\u0012\u0004\u0012\u00020O\u0018\u00010NX\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\bP\u0010QR\u0014\u0010T\u001a\u0002068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bU\u0010HR \u0010V\u001a\b\u0012\u0004\u0012\u00020<0W8FX\u0087\u0004¢\u0006\f\u0012\u0004\bX\u0010Q\u001a\u0004\bY\u0010ZR\u0017\u0010[\u001a\b\u0012\u0004\u0012\u00020<0\\8F¢\u0006\u0006\u001a\u0004\b]\u0010^R\u0012\u0010_\u001a\u00060`R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0088\u0001\u001a\u0002068BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010HR\u0013\u0010¸\u0001\u001a\u0002068F¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010HR\u0016\u0010º\u0001\u001a\u0002068BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b»\u0001\u0010HR\u0016\u0010¼\u0001\u001a\u0002068BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b½\u0001\u0010HR\u001b\u0010Á\u0001\u001a\u00070\u0007j\u0003`Â\u00018PX\u0090\u0004¢\u0006\u0007\u001a\u0005\bÃ\u0001\u0010\nR\u0016\u0010Ä\u0001\u001a\u0002068PX\u0090\u0004¢\u0006\u0007\u001a\u0005\bÅ\u0001\u0010HR\u0016\u0010Æ\u0001\u001a\u0002068PX\u0090\u0004¢\u0006\u0007\u001a\u0005\bÇ\u0001\u0010HR\u0016\u0010È\u0001\u001a\u0002068PX\u0090\u0004¢\u0006\u0007\u001a\u0005\bÉ\u0001\u0010HR\u0016\u0010Ê\u0001\u001a\u0002068PX\u0090\u0004¢\u0006\u0007\u001a\u0005\bË\u0001\u0010HR\u0019\u0010u\u001a\u0005\u0018\u00010æ\u00018PX\u0090\u0004¢\u0006\b\u001a\u0006\bç\u0001\u0010è\u0001¨\u0006î\u0001"}, d2 = {"Landroidx/compose/runtime/Recomposer;", "Landroidx/compose/runtime/CompositionContext;", "effectCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", Values.VECTOR_MAP_VECTORS_KEY, "", "changeCount", "getChangeCount", "()J", "broadcastFrameClock", "Landroidx/compose/runtime/BroadcastFrameClock;", "nextFrameEndCallbackQueue", "Landroidx/compose/runtime/NextFrameEndCallbackQueue;", "stateLock", "", "Landroidx/compose/runtime/platform/SynchronizedObject;", "Ljava/lang/Object;", "runnerJob", "Lkotlinx/coroutines/Job;", "closeCause", "", "_knownCompositions", "", "Landroidx/compose/runtime/ControlledComposition;", "_knownCompositionsCache", "", "snapshotInvalidations", "Landroidx/collection/MutableScatterSet;", "compositionInvalidations", "Landroidx/compose/runtime/collection/MutableVector;", "compositionsAwaitingApply", "movableContentAwaitingInsert", "Landroidx/compose/runtime/MovableContentStateReference;", "movableContentRemoved", "Landroidx/compose/runtime/collection/MultiValueMap;", "Landroidx/compose/runtime/MovableContent;", "Landroidx/collection/MutableScatterMap;", "movableContentNestedStatesAvailable", "Landroidx/compose/runtime/NestedContentMap;", "movableContentStatesAvailable", "Landroidx/collection/MutableScatterMap;", "Landroidx/compose/runtime/MovableContentState;", "movableContentNestedExtractionsPending", "failedCompositions", "compositionsRemoved", "", "workContinuation", "Lkotlinx/coroutines/CancellableContinuation;", "", "concurrentCompositionsOutstanding", "", "isClosed", "", "errorState", "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "frameClockPaused", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/compose/runtime/Recomposer$State;", "pausedScopes", "Landroidx/compose/runtime/internal/SnapshotThreadLocal;", "Landroidx/compose/runtime/RecomposeScopeImpl;", "effectJob", "Lkotlinx/coroutines/CompletableJob;", "getEffectCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "recomposeCoroutineContext", "getRecomposeCoroutineContext$runtime", "hasBroadcastFrameClockAwaitersLocked", "getHasBroadcastFrameClockAwaitersLocked", "()Z", "hasNextFrameEndAwaitersLocked", "getHasNextFrameEndAwaitersLocked", "hasBroadcastFrameClockAwaiters", "getHasBroadcastFrameClockAwaiters", "registrationObservers", "Landroidx/collection/MutableObjectList;", "Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;", "getRegistrationObservers$annotations", "()V", "deriveStateLocked", "onNewFrameAwaiter", "shouldKeepRecomposing", "getShouldKeepRecomposing", "state", "Lkotlinx/coroutines/flow/Flow;", "getState$annotations", "getState", "()Lkotlinx/coroutines/flow/Flow;", "currentState", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentState", "()Lkotlinx/coroutines/flow/StateFlow;", "recomposerInfo", "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "asRecomposerInfo", "Landroidx/compose/runtime/RecomposerInfo;", "recordComposerModifications", "onEachInvalidComposition", "Lkotlin/Function1;", "registerRunnerJob", "callingJob", "runRecomposeAndApplyChanges", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processCompositionError", "e", "failedInitialComposition", "recoverable", "withTransparentSnapshot", "block", "Lkotlin/Function0;", "knownCompositions", "knownCompositionsLocked", "clearKnownCompositionsLocked", "removeKnownCompositionLocked", "composition", "addKnownCompositionLocked", "registerCompositionLocked", "unregisterCompositionLocked", "addCompositionRegistrationObserver", "Landroidx/compose/runtime/tooling/CompositionObserverHandle;", "observer", "addCompositionRegistrationObserver$runtime", "resetErrorState", "retryFailedCompositions", "recordFailedCompositionLocked", "runRecomposeConcurrentlyAndApplyChanges", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runFrameLoop", "parentFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;", "frameSignal", "Landroidx/compose/runtime/ProduceFrameSignal;", "(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasSchedulingWork", "getHasSchedulingWork", "awaitWorkAvailable", "recompositionRunner", "Lkotlin/Function3;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancel", "close", "join", "scheduleFrameEndCallback", "Landroidx/compose/runtime/CancellationHandle;", "action", "composeInitial", "content", "Landroidx/compose/runtime/Composable;", "composeInitial$runtime", "(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V", "composeInitialPaused", "Landroidx/collection/ScatterSet;", "shouldPause", "Landroidx/compose/runtime/ShouldPauseCallback;", "composeInitialPaused$runtime", "(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/ScatterSet;", "recomposePaused", "invalidScopes", "recomposePaused$runtime", "reportPausedScope", "scope", "reportPausedScope$runtime", "performInitialMovableContentInserts", "performRecompose", "modifiedValues", "performInsertValues", "references", "discardUnusedMovableContentState", "readObserverOf", "writeObserverOf", "composing", ExifInterface.GPS_DIRECTION_TRUE, "(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "applyAndCheck", "snapshot", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "hasPendingWork", "getHasPendingWork", "hasFrameWorkLocked", "getHasFrameWorkLocked", "hasConcurrentFrameWorkLocked", "getHasConcurrentFrameWorkLocked", "awaitIdle", "pauseCompositionFrameClock", "resumeCompositionFrameClock", "compositeKeyHashCode", "Landroidx/compose/runtime/CompositeKeyHashCode;", "getCompositeKeyHashCode$runtime", "collectingCallByInformation", "getCollectingCallByInformation$runtime", "collectingParameterInformation", "getCollectingParameterInformation$runtime", "collectingSourceInformation", "getCollectingSourceInformation$runtime", "stackTraceEnabled", "getStackTraceEnabled$runtime", "recordInspectionTable", "table", "Landroidx/compose/runtime/tooling/CompositionData;", "recordInspectionTable$runtime", "registerComposition", "registerComposition$runtime", "unregisterComposition", "unregisterComposition$runtime", "invalidate", "invalidate$runtime", "invalidateScope", "invalidateScope$runtime", "insertMovableContent", "reference", "insertMovableContent$runtime", "deletedMovableContent", "deletedMovableContent$runtime", "movableContentStateReleased", "data", "applier", "Landroidx/compose/runtime/Applier;", "movableContentStateReleased$runtime", "reportRemovedComposition", "reportRemovedComposition$runtime", "movableContentStateResolve", "movableContentStateResolve$runtime", "Landroidx/compose/runtime/Composition;", "getComposition$runtime", "()Landroidx/compose/runtime/Composition;", "State", "RecomposerInfoImpl", "HotReloadable", "RecomposerErrorState", "Companion", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Recomposer extends CompositionContext {
    private List<? extends ControlledComposition> _knownCompositionsCache;
    private long changeCount;
    private Throwable closeCause;
    private Set<ControlledComposition> compositionsRemoved;
    private int concurrentCompositionsOutstanding;
    private final CoroutineContext effectCoroutineContext;
    private final CompletableJob effectJob;
    private RecomposerErrorState errorState;
    private List<ControlledComposition> failedCompositions;
    private boolean frameClockPaused;
    private boolean isClosed;
    private final RecomposerInfoImpl recomposerInfo;
    private MutableObjectList<CompositionRegistrationObserver> registrationObservers;
    private Job runnerJob;
    private CancellableContinuation<? super Unit> workContinuation;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final MutableStateFlow<PersistentSet<RecomposerInfoImpl>> _runningRecomposers = StateFlowKt.MutableStateFlow(ExtensionsKt.persistentSetOf());
    private static final AtomicReference<Boolean> _hotReloadEnabled = new AtomicReference<>(false);
    private final BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Function0() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Recomposer.broadcastFrameClock$lambda$0(this.f$0);
        }
    });
    private final NextFrameEndCallbackQueue nextFrameEndCallbackQueue = new NextFrameEndCallbackQueue(new Function0() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Recomposer.nextFrameEndCallbackQueue$lambda$0(this.f$0);
        }
    });
    private final Object stateLock = new Object();
    private final List<ControlledComposition> _knownCompositions = new ArrayList();
    private MutableScatterSet<Object> snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
    private final MutableVector<ControlledComposition> compositionInvalidations = new MutableVector<>(new ControlledComposition[16], 0);
    private final List<ControlledComposition> compositionsAwaitingApply = new ArrayList();
    private final List<MovableContentStateReference> movableContentAwaitingInsert = new ArrayList();
    private final MutableScatterMap<Object, Object> movableContentRemoved = MultiValueMap.m4047constructorimpl$default(null, 1, null);
    private final NestedContentMap movableContentNestedStatesAvailable = new NestedContentMap();
    private final MutableScatterMap<MovableContentStateReference, MovableContentState> movableContentStatesAvailable = ScatterMapKt.mutableScatterMapOf();
    private final MutableScatterMap<Object, Object> movableContentNestedExtractionsPending = MultiValueMap.m4047constructorimpl$default(null, 1, null);
    private final MutableStateFlow<State> _state = StateFlowKt.MutableStateFlow(State.Inactive);
    private final SnapshotThreadLocal<MutableScatterSet<RecomposeScopeImpl>> pausedScopes = new SnapshotThreadLocal<>();

    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/Recomposer$State;", "", "<init>", "(Ljava/lang/String;I)V", "ShutDown", "ShuttingDown", "Inactive", "InactivePendingWork", "Idle", "PendingWork", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum State {
        ShutDown,
        ShuttingDown,
        Inactive,
        InactivePendingWork,
        Idle,
        PendingWork;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

        public static EnumEntries<State> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$runFrameLoop$1, reason: invalid class name */
    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer", f = "Recomposer.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {1042, 1049}, m = "runFrameLoop", n = {"parentFrameClock", "frameSignal", "toRecompose", "toApply", "parentFrameClock", "frameSignal", "toRecompose", "toApply"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Recomposer.this.runFrameLoop(null, null, this);
        }
    }

    private static /* synthetic */ void getRegistrationObservers$annotations() {
    }

    @Deprecated(message = "Replaced by currentState as a StateFlow", replaceWith = @ReplaceWith(expression = "currentState", imports = {}))
    public static /* synthetic */ void getState$annotations() {
    }

    public Recomposer(CoroutineContext effectCoroutineContext) {
        CompletableJob $this$effectJob_u24lambda_u240 = JobKt.Job((Job) effectCoroutineContext.get(Job.INSTANCE));
        $this$effectJob_u24lambda_u240.invokeOnCompletion(new Function1() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Recomposer.effectJob$lambda$0$0(this.f$0, (Throwable) obj);
            }
        });
        this.effectJob = $this$effectJob_u24lambda_u240;
        this.effectCoroutineContext = effectCoroutineContext.plus(this.broadcastFrameClock).plus(this.effectJob);
        this.recomposerInfo = new RecomposerInfoImpl();
    }

    public final long getChangeCount() {
        return this.changeCount;
    }

    static final Unit broadcastFrameClock$lambda$0(Recomposer this$0) {
        this$0.onNewFrameAwaiter();
        return Unit.INSTANCE;
    }

    static final Unit nextFrameEndCallbackQueue$lambda$0(Recomposer this$0) {
        this$0.onNewFrameAwaiter();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit effectJob$lambda$0$0(final Recomposer this$0, final Throwable throwable) {
        CancellationException cancellation = ExceptionsKt.CancellationException("Recomposer effect job completed", throwable);
        Object continuationToResume = null;
        Object lock$iv = this$0.stateLock;
        synchronized (lock$iv) {
            Job runnerJob = this$0.runnerJob;
            if (runnerJob != null) {
                this$0._state.setValue(State.ShuttingDown);
                if (!this$0.isClosed) {
                    runnerJob.cancel(cancellation);
                } else if (this$0.workContinuation != null) {
                    continuationToResume = this$0.workContinuation;
                }
                this$0.workContinuation = null;
                runnerJob.invokeOnCompletion(new Function1() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Recomposer.effectJob$lambda$0$0$0$0(this.f$0, throwable, (Throwable) obj);
                    }
                });
            } else {
                this$0.closeCause = cancellation;
                this$0._state.setValue(State.ShutDown);
                Unit unit = Unit.INSTANCE;
            }
        }
        if (continuationToResume != null) {
            Result.Companion companion = Result.INSTANCE;
            ((Continuation) continuationToResume).resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit effectJob$lambda$0$0$0$0(Recomposer this$0, Throwable $throwable, Throwable runnerJobCause) {
        Object lock$iv = this$0.stateLock;
        synchronized (lock$iv) {
            if ($throwable == null) {
                this$0.closeCause = it;
                this$0._state.setValue(State.ShutDown);
                Unit unit = Unit.INSTANCE;
            } else {
                if (runnerJobCause != null) {
                    it = runnerJobCause instanceof CancellationException ? null : runnerJobCause;
                    if (it != null) {
                        kotlin.ExceptionsKt.addSuppressed($throwable, it);
                    }
                }
                it = $throwable;
                this$0.closeCause = it;
                this$0._state.setValue(State.ShutDown);
                Unit unit2 = Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public CoroutineContext getEffectCoroutineContext() {
        return this.effectCoroutineContext;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public CoroutineContext getRecomposeCoroutineContext$runtime() {
        return EmptyCoroutineContext.INSTANCE;
    }

    private final boolean getHasBroadcastFrameClockAwaitersLocked() {
        return !this.frameClockPaused && this.broadcastFrameClock.getHasAwaiters();
    }

    private final boolean getHasNextFrameEndAwaitersLocked() {
        return !this.frameClockPaused && this.nextFrameEndCallbackQueue.getHasAwaiters();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasBroadcastFrameClockAwaiters() {
        boolean hasBroadcastFrameClockAwaitersLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            hasBroadcastFrameClockAwaitersLocked = getHasBroadcastFrameClockAwaitersLocked();
        }
        return hasBroadcastFrameClockAwaitersLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CancellableContinuation<Unit> deriveStateLocked() {
        State newState;
        int i = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
            clearKnownCompositionsLocked();
            this.snapshotInvalidations = new MutableScatterSet<>(i, i, defaultConstructorMarker);
            this.compositionInvalidations.clear();
            this.compositionsAwaitingApply.clear();
            this.movableContentAwaitingInsert.clear();
            this.failedCompositions = null;
            CancellableContinuation<? super Unit> cancellableContinuation = this.workContinuation;
            if (cancellableContinuation != null) {
                CancellableContinuation.DefaultImpls.cancel$default(cancellableContinuation, null, 1, null);
            }
            this.workContinuation = null;
            this.errorState = null;
            return null;
        }
        if (this.errorState != null) {
            newState = State.Inactive;
        } else if (this.runnerJob == null) {
            this.snapshotInvalidations = new MutableScatterSet<>(i, i, defaultConstructorMarker);
            this.compositionInvalidations.clear();
            if (getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked()) {
                newState = State.InactivePendingWork;
            } else {
                newState = State.Inactive;
            }
        } else {
            if ((this.compositionInvalidations.getSize() != 0 ? 1 : 0) != 0 || this.snapshotInvalidations.isNotEmpty() || !this.compositionsAwaitingApply.isEmpty() || !this.movableContentAwaitingInsert.isEmpty() || this.concurrentCompositionsOutstanding > 0 || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || MultiValueMap.m4056isNotEmptyimpl(this.movableContentRemoved)) {
                newState = State.PendingWork;
            } else {
                newState = State.Idle;
            }
        }
        this._state.setValue(newState);
        if (newState != State.PendingWork) {
            return null;
        }
        CancellableContinuation cancellableContinuation2 = this.workContinuation;
        this.workContinuation = null;
        return cancellableContinuation2;
    }

    private final void onNewFrameAwaiter() {
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            cancellableContinuationDeriveStateLocked = deriveStateLocked();
            if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                throw ExceptionsKt.CancellationException("Recomposer shutdown; frame clock awaiter will never resume", this.closeCause);
            }
        }
        if (cancellableContinuationDeriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldKeepRecomposing() {
        boolean z;
        boolean z2;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            z = this.isClosed;
        }
        if (!z) {
            return true;
        }
        Iterator<Job> it = this.effectJob.getChildren().iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            Object element$iv = it.next();
            Job it2 = (Job) element$iv;
            if (it2.isActive()) {
                z2 = true;
                break;
            }
        }
        return z2;
    }

    public final Flow<State> getState() {
        return getCurrentState();
    }

    public final StateFlow<State> getCurrentState() {
        return this._state;
    }

    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\b\u0010 \u001a\u0004\u0018\u00010!J\u0006\u0010\"\u001a\u00020\u001aR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "Landroidx/compose/runtime/RecomposerInfo;", "<init>", "(Landroidx/compose/runtime/Recomposer;)V", "state", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/compose/runtime/Recomposer$State;", "getState", "()Lkotlinx/coroutines/flow/Flow;", "hasPendingWork", "", "getHasPendingWork", "()Z", "changeCount", "", "getChangeCount", "()J", "currentError", "Landroidx/compose/runtime/RecomposerErrorInfo;", "getCurrentError", "()Landroidx/compose/runtime/RecomposerErrorInfo;", "observe", "Landroidx/compose/runtime/tooling/CompositionObserverHandle;", "observer", "Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;", "invalidateGroupsWithKey", "", "key", "", "saveStateAndDisposeForHotReload", "", "Landroidx/compose/runtime/Recomposer$HotReloadable;", "resetErrorState", "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "retryFailedCompositions", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private final class RecomposerInfoImpl implements RecomposerInfo {
        public RecomposerInfoImpl() {
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public Flow<State> getState() {
            return Recomposer.this.getCurrentState();
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public boolean getHasPendingWork() {
            return Recomposer.this.getHasPendingWork();
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public long getChangeCount() {
            return Recomposer.this.getChangeCount();
        }

        public final RecomposerErrorInfo getCurrentError() {
            RecomposerErrorState recomposerErrorState;
            Object lock$iv = Recomposer.this.stateLock;
            Recomposer recomposer = Recomposer.this;
            synchronized (lock$iv) {
                recomposerErrorState = recomposer.errorState;
            }
            return recomposerErrorState;
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public CompositionObserverHandle observe(CompositionRegistrationObserver observer) {
            return CompositionObserverKt.observe(Recomposer.this, observer);
        }

        public final void invalidateGroupsWithKey(int key) throws Throwable {
            List compositions = Recomposer.this.knownCompositions();
            List target$iv = new ArrayList(compositions.size());
            int size = compositions.size();
            for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                Object item$iv$iv = compositions.get(index$iv$iv);
                ControlledComposition it = (ControlledComposition) item$iv$iv;
                CompositionImpl compositionImpl = it instanceof CompositionImpl ? (CompositionImpl) it : null;
                if (compositionImpl != null) {
                    target$iv.add(compositionImpl);
                }
            }
            List $this$fastForEach$iv = target$iv;
            int size2 = $this$fastForEach$iv.size();
            for (int index$iv = 0; index$iv < size2; index$iv++) {
                Object item$iv = $this$fastForEach$iv.get(index$iv);
                ((CompositionImpl) item$iv).invalidateGroupsWithKey(key);
            }
        }

        public final List<HotReloadable> saveStateAndDisposeForHotReload() {
            List compositions = Recomposer.this.knownCompositions();
            List target$iv = new ArrayList(compositions.size());
            int size = compositions.size();
            for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                Object item$iv$iv = compositions.get(index$iv$iv);
                ControlledComposition it = (ControlledComposition) item$iv$iv;
                CompositionImpl compositionImpl = it instanceof CompositionImpl ? (CompositionImpl) it : null;
                if (compositionImpl != null) {
                    target$iv.add(compositionImpl);
                }
            }
            List $this$fastMap$iv = target$iv;
            List target$iv2 = new ArrayList($this$fastMap$iv.size());
            int size2 = $this$fastMap$iv.size();
            for (int index$iv$iv2 = 0; index$iv$iv2 < size2; index$iv$iv2++) {
                Object item$iv$iv2 = $this$fastMap$iv.get(index$iv$iv2);
                HotReloadable $this$saveStateAndDisposeForHotReload_u24lambda_u241_u240 = new HotReloadable((CompositionImpl) item$iv$iv2);
                $this$saveStateAndDisposeForHotReload_u24lambda_u241_u240.clearContent();
                target$iv2.add($this$saveStateAndDisposeForHotReload_u24lambda_u241_u240);
            }
            return target$iv2;
        }

        public final RecomposerErrorState resetErrorState() {
            return Recomposer.this.resetErrorState();
        }

        public final void retryFailedCompositions() {
            Recomposer.this.retryFailedCompositions();
        }
    }

    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u000b\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\bJ\u0006\u0010\r\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u000e"}, d2 = {"Landroidx/compose/runtime/Recomposer$HotReloadable;", "", "composition", "Landroidx/compose/runtime/CompositionImpl;", "<init>", "(Landroidx/compose/runtime/CompositionImpl;)V", ComposeNavigator.NAME, "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/jvm/functions/Function2;", "clearContent", "resetContent", "recompose", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class HotReloadable {
        private Function2<? super Composer, ? super Integer, Unit> composable;
        private final CompositionImpl composition;

        public HotReloadable(CompositionImpl composition) {
            this.composition = composition;
            this.composable = this.composition.getComposable();
        }

        public final void clearContent() {
            if (this.composition.getIsRoot()) {
                this.composition.setContent(ComposableSingletons$RecomposerKt.INSTANCE.m3901getLambda$1091980426$runtime());
            }
        }

        public final void resetContent() {
            this.composition.setComposable(this.composable);
        }

        public final void recompose() {
            if (this.composition.getIsRoot()) {
                this.composition.setContent(this.composable);
            }
        }
    }

    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "Landroidx/compose/runtime/RecomposerErrorInfo;", "recoverable", "", "cause", "", "<init>", "(ZLjava/lang/Throwable;)V", "getRecoverable", "()Z", "getCause", "()Ljava/lang/Throwable;", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class RecomposerErrorState implements RecomposerErrorInfo {
        private final Throwable cause;
        private final boolean recoverable;

        public RecomposerErrorState(boolean recoverable, Throwable cause) {
            this.recoverable = recoverable;
            this.cause = cause;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        public boolean getRecoverable() {
            return this.recoverable;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        public Throwable getCause() {
            return this.cause;
        }
    }

    public final RecomposerInfo asRecomposerInfo() {
        return this.recomposerInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean recordComposerModifications() {
        boolean hasFrameWorkLocked;
        CollectionsKt.emptyList();
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            if (this.snapshotInvalidations.isEmpty()) {
                return getHasFrameWorkLocked();
            }
            List<ControlledComposition> listKnownCompositionsLocked = knownCompositionsLocked();
            Set<? extends Object> setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(this.snapshotInvalidations);
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            try {
                Recomposer $this$recordComposerModifications_u24lambda_u241 = this;
                int size = listKnownCompositionsLocked.size();
                for (int index$iv = 0; index$iv < size; index$iv++) {
                    Object item$iv = listKnownCompositionsLocked.get(index$iv);
                    ControlledComposition composition = (ControlledComposition) item$iv;
                    composition.recordModificationsOf(setWrapIntoSet);
                    if ($this$recordComposerModifications_u24lambda_u241._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                Object lock$iv2 = this.stateLock;
                synchronized (lock$iv2) {
                    if (deriveStateLocked() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges".toString());
                    }
                    hasFrameWorkLocked = getHasFrameWorkLocked();
                }
                return hasFrameWorkLocked;
            } catch (Throwable th) {
                synchronized (this.stateLock) {
                    this.snapshotInvalidations.addAll(setWrapIntoSet);
                    throw th;
                }
            }
        }
    }

    private final void recordComposerModifications(Function1<? super ControlledComposition, Unit> onEachInvalidComposition) {
        MutableScatterSet it;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            it = this.snapshotInvalidations;
            if (it.isNotEmpty()) {
                this.snapshotInvalidations = new MutableScatterSet(0, 1, null);
            }
        }
        Set<? extends Object> setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(it);
        if (!setWrapIntoSet.isEmpty()) {
            List $this$fastForEach$iv = knownCompositionsLocked();
            int size = $this$fastForEach$iv.size();
            for (int index$iv = 0; index$iv < size; index$iv++) {
                Object item$iv = $this$fastForEach$iv.get(index$iv);
                ControlledComposition composition = (ControlledComposition) item$iv;
                composition.recordModificationsOf(setWrapIntoSet);
            }
        }
        MutableVector this_$iv = this.compositionInvalidations;
        Object[] content$iv = this_$iv.content;
        int size$iv = this_$iv.getSize();
        for (int i$iv = 0; i$iv < size$iv; i$iv++) {
            onEachInvalidComposition.invoke(content$iv[i$iv]);
        }
        this.compositionInvalidations.clear();
        Object lock$iv2 = this.stateLock;
        synchronized (lock$iv2) {
            if (deriveStateLocked() != null) {
                throw new IllegalStateException("called outside of runRecomposeAndApplyChanges".toString());
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerRunnerJob(Job callingJob) {
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            Throwable it = this.closeCause;
            if (it != null) {
                throw it;
            }
            if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down".toString());
            }
            if (this.runnerJob != null) {
                throw new IllegalStateException("Recomposer already running".toString());
            }
            this.runnerJob = callingJob;
            deriveStateLocked();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "parentFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1}, l = {598, 609}, m = "invokeSuspend", n = {"parentFrameClock", "toRecompose", "toInsert", "toApply", "toLateApply", "toComplete", "modifiedValues", "modifiedValuesSet", "alreadyComposed", "parentFrameClock", "toRecompose", "toInsert", "toApply", "toLateApply", "toComplete", "modifiedValues", "modifiedValuesSet", "alreadyComposed"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8"}, v = 1)
    static final class C05412 extends SuspendLambda implements Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;

        C05412(Continuation<? super C05412> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(CoroutineScope coroutineScope, MonotonicFrameClock monotonicFrameClock, Continuation<? super Unit> continuation) {
            C05412 c05412 = Recomposer.this.new C05412(continuation);
            c05412.L$0 = monotonicFrameClock;
            return c05412.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x013e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0119 -> B:21:0x0122). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0132 -> B:9:0x00ba). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            MonotonicFrameClock parentFrameClock;
            MutableScatterSet alreadyComposed;
            MutableScatterSet alreadyComposed2;
            List toRecompose;
            Set modifiedValuesSet;
            final List toInsert;
            MutableScatterSet modifiedValues;
            List toRecompose2;
            MutableScatterSet modifiedValues2;
            C05412 c05412;
            final MutableScatterSet toLateApply;
            final List toApply;
            final List toApply2;
            final MutableScatterSet toLateApply2;
            C05412 c054122;
            final Set modifiedValuesSet2;
            final MutableScatterSet toComplete;
            final MutableScatterSet toComplete2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = 1;
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    parentFrameClock = (MonotonicFrameClock) this.L$0;
                    List toRecompose3 = new ArrayList();
                    List toInsert2 = new ArrayList();
                    List toApply3 = new ArrayList();
                    alreadyComposed = ScatterSetKt.mutableScatterSetOf();
                    MutableScatterSet toComplete3 = ScatterSetKt.mutableScatterSetOf();
                    MutableScatterSet modifiedValues3 = new MutableScatterSet(0, i, null);
                    Set modifiedValuesSet3 = ScatterSetWrapperKt.wrapIntoSet(modifiedValues3);
                    alreadyComposed2 = ScatterSetKt.mutableScatterSetOf();
                    toRecompose = toRecompose3;
                    modifiedValuesSet = modifiedValuesSet3;
                    toInsert = toInsert2;
                    modifiedValues = modifiedValues3;
                    toRecompose2 = toApply3;
                    modifiedValues2 = toComplete3;
                    c05412 = this;
                    if (!Recomposer.this.getShouldKeepRecomposing()) {
                        c05412.L$0 = parentFrameClock;
                        c05412.L$1 = toRecompose;
                        c05412.L$2 = toInsert;
                        c05412.L$3 = toRecompose2;
                        c05412.L$4 = alreadyComposed;
                        c05412.L$5 = modifiedValues2;
                        c05412.L$6 = modifiedValues;
                        c05412.L$7 = modifiedValuesSet;
                        c05412.L$8 = alreadyComposed2;
                        c05412.label = i;
                        if (Recomposer.this.awaitWorkAvailable(c05412) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        List list = toRecompose;
                        toLateApply2 = alreadyComposed;
                        toLateApply = alreadyComposed2;
                        toApply = toRecompose2;
                        toApply2 = list;
                        c054122 = c05412;
                        modifiedValuesSet2 = modifiedValuesSet;
                        toComplete = modifiedValues2;
                        toComplete2 = modifiedValues;
                        if (Recomposer.this.recordComposerModifications()) {
                            List list2 = toApply;
                            alreadyComposed2 = toLateApply;
                            alreadyComposed = toLateApply2;
                            toRecompose = toApply2;
                            toRecompose2 = list2;
                            modifiedValues = toComplete2;
                            modifiedValues2 = toComplete;
                            modifiedValuesSet = modifiedValuesSet2;
                            c05412 = c054122;
                            i = 1;
                            if (!Recomposer.this.getShouldKeepRecomposing()) {
                            }
                        } else {
                            final Recomposer recomposer = Recomposer.this;
                            c054122.L$0 = parentFrameClock;
                            c054122.L$1 = toApply2;
                            c054122.L$2 = toInsert;
                            c054122.L$3 = toApply;
                            c054122.L$4 = toLateApply2;
                            c054122.L$5 = toComplete;
                            c054122.L$6 = toComplete2;
                            c054122.L$7 = modifiedValuesSet2;
                            c054122.L$8 = toLateApply;
                            c054122.label = 2;
                            if (parentFrameClock.withFrameNanos(new Function1() { // from class: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return Recomposer.C05412.invokeSuspend$lambda$2(recomposer, toComplete2, toLateApply, toApply2, toInsert, toLateApply2, toApply, toComplete, modifiedValuesSet2, ((Long) obj).longValue());
                                }
                            }, c054122) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            List list3 = toApply;
                            alreadyComposed2 = toLateApply;
                            alreadyComposed = toLateApply2;
                            toRecompose = toApply2;
                            toRecompose2 = list3;
                            modifiedValues = toComplete2;
                            modifiedValues2 = toComplete;
                            modifiedValuesSet = modifiedValuesSet2;
                            c05412 = c054122;
                            Recomposer.this.discardUnusedMovableContentState();
                            Recomposer.this.nextFrameEndCallbackQueue.markFrameComplete();
                            i = 1;
                            if (!Recomposer.this.getShouldKeepRecomposing()) {
                                return Unit.INSTANCE;
                            }
                        }
                    }
                    break;
                case 1:
                    MutableScatterSet alreadyComposed3 = (MutableScatterSet) this.L$8;
                    Set modifiedValuesSet4 = (Set) this.L$7;
                    MutableScatterSet modifiedValues4 = (MutableScatterSet) this.L$6;
                    MutableScatterSet toComplete4 = (MutableScatterSet) this.L$5;
                    MutableScatterSet toLateApply3 = (MutableScatterSet) this.L$4;
                    List toApply4 = (List) this.L$3;
                    toInsert = (List) this.L$2;
                    List toRecompose4 = (List) this.L$1;
                    MonotonicFrameClock parentFrameClock2 = (MonotonicFrameClock) this.L$0;
                    ResultKt.throwOnFailure($result);
                    toLateApply = alreadyComposed3;
                    parentFrameClock = parentFrameClock2;
                    toApply = toApply4;
                    toApply2 = toRecompose4;
                    toLateApply2 = toLateApply3;
                    c054122 = this;
                    modifiedValuesSet2 = modifiedValuesSet4;
                    toComplete = toComplete4;
                    toComplete2 = modifiedValues4;
                    if (Recomposer.this.recordComposerModifications()) {
                    }
                    break;
                case 2:
                    MutableScatterSet alreadyComposed4 = (MutableScatterSet) this.L$8;
                    modifiedValuesSet = (Set) this.L$7;
                    modifiedValues = (MutableScatterSet) this.L$6;
                    modifiedValues2 = (MutableScatterSet) this.L$5;
                    alreadyComposed = (MutableScatterSet) this.L$4;
                    toRecompose2 = (List) this.L$3;
                    toInsert = (List) this.L$2;
                    toRecompose = (List) this.L$1;
                    MonotonicFrameClock parentFrameClock3 = (MonotonicFrameClock) this.L$0;
                    ResultKt.throwOnFailure($result);
                    alreadyComposed2 = alreadyComposed4;
                    parentFrameClock = parentFrameClock3;
                    c05412 = this;
                    Recomposer.this.discardUnusedMovableContentState();
                    Recomposer.this.nextFrameEndCallbackQueue.markFrameComplete();
                    i = 1;
                    if (!Recomposer.this.getShouldKeepRecomposing()) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x0126  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static final void invokeSuspend$clearRecompositionState(Recomposer this$0, List<ControlledComposition> list, List<MovableContentStateReference> list2, List<ControlledComposition> list3, MutableScatterSet<ControlledComposition> mutableScatterSet, MutableScatterSet<ControlledComposition> mutableScatterSet2, MutableScatterSet<Object> mutableScatterSet3, MutableScatterSet<ControlledComposition> mutableScatterSet4) throws Throwable {
            long j;
            long j2;
            int i;
            int i2;
            long j3;
            Object lock$iv = this$0.stateLock;
            int $i$f$synchronized = 0;
            synchronized (lock$iv) {
                int i3 = 0;
                try {
                    list.clear();
                    list2.clear();
                    int size = list3.size();
                    for (int index$iv = 0; index$iv < size; index$iv++) {
                        try {
                            Object item$iv = list3.get(index$iv);
                            ControlledComposition it = (ControlledComposition) item$iv;
                            it.abandonChanges();
                            this$0.recordFailedCompositionLocked(it);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                    list3.clear();
                    MutableScatterSet<ControlledComposition> this_$iv = mutableScatterSet;
                    Object[] elements$iv = this_$iv.elements;
                    long[] m$iv$iv = this_$iv.metadata;
                    int lastIndex$iv$iv = m$iv$iv.length - 2;
                    int i$iv$iv = 0;
                    long j4 = 255;
                    int i4 = 8;
                    if (0 <= lastIndex$iv$iv) {
                        while (true) {
                            long slot$iv$iv = m$iv$iv[i$iv$iv];
                            j2 = 128;
                            int $i$f$synchronized2 = $i$f$synchronized;
                            ScatterSet this_$iv2 = this_$iv;
                            if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                                int j$iv$iv = 0;
                                while (j$iv$iv < bitCount$iv$iv) {
                                    long value$iv$iv$iv = slot$iv$iv & j4;
                                    if (value$iv$iv$iv < 128) {
                                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                                        try {
                                            ControlledComposition it2 = (ControlledComposition) elements$iv[index$iv$iv];
                                            it2.abandonChanges();
                                            j3 = j4;
                                            this$0.recordFailedCompositionLocked(it2);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            throw th;
                                        }
                                    } else {
                                        j3 = j4;
                                    }
                                    slot$iv$iv >>= 8;
                                    j$iv$iv++;
                                    j4 = j3;
                                }
                                j = j4;
                                if (bitCount$iv$iv != 8) {
                                    break;
                                }
                            } else {
                                j = j4;
                            }
                            if (i$iv$iv == lastIndex$iv$iv) {
                                break;
                            }
                            i$iv$iv++;
                            $i$f$synchronized = $i$f$synchronized2;
                            this_$iv = this_$iv2;
                            j4 = j;
                        }
                    } else {
                        j = 255;
                        j2 = 128;
                    }
                    mutableScatterSet.clear();
                    MutableScatterSet<ControlledComposition> this_$iv3 = mutableScatterSet2;
                    Object[] elements$iv2 = this_$iv3.elements;
                    long[] m$iv$iv2 = this_$iv3.metadata;
                    int lastIndex$iv$iv2 = m$iv$iv2.length - 2;
                    int i$iv$iv2 = 0;
                    if (0 <= lastIndex$iv$iv2) {
                        while (true) {
                            long slot$iv$iv2 = m$iv$iv2[i$iv$iv2];
                            int i5 = i4;
                            if ((((~slot$iv$iv2) << 7) & slot$iv$iv2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                                long slot$iv$iv3 = slot$iv$iv2;
                                for (int j$iv$iv2 = 0; j$iv$iv2 < bitCount$iv$iv2; j$iv$iv2++) {
                                    long value$iv$iv$iv2 = slot$iv$iv3 & j;
                                    if (value$iv$iv$iv2 < j2) {
                                        int index$iv$iv2 = (i$iv$iv2 << 3) + j$iv$iv2;
                                        ((ControlledComposition) elements$iv2[index$iv$iv2]).changesApplied();
                                    }
                                    slot$iv$iv3 >>= i5;
                                }
                                if (bitCount$iv$iv2 != i5) {
                                    break;
                                }
                                if (i$iv$iv2 == lastIndex$iv$iv2) {
                                    break;
                                }
                                i$iv$iv2++;
                                i4 = 8;
                            }
                        }
                    }
                    mutableScatterSet2.clear();
                    mutableScatterSet3.clear();
                    MutableScatterSet<ControlledComposition> this_$iv4 = mutableScatterSet4;
                    int $i$f$forEach = 0;
                    Object[] elements$iv3 = this_$iv4.elements;
                    long[] m$iv$iv3 = this_$iv4.metadata;
                    int lastIndex$iv$iv3 = m$iv$iv3.length - 2;
                    int i$iv$iv3 = 0;
                    if (0 <= lastIndex$iv$iv3) {
                        while (true) {
                            long slot$iv$iv4 = m$iv$iv3[i$iv$iv3];
                            ScatterSet this_$iv5 = this_$iv4;
                            int $i$f$forEach2 = $i$f$forEach;
                            if ((((~slot$iv$iv4) << 7) & slot$iv$iv4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int bitCount$iv$iv3 = 8 - ((~(i$iv$iv3 - lastIndex$iv$iv3)) >>> 31);
                                int j$iv$iv3 = 0;
                                while (j$iv$iv3 < bitCount$iv$iv3) {
                                    long value$iv$iv$iv3 = slot$iv$iv4 & j;
                                    if (value$iv$iv$iv3 < j2) {
                                        int index$iv$iv3 = (i$iv$iv3 << 3) + j$iv$iv3;
                                        ControlledComposition it3 = (ControlledComposition) elements$iv3[index$iv$iv3];
                                        it3.abandonChanges();
                                        i2 = i3;
                                        this$0.recordFailedCompositionLocked(it3);
                                    } else {
                                        i2 = i3;
                                    }
                                    slot$iv$iv4 >>= 8;
                                    j$iv$iv3++;
                                    i3 = i2;
                                }
                                i = i3;
                                if (bitCount$iv$iv3 != 8) {
                                    break;
                                }
                            } else {
                                i = i3;
                            }
                            if (i$iv$iv3 == lastIndex$iv$iv3) {
                                break;
                            }
                            i$iv$iv3++;
                            this_$iv4 = this_$iv5;
                            $i$f$forEach = $i$f$forEach2;
                            i3 = i;
                        }
                    }
                    mutableScatterSet4.clear();
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }

        private static final void invokeSuspend$fillToInsert(List<MovableContentStateReference> list, Recomposer this$0) {
            list.clear();
            Object lock$iv = this$0.stateLock;
            synchronized (lock$iv) {
                List $this$fastForEach$iv = this$0.movableContentAwaitingInsert;
                int size = $this$fastForEach$iv.size();
                for (int index$iv = 0; index$iv < size; index$iv++) {
                    Object item$iv = $this$fastForEach$iv.get(index$iv);
                    MovableContentStateReference it = (MovableContentStateReference) item$iv;
                    list.add(it);
                }
                this$0.movableContentAwaitingInsert.clear();
                Unit unit = Unit.INSTANCE;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:214:0x0474 A[Catch: all -> 0x05a4, TryCatch #1 {all -> 0x05a4, blocks: (B:17:0x0046, B:18:0x004f, B:272:0x05a2, B:273:0x05a3, B:26:0x008a, B:27:0x008b, B:28:0x0091, B:207:0x0459, B:209:0x0464, B:243:0x0520, B:253:0x054c, B:214:0x0474, B:215:0x047a, B:259:0x0570, B:260:0x0571, B:242:0x051f, B:264:0x0593, B:266:0x0599, B:267:0x059c, B:36:0x00c4, B:169:0x0393, B:170:0x039e, B:173:0x03a3, B:174:0x03a4, B:178:0x03c1, B:179:0x03c2, B:192:0x03f5, B:193:0x03f8, B:153:0x035e, B:67:0x01a7, B:198:0x0415, B:200:0x041e, B:202:0x042d, B:204:0x0448, B:120:0x02ab, B:122:0x02be, B:124:0x02d7, B:126:0x02e3, B:131:0x02ef, B:172:0x03a0, B:245:0x0527, B:246:0x052a, B:248:0x0533, B:263:0x057a), top: B:279:0x0046, inners: #14, #17, #20, #23, #26 }] */
        /* JADX WARN: Removed duplicated region for block: B:234:0x04f0 A[PHI: r20
          0x04f0: PHI (r20v23 boolean) = (r20v38 boolean), (r20v39 boolean) binds: [B:230:0x04df, B:232:0x04e5] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:318:0x0527 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:335:0x0563 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v10 */
        /* JADX WARN: Type inference failed for: r10v12, types: [int] */
        /* JADX WARN: Type inference failed for: r10v13 */
        /* JADX WARN: Type inference failed for: r10v15 */
        /* JADX WARN: Type inference failed for: r10v16 */
        /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.runtime.snapshots.Snapshot] */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v5 */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r10v8, types: [androidx.compose.runtime.snapshots.Snapshot] */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r20v1 */
        /* JADX WARN: Type inference failed for: r20v10 */
        /* JADX WARN: Type inference failed for: r20v15 */
        /* JADX WARN: Type inference failed for: r20v18 */
        /* JADX WARN: Type inference failed for: r20v19 */
        /* JADX WARN: Type inference failed for: r20v20 */
        /* JADX WARN: Type inference failed for: r20v21 */
        /* JADX WARN: Type inference failed for: r20v27 */
        /* JADX WARN: Type inference failed for: r20v32 */
        /* JADX WARN: Type inference failed for: r20v33 */
        /* JADX WARN: Type inference failed for: r20v34 */
        /* JADX WARN: Type inference failed for: r20v35 */
        /* JADX WARN: Type inference failed for: r20v4 */
        /* JADX WARN: Type inference failed for: r20v40 */
        /* JADX WARN: Type inference failed for: r20v41 */
        /* JADX WARN: Type inference failed for: r2v43, types: [T[], java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r2v47, types: [T[]] */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v10, types: [androidx.compose.runtime.snapshots.Snapshot] */
        /* JADX WARN: Type inference failed for: r9v11 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v20 */
        /* JADX WARN: Type inference failed for: r9v21 */
        /* JADX WARN: Type inference failed for: r9v22 */
        /* JADX WARN: Type inference failed for: r9v25 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4, types: [androidx.compose.runtime.snapshots.Snapshot] */
        /* JADX WARN: Type inference failed for: r9v5 */
        /* JADX WARN: Type inference failed for: r9v7 */
        /* JADX WARN: Type inference failed for: r9v8 */
        /* JADX WARN: Type inference failed for: r9v9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        static final Unit invokeSuspend$lambda$2(Recomposer recomposer, MutableScatterSet mutableScatterSet, MutableScatterSet mutableScatterSet2, List list, List list2, MutableScatterSet mutableScatterSet3, List list3, MutableScatterSet mutableScatterSet4, Set set, long j) throws Throwable {
            ?? r9;
            TransparentObserverSnapshot transparentObserverSnapshot;
            ?? r20;
            ?? size;
            Unit unit;
            Snapshot snapshot;
            long j2;
            long j3;
            char c;
            Recomposer recomposer2;
            MutableScatterSet mutableScatterSet5;
            MutableScatterSet mutableScatterSet6;
            MutableScatterSet mutableScatterSet7;
            MutableScatterSet mutableScatterSet8;
            List list4;
            List list5;
            MutableScatterSet mutableScatterSet9;
            ?? r202;
            Object obj;
            boolean z;
            boolean z2;
            List list6;
            int i;
            Recomposer recomposer3 = recomposer;
            MutableScatterSet mutableScatterSet10 = mutableScatterSet4;
            if (recomposer3.getHasBroadcastFrameClockAwaiters()) {
                Object objBeginSection = Trace.INSTANCE.beginSection("Recomposer:animation");
                try {
                    long j4 = j;
                    try {
                        recomposer3.broadcastFrameClock.sendFrame(j4);
                        Snapshot.INSTANCE.sendApplyNotifications();
                        Unit unit2 = Unit.INSTANCE;
                        Trace.INSTANCE.endSection(objBeginSection);
                        r9 = j4;
                    } catch (Throwable th) {
                        th = th;
                        Trace.INSTANCE.endSection(objBeginSection);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                r9 = j;
            }
            Object objBeginSection2 = Trace.INSTANCE.beginSection("Recomposer:recompose");
            try {
                recomposer3.recordComposerModifications();
                int i2 = 0;
                synchronized (recomposer3.stateLock) {
                    int i3 = 0;
                    try {
                        MutableVector mutableVector = recomposer3.compositionInvalidations;
                        int i4 = 0;
                        Object[] objArr = mutableVector.content;
                        int size2 = mutableVector.getSize();
                        while (i4 < size2) {
                            int i5 = i3;
                            int i6 = i2;
                            try {
                                list.add((ControlledComposition) objArr[i4]);
                                i4++;
                                i3 = i5;
                                i2 = i6;
                            } catch (Throwable th3) {
                                th = th3;
                                throw th;
                            }
                        }
                        recomposer3.compositionInvalidations.clear();
                        Unit unit3 = Unit.INSTANCE;
                        mutableScatterSet.clear();
                        mutableScatterSet2.clear();
                        while (true) {
                            if (list.isEmpty()) {
                                try {
                                    if (list2.isEmpty()) {
                                        break;
                                    }
                                    mutableScatterSet7 = mutableScatterSet;
                                    mutableScatterSet8 = mutableScatterSet2;
                                    list4 = list;
                                    list5 = list2;
                                    mutableScatterSet9 = mutableScatterSet3;
                                } catch (Throwable th4) {
                                    th = th4;
                                    Trace.INSTANCE.endSection(objBeginSection2);
                                    throw th;
                                }
                            } else {
                                mutableScatterSet7 = mutableScatterSet;
                                mutableScatterSet8 = mutableScatterSet2;
                                list4 = list;
                                list5 = list2;
                                mutableScatterSet9 = mutableScatterSet3;
                            }
                            List list7 = list;
                            int i7 = 0;
                            int i8 = 0;
                            try {
                                int size3 = list7.size();
                                size = size;
                                while (i8 < size3) {
                                    Object obj2 = list7.get(i8);
                                    ControlledComposition controlledComposition = (ControlledComposition) obj2;
                                    ControlledComposition controlledCompositionPerformRecompose = recomposer3.performRecompose(controlledComposition, mutableScatterSet7);
                                    if (controlledCompositionPerformRecompose != null) {
                                        list6 = list7;
                                        i = i7;
                                        list3.add(controlledCompositionPerformRecompose);
                                        Unit unit4 = Unit.INSTANCE;
                                        Unit unit5 = Unit.INSTANCE;
                                    } else {
                                        list6 = list7;
                                        i = i7;
                                    }
                                    mutableScatterSet8.add(controlledComposition);
                                    i8++;
                                    list7 = list6;
                                    i7 = i;
                                    size = obj2;
                                }
                                r202 = i7;
                                list4.clear();
                                if (mutableScatterSet7.isNotEmpty()) {
                                    Object obj3 = recomposer3.stateLock;
                                    synchronized (obj3) {
                                        try {
                                            List listKnownCompositionsLocked = recomposer3.knownCompositionsLocked();
                                            int i9 = 0;
                                            int size4 = listKnownCompositionsLocked.size();
                                            ?? r203 = r202;
                                            while (i9 < size4) {
                                                ControlledComposition controlledComposition2 = (ControlledComposition) listKnownCompositionsLocked.get(i9);
                                                int i10 = size4;
                                                if (mutableScatterSet8.contains(controlledComposition2)) {
                                                    obj = obj3;
                                                } else {
                                                    obj = obj3;
                                                    try {
                                                        if (controlledComposition2.observesAnyOf(set)) {
                                                            list4.add(controlledComposition2);
                                                        }
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                        throw th;
                                                    }
                                                }
                                                i9++;
                                                obj3 = obj;
                                                size4 = i10 == true ? 1 : 0;
                                                r203 = i10;
                                            }
                                            Object obj4 = obj3;
                                            MutableVector mutableVector2 = recomposer3.compositionInvalidations;
                                            int i11 = 0;
                                            int i12 = 0;
                                            size = mutableVector2.getSize();
                                            int i13 = 0;
                                            r202 = r203;
                                            while (i13 < size) {
                                                int i14 = i11;
                                                ControlledComposition controlledComposition3 = (ControlledComposition) mutableVector2.content[i13];
                                                boolean zContains = mutableScatterSet8.contains(controlledComposition3);
                                                boolean z3 = zContains;
                                                if (!zContains) {
                                                    boolean zContains2 = list4.contains(controlledComposition3);
                                                    z3 = zContains2;
                                                    if (zContains2) {
                                                        z = false;
                                                        z2 = z3;
                                                    } else {
                                                        list.add(controlledComposition3);
                                                        z = true;
                                                        z2 = zContains2;
                                                    }
                                                }
                                                if (z) {
                                                    i12++;
                                                } else if (i12 > 0) {
                                                    mutableVector2.content[i13 - i12] = mutableVector2.content[i13];
                                                }
                                                i13++;
                                                list4 = list;
                                                i11 = i14;
                                                r202 = z2;
                                            }
                                            ArraysKt.fill((Object[]) mutableVector2.content, (Object) null, size - i12, (int) size);
                                            mutableVector2.setSize(size - i12);
                                            Unit unit6 = Unit.INSTANCE;
                                            if (list.isEmpty()) {
                                                recomposer3 = recomposer;
                                                mutableScatterSet10 = mutableScatterSet4;
                                                r9 = j;
                                            } else {
                                                try {
                                                    invokeSuspend$fillToInsert(list5, recomposer3);
                                                    while (!list5.isEmpty()) {
                                                        mutableScatterSet9.plusAssign((Iterable) recomposer3.performInsertValues(list5, mutableScatterSet7));
                                                        invokeSuspend$fillToInsert(list5, recomposer3);
                                                    }
                                                    mutableScatterSet10 = mutableScatterSet4;
                                                    r9 = j;
                                                } catch (Throwable th6) {
                                                    Recomposer.processCompositionError$default(recomposer3, th6, null, true, 2, null);
                                                    invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet7, mutableScatterSet8);
                                                    unit = Unit.INSTANCE;
                                                }
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            obj = obj3;
                                        }
                                    }
                                } else {
                                    if (recomposer3.compositionInvalidations.getSize() != 0) {
                                    }
                                    if (list.isEmpty()) {
                                    }
                                }
                            } catch (Throwable th8) {
                                try {
                                    Recomposer.processCompositionError$default(recomposer, th8, null, true, 2, null);
                                    invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                    unit = Unit.INSTANCE;
                                    list.clear();
                                } catch (Throwable th9) {
                                    list.clear();
                                    throw th9;
                                }
                            }
                            Trace.INSTANCE.endSection(objBeginSection2);
                            return unit;
                        }
                        Snapshot current = Snapshot.INSTANCE.getCurrent();
                        if (current instanceof MutableSnapshot) {
                            r20 = 0;
                            transparentObserverSnapshot = new TransparentObserverMutableSnapshot((MutableSnapshot) current, null, null, true, false);
                        } else {
                            transparentObserverSnapshot = new TransparentObserverSnapshot(current, null, true, false);
                            r20 = r202;
                        }
                        Snapshot snapshot2 = transparentObserverSnapshot;
                        try {
                            Snapshot snapshotMakeCurrent = snapshot2.makeCurrent();
                            try {
                                try {
                                    try {
                                        if (list3.isEmpty()) {
                                            r9 = snapshot2;
                                            size = snapshotMakeCurrent;
                                            snapshot = current;
                                        } else {
                                            try {
                                                recomposer3.changeCount = recomposer3.getChangeCount() + 1;
                                                try {
                                                    try {
                                                        int i15 = 0;
                                                        for (int size5 = list3.size(); i15 < size5; size5 = size5) {
                                                            mutableScatterSet10.add((ControlledComposition) list3.get(i15));
                                                            i15++;
                                                        }
                                                        int size6 = list3.size();
                                                        for (int i16 = 0; i16 < size6; i16++) {
                                                            ((ControlledComposition) list3.get(i16)).applyChanges();
                                                        }
                                                        try {
                                                            list3.clear();
                                                            r9 = snapshot2;
                                                            size = snapshotMakeCurrent;
                                                            snapshot = current;
                                                        } catch (Throwable th10) {
                                                            th = th10;
                                                            r9 = snapshot2;
                                                            size = snapshotMakeCurrent;
                                                            r9.restoreCurrent(size);
                                                            throw th;
                                                        }
                                                    } catch (Throwable th11) {
                                                        try {
                                                            Recomposer.processCompositionError$default(recomposer3, th11, null, false, 6, null);
                                                            r20 = current;
                                                            try {
                                                                invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet10, mutableScatterSet, mutableScatterSet2);
                                                                try {
                                                                    unit = Unit.INSTANCE;
                                                                    list3.clear();
                                                                    snapshot2.restoreCurrent(snapshotMakeCurrent);
                                                                    transparentObserverSnapshot.dispose();
                                                                    Trace.INSTANCE.endSection(objBeginSection2);
                                                                    return unit;
                                                                } catch (Throwable th12) {
                                                                    th = th12;
                                                                    list3.clear();
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th13) {
                                                                th = th13;
                                                            }
                                                        } catch (Throwable th14) {
                                                            th = th14;
                                                        }
                                                    }
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                }
                                            } catch (Throwable th16) {
                                                th = th16;
                                                r9 = snapshot2;
                                                size = snapshotMakeCurrent;
                                            }
                                        }
                                        if (mutableScatterSet3.isNotEmpty()) {
                                            try {
                                                mutableScatterSet10.plusAssign((ScatterSet) mutableScatterSet3);
                                                MutableScatterSet mutableScatterSet11 = mutableScatterSet3;
                                                j2 = 128;
                                                Object[] objArr2 = mutableScatterSet11.elements;
                                                j3 = 255;
                                                long[] jArr = mutableScatterSet11.metadata;
                                                int length = jArr.length - 2;
                                                c = 7;
                                                int i17 = 0;
                                                if (0 <= length) {
                                                    while (true) {
                                                        long j5 = jArr[i17];
                                                        MutableScatterSet mutableScatterSet12 = mutableScatterSet11;
                                                        Object[] objArr3 = objArr2;
                                                        if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i18 = 8 - ((~(i17 - length)) >>> 31);
                                                            for (int i19 = 0; i19 < i18; i19++) {
                                                                if (((j5 & 255) < 128 ? 1 : 0) != 0) {
                                                                    ((ControlledComposition) objArr3[(i17 << 3) + i19]).applyLateChanges();
                                                                }
                                                                j5 >>= 8;
                                                            }
                                                            if (i18 != 8) {
                                                                break;
                                                            }
                                                        }
                                                        if (i17 == length) {
                                                            break;
                                                        }
                                                        i17++;
                                                        mutableScatterSet11 = mutableScatterSet12;
                                                        objArr2 = objArr3;
                                                    }
                                                }
                                            } catch (Throwable th17) {
                                                try {
                                                    Recomposer.processCompositionError$default(recomposer, th17, null, false, 6, null);
                                                    invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                                    unit = Unit.INSTANCE;
                                                    r9.restoreCurrent(size);
                                                    r20 = snapshot;
                                                    transparentObserverSnapshot.dispose();
                                                    Trace.INSTANCE.endSection(objBeginSection2);
                                                    return unit;
                                                } finally {
                                                    mutableScatterSet3.clear();
                                                }
                                            }
                                        } else {
                                            j2 = 128;
                                            j3 = 255;
                                            c = 7;
                                        }
                                        try {
                                            if (mutableScatterSet4.isNotEmpty()) {
                                                try {
                                                    MutableScatterSet mutableScatterSet13 = mutableScatterSet4;
                                                    int i20 = 0;
                                                    Object[] objArr4 = mutableScatterSet13.elements;
                                                    MutableScatterSet mutableScatterSet14 = mutableScatterSet13;
                                                    long[] jArr2 = mutableScatterSet14.metadata;
                                                    int length2 = jArr2.length - 2;
                                                    int i21 = 0;
                                                    if (0 <= length2) {
                                                        while (true) {
                                                            long j6 = jArr2[i21];
                                                            MutableScatterSet mutableScatterSet15 = mutableScatterSet13;
                                                            int i22 = i20;
                                                            Object[] objArr5 = objArr4;
                                                            MutableScatterSet mutableScatterSet16 = mutableScatterSet14;
                                                            if ((((~j6) << c) & j6 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                int i23 = 8 - ((~(i21 - length2)) >>> 31);
                                                                for (int i24 = 0; i24 < i23; i24++) {
                                                                    if ((j6 & j3) < j2) {
                                                                        ((ControlledComposition) objArr5[(i21 << 3) + i24]).changesApplied();
                                                                    }
                                                                    j6 >>= 8;
                                                                }
                                                                if (i23 != 8) {
                                                                    break;
                                                                }
                                                            }
                                                            if (i21 == length2) {
                                                                break;
                                                            }
                                                            i21++;
                                                            mutableScatterSet13 = mutableScatterSet15;
                                                            objArr4 = objArr5;
                                                            mutableScatterSet14 = mutableScatterSet16;
                                                            i20 = i22;
                                                        }
                                                    }
                                                    mutableScatterSet4.clear();
                                                    recomposer2 = recomposer;
                                                    mutableScatterSet5 = mutableScatterSet;
                                                    mutableScatterSet6 = mutableScatterSet2;
                                                } catch (Throwable th18) {
                                                    try {
                                                        Recomposer.processCompositionError$default(recomposer, th18, null, false, 6, null);
                                                        try {
                                                            invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                                            try {
                                                                Unit unit7 = Unit.INSTANCE;
                                                                mutableScatterSet4.clear();
                                                                try {
                                                                    r9.restoreCurrent(size);
                                                                    transparentObserverSnapshot.dispose();
                                                                    Trace.INSTANCE.endSection(objBeginSection2);
                                                                    return unit7;
                                                                } catch (Throwable th19) {
                                                                    th = th19;
                                                                    transparentObserverSnapshot.dispose();
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th20) {
                                                                th = th20;
                                                                mutableScatterSet4.clear();
                                                                throw th;
                                                            }
                                                        } catch (Throwable th21) {
                                                            th = th21;
                                                        }
                                                    } catch (Throwable th22) {
                                                        th = th22;
                                                    }
                                                }
                                            } else {
                                                recomposer2 = recomposer;
                                                mutableScatterSet5 = mutableScatterSet;
                                                mutableScatterSet6 = mutableScatterSet2;
                                            }
                                            Unit unit8 = Unit.INSTANCE;
                                            r9.restoreCurrent(size);
                                            transparentObserverSnapshot.dispose();
                                            synchronized (recomposer2.stateLock) {
                                                recomposer2.deriveStateLocked();
                                            }
                                            Snapshot.INSTANCE.notifyObjectsInitialized();
                                            mutableScatterSet6.clear();
                                            mutableScatterSet5.clear();
                                            recomposer2.compositionsRemoved = null;
                                            Unit unit9 = Unit.INSTANCE;
                                            Trace.INSTANCE.endSection(objBeginSection2);
                                            return Unit.INSTANCE;
                                        } catch (Throwable th23) {
                                            th = th23;
                                            r9.restoreCurrent(size);
                                            throw th;
                                        }
                                    } catch (Throwable th24) {
                                        th = th24;
                                    }
                                } catch (Throwable th25) {
                                    th = th25;
                                }
                            } catch (Throwable th26) {
                                th = th26;
                                r9 = snapshot2;
                                size = snapshotMakeCurrent;
                            }
                        } catch (Throwable th27) {
                            th = th27;
                        }
                    } catch (Throwable th28) {
                        th = th28;
                    }
                }
            } catch (Throwable th29) {
                th = th29;
            }
        }
    }

    public final Object runRecomposeAndApplyChanges(Continuation<? super Unit> continuation) {
        Object objRecompositionRunner = recompositionRunner(new C05412(null), continuation);
        return objRecompositionRunner == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRecompositionRunner : Unit.INSTANCE;
    }

    static /* synthetic */ void processCompositionError$default(Recomposer recomposer, Throwable th, ControlledComposition controlledComposition, boolean z, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            controlledComposition = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        recomposer.processCompositionError(th, controlledComposition, z);
    }

    private final void processCompositionError(Throwable e, ControlledComposition failedInitialComposition, boolean recoverable) throws Throwable {
        int i = 0;
        if (_hotReloadEnabled.get().booleanValue() && !(e instanceof ComposeRuntimeError)) {
            Object lock$iv = this.stateLock;
            synchronized (lock$iv) {
                Utils_androidKt.logError("Error was captured in composition while live edit was enabled.", e);
                this.compositionsAwaitingApply.clear();
                this.compositionInvalidations.clear();
                this.snapshotInvalidations = new MutableScatterSet<>(i, 1, null);
                this.movableContentAwaitingInsert.clear();
                MultiValueMap.m4045clearimpl(this.movableContentRemoved);
                this.movableContentStatesAvailable.clear();
                this.errorState = new RecomposerErrorState(recoverable, e);
                if (failedInitialComposition != null) {
                    recordFailedCompositionLocked(failedInitialComposition);
                }
                deriveStateLocked();
            }
            return;
        }
        Object lock$iv2 = this.stateLock;
        synchronized (lock$iv2) {
            Utils_androidKt.logError("Error was captured in composition.", e);
            RecomposerErrorState errorState = this.errorState;
            if (errorState == null) {
                this.errorState = new RecomposerErrorState(false, e);
                Unit unit = Unit.INSTANCE;
            } else {
                throw errorState.getCause();
            }
        }
        throw e;
    }

    private final void withTransparentSnapshot(Function0<Unit> block) {
        TransparentObserverSnapshot snapshot;
        Snapshot currentSnapshot = Snapshot.INSTANCE.getCurrent();
        if (currentSnapshot instanceof MutableSnapshot) {
            snapshot = new TransparentObserverMutableSnapshot((MutableSnapshot) currentSnapshot, null, null, true, false);
        } else {
            snapshot = new TransparentObserverSnapshot(currentSnapshot, null, true, false);
        }
        Snapshot this_$iv = snapshot;
        try {
            Snapshot previous$iv = this_$iv.makeCurrent();
            try {
                block.invoke();
            } finally {
                this_$iv.restoreCurrent(previous$iv);
            }
        } finally {
            snapshot.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> knownCompositions() {
        List<ControlledComposition> listKnownCompositionsLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            listKnownCompositionsLocked = knownCompositionsLocked();
        }
        return listKnownCompositionsLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> knownCompositionsLocked() {
        List cache = this._knownCompositionsCache;
        if (cache != null) {
            return cache;
        }
        List<ControlledComposition> list = this._knownCompositions;
        ArrayList arrayListEmptyList = list.isEmpty() ? CollectionsKt.emptyList() : new ArrayList(list);
        this._knownCompositionsCache = arrayListEmptyList;
        return arrayListEmptyList;
    }

    private final void clearKnownCompositionsLocked() {
        List<ControlledComposition> listKnownCompositionsLocked = knownCompositionsLocked();
        int size = listKnownCompositionsLocked.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = listKnownCompositionsLocked.get(index$iv);
            ControlledComposition composition = (ControlledComposition) item$iv;
            unregisterCompositionLocked(composition);
        }
        this._knownCompositions.clear();
        this._knownCompositionsCache = CollectionsKt.emptyList();
    }

    private final void removeKnownCompositionLocked(ControlledComposition composition) {
        if (this._knownCompositions.remove(composition)) {
            this._knownCompositionsCache = null;
            unregisterCompositionLocked(composition);
        }
    }

    private final void addKnownCompositionLocked(ControlledComposition composition) {
        this._knownCompositions.add(composition);
        this._knownCompositionsCache = null;
    }

    private final void registerCompositionLocked(ControlledComposition composition) {
        ObjectList objectList = this.registrationObservers;
        if (objectList == null) {
            return;
        }
        ObjectList this_$iv = objectList;
        Object[] content$iv = this_$iv.content;
        int i = this_$iv._size;
        for (int i$iv = 0; i$iv < i; i$iv++) {
            CompositionRegistrationObserver it = (CompositionRegistrationObserver) content$iv[i$iv];
            if (composition instanceof ObservableComposition) {
                it.onCompositionRegistered((ObservableComposition) composition);
            }
        }
    }

    private final void unregisterCompositionLocked(ControlledComposition composition) {
        ObjectList objectList = this.registrationObservers;
        if (objectList == null) {
            return;
        }
        ObjectList this_$iv = objectList;
        Object[] content$iv = this_$iv.content;
        int i = this_$iv._size;
        for (int i$iv = 0; i$iv < i; i$iv++) {
            CompositionRegistrationObserver it = (CompositionRegistrationObserver) content$iv[i$iv];
            if (composition instanceof ObservableComposition) {
                it.onCompositionUnregistered((ObservableComposition) composition);
            }
        }
    }

    public final CompositionObserverHandle addCompositionRegistrationObserver$runtime(final CompositionRegistrationObserver observer) {
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
            if (mutableObjectList == null) {
                mutableObjectList = new MutableObjectList<>(0, 1, null);
                this.registrationObservers = mutableObjectList;
            }
            mutableObjectList.add(observer);
            List<ControlledComposition> list = this._knownCompositions;
            int size = list.size();
            for (int index$iv = 0; index$iv < size; index$iv++) {
                Object item$iv = list.get(index$iv);
                ControlledComposition composition = (ControlledComposition) item$iv;
                if (composition instanceof ObservableComposition) {
                    observer.onCompositionRegistered((ObservableComposition) composition);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
        return new CompositionObserverHandle() { // from class: androidx.compose.runtime.Recomposer$addCompositionRegistrationObserver$2
            @Override // androidx.compose.runtime.tooling.CompositionObserverHandle
            public void dispose() {
                Object lock$iv2 = this.this$0.stateLock;
                Recomposer recomposer = this.this$0;
                CompositionRegistrationObserver compositionRegistrationObserver = observer;
                synchronized (lock$iv2) {
                    MutableObjectList mutableObjectList2 = recomposer.registrationObservers;
                    if (mutableObjectList2 != null) {
                        Boolean.valueOf(mutableObjectList2.remove(compositionRegistrationObserver));
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecomposerErrorState resetErrorState() {
        RecomposerErrorState error;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            error = this.errorState;
            if (error != null) {
                this.errorState = null;
                deriveStateLocked();
            }
        }
        return error;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void retryFailedCompositions() {
        List<ControlledComposition> list;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            list = this.failedCompositions;
            this.failedCompositions = null;
        }
        if (list == null) {
            return;
        }
        while (!list.isEmpty()) {
            try {
                ControlledComposition composition = (ControlledComposition) CollectionsKt.removeLast(list);
                if (composition instanceof CompositionImpl) {
                    ((CompositionImpl) composition).invalidateAll();
                    ((CompositionImpl) composition).setContent(((CompositionImpl) composition).getComposable());
                    if (this.errorState != null) {
                        break;
                    }
                }
            } catch (Throwable th) {
                if (!list.isEmpty()) {
                    synchronized (this.stateLock) {
                        int size = list.size();
                        for (int index$iv = 0; index$iv < size; index$iv++) {
                            Object item$iv = list.get(index$iv);
                            ControlledComposition it = (ControlledComposition) item$iv;
                            recordFailedCompositionLocked(it);
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                }
                throw th;
            }
        }
        if (list.isEmpty()) {
            return;
        }
        Object lock$iv2 = this.stateLock;
        synchronized (lock$iv2) {
            int size2 = list.size();
            for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
                Object item$iv2 = list.get(index$iv2);
                ControlledComposition it2 = (ControlledComposition) item$iv2;
                recordFailedCompositionLocked(it2);
            }
            Unit unit2 = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recordFailedCompositionLocked(ControlledComposition composition) {
        ArrayList arrayList = this.failedCompositions;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.failedCompositions = arrayList;
        }
        if (!arrayList.contains(composition)) {
            arrayList.add(composition);
        }
        removeKnownCompositionLocked(composition);
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "parentFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2", f = "Recomposer.kt", i = {0, 0, 0, 1}, l = {1011, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED}, m = "invokeSuspend", n = {"recomposeCoroutineScope", "frameSignal", "frameLoop", "frameLoop"}, s = {"L$0", "L$1", "L$2", "L$0"}, v = 1)
    static final class C05422 extends SuspendLambda implements Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineContext $recomposeCoroutineContext;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ Recomposer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05422(CoroutineContext coroutineContext, Recomposer recomposer, Continuation<? super C05422> continuation) {
            super(3, continuation);
            this.$recomposeCoroutineContext = coroutineContext;
            this.this$0 = recomposer;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(CoroutineScope coroutineScope, MonotonicFrameClock monotonicFrameClock, Continuation<? super Unit> continuation) {
            C05422 c05422 = new C05422(this.$recomposeCoroutineContext, this.this$0, continuation);
            c05422.L$0 = coroutineScope;
            c05422.L$1 = monotonicFrameClock;
            return c05422.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0204  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x022f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0230  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00d9 -> B:23:0x00db). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws Throwable {
            Object $result2;
            C05422 c05422;
            ProduceFrameSignal frameSignal;
            Job frameLoop;
            Job frameLoop2;
            CoroutineScope recomposeCoroutineScope;
            Object lock$iv$iv;
            Object obj;
            int i;
            Continuation<Unit> continuationRequestFrameLocked;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = 1;
            DefaultConstructorMarker defaultConstructorMarker = null;
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $result2 = $result;
                    CoroutineScope $this$recompositionRunner = (CoroutineScope) this.L$0;
                    MonotonicFrameClock parentFrameClock = (MonotonicFrameClock) this.L$1;
                    boolean value$iv = this.$recomposeCoroutineContext.get(Job.INSTANCE) == null;
                    CoroutineContext coroutineContext = this.$recomposeCoroutineContext;
                    if (!value$iv) {
                        PreconditionsKt.throwIllegalArgumentException("recomposeCoroutineContext may not contain a Job; found " + coroutineContext.get(Job.INSTANCE));
                    }
                    CoroutineScope recomposeCoroutineScope2 = CoroutineScopeKt.CoroutineScope($this$recompositionRunner.getCoroutineContext().plus(this.$recomposeCoroutineContext).plus(JobKt.Job(JobKt.getJob($this$recompositionRunner.getCoroutineContext()))));
                    ProduceFrameSignal frameSignal2 = new ProduceFrameSignal();
                    Job frameLoop3 = BuildersKt__Builders_commonKt.launch$default($this$recompositionRunner, null, null, new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1(this.this$0, parentFrameClock, frameSignal2, null), 3, null);
                    c05422 = this;
                    frameSignal = frameSignal2;
                    if (!c05422.this$0.getShouldKeepRecomposing()) {
                        c05422.L$0 = recomposeCoroutineScope2;
                        c05422.L$1 = frameSignal;
                        c05422.L$2 = frameLoop3;
                        c05422.label = i2;
                        if (c05422.this$0.awaitWorkAvailable(c05422) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        frameLoop2 = frameLoop3;
                        recomposeCoroutineScope = recomposeCoroutineScope2;
                        Recomposer this_$iv = c05422.this$0;
                        Recomposer recomposer = c05422.this$0;
                        lock$iv$iv = this_$iv.stateLock;
                        synchronized (lock$iv$iv) {
                            try {
                                MutableScatterSet it$iv = this_$iv.snapshotInvalidations;
                                if (it$iv.isNotEmpty()) {
                                    try {
                                        this_$iv.snapshotInvalidations = new MutableScatterSet(0, i2, defaultConstructorMarker);
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                    obj = lock$iv$iv;
                                } else {
                                    obj = lock$iv$iv;
                                }
                                Set<? extends Object> setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(it$iv);
                                if (setWrapIntoSet.isEmpty()) {
                                    i = i2;
                                } else {
                                    List $this$fastForEach$iv$iv = this_$iv.knownCompositionsLocked();
                                    i = i2;
                                    int size = $this$fastForEach$iv$iv.size();
                                    for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                                        Object item$iv$iv = $this$fastForEach$iv$iv.get(index$iv$iv);
                                        ControlledComposition composition$iv = (ControlledComposition) item$iv$iv;
                                        composition$iv.recordModificationsOf(setWrapIntoSet);
                                    }
                                }
                                MutableVector this_$iv$iv = this_$iv.compositionInvalidations;
                                Object[] content$iv$iv = this_$iv$iv.content;
                                int size$iv$iv = this_$iv$iv.getSize();
                                int i$iv$iv = 0;
                                while (i$iv$iv < size$iv$iv) {
                                    ControlledComposition composition = (ControlledComposition) content$iv$iv[i$iv$iv];
                                    Object lock$iv = recomposer.stateLock;
                                    synchronized (lock$iv) {
                                        recomposer.concurrentCompositionsOutstanding++;
                                    }
                                    Object obj2 = coroutine_suspended;
                                    BuildersKt__Builders_commonKt.launch$default(recomposeCoroutineScope, CompositionKt.getRecomposeCoroutineContext(composition), null, new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2(recomposer, composition, null), 2, null);
                                    i$iv$iv++;
                                    recomposer = recomposer;
                                    content$iv$iv = content$iv$iv;
                                    size$iv$iv = size$iv$iv;
                                    coroutine_suspended = obj2;
                                }
                                Object obj3 = coroutine_suspended;
                                this_$iv.compositionInvalidations.clear();
                                synchronized (this_$iv.stateLock) {
                                    if (this_$iv.deriveStateLocked() != null) {
                                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges".toString());
                                    }
                                    Unit unit = Unit.INSTANCE;
                                }
                                Object lock$iv2 = c05422.this$0.stateLock;
                                Recomposer recomposer2 = c05422.this$0;
                                synchronized (lock$iv2) {
                                    continuationRequestFrameLocked = recomposer2.getHasConcurrentFrameWorkLocked() ? frameSignal.requestFrameLocked() : null;
                                }
                                if (continuationRequestFrameLocked != null) {
                                    Result.Companion companion = Result.INSTANCE;
                                    continuationRequestFrameLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
                                }
                                recomposeCoroutineScope2 = recomposeCoroutineScope;
                                frameLoop3 = frameLoop2;
                                i2 = i;
                                coroutine_suspended = obj3;
                                defaultConstructorMarker = null;
                                if (!c05422.this$0.getShouldKeepRecomposing()) {
                                    c05422.L$0 = frameLoop3;
                                    defaultConstructorMarker = null;
                                    c05422.L$1 = null;
                                    c05422.L$2 = null;
                                    c05422.label = 2;
                                    if (JobKt.cancelAndJoin(JobKt.getJob(recomposeCoroutineScope2.getCoroutineContext()), c05422) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    frameLoop = frameLoop3;
                                    c05422.L$0 = defaultConstructorMarker;
                                    c05422.label = 3;
                                    return JobKt.cancelAndJoin(frameLoop, c05422) != coroutine_suspended ? coroutine_suspended : Unit.INSTANCE;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                obj = lock$iv$iv;
                            }
                            break;
                        }
                    }
                    break;
                case 1:
                    $result2 = $result;
                    Job frameLoop4 = (Job) this.L$2;
                    frameSignal = (ProduceFrameSignal) this.L$1;
                    recomposeCoroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure($result2);
                    frameLoop2 = frameLoop4;
                    c05422 = this;
                    Recomposer this_$iv2 = c05422.this$0;
                    Recomposer recomposer3 = c05422.this$0;
                    lock$iv$iv = this_$iv2.stateLock;
                    synchronized (lock$iv$iv) {
                    }
                    break;
                case 2:
                    $result2 = $result;
                    frameLoop = (Job) this.L$0;
                    ResultKt.throwOnFailure($result2);
                    c05422 = this;
                    c05422.L$0 = defaultConstructorMarker;
                    c05422.label = 3;
                    if (JobKt.cancelAndJoin(frameLoop, c05422) != coroutine_suspended) {
                    }
                    break;
                case 3:
                    ResultKt.throwOnFailure($result);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object runRecomposeConcurrentlyAndApplyChanges(CoroutineContext recomposeCoroutineContext, Continuation<? super Unit> continuation) {
        Object objRecompositionRunner = recompositionRunner(new C05422(recomposeCoroutineContext, this, null), continuation);
        return objRecompositionRunner == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRecompositionRunner : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0083 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00a1 -> B:15:0x006f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runFrameLoop(MonotonicFrameClock parentFrameClock, ProduceFrameSignal frameSignal, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        Recomposer recomposer;
        ArrayList toRecompose;
        ArrayList toApply;
        final Recomposer recomposer2;
        final List toApply2;
        final List toRecompose2;
        final ProduceFrameSignal frameSignal2;
        MonotonicFrameClock parentFrameClock2;
        Function1 function1;
        Object obj;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                recomposer = this;
                toRecompose = new ArrayList();
                toApply = new ArrayList();
                obj = recomposer.stateLock;
                anonymousClass1.L$0 = parentFrameClock;
                anonymousClass1.L$1 = frameSignal;
                anonymousClass1.L$2 = toRecompose;
                anonymousClass1.L$3 = toApply;
                anonymousClass1.label = 1;
                if (frameSignal.awaitFrameRequest(obj, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                List list = toApply;
                parentFrameClock2 = parentFrameClock;
                recomposer2 = recomposer;
                toRecompose2 = toRecompose;
                frameSignal2 = frameSignal;
                toApply2 = list;
                function1 = new Function1() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return Recomposer.runFrameLoop$lambda$0(this.f$0, toRecompose2, toApply2, frameSignal2, ((Long) obj2).longValue());
                    }
                };
                anonymousClass1.L$0 = parentFrameClock2;
                anonymousClass1.L$1 = frameSignal2;
                anonymousClass1.L$2 = toRecompose2;
                anonymousClass1.L$3 = toApply2;
                anonymousClass1.label = 2;
                if (parentFrameClock2.withFrameNanos(function1, anonymousClass1) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                List list2 = toRecompose2;
                recomposer = recomposer2;
                parentFrameClock = parentFrameClock2;
                toApply = toApply2;
                frameSignal = frameSignal2;
                toRecompose = list2;
                obj = recomposer.stateLock;
                anonymousClass1.L$0 = parentFrameClock;
                anonymousClass1.L$1 = frameSignal;
                anonymousClass1.L$2 = toRecompose;
                anonymousClass1.L$3 = toApply;
                anonymousClass1.label = 1;
                if (frameSignal.awaitFrameRequest(obj, anonymousClass1) == coroutine_suspended) {
                }
                break;
            case 1:
                recomposer2 = this;
                toApply2 = (List) anonymousClass1.L$3;
                toRecompose2 = (List) anonymousClass1.L$2;
                frameSignal2 = (ProduceFrameSignal) anonymousClass1.L$1;
                parentFrameClock2 = (MonotonicFrameClock) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                function1 = new Function1() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return Recomposer.runFrameLoop$lambda$0(this.f$0, toRecompose2, toApply2, frameSignal2, ((Long) obj2).longValue());
                    }
                };
                anonymousClass1.L$0 = parentFrameClock2;
                anonymousClass1.L$1 = frameSignal2;
                anonymousClass1.L$2 = toRecompose2;
                anonymousClass1.L$3 = toApply2;
                anonymousClass1.label = 2;
                if (parentFrameClock2.withFrameNanos(function1, anonymousClass1) != coroutine_suspended) {
                }
                break;
            case 2:
                List toApply3 = (List) anonymousClass1.L$3;
                List toRecompose3 = (List) anonymousClass1.L$2;
                ProduceFrameSignal frameSignal3 = (ProduceFrameSignal) anonymousClass1.L$1;
                MonotonicFrameClock parentFrameClock3 = (MonotonicFrameClock) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                recomposer = this;
                parentFrameClock = parentFrameClock3;
                toApply = toApply3;
                frameSignal = frameSignal3;
                toRecompose = toRecompose3;
                obj = recomposer.stateLock;
                anonymousClass1.L$0 = parentFrameClock;
                anonymousClass1.L$1 = frameSignal;
                anonymousClass1.L$2 = toRecompose;
                anonymousClass1.L$3 = toApply;
                anonymousClass1.label = 1;
                if (frameSignal.awaitFrameRequest(obj, anonymousClass1) == coroutine_suspended) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final CancellableContinuation runFrameLoop$lambda$0(Recomposer this$0, List $toRecompose, List $toApply, ProduceFrameSignal $frameSignal, long frameTime) throws Throwable {
        Object token$iv;
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        List $this$fastForEach$iv;
        if (this$0.getHasBroadcastFrameClockAwaiters()) {
            token$iv = Trace.INSTANCE.beginSection("Recomposer:animation");
            try {
                try {
                    this$0.broadcastFrameClock.sendFrame(frameTime);
                    Snapshot.INSTANCE.sendApplyNotifications();
                    Unit unit = Unit.INSTANCE;
                    Trace.INSTANCE.endSection(token$iv);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        token$iv = Trace.INSTANCE.beginSection("Recomposer:recompose");
        try {
            this$0.recordComposerModifications();
            Object lock$iv = this$0.stateLock;
            synchronized (lock$iv) {
                int i = 0;
                List<ControlledComposition> list = this$0.compositionsAwaitingApply;
                int index$iv = 0;
                int size = list.size();
                while (index$iv < size) {
                    Object item$iv = list.get(index$iv);
                    $toApply.add((ControlledComposition) item$iv);
                    index$iv++;
                    i = i;
                }
                this$0.compositionsAwaitingApply.clear();
                MutableVector<ControlledComposition> mutableVector = this$0.compositionInvalidations;
                int i$iv = 0;
                Object[] content$iv = mutableVector.content;
                int size$iv = mutableVector.getSize();
                while (i$iv < size$iv) {
                    $toRecompose.add((ControlledComposition) content$iv[i$iv]);
                    i$iv++;
                    mutableVector = mutableVector;
                }
                this$0.compositionInvalidations.clear();
                $frameSignal.takeFrameRequestLocked();
                Unit unit2 = Unit.INSTANCE;
            }
            MutableScatterSet<Object> mutableScatterSet = new MutableScatterSet<>(0, 1, null);
            List $this$fastForEach$iv2 = $toRecompose;
            int index$iv2 = 0;
            try {
                int size2 = $this$fastForEach$iv2.size();
                while (index$iv2 < size2) {
                    Object item$iv2 = $this$fastForEach$iv2.get(index$iv2);
                    ControlledComposition composer = (ControlledComposition) item$iv2;
                    ControlledComposition it = this$0.performRecompose(composer, mutableScatterSet);
                    if (it != null) {
                        $this$fastForEach$iv = $this$fastForEach$iv2;
                        $toApply.add(it);
                    } else {
                        $this$fastForEach$iv = $this$fastForEach$iv2;
                    }
                    index$iv2++;
                    $this$fastForEach$iv2 = $this$fastForEach$iv;
                }
                $toRecompose.clear();
                if (!$toApply.isEmpty()) {
                    this$0.changeCount++;
                }
                try {
                    int size3 = $toApply.size();
                    for (int index$iv3 = 0; index$iv3 < size3; index$iv3++) {
                        Object item$iv3 = $toApply.get(index$iv3);
                        ControlledComposition composition = (ControlledComposition) item$iv3;
                        composition.applyChanges();
                    }
                    $toApply.clear();
                    Object lock$iv2 = this$0.stateLock;
                    synchronized (lock$iv2) {
                        cancellableContinuationDeriveStateLocked = this$0.deriveStateLocked();
                    }
                    return cancellableContinuationDeriveStateLocked;
                } catch (Throwable th3) {
                    $toApply.clear();
                    throw th3;
                }
            } catch (Throwable th4) {
                $toRecompose.clear();
                throw th4;
            }
        } finally {
            Trace.INSTANCE.endSection(token$iv);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasSchedulingWork() {
        boolean z;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            z = true;
            if (!this.snapshotInvalidations.isNotEmpty()) {
                if (!(this.compositionInvalidations.getSize() != 0) && !getHasBroadcastFrameClockAwaitersLocked()) {
                    if (!getHasNextFrameEndAwaitersLocked()) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitWorkAvailable(Continuation<? super Unit> continuation) {
        CancellableContinuation cancellableContinuation;
        if (getHasSchedulingWork()) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellable$iv.initCancellability();
        CancellableContinuationImpl co2 = cancellable$iv;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            if (!getHasSchedulingWork()) {
                this.workContinuation = co2;
                cancellableContinuation = null;
            } else {
                cancellableContinuation = co2;
            }
        }
        if (cancellableContinuation != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
        Object result = cancellable$iv.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", i = {0, 0}, l = {1173}, m = "invokeSuspend", n = {"callingJob", "unregisterApplyObserver"}, s = {"L$0", "L$1"}, v = 1)
    static final class C05402 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ MonotonicFrameClock $parentFrameClock;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C05402(Function3<? super CoroutineScope, ? super MonotonicFrameClock, ? super Continuation<? super Unit>, ? extends Object> function3, MonotonicFrameClock monotonicFrameClock, Continuation<? super C05402> continuation) {
            super(2, continuation);
            this.$block = function3;
            this.$parentFrameClock = monotonicFrameClock;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05402 c05402 = Recomposer.this.new C05402(this.$block, this.$parentFrameClock, continuation);
            c05402.L$0 = obj;
            return c05402;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05402) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00cb  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws Throwable {
            Job callingJob;
            Throwable th;
            ObserverHandle unregisterApplyObserver;
            Object lock$iv;
            Object lock$iv2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineScope $this$withContext = (CoroutineScope) this.L$0;
                    callingJob = JobKt.getJob($this$withContext.getCoroutineContext());
                    Recomposer.this.registerRunnerJob(callingJob);
                    Snapshot.Companion companion = Snapshot.INSTANCE;
                    final Recomposer recomposer = Recomposer.this;
                    ObserverHandle unregisterApplyObserver2 = companion.registerApplyObserver(new Function2() { // from class: androidx.compose.runtime.Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return Recomposer.C05402.invokeSuspend$lambda$0(recomposer, (Set) obj, (Snapshot) obj2);
                        }
                    });
                    Recomposer.INSTANCE.addRunning(Recomposer.this.recomposerInfo);
                    try {
                        List $this$fastForEach$iv = Recomposer.this.knownCompositions();
                        int size = $this$fastForEach$iv.size();
                        for (int index$iv = 0; index$iv < size; index$iv++) {
                            Object item$iv = $this$fastForEach$iv.get(index$iv);
                            ControlledComposition it = (ControlledComposition) item$iv;
                            it.invalidateAll();
                        }
                        this.L$0 = callingJob;
                        this.L$1 = unregisterApplyObserver2;
                        this.label = 1;
                        if (CoroutineScopeKt.coroutineScope(new C01192(this.$block, this.$parentFrameClock, null), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        unregisterApplyObserver = unregisterApplyObserver2;
                        unregisterApplyObserver.dispose();
                        lock$iv2 = Recomposer.this.stateLock;
                        Recomposer recomposer2 = Recomposer.this;
                        synchronized (lock$iv2) {
                            if (recomposer2.runnerJob == callingJob) {
                                recomposer2.runnerJob = null;
                            }
                            recomposer2.deriveStateLocked();
                        }
                        Recomposer.INSTANCE.removeRunning(Recomposer.this.recomposerInfo);
                        return Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        unregisterApplyObserver = unregisterApplyObserver2;
                        unregisterApplyObserver.dispose();
                        lock$iv = Recomposer.this.stateLock;
                        Recomposer recomposer3 = Recomposer.this;
                        synchronized (lock$iv) {
                            if (recomposer3.runnerJob == callingJob) {
                                recomposer3.runnerJob = null;
                            }
                            recomposer3.deriveStateLocked();
                        }
                        Recomposer.INSTANCE.removeRunning(Recomposer.this.recomposerInfo);
                        throw th;
                    }
                case 1:
                    unregisterApplyObserver = (ObserverHandle) this.L$1;
                    callingJob = (Job) this.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        unregisterApplyObserver.dispose();
                        lock$iv2 = Recomposer.this.stateLock;
                        Recomposer recomposer22 = Recomposer.this;
                        synchronized (lock$iv2) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        unregisterApplyObserver.dispose();
                        lock$iv = Recomposer.this.stateLock;
                        Recomposer recomposer32 = Recomposer.this;
                        synchronized (lock$iv) {
                        }
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x0126 A[Catch: all -> 0x0133, TryCatch #2 {all -> 0x0133, blocks: (B:24:0x0091, B:26:0x0095, B:35:0x00bc, B:30:0x00ab, B:41:0x00d6, B:56:0x012d, B:45:0x00f1, B:46:0x0104, B:48:0x010a, B:50:0x0115, B:53:0x0126), top: B:74:0x0026 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        static final Unit invokeSuspend$lambda$0(Recomposer this$0, Set changed, Snapshot snapshot) throws Throwable {
            Object lock$iv;
            CancellableContinuation cancellableContinuationDeriveStateLocked;
            int $i$f$synchronized;
            Set $this$fastForEach$iv;
            int i;
            int $i$f$synchronized2;
            Set $this$fastForEach$iv2;
            Object lock$iv2 = this$0.stateLock;
            int $i$f$synchronized3 = 0;
            synchronized (lock$iv2) {
                int i2 = 0;
                try {
                    if (((State) this$0._state.getValue()).compareTo(State.Idle) >= 0) {
                        MutableScatterSet snapshotInvalidations = this$0.snapshotInvalidations;
                        Set $this$fastForEach$iv3 = changed;
                        try {
                            if ($this$fastForEach$iv3 instanceof ScatterSetWrapper) {
                                ScatterSet this_$iv$iv = ((ScatterSetWrapper) $this$fastForEach$iv3).getSet$runtime();
                                int $i$f$forEach = 0;
                                Object[] elements$iv$iv = this_$iv$iv.elements;
                                long[] m$iv$iv$iv = this_$iv$iv.metadata;
                                int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
                                int i$iv$iv$iv = 0;
                                if (0 <= lastIndex$iv$iv$iv) {
                                    while (true) {
                                        long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
                                        int $i$f$forEach2 = $i$f$forEach;
                                        int i3 = i2;
                                        lock$iv = lock$iv2;
                                        if ((((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i4 = 8;
                                            int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                                            int j$iv$iv$iv = 0;
                                            while (j$iv$iv$iv < bitCount$iv$iv$iv) {
                                                long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                                                if (value$iv$iv$iv$iv < 128) {
                                                    int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                                                    try {
                                                        Object it = elements$iv$iv[index$iv$iv$iv];
                                                        i = i4;
                                                        $i$f$synchronized2 = $i$f$synchronized3;
                                                        if (it instanceof StateObjectImpl) {
                                                            ReaderKind.Companion companion = ReaderKind.INSTANCE;
                                                            $this$fastForEach$iv2 = $this$fastForEach$iv3;
                                                            if (!((StateObjectImpl) it).m4158isReadInh_f27i8$runtime(ReaderKind.m4146constructorimpl(1))) {
                                                            }
                                                        } else {
                                                            $this$fastForEach$iv2 = $this$fastForEach$iv3;
                                                        }
                                                        snapshotInvalidations.add(it);
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        throw th;
                                                    }
                                                } else {
                                                    i = i4;
                                                    $i$f$synchronized2 = $i$f$synchronized3;
                                                    $this$fastForEach$iv2 = $this$fastForEach$iv3;
                                                }
                                                slot$iv$iv$iv >>= i;
                                                j$iv$iv$iv++;
                                                $i$f$synchronized3 = $i$f$synchronized2;
                                                i4 = i;
                                                $this$fastForEach$iv3 = $this$fastForEach$iv2;
                                            }
                                            $i$f$synchronized = $i$f$synchronized3;
                                            $this$fastForEach$iv = $this$fastForEach$iv3;
                                            if (bitCount$iv$iv$iv != i4) {
                                                break;
                                            }
                                        } else {
                                            $i$f$synchronized = $i$f$synchronized3;
                                            $this$fastForEach$iv = $this$fastForEach$iv3;
                                        }
                                        if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                                            break;
                                        }
                                        i$iv$iv$iv++;
                                        lock$iv2 = lock$iv;
                                        i2 = i3;
                                        $i$f$forEach = $i$f$forEach2;
                                        $i$f$synchronized3 = $i$f$synchronized;
                                        $this$fastForEach$iv3 = $this$fastForEach$iv;
                                    }
                                } else {
                                    lock$iv = lock$iv2;
                                }
                            } else {
                                lock$iv = lock$iv2;
                                Set $this$forEach$iv$iv = $this$fastForEach$iv3;
                                for (Object element$iv$iv : $this$forEach$iv$iv) {
                                    if (element$iv$iv instanceof StateObjectImpl) {
                                        ReaderKind.Companion companion2 = ReaderKind.INSTANCE;
                                        if (((StateObjectImpl) element$iv$iv).m4158isReadInh_f27i8$runtime(ReaderKind.m4146constructorimpl(1))) {
                                            snapshotInvalidations.add(element$iv$iv);
                                        }
                                    }
                                }
                            }
                            cancellableContinuationDeriveStateLocked = this$0.deriveStateLocked();
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        lock$iv = lock$iv2;
                        cancellableContinuationDeriveStateLocked = null;
                    }
                    if (cancellableContinuationDeriveStateLocked != null) {
                        Result.Companion companion3 = Result.INSTANCE;
                        cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    lock$iv = lock$iv2;
                }
            }
        }

        /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Recomposer.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$2", f = "Recomposer.kt", i = {}, l = {1173}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class C01192 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> $block;
            final /* synthetic */ MonotonicFrameClock $parentFrameClock;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C01192(Function3<? super CoroutineScope, ? super MonotonicFrameClock, ? super Continuation<? super Unit>, ? extends Object> function3, MonotonicFrameClock monotonicFrameClock, Continuation<? super C01192> continuation) {
                super(2, continuation);
                this.$block = function3;
                this.$parentFrameClock = monotonicFrameClock;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C01192 c01192 = new C01192(this.$block, this.$parentFrameClock, continuation);
                c01192.L$0 = obj;
                return c01192;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01192) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                        Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> function3 = this.$block;
                        MonotonicFrameClock monotonicFrameClock = this.$parentFrameClock;
                        this.label = 1;
                        if (function3.invoke($this$coroutineScope, monotonicFrameClock, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Object recompositionRunner(Function3<? super CoroutineScope, ? super MonotonicFrameClock, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        MonotonicFrameClock parentFrameClock = MonotonicFrameClockKt.getMonotonicFrameClock(continuation.getContext());
        Object objWithContext = BuildersKt.withContext(this.broadcastFrameClock, new C05402(function3, parentFrameClock, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final void cancel() {
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            if (this._state.getValue().compareTo(State.Idle) >= 0) {
                this._state.setValue(State.ShuttingDown);
            }
            Unit unit = Unit.INSTANCE;
        }
        Job.DefaultImpls.cancel$default((Job) this.effectJob, (CancellationException) null, 1, (Object) null);
    }

    public final void close() {
        if (this.effectJob.complete()) {
            Object lock$iv = this.stateLock;
            synchronized (lock$iv) {
                this.isClosed = true;
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$join$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/runtime/Recomposer$State;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$join$2", f = "Recomposer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C05392 extends SuspendLambda implements Function2<State, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C05392(Continuation<? super C05392> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05392 c05392 = new C05392(continuation);
            c05392.L$0 = obj;
            return c05392;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State state, Continuation<? super Boolean> continuation) {
            return ((C05392) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    State it = (State) this.L$0;
                    return Boxing.boxBoolean(it == State.ShutDown);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object join(Continuation<? super Unit> continuation) {
        Object objFirst = FlowKt.first(getCurrentState(), new C05392(null), continuation);
        return objFirst == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFirst : Unit.INSTANCE;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public CancellationHandle scheduleFrameEndCallback(Function0<Unit> action) {
        return this.nextFrameEndCallbackQueue.scheduleFrameEndCallback(action);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void composeInitial$runtime(ControlledComposition composition, Function2<? super Composer, ? super Integer, Unit> content) throws Throwable {
        boolean newComposition;
        Recomposer recomposer;
        boolean composerWasComposing = composition.isComposing();
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            if (this._state.getValue().compareTo(State.ShuttingDown) > 0) {
                newComposition = !knownCompositionsLocked().contains(composition);
                if (newComposition) {
                    registerCompositionLocked(composition);
                }
            } else {
                newComposition = true;
            }
        }
        try {
            MutableSnapshot snapshot$iv = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition), writeObserverOf(composition, null));
            try {
                MutableSnapshot this_$iv$iv = snapshot$iv;
                Snapshot previous$iv$iv = this_$iv$iv.makeCurrent();
                try {
                    composition.composeContent(content);
                    Unit unit = Unit.INSTANCE;
                    this_$iv$iv.restoreCurrent(previous$iv$iv);
                    applyAndCheck(snapshot$iv);
                    Object lock$iv2 = this.stateLock;
                    synchronized (lock$iv2) {
                        if (this._state.getValue().compareTo(State.ShuttingDown) > 0) {
                            if (!knownCompositionsLocked().contains(composition)) {
                                addKnownCompositionLocked(composition);
                            }
                        } else {
                            unregisterCompositionLocked(composition);
                        }
                        Unit unit2 = Unit.INSTANCE;
                    }
                    if (!composerWasComposing) {
                        Snapshot.INSTANCE.notifyObjectsInitialized();
                    }
                    try {
                        performInitialMovableContentInserts(composition);
                        try {
                            composition.applyChanges();
                            composition.applyLateChanges();
                            if (!composerWasComposing) {
                                Snapshot.INSTANCE.notifyObjectsInitialized();
                            }
                        } catch (Throwable e) {
                            processCompositionError$default(this, e, null, false, 6, null);
                        }
                    } catch (Throwable e2) {
                        processCompositionError(e2, composition, true);
                    }
                } catch (Throwable th) {
                    recomposer = this;
                    try {
                        this_$iv$iv.restoreCurrent(previous$iv$iv);
                        throw th;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            applyAndCheck(snapshot$iv);
                            throw th;
                        } catch (Throwable th3) {
                            th = th3;
                            Throwable e3 = th;
                            if (newComposition) {
                                Object lock$iv3 = recomposer.stateLock;
                                synchronized (lock$iv3) {
                                    unregisterCompositionLocked(composition);
                                    Unit unit3 = Unit.INSTANCE;
                                }
                            }
                            processCompositionError(e3, composition, true);
                        }
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                recomposer = this;
            }
        } catch (Throwable th5) {
            th = th5;
            recomposer = this;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(ControlledComposition composition, ShouldPauseCallback shouldPause, Function2<? super Composer, ? super Integer, Unit> content) {
        try {
            ShouldPauseCallback previous$iv = composition.getAndSetShouldPauseCallback(shouldPause);
            try {
                composeInitial$runtime(composition, content);
                MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.pausedScopes.get();
                return mutableScatterSet != null ? mutableScatterSet : ScatterSetKt.emptyScatterSet();
            } finally {
                composition.getAndSetShouldPauseCallback(previous$iv);
            }
        } finally {
            this.pausedScopes.set(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(ControlledComposition composition, ShouldPauseCallback shouldPause, ScatterSet<RecomposeScopeImpl> invalidScopes) {
        try {
            recordComposerModifications();
            composition.recordModificationsOf(ScatterSetWrapperKt.wrapIntoSet(invalidScopes));
            ShouldPauseCallback previous$iv = composition.getAndSetShouldPauseCallback(shouldPause);
            try {
                ControlledComposition needsApply = performRecompose(composition, null);
                if (needsApply != null) {
                    performInitialMovableContentInserts(composition);
                    needsApply.applyChanges();
                    needsApply.applyLateChanges();
                }
                MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.pausedScopes.get();
                return mutableScatterSet != null ? mutableScatterSet : ScatterSetKt.emptyScatterSet();
            } finally {
                composition.getAndSetShouldPauseCallback(previous$iv);
            }
        } finally {
            this.pausedScopes.set(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportPausedScope$runtime(RecomposeScopeImpl scope) {
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.pausedScopes.get();
        if (mutableScatterSet == null) {
            Recomposer $this$reportPausedScope_u24lambda_u240 = this;
            MutableScatterSet<RecomposeScopeImpl> mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
            $this$reportPausedScope_u24lambda_u240.pausedScopes.set(mutableScatterSetMutableScatterSetOf);
            mutableScatterSet = mutableScatterSetMutableScatterSetOf;
        }
        mutableScatterSet.add(scope);
    }

    private final void performInitialMovableContentInserts(ControlledComposition composition) throws Throwable {
        boolean z;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            int i = 0;
            List<MovableContentStateReference> list = this.movableContentAwaitingInsert;
            int index$iv$iv = 0;
            int size = list.size();
            while (true) {
                if (index$iv$iv >= size) {
                    z = false;
                    break;
                }
                Object item$iv$iv = list.get(index$iv$iv);
                MovableContentStateReference it = (MovableContentStateReference) item$iv$iv;
                int i2 = i;
                if (Intrinsics.areEqual(it.getComposition(), composition)) {
                    z = true;
                    break;
                } else {
                    index$iv$iv++;
                    i = i2;
                }
            }
            if (z) {
                Unit unit = Unit.INSTANCE;
                List toInsert = new ArrayList();
                performInitialMovableContentInserts$fillToInsert(toInsert, this, composition);
                while (!toInsert.isEmpty()) {
                    performInsertValues(toInsert, null);
                    performInitialMovableContentInserts$fillToInsert(toInsert, this, composition);
                }
            }
        }
    }

    private static final void performInitialMovableContentInserts$fillToInsert(List<MovableContentStateReference> list, Recomposer this$0, ControlledComposition $composition) {
        list.clear();
        Object lock$iv = this$0.stateLock;
        synchronized (lock$iv) {
            Iterator<MovableContentStateReference> it = this$0.movableContentAwaitingInsert.iterator();
            while (it.hasNext()) {
                MovableContentStateReference value = it.next();
                if (Intrinsics.areEqual(value.getComposition(), $composition)) {
                    list.add(value);
                    it.remove();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ControlledComposition performRecompose(final ControlledComposition composition, final MutableScatterSet<Object> modifiedValues) {
        if (!composition.isComposing() && !composition.isDisposed()) {
            Set<ControlledComposition> set = this.compositionsRemoved;
            boolean z = true;
            if (!(set != null && set.contains(composition))) {
                MutableSnapshot snapshot$iv = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition), writeObserverOf(composition, modifiedValues));
                try {
                    MutableSnapshot this_$iv$iv = snapshot$iv;
                    Snapshot previous$iv$iv = this_$iv$iv.makeCurrent();
                    if (modifiedValues != null) {
                        try {
                            if (!modifiedValues.isNotEmpty()) {
                                z = false;
                            }
                        } catch (Throwable th) {
                            this_$iv$iv.restoreCurrent(previous$iv$iv);
                            throw th;
                        }
                    }
                    if (z) {
                        composition.prepareCompose(new Function0() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda7
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Recomposer.performRecompose$lambda$0$0(modifiedValues, composition);
                            }
                        });
                    }
                    boolean zRecompose = composition.recompose();
                    this_$iv$iv.restoreCurrent(previous$iv$iv);
                    if (zRecompose) {
                        return composition;
                    }
                    return null;
                } finally {
                    applyAndCheck(snapshot$iv);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit performRecompose$lambda$0$0(MutableScatterSet $modifiedValues, ControlledComposition $composition) {
        ScatterSet this_$iv;
        ScatterSet this_$iv2;
        int i;
        MutableScatterSet this_$iv3 = $modifiedValues;
        Object[] elements$iv = this_$iv3.elements;
        long[] m$iv$iv = this_$iv3.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 <= lastIndex$iv$iv) {
            while (true) {
                long slot$iv$iv = m$iv$iv[i$iv$iv];
                long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                    this_$iv = this_$iv3;
                } else {
                    int i2 = 8;
                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                    int j$iv$iv = 0;
                    while (j$iv$iv < bitCount$iv$iv) {
                        long value$iv$iv$iv = 255 & slot$iv$iv;
                        if (!(value$iv$iv$iv < 128)) {
                            this_$iv2 = this_$iv3;
                            i = i2;
                        } else {
                            int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                            i = i2;
                            Object it = elements$iv[index$iv$iv];
                            this_$iv2 = this_$iv3;
                            $composition.recordWriteOf(it);
                        }
                        slot$iv$iv >>= i;
                        j$iv$iv++;
                        i2 = i;
                        this_$iv3 = this_$iv2;
                    }
                    this_$iv = this_$iv3;
                    if (bitCount$iv$iv != i2) {
                        break;
                    }
                }
                if (i$iv$iv == lastIndex$iv$iv) {
                    break;
                }
                i$iv$iv++;
                this_$iv3 = this_$iv;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(19:12|(1:14)|15|150|16|17|157|18|b7|68|69|(1:(3:71|(1:73)(1:74)|(2:179|76)(1:77))(2:178|78))|(6:80|(1:(3:82|(1:84)(1:85)|(2:181|87)(1:88))(2:180|89))|(1:91)(13:92|(4:94|(1:96)(1:97)|(2:99|184)(2:100|183)|101)|182|102|318|107|(4:109|(1:111)(1:112)|(2:114|187)(2:115|186)|116)|185|117|123|163|124|125)|140|144|145)(1:121)|122|123|163|124|125|10) */
    /* JADX WARN: Removed duplicated region for block: B:174:0x018f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0191 A[Catch: all -> 0x03a1, LOOP:3: B:38:0x0155->B:49:0x0191, LOOP_END, TryCatch #0 {all -> 0x03a1, blocks: (B:30:0x010d, B:32:0x0115, B:35:0x0130, B:37:0x0141, B:39:0x0157, B:41:0x016f, B:52:0x01a3, B:54:0x01c3, B:56:0x01dc, B:62:0x021e, B:59:0x01f6, B:63:0x022b, B:49:0x0191), top: B:148:0x010d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<ControlledComposition> performInsertValues(List<MovableContentStateReference> references, MutableScatterSet<Object> modifiedValues) throws Throwable {
        MutableSnapshot this_$iv$iv;
        Snapshot previous$iv$iv;
        Iterator it;
        Map tasks;
        List pairs;
        ArrayList $this$fastAll$iv;
        boolean z;
        List pairs2;
        ArrayList toInsert;
        boolean z2;
        int i;
        int index$iv$iv;
        int i2;
        int index$iv$iv2;
        boolean z3;
        int index$iv$iv3;
        ArrayList target$iv;
        List $this$fastForEach$iv$iv;
        Pair<MovableContentStateReference, MovableContentStateReference> pair;
        int index$iv$iv4;
        List $this$fastForEach$iv$iv2;
        int index$iv$iv5;
        MutableScatterSet<Object> mutableScatterSet;
        List<MovableContentStateReference> list;
        Object answer$iv$iv;
        Recomposer recomposer = this;
        List<MovableContentStateReference> list2 = references;
        Map destination$iv = new HashMap(list2.size());
        int index$iv$iv6 = 0;
        int size = list2.size();
        while (index$iv$iv6 < size) {
            MovableContentStateReference it2 = list2.get(index$iv$iv6);
            ControlledComposition composition = it2.getComposition();
            Map $this$getOrPut$iv$iv = destination$iv;
            Object value$iv$iv = $this$getOrPut$iv$iv.get(composition);
            if (value$iv$iv == null) {
                answer$iv$iv = new ArrayList();
                list = list2;
                $this$getOrPut$iv$iv.put(composition, answer$iv$iv);
            } else {
                list = list2;
                answer$iv$iv = value$iv$iv;
            }
            ArrayList list$iv = (ArrayList) answer$iv$iv;
            list$iv.add(it2);
            index$iv$iv6++;
            list2 = list;
        }
        Map tasks2 = destination$iv;
        Iterator it3 = tasks2.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            ControlledComposition composition2 = (ControlledComposition) entry.getKey();
            List refs = (List) entry.getValue();
            boolean value$iv = !composition2.isComposing();
            if (!value$iv) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            MutableScatterSet<Object> mutableScatterSet2 = modifiedValues;
            MutableSnapshot snapshot$iv = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition2), writeObserverOf(composition2, mutableScatterSet2));
            try {
                this_$iv$iv = snapshot$iv;
                previous$iv$iv = this_$iv$iv.makeCurrent();
            } catch (Throwable th) {
                th = th;
            }
            try {
                Object lock$iv = recomposer.stateLock;
                synchronized (lock$iv) {
                    try {
                        it = it3;
                        List target$iv2 = new ArrayList(refs.size());
                        List $this$fastForEach$iv$iv3 = refs;
                        tasks = tasks2;
                        try {
                            int size2 = $this$fastForEach$iv$iv3.size();
                            int index$iv$iv7 = 0;
                            while (index$iv$iv7 < size2) {
                                try {
                                    Object item$iv$iv = $this$fastForEach$iv$iv3.get(index$iv$iv7);
                                    List $this$fastForEach$iv$iv4 = $this$fastForEach$iv$iv3;
                                    List list3 = target$iv2;
                                    MovableContentStateReference reference = (MovableContentStateReference) item$iv$iv;
                                    int i3 = size2;
                                    int index$iv$iv8 = index$iv$iv7;
                                    Object objM4058removeLastimpl = MultiValueMap.m4058removeLastimpl(recomposer.movableContentRemoved, reference.getContent$runtime());
                                    MovableContentStateReference it4 = (MovableContentStateReference) objM4058removeLastimpl;
                                    if (it4 != null) {
                                        mutableScatterSet = mutableScatterSet2;
                                        try {
                                            recomposer.movableContentNestedStatesAvailable.usedContainer(it4);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            throw th;
                                        }
                                    } else {
                                        mutableScatterSet = mutableScatterSet2;
                                    }
                                    list3.add(TuplesKt.to(reference, objM4058removeLastimpl));
                                    index$iv$iv7 = index$iv$iv8 + 1;
                                    $this$fastForEach$iv$iv3 = $this$fastForEach$iv$iv4;
                                    size2 = i3;
                                    mutableScatterSet2 = mutableScatterSet;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            List pairs3 = target$iv2;
                            int i4 = 0;
                            try {
                                if (ComposeRuntimeFlags.isMovingNestedMovableContentEnabled) {
                                    List $this$fastForEach$iv$iv5 = pairs3;
                                    int size3 = $this$fastForEach$iv$iv5.size();
                                    pairs = pairs3;
                                    int index$iv$iv9 = 0;
                                    while (true) {
                                        if (index$iv$iv9 >= size3) {
                                            z3 = false;
                                            break;
                                        }
                                        int i5 = i4;
                                        List $this$fastForEach$iv$iv6 = $this$fastForEach$iv$iv5;
                                        Object item$iv$iv2 = $this$fastForEach$iv$iv6.get(index$iv$iv9);
                                        Pair<MovableContentStateReference, MovableContentStateReference> pair2 = (Pair) item$iv$iv2;
                                        if (pair2.getSecond() == null) {
                                            index$iv$iv4 = index$iv$iv9;
                                            $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv6;
                                            index$iv$iv5 = recomposer.movableContentNestedStatesAvailable.contains(pair2.getFirst().getContent$runtime()) ? 1 : 0;
                                            if (index$iv$iv5 == 0) {
                                                z3 = true;
                                                break;
                                            }
                                            index$iv$iv9 = index$iv$iv4 + 1;
                                            i4 = i5;
                                            $this$fastForEach$iv$iv5 = $this$fastForEach$iv$iv2;
                                        } else {
                                            index$iv$iv4 = index$iv$iv9;
                                            $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv6;
                                        }
                                        if (index$iv$iv5 == 0) {
                                        }
                                    }
                                    if (z3) {
                                        ArrayList target$iv3 = new ArrayList(pairs.size());
                                        List $this$fastForEach$iv$iv7 = pairs;
                                        int size4 = $this$fastForEach$iv$iv7.size();
                                        int $i$f$fastMap = 0;
                                        while ($i$f$fastMap < size4) {
                                            Object item$iv$iv3 = $this$fastForEach$iv$iv7.get($i$f$fastMap);
                                            int i6 = size4;
                                            ArrayList arrayList = target$iv3;
                                            Pair<MovableContentStateReference, MovableContentStateReference> pair3 = (Pair) item$iv$iv3;
                                            if (pair3.getSecond() == null) {
                                                index$iv$iv3 = $i$f$fastMap;
                                                target$iv = target$iv3;
                                                NestedMovableContent nestedContentReference = recomposer.movableContentNestedStatesAvailable.removeLast(pair3.getFirst().getContent$runtime());
                                                if (nestedContentReference == null) {
                                                    $this$fastForEach$iv$iv = $this$fastForEach$iv$iv7;
                                                } else {
                                                    MovableContentStateReference content = nestedContentReference.getContent();
                                                    MovableContentStateReference container = nestedContentReference.getContainer();
                                                    $this$fastForEach$iv$iv = $this$fastForEach$iv$iv7;
                                                    MultiValueMap.m4043addimpl(recomposer.movableContentNestedExtractionsPending, container, content);
                                                    pair = TuplesKt.to(pair3.getFirst(), content);
                                                    arrayList.add(pair);
                                                    $i$f$fastMap = index$iv$iv3 + 1;
                                                    size4 = i6;
                                                    target$iv3 = target$iv;
                                                    $this$fastForEach$iv$iv7 = $this$fastForEach$iv$iv;
                                                }
                                            } else {
                                                index$iv$iv3 = $i$f$fastMap;
                                                target$iv = target$iv3;
                                                $this$fastForEach$iv$iv = $this$fastForEach$iv$iv7;
                                            }
                                            pair = pair3;
                                            arrayList.add(pair);
                                            $i$f$fastMap = index$iv$iv3 + 1;
                                            size4 = i6;
                                            target$iv3 = target$iv;
                                            $this$fastForEach$iv$iv7 = $this$fastForEach$iv$iv;
                                        }
                                        $this$fastAll$iv = target$iv3;
                                    }
                                } else {
                                    pairs = pairs3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                this_$iv$iv.restoreCurrent(previous$iv$iv);
                                throw th;
                            }
                            $this$fastAll$iv = pairs;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                }
                List pairs4 = $this$fastAll$iv;
                List $this$fastForEach$iv$iv8 = $this$fastAll$iv;
                int index$iv$iv10 = 0;
                int size5 = $this$fastForEach$iv$iv8.size();
                while (true) {
                    if (index$iv$iv10 >= size5) {
                        z = true;
                        break;
                    }
                    Object item$iv$iv4 = $this$fastForEach$iv$iv8.get(index$iv$iv10);
                    if (!(((Pair) item$iv$iv4).getSecond() == null)) {
                        z = false;
                        break;
                    }
                    index$iv$iv10++;
                }
                if (!z) {
                    int index$iv$iv11 = 0;
                    int size6 = pairs4.size();
                    while (true) {
                        if (index$iv$iv11 >= size6) {
                            z2 = true;
                            break;
                        }
                        Object item$iv$iv5 = pairs4.get(index$iv$iv11);
                        if (!(((Pair) item$iv$iv5).getSecond() != null)) {
                            z2 = false;
                            break;
                        }
                        index$iv$iv11++;
                    }
                    if (z2) {
                        pairs2 = pairs4;
                    } else {
                        List target$iv4 = new ArrayList(pairs4.size());
                        int size7 = pairs4.size();
                        int index$iv$iv12 = 0;
                        while (index$iv$iv12 < size7) {
                            Object item$iv$iv6 = pairs4.get(index$iv$iv12);
                            Pair<MovableContentStateReference, MovableContentStateReference> pair4 = (Pair) item$iv$iv6;
                            MovableContentStateReference first = pair4.getSecond() == null ? pair4.getFirst() : null;
                            if (first != null) {
                                MovableContentStateReference movableContentStateReference = first;
                                i2 = size7;
                                index$iv$iv2 = index$iv$iv12;
                                target$iv4.add(movableContentStateReference);
                            } else {
                                i2 = size7;
                                index$iv$iv2 = index$iv$iv12;
                            }
                            index$iv$iv12 = index$iv$iv2 + 1;
                            size7 = i2;
                        }
                        List toReturn = target$iv4;
                        Object lock$iv2 = recomposer.stateLock;
                        synchronized (lock$iv2) {
                            CollectionsKt.addAll(recomposer.movableContentAwaitingInsert, toReturn);
                            Unit unit = Unit.INSTANCE;
                        }
                        ArrayList target$iv5 = new ArrayList(pairs4.size());
                        int size8 = pairs4.size();
                        int index$iv$iv13 = 0;
                        while (index$iv$iv13 < size8) {
                            Pair<MovableContentStateReference, MovableContentStateReference> pair5 = pairs4.get(index$iv$iv13);
                            if (pair5.getSecond() != null) {
                                i = size8;
                                index$iv$iv = index$iv$iv13;
                                target$iv5.add(pair5);
                            } else {
                                i = size8;
                                index$iv$iv = index$iv$iv13;
                            }
                            index$iv$iv13 = index$iv$iv + 1;
                            size8 = i;
                        }
                        toInsert = target$iv5;
                        composition2.insertMovableContent(toInsert);
                        Unit unit2 = Unit.INSTANCE;
                        this_$iv$iv.restoreCurrent(previous$iv$iv);
                        applyAndCheck(snapshot$iv);
                        recomposer = this;
                        it3 = it;
                        tasks2 = tasks;
                    }
                    th = th;
                    applyAndCheck(snapshot$iv);
                    throw th;
                }
                pairs2 = pairs4;
                toInsert = pairs2;
                composition2.insertMovableContent(toInsert);
                Unit unit22 = Unit.INSTANCE;
                this_$iv$iv.restoreCurrent(previous$iv$iv);
                applyAndCheck(snapshot$iv);
                recomposer = this;
                it3 = it;
                tasks2 = tasks;
            } catch (Throwable th7) {
                th = th7;
            }
        }
        return CollectionsKt.toList(tasks2.keySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void discardUnusedMovableContentState() {
        MutableObjectList unusedValues;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            int i = 0;
            if (MultiValueMap.m4056isNotEmptyimpl(this.movableContentRemoved)) {
                ObjectList references = MultiValueMap.m4061valuesimpl(this.movableContentRemoved);
                MultiValueMap.m4045clearimpl(this.movableContentRemoved);
                this.movableContentNestedStatesAvailable.clear();
                MultiValueMap.m4045clearimpl(this.movableContentNestedExtractionsPending);
                MutableObjectList target$iv = new MutableObjectList(references.getSize());
                Object[] content$iv$iv = references.content;
                int i$iv$iv = 0;
                int i2 = references._size;
                while (i$iv$iv < i2) {
                    Object it$iv = content$iv$iv[i$iv$iv];
                    MovableContentStateReference it = (MovableContentStateReference) it$iv;
                    target$iv.add(TuplesKt.to(it, this.movableContentStatesAvailable.get(it)));
                    i$iv$iv++;
                    i = i;
                }
                unusedValues = target$iv;
                this.movableContentStatesAvailable.clear();
            } else {
                unusedValues = ObjectListKt.emptyObjectList();
            }
        }
        ObjectList this_$iv = unusedValues;
        Object[] content$iv = this_$iv.content;
        int i3 = this_$iv._size;
        for (int i$iv = 0; i$iv < i3; i$iv++) {
            Pair pair = (Pair) content$iv[i$iv];
            MovableContentStateReference reference = (MovableContentStateReference) pair.component1();
            MovableContentState state = (MovableContentState) pair.component2();
            if (state != null) {
                reference.getComposition().disposeUnusedMovableContent(state);
            }
        }
    }

    private final Function1<Object, Unit> readObserverOf(final ControlledComposition composition) {
        return new Function1() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Recomposer.readObserverOf$lambda$0(composition, obj);
            }
        };
    }

    static final Unit readObserverOf$lambda$0(ControlledComposition $composition, Object value) {
        $composition.recordReadOf(value);
        return Unit.INSTANCE;
    }

    private final Function1<Object, Unit> writeObserverOf(final ControlledComposition composition, final MutableScatterSet<Object> modifiedValues) {
        return new Function1() { // from class: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Recomposer.writeObserverOf$lambda$0(composition, modifiedValues, obj);
            }
        };
    }

    static final Unit writeObserverOf$lambda$0(ControlledComposition $composition, MutableScatterSet $modifiedValues, Object value) {
        $composition.recordWriteOf(value);
        if ($modifiedValues != null) {
            $modifiedValues.add(value);
        }
        return Unit.INSTANCE;
    }

    private final <T> T composing(ControlledComposition composition, MutableScatterSet<Object> modifiedValues, Function0<? extends T> block) {
        MutableSnapshot snapshot = Snapshot.INSTANCE.takeMutableSnapshot(readObserverOf(composition), writeObserverOf(composition, modifiedValues));
        try {
            MutableSnapshot this_$iv = snapshot;
            Snapshot previous$iv = this_$iv.makeCurrent();
            try {
                return block.invoke();
            } finally {
                this_$iv.restoreCurrent(previous$iv);
            }
        } finally {
            applyAndCheck(snapshot);
        }
    }

    private final void applyAndCheck(MutableSnapshot snapshot) {
        try {
            SnapshotApplyResult applyResult = snapshot.apply();
            if (applyResult instanceof SnapshotApplyResult.Failure) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.".toString());
            }
        } finally {
            snapshot.dispose();
        }
    }

    public final boolean getHasPendingWork() {
        boolean z;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            z = true;
            if (!this.snapshotInvalidations.isNotEmpty()) {
                if (!(this.compositionInvalidations.getSize() != 0) && this.concurrentCompositionsOutstanding <= 0 && this.compositionsAwaitingApply.isEmpty() && !getHasBroadcastFrameClockAwaitersLocked() && !getHasNextFrameEndAwaitersLocked()) {
                    if (!MultiValueMap.m4056isNotEmptyimpl(this.movableContentRemoved)) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    private final boolean getHasFrameWorkLocked() {
        return (this.compositionInvalidations.getSize() != 0) || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || MultiValueMap.m4056isNotEmptyimpl(this.movableContentRemoved);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasConcurrentFrameWorkLocked() {
        return !this.compositionsAwaitingApply.isEmpty() || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked();
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$awaitIdle$2, reason: invalid class name */
    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/runtime/Recomposer$State;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$awaitIdle$2", f = "Recomposer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<State, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State state, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    State it = (State) this.L$0;
                    return Boxing.boxBoolean(it.compareTo(State.Idle) > 0);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object awaitIdle(Continuation<? super Unit> continuation) {
        Object objCollect = FlowKt.collect(FlowKt.takeWhile(getCurrentState(), new AnonymousClass2(null)), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    public final void pauseCompositionFrameClock() {
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            this.frameClockPaused = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void resumeCompositionFrameClock() {
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            if (this.frameClockPaused) {
                this.frameClockPaused = false;
                cancellableContinuationDeriveStateLocked = deriveStateLocked();
            } else {
                cancellableContinuationDeriveStateLocked = null;
            }
        }
        if (cancellableContinuationDeriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: getCompositeKeyHashCode$runtime */
    public long getCompositeKeyHashCode() {
        return 1000;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingCallByInformation$runtime() {
        return _hotReloadEnabled.get().booleanValue();
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: getCollectingParameterInformation$runtime */
    public boolean getCollectingParameterInformation() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: getCollectingSourceInformation$runtime */
    public boolean getCollectingSourceInformation() {
        return ComposeStackTraceMode.m4163equalsimpl0(ComposerKt.getComposeStackTraceMode(), ComposeStackTraceMode.INSTANCE.m4170getSourceInformationMD5MrJc());
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getStackTraceEnabled$runtime() {
        return !ComposeStackTraceMode.m4163equalsimpl0(ComposerKt.getComposeStackTraceMode(), ComposeStackTraceMode.INSTANCE.m4169getNoneMD5MrJc());
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void recordInspectionTable$runtime(Set<CompositionData> table) {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void registerComposition$runtime(ControlledComposition composition) {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void unregisterComposition$runtime(ControlledComposition composition) {
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            removeKnownCompositionLocked(composition);
            this.compositionInvalidations.remove(composition);
            this.compositionsAwaitingApply.remove(composition);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidate$runtime(ControlledComposition composition) {
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            if (this.compositionInvalidations.contains(composition)) {
                cancellableContinuationDeriveStateLocked = null;
            } else {
                this.compositionInvalidations.add(composition);
                cancellableContinuationDeriveStateLocked = deriveStateLocked();
            }
        }
        if (cancellableContinuationDeriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidateScope$runtime(RecomposeScopeImpl scope) {
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            this.snapshotInvalidations.add(scope);
            cancellableContinuationDeriveStateLocked = deriveStateLocked();
        }
        if (cancellableContinuationDeriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void insertMovableContent$runtime(MovableContentStateReference reference) {
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            this.movableContentAwaitingInsert.add(reference);
            cancellableContinuationDeriveStateLocked = deriveStateLocked();
        }
        if (cancellableContinuationDeriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
    }

    private static final void deletedMovableContent$lambda$0$recordNestedStatesOf(Recomposer this$0, MovableContentStateReference container, MovableContentStateReference reference) {
        List<MovableContentStateReference> nestedReferences$runtime = reference.getNestedReferences$runtime();
        if (nestedReferences$runtime == null) {
            return;
        }
        int size = nestedReferences$runtime.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = nestedReferences$runtime.get(index$iv);
            MovableContentStateReference nestedReference = (MovableContentStateReference) item$iv;
            this$0.movableContentNestedStatesAvailable.add(nestedReference.getContent$runtime(), new NestedMovableContent(nestedReference, container));
            deletedMovableContent$lambda$0$recordNestedStatesOf(this$0, container, nestedReference);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void deletedMovableContent$runtime(MovableContentStateReference reference) {
        CancellableContinuation<Unit> cancellableContinuationDeriveStateLocked;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            MultiValueMap.m4043addimpl(this.movableContentRemoved, reference.getContent$runtime(), reference);
            if (reference.getNestedReferences$runtime() != null) {
                deletedMovableContent$lambda$0$recordNestedStatesOf(this, reference, reference);
            }
            cancellableContinuationDeriveStateLocked = deriveStateLocked();
        }
        if (cancellableContinuationDeriveStateLocked != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationDeriveStateLocked.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac  */
    @Override // androidx.compose.runtime.CompositionContext
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void movableContentStateReleased$runtime(MovableContentStateReference reference, MovableContentState data, Applier<?> applier) throws Throwable {
        Object lock$iv;
        int i;
        int j$iv$iv;
        Recomposer recomposer = this;
        Object lock$iv2 = recomposer.stateLock;
        int $i$f$synchronized = 0;
        synchronized (lock$iv2) {
            try {
                recomposer.movableContentStatesAvailable.set(reference, data);
                ObjectList<MovableContentStateReference> objectListM4053getimpl = MultiValueMap.m4053getimpl(recomposer.movableContentNestedExtractionsPending, reference);
                if (objectListM4053getimpl.isNotEmpty()) {
                    try {
                        ScatterMap<MovableContentStateReference, MovableContentState> scatterMapExtractNestedStates$runtime = data.extractNestedStates$runtime(applier, objectListM4053getimpl);
                        Object[] k$iv = scatterMapExtractNestedStates$runtime.keys;
                        Object[] v$iv = scatterMapExtractNestedStates$runtime.values;
                        long[] m$iv$iv = scatterMapExtractNestedStates$runtime.metadata;
                        int lastIndex$iv$iv = m$iv$iv.length - 2;
                        int i$iv$iv = 0;
                        if (0 <= lastIndex$iv$iv) {
                            while (true) {
                                long slot$iv$iv = m$iv$iv[i$iv$iv];
                                lock$iv = lock$iv2;
                                int $i$f$synchronized2 = $i$f$synchronized;
                                ObjectList<MovableContentStateReference> objectList = objectListM4053getimpl;
                                long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                                if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                                    int i2 = 8;
                                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                                    int j$iv$iv2 = 0;
                                    while (j$iv$iv2 < bitCount$iv$iv) {
                                        long value$iv$iv$iv = slot$iv$iv & 255;
                                        if (value$iv$iv$iv < 128) {
                                            int index$iv$iv = (i$iv$iv << 3) + j$iv$iv2;
                                            try {
                                                Object obj = k$iv[index$iv$iv];
                                                MovableContentState state = (MovableContentState) v$iv[index$iv$iv];
                                                i = i2;
                                                j$iv$iv = j$iv$iv2;
                                                recomposer.movableContentStatesAvailable.set((MovableContentStateReference) obj, state);
                                            } catch (Throwable th) {
                                                th = th;
                                                throw th;
                                            }
                                        } else {
                                            i = i2;
                                            j$iv$iv = j$iv$iv2;
                                        }
                                        slot$iv$iv >>= i;
                                        j$iv$iv2 = j$iv$iv + 1;
                                        recomposer = this;
                                        i2 = i;
                                    }
                                    if (bitCount$iv$iv != i2) {
                                        break;
                                    }
                                    if (i$iv$iv == lastIndex$iv$iv) {
                                        break;
                                    }
                                    i$iv$iv++;
                                    recomposer = this;
                                    $i$f$synchronized = $i$f$synchronized2;
                                    objectListM4053getimpl = objectList;
                                    lock$iv2 = lock$iv;
                                }
                            }
                        } else {
                            lock$iv = lock$iv2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        lock$iv = lock$iv2;
                        throw th;
                    }
                } else {
                    lock$iv = lock$iv2;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportRemovedComposition$runtime(ControlledComposition composition) {
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            LinkedHashSet linkedHashSet = this.compositionsRemoved;
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet();
                this.compositionsRemoved = linkedHashSet;
            }
            linkedHashSet.add(composition);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public MovableContentState movableContentStateResolve$runtime(MovableContentStateReference reference) {
        MovableContentState movableContentStateRemove;
        Object lock$iv = this.stateLock;
        synchronized (lock$iv) {
            movableContentStateRemove = this.movableContentStatesAvailable.remove(reference);
        }
        return movableContentStateRemove;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public Composition getComposition$runtime() {
        return null;
    }

    /* JADX INFO: compiled from: Recomposer.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0000¢\u0006\u0002\b\u0015J\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u0019J\u0014\u0010\u001a\u001a\u00020\u00172\n\u0010\u001b\u001a\u00060\u0007R\u00020\bH\u0002J\u0014\u0010\u001c\u001a\u00020\u00172\n\u0010\u001b\u001a\u00060\u0007R\u00020\bH\u0002J\r\u0010\u001d\u001a\u00020\u0001H\u0000¢\u0006\u0002\b\u001eJ\u0015\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0001H\u0000¢\u0006\u0002\b!J\u0015\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$H\u0000¢\u0006\u0002\b%J\u0013\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0000¢\u0006\u0002\b)J\r\u0010*\u001a\u00020\u0017H\u0000¢\u0006\u0002\b+R\u001e\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0007R\u00020\b0\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000f8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006,"}, d2 = {"Landroidx/compose/runtime/Recomposer$Companion;", "", "<init>", "()V", "_runningRecomposers", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;", "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "Landroidx/compose/runtime/Recomposer;", "_hotReloadEnabled", "Ljava/util/concurrent/atomic/AtomicReference;", "", "Landroidx/compose/runtime/internal/AtomicReference;", "Ljava/util/concurrent/atomic/AtomicReference;", "runningRecomposers", "Lkotlinx/coroutines/flow/StateFlow;", "", "Landroidx/compose/runtime/RecomposerInfo;", "getRunningRecomposers", "()Lkotlinx/coroutines/flow/StateFlow;", "currentRunningRecomposers", "currentRunningRecomposers$runtime", "setHotReloadEnabled", "", Values.VECTOR_MAP_VECTORS_KEY, "setHotReloadEnabled$runtime", "addRunning", "info", "removeRunning", "saveStateAndDisposeForHotReload", "saveStateAndDisposeForHotReload$runtime", "loadStateAndComposeForHotReload", "token", "loadStateAndComposeForHotReload$runtime", "invalidateGroupsWithKey", "key", "", "invalidateGroupsWithKey$runtime", "getCurrentErrors", "", "Landroidx/compose/runtime/RecomposerErrorInfo;", "getCurrentErrors$runtime", "clearErrors", "clearErrors$runtime", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StateFlow<Set<RecomposerInfo>> getRunningRecomposers() {
            return Recomposer._runningRecomposers;
        }

        public final Set<RecomposerInfo> currentRunningRecomposers$runtime() {
            return (Set) Recomposer._runningRecomposers.getValue();
        }

        public final void setHotReloadEnabled$runtime(boolean value) {
            Recomposer._hotReloadEnabled.set(Boolean.valueOf(value));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addRunning(RecomposerInfoImpl info) {
            PersistentSet old;
            PersistentSet persistentSetAdd;
            do {
                old = (PersistentSet) Recomposer._runningRecomposers.getValue();
                persistentSetAdd = old.add(info);
                if (old == persistentSetAdd) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.compareAndSet(old, persistentSetAdd));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void removeRunning(RecomposerInfoImpl info) {
            PersistentSet old;
            PersistentSet persistentSetRemove;
            do {
                old = (PersistentSet) Recomposer._runningRecomposers.getValue();
                persistentSetRemove = old.remove(info);
                if (old == persistentSetRemove) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.compareAndSet(old, persistentSetRemove));
        }

        public final Object saveStateAndDisposeForHotReload$runtime() {
            Recomposer._hotReloadEnabled.set(true);
            Iterable $this$flatMap$iv = (Iterable) Recomposer._runningRecomposers.getValue();
            Collection destination$iv$iv = new ArrayList();
            for (Object element$iv$iv : $this$flatMap$iv) {
                RecomposerInfoImpl it = (RecomposerInfoImpl) element$iv$iv;
                Iterable list$iv$iv = it.saveStateAndDisposeForHotReload();
                CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
            }
            return (List) destination$iv$iv;
        }

        public final void loadStateAndComposeForHotReload$runtime(Object token) {
            Recomposer._hotReloadEnabled.set(true);
            Iterable $this$forEach$iv = (Iterable) Recomposer._runningRecomposers.getValue();
            for (Object element$iv : $this$forEach$iv) {
                RecomposerInfoImpl it = (RecomposerInfoImpl) element$iv;
                it.resetErrorState();
            }
            Intrinsics.checkNotNull(token, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.runtime.Recomposer.HotReloadable>");
            List holders = (List) token;
            int size = holders.size();
            for (int index$iv = 0; index$iv < size; index$iv++) {
                Object item$iv = holders.get(index$iv);
                HotReloadable it2 = (HotReloadable) item$iv;
                it2.resetContent();
            }
            int size2 = holders.size();
            for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
                Object item$iv2 = holders.get(index$iv2);
                HotReloadable it3 = (HotReloadable) item$iv2;
                it3.recompose();
            }
            Iterable $this$forEach$iv2 = (Iterable) Recomposer._runningRecomposers.getValue();
            for (Object element$iv2 : $this$forEach$iv2) {
                RecomposerInfoImpl it4 = (RecomposerInfoImpl) element$iv2;
                it4.retryFailedCompositions();
            }
        }

        public final void invalidateGroupsWithKey$runtime(int key) throws Throwable {
            Recomposer._hotReloadEnabled.set(true);
            Iterable $this$forEach$iv = (Iterable) Recomposer._runningRecomposers.getValue();
            for (Object element$iv : $this$forEach$iv) {
                RecomposerInfoImpl it = (RecomposerInfoImpl) element$iv;
                RecomposerErrorInfo currentError = it.getCurrentError();
                boolean z = false;
                if (currentError != null && !currentError.getRecoverable()) {
                    z = true;
                }
                if (!z) {
                    it.resetErrorState();
                    it.invalidateGroupsWithKey(key);
                    it.retryFailedCompositions();
                }
            }
        }

        public final List<RecomposerErrorInfo> getCurrentErrors$runtime() {
            Iterable $this$mapNotNull$iv = (Iterable) Recomposer._runningRecomposers.getValue();
            Collection destination$iv$iv = new ArrayList();
            for (Object element$iv$iv$iv : $this$mapNotNull$iv) {
                RecomposerInfoImpl it = (RecomposerInfoImpl) element$iv$iv$iv;
                RecomposerErrorInfo currentError = it.getCurrentError();
                if (currentError != null) {
                    destination$iv$iv.add(currentError);
                }
            }
            return (List) destination$iv$iv;
        }

        public final void clearErrors$runtime() {
            Iterable $this$mapNotNull$iv = (Iterable) Recomposer._runningRecomposers.getValue();
            Collection destination$iv$iv = new ArrayList();
            for (Object element$iv$iv$iv : $this$mapNotNull$iv) {
                RecomposerInfoImpl it = (RecomposerInfoImpl) element$iv$iv$iv;
                RecomposerErrorState recomposerErrorStateResetErrorState = it.resetErrorState();
                if (recomposerErrorStateResetErrorState != null) {
                    destination$iv$iv.add(recomposerErrorStateResetErrorState);
                }
            }
        }
    }
}
