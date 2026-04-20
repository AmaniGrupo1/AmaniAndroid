package kotlinx.coroutines.channels;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.logging.type.LogSeverity;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: compiled from: Deprecated.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001aC\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001d\u0010\u0004\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0006\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\b\u0007H\u0087\b¢\u0006\u0002\u0010\b\u001a2\u0010\t\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\n0\u0005H\u0087H¢\u0006\u0002\u0010\f\u001aJ\u0010\r\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u00122\u001a\u0010\u0013\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00060\u0014\"\u0006\u0012\u0002\b\u00030\u0006H\u0001¢\u0006\u0002\u0010\u0015\u001a&\u0010\u0016\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0087@¢\u0006\u0002\u0010\u0019\u001a(\u0010\u001a\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0087@¢\u0006\u0002\u0010\u0019\u001a\u001e\u0010\u001b\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a \u0010\u001d\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a&\u0010\u001e\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u001f\u001a\u0002H\u0002H\u0087@¢\u0006\u0002\u0010 \u001a\u001e\u0010!\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a&\u0010\"\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u001f\u001a\u0002H\u0002H\u0087@¢\u0006\u0002\u0010 \u001a \u0010#\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010$\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a \u0010%\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a0\u0010&\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010'\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001aQ\u0010*\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001aQ\u00101\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001af\u00102\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)27\u0010+\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0007¢\u0006\u0002\u00104\u001aQ\u00105\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a$\u00106\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\b\b\u0000\u0010\u0002*\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0001\u001a>\u00107\u001a\u0002H8\"\b\b\u0000\u0010\u0002*\u00020/\"\u0010\b\u0001\u00108*\n\u0012\u0006\b\u0000\u0012\u0002H\u000209*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0087@¢\u0006\u0002\u0010;\u001a<\u00107\u001a\u0002H8\"\b\b\u0000\u0010\u0002*\u00020/\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u0002H\u00020<*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0087@¢\u0006\u0002\u0010=\u001a0\u0010>\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010'\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001aQ\u0010?\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a6\u0010@\u001a\u0002H8\"\u0004\b\u0000\u0010\u0002\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u0002H\u00020<*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0081@¢\u0006\u0002\u0010=\u001a8\u0010A\u001a\u0002H8\"\u0004\b\u0000\u0010\u0002\"\u0010\b\u0001\u00108*\n\u0012\u0006\b\u0000\u0012\u0002H\u000209*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0081@¢\u0006\u0002\u0010;\u001a<\u0010B\u001a\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0C\"\u0004\b\u0000\u0010D\"\u0004\b\u0001\u0010E*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0F0\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001aR\u0010B\u001a\u0002HG\"\u0004\b\u0000\u0010D\"\u0004\b\u0001\u0010E\"\u0018\b\u0002\u0010G*\u0012\u0012\u0006\b\u0000\u0012\u0002HD\u0012\u0006\b\u0000\u0012\u0002HE0H*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0F0\u00062\u0006\u0010:\u001a\u0002HGH\u0081@¢\u0006\u0002\u0010I\u001a$\u0010J\u001a\b\u0012\u0004\u0012\u0002H\u00020K\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a$\u0010L\u001a\b\u0012\u0004\u0012\u0002H\u00020M\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a]\u0010N\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2(\u0010O\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00060-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001aW\u0010P\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010O\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001al\u0010Q\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)27\u0010O\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0001¢\u0006\u0002\u00104\u001ar\u0010R\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0001*\u00020/*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)29\u0010O\u001a5\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0007¢\u0006\u0002\u00104\u001a]\u0010S\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0001*\u00020/*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2$\u0010O\u001a \b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a.\u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020U0\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001a\u001e\u0010V\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0007\u001aW\u0010W\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010D*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010X\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002HD0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001a$\u0010Y\u001a\b\u0012\u0004\u0012\u0002H\u00020Z\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0081@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010[\u001a\u00020.\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010\\\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a<\u0010]\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u001a\u0010^\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\u00020_j\n\u0012\u0006\b\u0000\u0012\u0002H\u0002``H\u0087@¢\u0006\u0002\u0010a\u001a<\u0010b\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u001a\u0010^\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\u00020_j\n\u0012\u0006\b\u0000\u0012\u0002H\u0002``H\u0087@¢\u0006\u0002\u0010a\u001a\u001e\u0010c\u001a\u00020.\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a$\u0010d\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\b\b\u0000\u0010\u0002*\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0007\u001a?\u0010e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010F0\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0087\u0004\u001az\u0010e\u001a\b\u0012\u0004\u0012\u0002HE0\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010E*\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00062\b\b\u0002\u0010(\u001a\u00020)26\u0010O\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(g\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(h\u0012\u0004\u0012\u0002HE0,H\u0001\u001a1\u0010i\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u0012*\u0006\u0012\u0002\b\u00030\u0006H\u0001¨\u0006j"}, d2 = {"consume", "R", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/BroadcastChannel;", "block", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "consumeEach", "", "action", "(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consumesAll", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "cause", "Lkotlinx/coroutines/CompletionHandler;", "channels", "", "([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;", "elementAt", "index", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "elementAtOrNull", "first", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firstOrNull", "indexOf", "element", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "last", "lastIndexOf", "lastOrNull", "single", "singleOrNull", "drop", "n", "context", "Lkotlin/coroutines/CoroutineContext;", "dropWhile", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;", "filter", "filterIndexed", "Lkotlin/Function3;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;", "filterNot", "filterNotNull", "filterNotNullTo", "C", "", "destination", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/SendChannel;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "take", "takeWhile", "toChannel", "toCollection", "toMap", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/Pair;", "M", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toMutableList", "", "toSet", "", "flatMap", "transform", "map", "mapIndexed", "mapIndexedNotNull", "mapNotNull", "withIndex", "Lkotlin/collections/IndexedValue;", "distinct", "distinctBy", "selector", "toMutableSet", "", "any", "count", "maxWith", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "minWith", "none", "requireNoNulls", "zip", "other", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "consumes", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/channels/ChannelsKt")
final /* synthetic */ class ChannelsKt__DeprecatedKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$any$1, reason: invalid class name */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {434}, m = "any", n = {"$this$consume$iv"}, s = {"L$0"})
    static final class AnonymousClass1<E> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.any(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$consumeEach$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {41}, m = "consumeEach", n = {"action", "channel$iv"}, s = {"L$0", "L$1"})
    static final class C07281<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07281(Continuation<? super C07281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.consumeEach(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$count$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {514}, m = "count", n = {"count", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class C07291<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07291(Continuation<? super C07291> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.count(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$elementAt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {68}, m = "elementAt", n = {"$this$consume$iv", "index", "count"}, s = {"L$0", "I$0", "I$1"})
    static final class C07341<E> extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07341(Continuation<? super C07341> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.elementAt(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$elementAtOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {83}, m = "elementAtOrNull", n = {"$this$consume$iv", "index", "count"}, s = {"L$0", "I$0", "I$1"})
    static final class C07351<E> extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07351(Continuation<? super C07351> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.elementAtOrNull(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNullTo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {514}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class C07401<E, C extends Collection<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07401(Continuation<? super C07401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.filterNotNullTo((ReceiveChannel) null, (Collection) null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNullTo$3, reason: invalid class name */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {514, 272}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class AnonymousClass3<E, C extends SendChannel<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.filterNotNullTo((ReceiveChannel) null, (SendChannel) null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$first$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {95}, m = "first", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    static final class C07411<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07411(Continuation<? super C07411> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.first(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$firstOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {105}, m = "firstOrNull", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    static final class C07421<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07421(Continuation<? super C07421> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.firstOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$indexOf$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {514}, m = "indexOf", n = {"element", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
    static final class C07441<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C07441(Continuation<? super C07441> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.indexOf(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$last$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {127, TsExtractor.TS_STREAM_TYPE_HDMV_DTS}, m = "last", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C07451<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07451(Continuation<? super C07451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.last(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$lastIndexOf$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {514}, m = "lastIndexOf", n = {"element", "lastIndex", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C07461<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C07461(Continuation<? super C07461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.lastIndexOf(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$lastOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {153, 156}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C07471<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07471(Continuation<? super C07471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.lastOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$maxWith$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {450, 452}, m = "maxWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "max"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class C07501<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C07501(Continuation<? super C07501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.maxWith(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$minWith$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {464, 466}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class C07511<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C07511(Continuation<? super C07511> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.minWith(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$none$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {477}, m = "none", n = {"$this$consume$iv"}, s = {"L$0"})
    static final class C07521<E> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07521(Continuation<? super C07521> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.none(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$single$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {166, 169}, m = "single", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C07541<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07541(Continuation<? super C07541> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.single(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$singleOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {179, 182}, m = "singleOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C07551<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07551(Continuation<? super C07551> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.singleOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {514, 308}, m = "toChannel", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C07581<E, C extends SendChannel<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07581(Continuation<? super C07581> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toChannel(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toCollection$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {514}, m = "toCollection", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class C07591<E, C extends Collection<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07591(Continuation<? super C07591> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toCollection(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toMap$2, reason: invalid class name */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {514}, m = "toMap", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass2<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toMap(null, null, this);
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    public static final <E, R> R consume(BroadcastChannel<E> broadcastChannel, Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        ReceiveChannel<E> receiveChannelOpenSubscription = broadcastChannel.openSubscription();
        try {
            return function1.invoke(receiveChannelOpenSubscription);
        } finally {
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f A[Catch: all -> 0x0098, TryCatch #1 {all -> 0x0098, blocks: (B:24:0x0077, B:26:0x007f, B:27:0x008d), top: B:38:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008d A[Catch: all -> 0x0098, TRY_LEAVE, TryCatch #1 {all -> 0x0098, blocks: (B:24:0x0077, B:26:0x007f, B:27:0x008d), top: B:38:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006f -> B:38:0x0077). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object consumeEach(BroadcastChannel<E> broadcastChannel, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) throws Throwable {
        C07281 c07281;
        ReceiveChannel<E> receiveChannelOpenSubscription;
        Object $result;
        Function1<? super E, Unit> function12;
        ReceiveChannel<E> receiveChannel;
        ChannelIterator channelIterator;
        int i;
        Object obj;
        if (continuation instanceof C07281) {
            c07281 = (C07281) continuation;
            if ((c07281.label & Integer.MIN_VALUE) != 0) {
                c07281.label -= Integer.MIN_VALUE;
            } else {
                c07281 = new C07281(continuation);
            }
        }
        Object element = c07281.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07281.label) {
            case 0:
                ResultKt.throwOnFailure(element);
                receiveChannelOpenSubscription = broadcastChannel.openSubscription();
                try {
                    int $i$f$consumeEach = 0;
                    Function1<? super E, Unit> function13 = function1;
                    ChannelIterator it = receiveChannelOpenSubscription.iterator();
                    c07281.L$0 = function13;
                    c07281.L$1 = receiveChannelOpenSubscription;
                    c07281.L$2 = it;
                    c07281.label = 1;
                    Object objHasNext = it.hasNext(c07281);
                    if (objHasNext != $result2) {
                        return $result2;
                    }
                    Object obj2 = $result2;
                    $result = element;
                    element = objHasNext;
                    function12 = function13;
                    receiveChannel = receiveChannelOpenSubscription;
                    channelIterator = it;
                    i = $i$f$consumeEach;
                    obj = obj2;
                    try {
                        if (((Boolean) element).booleanValue()) {
                            Unit unit = Unit.INSTANCE;
                            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannel, (CancellationException) null, 1, (Object) null);
                            return Unit.INSTANCE;
                        }
                        function12.invoke(channelIterator.next());
                        element = $result;
                        $result2 = obj;
                        $i$f$consumeEach = i;
                        it = channelIterator;
                        receiveChannelOpenSubscription = receiveChannel;
                        function13 = function12;
                        c07281.L$0 = function13;
                        c07281.L$1 = receiveChannelOpenSubscription;
                        c07281.L$2 = it;
                        c07281.label = 1;
                        Object objHasNext2 = it.hasNext(c07281);
                        if (objHasNext2 != $result2) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        receiveChannelOpenSubscription = receiveChannel;
                        ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c07281.L$2;
                receiveChannelOpenSubscription = (ReceiveChannel) c07281.L$1;
                Function1<? super E, Unit> function14 = (Function1) c07281.L$0;
                try {
                    ResultKt.throwOnFailure(element);
                    function12 = function14;
                    receiveChannel = receiveChannelOpenSubscription;
                    channelIterator = channelIterator2;
                    i = 0;
                    obj = $result2;
                    $result = element;
                    if (((Boolean) element).booleanValue()) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    private static final <E> Object consumeEach$$forInline(BroadcastChannel<E> broadcastChannel, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) {
        ReceiveChannel<E> receiveChannelOpenSubscription = broadcastChannel.openSubscription();
        try {
            ChannelIterator<E> it = receiveChannelOpenSubscription.iterator();
            while (((Boolean) it.hasNext(null)).booleanValue()) {
                Object element = it.next();
                function1.invoke(element);
            }
            Unit unit = Unit.INSTANCE;
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
            throw th;
        }
    }

    public static final Function1<Throwable, Unit> consumesAll(final ReceiveChannel<?>... receiveChannelArr) {
        return new Function1() { // from class: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ChannelsKt__DeprecatedKt.consumesAll$lambda$2$ChannelsKt__DeprecatedKt(receiveChannelArr, (Throwable) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit consumesAll$lambda$2$ChannelsKt__DeprecatedKt(ReceiveChannel[] $channels, Throwable cause) throws Throwable {
        Throwable exception = null;
        for (ReceiveChannel channel : $channels) {
            try {
                ChannelsKt.cancelConsumed(channel, cause);
            } catch (Throwable e) {
                if (exception == null) {
                    exception = e;
                } else {
                    ExceptionsKt.addSuppressed(exception, e);
                }
            }
        }
        if (exception != null) {
            Throwable it = exception;
            throw it;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085 A[Catch: all -> 0x00ba, TRY_LEAVE, TryCatch #1 {all -> 0x00ba, blocks: (B:25:0x007d, B:27:0x0085), top: B:51:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0074 -> B:51:0x007d). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object elementAt(ReceiveChannel $this$elementAt, int index, Continuation $completion) {
        C07341 c07341;
        ReceiveChannel $this$consume$iv;
        Object $result;
        Throwable th;
        ReceiveChannel $this$consume$iv2;
        ChannelIterator channelIterator;
        int index2;
        int index3;
        Object obj;
        if ($completion instanceof C07341) {
            c07341 = (C07341) $completion;
            if ((c07341.label & Integer.MIN_VALUE) != 0) {
                c07341.label -= Integer.MIN_VALUE;
            } else {
                c07341 = new C07341($completion);
            }
        }
        Object $result2 = c07341.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c07341.label) {
                case 0:
                    ResultKt.throwOnFailure($result2);
                    ReceiveChannel $this$consume$iv3 = $this$elementAt;
                    Throwable cause$iv = null;
                    if (index < 0) {
                        throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + index + '.');
                    }
                    int index4 = index;
                    int count = 0;
                    ChannelIterator it = $this$consume$iv3.iterator();
                    c07341.L$0 = $this$consume$iv3;
                    c07341.L$1 = it;
                    c07341.I$0 = index4;
                    c07341.I$1 = count;
                    c07341.label = 1;
                    Object objHasNext = it.hasNext(c07341);
                    if (objHasNext != $result3) {
                        return $result3;
                    }
                    Object obj2 = $result3;
                    $result = $result2;
                    $result2 = objHasNext;
                    th = cause$iv;
                    $this$consume$iv2 = $this$consume$iv3;
                    channelIterator = it;
                    index2 = index4;
                    index3 = count;
                    obj = obj2;
                    try {
                        if (((Boolean) $result2).booleanValue()) {
                            $this$consume$iv = $this$consume$iv2;
                            try {
                                throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + index2 + '.');
                            } catch (Throwable th2) {
                                e$iv = th2;
                                Throwable cause$iv2 = e$iv;
                                try {
                                    throw e$iv;
                                } catch (Throwable e$iv) {
                                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                                    throw e$iv;
                                }
                            }
                        }
                        Object next = channelIterator.next();
                        int count2 = index3 + 1;
                        if (index2 != index3) {
                            $result2 = $result;
                            $result3 = obj;
                            index4 = index2;
                            it = channelIterator;
                            $this$consume$iv3 = $this$consume$iv2;
                            cause$iv = th;
                            count = count2;
                            c07341.L$0 = $this$consume$iv3;
                            c07341.L$1 = it;
                            c07341.I$0 = index4;
                            c07341.I$1 = count;
                            c07341.label = 1;
                            Object objHasNext2 = it.hasNext(c07341);
                            if (objHasNext2 != $result3) {
                            }
                        } else {
                            ChannelsKt.cancelConsumed($this$consume$iv2, th);
                            return next;
                        }
                    } catch (Throwable th3) {
                        e$iv = th3;
                        $this$consume$iv = $this$consume$iv2;
                    }
                    break;
                case 1:
                    int count3 = c07341.I$1;
                    int index5 = c07341.I$0;
                    ChannelIterator channelIterator2 = (ChannelIterator) c07341.L$1;
                    $this$consume$iv = (ReceiveChannel) c07341.L$0;
                    try {
                        ResultKt.throwOnFailure($result2);
                        th = null;
                        $this$consume$iv2 = $this$consume$iv;
                        channelIterator = channelIterator2;
                        index2 = index5;
                        index3 = count3;
                        obj = $result3;
                        $result = $result2;
                        if (((Boolean) $result2).booleanValue()) {
                        }
                    } catch (Throwable th4) {
                        e$iv = th4;
                        Throwable cause$iv22 = e$iv;
                        throw e$iv;
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th5) {
            e$iv = th5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0087 A[Catch: all -> 0x00a0, TRY_LEAVE, TryCatch #0 {all -> 0x00a0, blocks: (B:28:0x007f, B:30:0x0087), top: B:49:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0077 -> B:49:0x007f). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object elementAtOrNull(ReceiveChannel $this$elementAtOrNull_u24lambda_u244, int index, Continuation $completion) {
        C07351 c07351;
        ReceiveChannel $this$consume$iv;
        Throwable cause$iv;
        ChannelIterator it;
        Object $result;
        ReceiveChannel $this$consume$iv2;
        int index2;
        Throwable th;
        int index3;
        Object obj;
        if ($completion instanceof C07351) {
            c07351 = (C07351) $completion;
            if ((c07351.label & Integer.MIN_VALUE) != 0) {
                c07351.label -= Integer.MIN_VALUE;
            } else {
                c07351 = new C07351($completion);
            }
        }
        Object $result2 = c07351.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07351.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                if (index < 0) {
                    ChannelsKt.cancelConsumed($this$elementAtOrNull_u24lambda_u244, null);
                    return null;
                }
                $this$consume$iv = $this$elementAtOrNull_u24lambda_u244;
                try {
                    it = $this$elementAtOrNull_u24lambda_u244.iterator();
                    Throwable cause$iv2 = null;
                    int index4 = index;
                    int $i$f$consume = 0;
                    try {
                        c07351.L$0 = $this$consume$iv;
                        c07351.L$1 = it;
                        c07351.I$0 = index4;
                        c07351.I$1 = $i$f$consume;
                        c07351.label = 1;
                        Object objHasNext = it.hasNext(c07351);
                        if (objHasNext != $result3) {
                            return $result3;
                        }
                        Object obj2 = $result3;
                        $result = $result2;
                        $result2 = objHasNext;
                        $this$consume$iv2 = $this$consume$iv;
                        index2 = index4;
                        th = cause$iv2;
                        index3 = $i$f$consume;
                        obj = obj2;
                        try {
                            if (((Boolean) $result2).booleanValue()) {
                                ChannelsKt.cancelConsumed($this$consume$iv2, th);
                                return null;
                            }
                            Object next = it.next();
                            int count = index3 + 1;
                            if (index2 == index3) {
                                ChannelsKt.cancelConsumed($this$consume$iv2, th);
                                return next;
                            }
                            cause$iv2 = th;
                            $result2 = $result;
                            $result3 = obj;
                            index4 = index2;
                            $this$consume$iv = $this$consume$iv2;
                            $i$f$consume = count;
                            c07351.L$0 = $this$consume$iv;
                            c07351.L$1 = it;
                            c07351.I$0 = index4;
                            c07351.I$1 = $i$f$consume;
                            c07351.label = 1;
                            Object objHasNext2 = it.hasNext(c07351);
                            if (objHasNext2 != $result3) {
                            }
                        } catch (Throwable th2) {
                            cause$iv = th2;
                            $this$consume$iv = $this$consume$iv2;
                            Throwable cause$iv3 = cause$iv;
                            try {
                                throw cause$iv;
                            } catch (Throwable e$iv) {
                                ChannelsKt.cancelConsumed($this$consume$iv, cause$iv3);
                                throw e$iv;
                            }
                        }
                    } catch (Throwable th3) {
                        cause$iv = th3;
                        Throwable cause$iv32 = cause$iv;
                        throw cause$iv;
                    }
                } catch (Throwable th4) {
                    cause$iv = th4;
                    Throwable cause$iv322 = cause$iv;
                    throw cause$iv;
                }
                break;
            case 1:
                int count2 = c07351.I$1;
                int index5 = c07351.I$0;
                ChannelIterator channelIterator = (ChannelIterator) c07351.L$1;
                $this$consume$iv = (ReceiveChannel) c07351.L$0;
                try {
                    ResultKt.throwOnFailure($result2);
                    it = channelIterator;
                    $this$consume$iv2 = $this$consume$iv;
                    th = null;
                    index2 = index5;
                    index3 = count2;
                    obj = $result3;
                    $result = $result2;
                    if (((Boolean) $result2).booleanValue()) {
                    }
                } catch (Throwable th5) {
                    cause$iv = th5;
                    Throwable cause$iv3222 = cause$iv;
                    throw cause$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0063 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #2 {all -> 0x003c, blocks: (B:13:0x0037, B:22:0x005b, B:24:0x0063, B:27:0x006b, B:28:0x0072), top: B:39:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006b A[Catch: all -> 0x003c, TRY_ENTER, TryCatch #2 {all -> 0x003c, blocks: (B:13:0x0037, B:22:0x005b, B:24:0x0063, B:27:0x006b, B:28:0x0072), top: B:39:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object first(ReceiveChannel $this$first, Continuation $completion) {
        C07411 c07411;
        ReceiveChannel $this$consume$iv;
        Throwable cause$iv;
        ChannelIterator iterator;
        Object objHasNext;
        if ($completion instanceof C07411) {
            c07411 = (C07411) $completion;
            if ((c07411.label & Integer.MIN_VALUE) != 0) {
                c07411.label -= Integer.MIN_VALUE;
            } else {
                c07411 = new C07411($completion);
            }
        }
        Object $result = c07411.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07411.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$consume$iv = $this$first;
                cause$iv = null;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07411.L$0 = $this$consume$iv;
                    c07411.L$1 = iterator;
                    c07411.label = 1;
                    objHasNext = iterator.hasNext(c07411);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (((Boolean) objHasNext).booleanValue()) {
                        throw new NoSuchElementException("ReceiveChannel is empty.");
                    }
                    Object next = iterator.next();
                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                    return next;
                } catch (Throwable th) {
                    e$iv = th;
                    Throwable cause$iv2 = e$iv;
                    try {
                        throw e$iv;
                    } catch (Throwable e$iv) {
                        ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                        throw e$iv;
                    }
                }
            case 1:
                iterator = (ChannelIterator) c07411.L$1;
                $this$consume$iv = (ReceiveChannel) c07411.L$0;
                cause$iv = null;
                try {
                    ResultKt.throwOnFailure($result);
                    objHasNext = $result;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                } catch (Throwable th2) {
                    e$iv = th2;
                    Throwable cause$iv22 = e$iv;
                    throw e$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0069 A[Catch: all -> 0x006e, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x006e, blocks: (B:22:0x005c, B:26:0x0069), top: B:41:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object firstOrNull(ReceiveChannel $this$firstOrNull, Continuation $completion) {
        C07421 c07421;
        ReceiveChannel $this$consume$iv;
        Throwable cause$iv;
        ChannelIterator iterator;
        Object objHasNext;
        if ($completion instanceof C07421) {
            c07421 = (C07421) $completion;
            if ((c07421.label & Integer.MIN_VALUE) != 0) {
                c07421.label -= Integer.MIN_VALUE;
            } else {
                c07421 = new C07421($completion);
            }
        }
        Object $result = c07421.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object next = null;
        switch (c07421.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$consume$iv = $this$firstOrNull;
                cause$iv = null;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07421.L$0 = $this$consume$iv;
                    c07421.L$1 = iterator;
                    c07421.label = 1;
                    objHasNext = iterator.hasNext(c07421);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    try {
                        if (((Boolean) objHasNext).booleanValue()) {
                            next = iterator.next();
                            break;
                        }
                        ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                        return next;
                    } catch (Throwable th) {
                        e$iv = th;
                        Throwable cause$iv2 = e$iv;
                        try {
                            throw e$iv;
                        } catch (Throwable e$iv) {
                            ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                            throw e$iv;
                        }
                    }
                } catch (Throwable th2) {
                    e$iv = th2;
                    Throwable cause$iv22 = e$iv;
                    throw e$iv;
                }
            case 1:
                ChannelIterator iterator2 = (ChannelIterator) c07421.L$1;
                $this$consume$iv = (ReceiveChannel) c07421.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objHasNext = $result;
                    iterator = iterator2;
                    cause$iv = null;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                    return next;
                } catch (Throwable th3) {
                    e$iv = th3;
                    Throwable cause$iv222 = e$iv;
                    throw e$iv;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0096 A[Catch: all -> 0x00d9, TryCatch #4 {all -> 0x00d9, blocks: (B:24:0x008e, B:26:0x0096, B:28:0x00a2), top: B:60:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0081 -> B:60:0x008e). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object indexOf(ReceiveChannel $this$consumeEach$iv, Object element, Continuation $completion) {
        C07441 c07441;
        ReceiveChannel $this$consume$iv$iv;
        Ref.IntRef index;
        Ref.IntRef index2;
        Object element2;
        Object element3;
        int $i$f$consume;
        ChannelIterator it;
        Object objHasNext;
        Object $result;
        Throwable cause$iv$iv;
        Object element4;
        Ref.IntRef index3;
        ReceiveChannel $this$consume$iv$iv2;
        ChannelIterator channelIterator;
        Ref.IntRef intRef;
        Object obj;
        int $i$f$consume2;
        if ($completion instanceof C07441) {
            c07441 = (C07441) $completion;
            if ((c07441.label & Integer.MIN_VALUE) != 0) {
                c07441.label -= Integer.MIN_VALUE;
            } else {
                c07441 = new C07441($completion);
            }
        }
        C07441 c074412 = c07441;
        Object $result2 = c074412.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c074412.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                Ref.IntRef index4 = new Ref.IntRef();
                $this$consume$iv$iv = $this$consumeEach$iv;
                Throwable cause$iv$iv2 = null;
                try {
                    index = index4;
                    index2 = null;
                    element2 = element;
                    element3 = null;
                    $i$f$consume = 0;
                    it = $this$consume$iv$iv.iterator();
                    try {
                        c074412.L$0 = element2;
                        c074412.L$1 = index;
                        c074412.L$2 = $this$consume$iv$iv;
                        c074412.L$3 = it;
                        c074412.label = 1;
                        objHasNext = it.hasNext(c074412);
                    } catch (Throwable th) {
                        e$iv$iv = th;
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                }
                if (objHasNext != coroutine_suspended) {
                    return coroutine_suspended;
                }
                int i = $i$f$consume;
                $result = $result2;
                $result2 = objHasNext;
                cause$iv$iv = cause$iv$iv2;
                element4 = element2;
                index3 = index;
                $this$consume$iv$iv2 = $this$consume$iv$iv;
                channelIterator = it;
                intRef = index2;
                obj = element3;
                $i$f$consume2 = i;
                try {
                    if (((Boolean) $result2).booleanValue()) {
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                        Throwable cause$iv$iv3 = cause$iv$iv;
                        try {
                            Unit unit = Unit.INSTANCE;
                            ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv3);
                            return Boxing.boxInt(-1);
                        } catch (Throwable th3) {
                            e$iv$iv = th3;
                        }
                    } else {
                        Object e$iv = channelIterator.next();
                        if (Intrinsics.areEqual(element4, e$iv)) {
                            Integer numBoxInt = Boxing.boxInt(index3.element);
                            ChannelsKt.cancelConsumed($this$consume$iv$iv2, cause$iv$iv);
                            return numBoxInt;
                        }
                        try {
                            index3.element++;
                            $result2 = $result;
                            $i$f$consume = $i$f$consume2;
                            element3 = obj;
                            index2 = intRef;
                            it = channelIterator;
                            $this$consume$iv$iv = $this$consume$iv$iv2;
                            index = index3;
                            element2 = element4;
                            cause$iv$iv2 = cause$iv$iv;
                            c074412.L$0 = element2;
                            c074412.L$1 = index;
                            c074412.L$2 = $this$consume$iv$iv;
                            c074412.L$3 = it;
                            c074412.label = 1;
                            objHasNext = it.hasNext(c074412);
                            if (objHasNext != coroutine_suspended) {
                            }
                        } catch (Throwable th4) {
                            e$iv$iv = th4;
                            $this$consume$iv$iv = $this$consume$iv$iv2;
                        }
                    }
                } catch (Throwable th5) {
                    e$iv$iv = th5;
                    $this$consume$iv$iv = $this$consume$iv$iv2;
                }
                Throwable cause$iv$iv4 = e$iv$iv;
                try {
                    throw e$iv$iv;
                } catch (Throwable e$iv$iv) {
                    ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv4);
                    throw e$iv$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c074412.L$3;
                $this$consume$iv$iv = (ReceiveChannel) c074412.L$2;
                Ref.IntRef index5 = (Ref.IntRef) c074412.L$1;
                Object element5 = c074412.L$0;
                try {
                    ResultKt.throwOnFailure($result2);
                    cause$iv$iv = null;
                    element4 = element5;
                    index3 = index5;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    channelIterator = channelIterator2;
                    intRef = null;
                    obj = null;
                    $i$f$consume2 = 0;
                    $result = $result2;
                    if (((Boolean) $result2).booleanValue()) {
                    }
                } catch (Throwable th6) {
                    e$iv$iv = th6;
                }
                Throwable cause$iv$iv42 = e$iv$iv;
                throw e$iv$iv;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007e A[Catch: all -> 0x00c7, TryCatch #1 {all -> 0x00c7, blocks: (B:27:0x0085, B:18:0x0054, B:24:0x0076, B:26:0x007e, B:39:0x00bf, B:40:0x00c6, B:21:0x0064), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a6 A[Catch: all -> 0x00b8, TRY_LEAVE, TryCatch #2 {all -> 0x00b8, blocks: (B:31:0x009e, B:33:0x00a6), top: B:50:0x009e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf A[Catch: all -> 0x00c7, TRY_ENTER, TryCatch #1 {all -> 0x00c7, blocks: (B:27:0x0085, B:18:0x0054, B:24:0x0076, B:26:0x007e, B:39:0x00bf, B:40:0x00c6, B:21:0x0064), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0095 -> B:50:0x009e). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object last(ReceiveChannel $this$last, Continuation $completion) {
        C07451 c07451;
        ReceiveChannel $this$consume$iv;
        ReceiveChannel $this$consume$iv2;
        Throwable cause$iv;
        int i;
        ChannelIterator iterator;
        Object objHasNext;
        Object $result;
        Throwable th;
        ReceiveChannel $this$consume$iv3;
        ChannelIterator iterator2;
        Object obj;
        int i2;
        Object obj2;
        if ($completion instanceof C07451) {
            c07451 = (C07451) $completion;
            if ((c07451.label & Integer.MIN_VALUE) != 0) {
                c07451.label -= Integer.MIN_VALUE;
            } else {
                c07451 = new C07451($completion);
            }
        }
        Object last = c07451.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c07451.label) {
                case 0:
                    ResultKt.throwOnFailure(last);
                    $this$consume$iv2 = $this$last;
                    cause$iv = null;
                    i = 0;
                    iterator = $this$consume$iv2.iterator();
                    c07451.L$0 = $this$consume$iv2;
                    c07451.L$1 = iterator;
                    c07451.label = 1;
                    objHasNext = iterator.hasNext(c07451);
                    if (objHasNext == $result2) {
                        return $result2;
                    }
                    if (((Boolean) objHasNext).booleanValue()) {
                        throw new NoSuchElementException("ReceiveChannel is empty.");
                    }
                    int i3 = i;
                    Object last2 = iterator.next();
                    int i4 = i3;
                    c07451.L$0 = $this$consume$iv2;
                    c07451.L$1 = iterator;
                    c07451.L$2 = last2;
                    c07451.label = 2;
                    Object objHasNext2 = iterator.hasNext(c07451);
                    if (objHasNext2 != $result2) {
                        return $result2;
                    }
                    Object obj3 = $result2;
                    $result = last;
                    last = objHasNext2;
                    th = cause$iv;
                    $this$consume$iv3 = $this$consume$iv2;
                    iterator2 = iterator;
                    obj = last2;
                    i2 = i4;
                    obj2 = obj3;
                    try {
                        if (((Boolean) last).booleanValue()) {
                            ChannelsKt.cancelConsumed($this$consume$iv3, th);
                            return obj;
                        }
                        int i5 = i2;
                        last2 = iterator2.next();
                        last = $result;
                        $result2 = obj2;
                        i4 = i5;
                        iterator = iterator2;
                        $this$consume$iv2 = $this$consume$iv3;
                        cause$iv = th;
                        c07451.L$0 = $this$consume$iv2;
                        c07451.L$1 = iterator;
                        c07451.L$2 = last2;
                        c07451.label = 2;
                        Object objHasNext22 = iterator.hasNext(c07451);
                        if (objHasNext22 != $result2) {
                        }
                    } catch (Throwable th2) {
                        $this$consume$iv = $this$consume$iv3;
                        e$iv = th2;
                        Throwable cause$iv2 = e$iv;
                        try {
                            throw e$iv;
                        } catch (Throwable e$iv) {
                            ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                            throw e$iv;
                        }
                    }
                    break;
                case 1:
                    ChannelIterator iterator3 = (ChannelIterator) c07451.L$1;
                    cause$iv = null;
                    $this$consume$iv2 = (ReceiveChannel) c07451.L$0;
                    ResultKt.throwOnFailure(last);
                    iterator = iterator3;
                    i = 0;
                    objHasNext = last;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                    break;
                case 2:
                    Object last3 = c07451.L$2;
                    ChannelIterator iterator4 = (ChannelIterator) c07451.L$1;
                    $this$consume$iv = (ReceiveChannel) c07451.L$0;
                    try {
                        ResultKt.throwOnFailure(last);
                        th = null;
                        $this$consume$iv3 = $this$consume$iv;
                        iterator2 = iterator4;
                        obj = last3;
                        i2 = 0;
                        obj2 = $result2;
                        $result = last;
                        if (((Boolean) last).booleanValue()) {
                        }
                    } catch (Throwable th3) {
                        e$iv = th3;
                        Throwable cause$iv22 = e$iv;
                        throw e$iv;
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th4) {
            e$iv = th4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0091 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8 A[Catch: all -> 0x00d8, TryCatch #3 {all -> 0x00d8, blocks: (B:24:0x00a0, B:26:0x00a8, B:28:0x00b3, B:29:0x00b7, B:30:0x00c8), top: B:50:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c8 A[Catch: all -> 0x00d8, TRY_LEAVE, TryCatch #3 {all -> 0x00d8, blocks: (B:24:0x00a0, B:26:0x00a8, B:28:0x00b3, B:29:0x00b7, B:30:0x00c8), top: B:50:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0092 -> B:50:0x00a0). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object lastIndexOf(ReceiveChannel $this$consumeEach$iv, Object element, Continuation $completion) {
        C07461 c07461;
        ReceiveChannel $this$consume$iv$iv;
        Ref.IntRef index;
        Ref.IntRef lastIndex;
        Object element2;
        Object element3;
        int $i$f$consume;
        Throwable cause$iv$iv;
        Ref.IntRef index2;
        ChannelIterator it;
        Object objHasNext;
        Object $result;
        Object element4;
        Ref.IntRef lastIndex2;
        Ref.IntRef lastIndex3;
        ReceiveChannel $this$consume$iv$iv2;
        Throwable cause$iv$iv2;
        ChannelIterator channelIterator;
        Ref.IntRef intRef;
        Object obj;
        int $i$f$consume2;
        if ($completion instanceof C07461) {
            c07461 = (C07461) $completion;
            if ((c07461.label & Integer.MIN_VALUE) != 0) {
                c07461.label -= Integer.MIN_VALUE;
            } else {
                c07461 = new C07461($completion);
            }
        }
        C07461 c074612 = c07461;
        Object $result2 = c074612.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c074612.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                Ref.IntRef lastIndex4 = new Ref.IntRef();
                lastIndex4.element = -1;
                Ref.IntRef index3 = new Ref.IntRef();
                $this$consume$iv$iv = $this$consumeEach$iv;
                try {
                    index = lastIndex4;
                    lastIndex = null;
                    element2 = element;
                    element3 = null;
                    $i$f$consume = 0;
                    cause$iv$iv = null;
                    index2 = index3;
                    it = $this$consume$iv$iv.iterator();
                    try {
                        c074612.L$0 = element2;
                        c074612.L$1 = index;
                        c074612.L$2 = index2;
                        c074612.L$3 = $this$consume$iv$iv;
                        c074612.L$4 = it;
                        c074612.label = 1;
                        objHasNext = it.hasNext(c074612);
                    } catch (Throwable th) {
                        e$iv$iv = th;
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                }
                if (objHasNext != coroutine_suspended) {
                    return coroutine_suspended;
                }
                int i = $i$f$consume;
                $result = $result2;
                $result2 = objHasNext;
                element4 = element2;
                lastIndex2 = index;
                lastIndex3 = index2;
                $this$consume$iv$iv2 = $this$consume$iv$iv;
                cause$iv$iv2 = cause$iv$iv;
                channelIterator = it;
                intRef = lastIndex;
                obj = element3;
                $i$f$consume2 = i;
                try {
                    if (!((Boolean) $result2).booleanValue()) {
                        Object it2 = channelIterator.next();
                        if (Intrinsics.areEqual(element4, it2)) {
                            lastIndex2.element = lastIndex3.element;
                        }
                        lastIndex3.element++;
                        $result2 = $result;
                        $i$f$consume = $i$f$consume2;
                        element3 = obj;
                        lastIndex = intRef;
                        it = channelIterator;
                        cause$iv$iv = cause$iv$iv2;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                        index2 = lastIndex3;
                        index = lastIndex2;
                        element2 = element4;
                        c074612.L$0 = element2;
                        c074612.L$1 = index;
                        c074612.L$2 = index2;
                        c074612.L$3 = $this$consume$iv$iv;
                        c074612.L$4 = it;
                        c074612.label = 1;
                        objHasNext = it.hasNext(c074612);
                        if (objHasNext != coroutine_suspended) {
                        }
                    } else {
                        Unit unit = Unit.INSTANCE;
                        ChannelsKt.cancelConsumed($this$consume$iv$iv2, cause$iv$iv2);
                        return Boxing.boxInt(lastIndex2.element);
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                    $this$consume$iv$iv = $this$consume$iv$iv2;
                }
                Throwable cause$iv$iv3 = e$iv$iv;
                try {
                    throw e$iv$iv;
                } catch (Throwable e$iv$iv) {
                    ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv3);
                    throw e$iv$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c074612.L$4;
                $this$consume$iv$iv = (ReceiveChannel) c074612.L$3;
                Ref.IntRef index4 = (Ref.IntRef) c074612.L$2;
                Ref.IntRef lastIndex5 = (Ref.IntRef) c074612.L$1;
                Object element5 = c074612.L$0;
                try {
                    ResultKt.throwOnFailure($result2);
                    element4 = element5;
                    lastIndex2 = lastIndex5;
                    lastIndex3 = index4;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv2 = null;
                    channelIterator = channelIterator2;
                    intRef = null;
                    obj = null;
                    $i$f$consume2 = 0;
                    $result = $result2;
                    if (!((Boolean) $result2).booleanValue()) {
                    }
                } catch (Throwable th4) {
                    e$iv$iv = th4;
                }
                Throwable cause$iv$iv32 = e$iv$iv;
                throw e$iv$iv;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0 A[Catch: all -> 0x00c2, TRY_LEAVE, TryCatch #0 {all -> 0x00c2, blocks: (B:37:0x00a8, B:39:0x00b0), top: B:56:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x009f -> B:56:0x00a8). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object lastOrNull(ReceiveChannel $this$lastOrNull, Continuation $completion) {
        C07471 c07471;
        ReceiveChannel $this$consume$iv;
        int $i$f$consume;
        Throwable cause$iv;
        int i;
        Throwable cause$iv2;
        ChannelIterator iterator;
        Object objHasNext;
        Object $result;
        ReceiveChannel $this$consume$iv2;
        ChannelIterator iterator2;
        Object obj;
        Throwable th;
        int $i$f$consume2;
        Object obj2;
        if ($completion instanceof C07471) {
            c07471 = (C07471) $completion;
            if ((c07471.label & Integer.MIN_VALUE) != 0) {
                c07471.label -= Integer.MIN_VALUE;
            } else {
                c07471 = new C07471($completion);
            }
        }
        Object last = c07471.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07471.label) {
            case 0:
                ResultKt.throwOnFailure(last);
                $this$consume$iv = $this$lastOrNull;
                $i$f$consume = 0;
                cause$iv = null;
                i = 0;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07471.L$0 = $this$consume$iv;
                    c07471.L$1 = iterator;
                    c07471.label = 1;
                    objHasNext = iterator.hasNext(c07471);
                    if (objHasNext == $result2) {
                        return $result2;
                    }
                    try {
                        if (((Boolean) objHasNext).booleanValue()) {
                            ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                            return null;
                        }
                        Throwable cause$iv3 = cause$iv;
                        try {
                            ChannelIterator channelIterator = iterator;
                            Object last2 = iterator.next();
                            ChannelIterator iterator3 = channelIterator;
                            c07471.L$0 = $this$consume$iv;
                            c07471.L$1 = iterator3;
                            c07471.L$2 = last2;
                            c07471.label = 2;
                            Object objHasNext2 = iterator3.hasNext(c07471);
                            if (objHasNext2 != $result2) {
                                return $result2;
                            }
                            Object obj3 = $result2;
                            $result = last;
                            last = objHasNext2;
                            $this$consume$iv2 = $this$consume$iv;
                            iterator2 = iterator3;
                            obj = last2;
                            th = cause$iv3;
                            $i$f$consume2 = $i$f$consume;
                            obj2 = obj3;
                            try {
                                if (((Boolean) last).booleanValue()) {
                                    ChannelsKt.cancelConsumed($this$consume$iv2, th);
                                    return obj;
                                }
                                Throwable th2 = th;
                                last2 = iterator2.next();
                                last = $result;
                                $result2 = obj2;
                                $i$f$consume = $i$f$consume2;
                                cause$iv3 = th2;
                                iterator3 = iterator2;
                                $this$consume$iv = $this$consume$iv2;
                                c07471.L$0 = $this$consume$iv;
                                c07471.L$1 = iterator3;
                                c07471.L$2 = last2;
                                c07471.label = 2;
                                Object objHasNext22 = iterator3.hasNext(c07471);
                                if (objHasNext22 != $result2) {
                                }
                            } catch (Throwable th3) {
                                cause$iv2 = th3;
                                $this$consume$iv = $this$consume$iv2;
                                Throwable cause$iv4 = cause$iv2;
                                try {
                                    throw cause$iv2;
                                } catch (Throwable e$iv) {
                                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv4);
                                    throw e$iv;
                                }
                            }
                        } catch (Throwable th4) {
                            cause$iv2 = th4;
                            Throwable cause$iv42 = cause$iv2;
                            throw cause$iv2;
                        }
                    } catch (Throwable th5) {
                        cause$iv2 = th5;
                        Throwable cause$iv422 = cause$iv2;
                        throw cause$iv2;
                    }
                } catch (Throwable th6) {
                    cause$iv2 = th6;
                    Throwable cause$iv4222 = cause$iv2;
                    throw cause$iv2;
                }
                break;
            case 1:
                $i$f$consume = 0;
                iterator = (ChannelIterator) c07471.L$1;
                ReceiveChannel receiveChannel = (ReceiveChannel) c07471.L$0;
                try {
                    ResultKt.throwOnFailure(last);
                    objHasNext = last;
                    $this$consume$iv = receiveChannel;
                    i = 0;
                    cause$iv = null;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                } catch (Throwable th7) {
                    cause$iv2 = th7;
                    $this$consume$iv = receiveChannel;
                    Throwable cause$iv42222 = cause$iv2;
                    throw cause$iv2;
                }
                break;
            case 2:
                Object last3 = c07471.L$2;
                ChannelIterator iterator4 = (ChannelIterator) c07471.L$1;
                $this$consume$iv = (ReceiveChannel) c07471.L$0;
                try {
                    ResultKt.throwOnFailure(last);
                    $this$consume$iv2 = $this$consume$iv;
                    iterator2 = iterator4;
                    obj = last3;
                    th = null;
                    $i$f$consume2 = 0;
                    obj2 = $result2;
                    $result = last;
                    if (((Boolean) last).booleanValue()) {
                    }
                } catch (Throwable th8) {
                    cause$iv2 = th8;
                    Throwable cause$iv422222 = cause$iv2;
                    throw cause$iv2;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0078 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #2 {all -> 0x004e, blocks: (B:18:0x0048, B:27:0x0070, B:29:0x0078, B:39:0x00a2, B:40:0x00a9), top: B:51:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009a A[Catch: all -> 0x003a, TRY_ENTER, TryCatch #1 {all -> 0x003a, blocks: (B:13:0x0035, B:33:0x008d, B:37:0x009a, B:38:0x00a1), top: B:49:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2 A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #2 {all -> 0x004e, blocks: (B:18:0x0048, B:27:0x0070, B:29:0x0078, B:39:0x00a2, B:40:0x00a9), top: B:51:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object single(ReceiveChannel $this$single, Continuation $completion) {
        C07541 c07541;
        ReceiveChannel $this$consume$iv;
        Throwable cause$iv;
        ChannelIterator iterator;
        Object obj;
        int i;
        ReceiveChannel $this$consume$iv2;
        Object objHasNext;
        Object obj2;
        if ($completion instanceof C07541) {
            c07541 = (C07541) $completion;
            if ((c07541.label & Integer.MIN_VALUE) != 0) {
                c07541.label -= Integer.MIN_VALUE;
            } else {
                c07541 = new C07541($completion);
            }
        }
        Object $result = c07541.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07541.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$consume$iv = $this$single;
                cause$iv = null;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07541.L$0 = $this$consume$iv;
                    c07541.L$1 = iterator;
                    c07541.label = 1;
                    Object objHasNext2 = iterator.hasNext(c07541);
                    if (objHasNext2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = objHasNext2;
                    i = 0;
                    $this$consume$iv2 = $this$consume$iv;
                    if (((Boolean) obj).booleanValue()) {
                        throw new NoSuchElementException("ReceiveChannel is empty.");
                    }
                    Object single = iterator.next();
                    c07541.L$0 = $this$consume$iv2;
                    c07541.L$1 = single;
                    c07541.label = 2;
                    objHasNext = iterator.hasNext(c07541);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj2 = single;
                    $this$consume$iv = $this$consume$iv2;
                    if (!((Boolean) objHasNext).booleanValue()) {
                        throw new IllegalArgumentException("ReceiveChannel has more than one element.");
                    }
                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                    return obj2;
                } catch (Throwable th) {
                    e$iv = th;
                    Throwable cause$iv2 = e$iv;
                    try {
                        throw e$iv;
                    } catch (Throwable e$iv) {
                        ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                        throw e$iv;
                    }
                }
            case 1:
                i = 0;
                ChannelIterator iterator2 = (ChannelIterator) c07541.L$1;
                cause$iv = null;
                $this$consume$iv2 = (ReceiveChannel) c07541.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    iterator = iterator2;
                    obj = $result;
                    if (((Boolean) obj).booleanValue()) {
                    }
                } catch (Throwable th2) {
                    e$iv = th2;
                    $this$consume$iv = $this$consume$iv2;
                    Throwable cause$iv22 = e$iv;
                    throw e$iv;
                }
                break;
            case 2:
                obj2 = c07541.L$1;
                $this$consume$iv = (ReceiveChannel) c07541.L$0;
                cause$iv = null;
                try {
                    ResultKt.throwOnFailure($result);
                    objHasNext = $result;
                    if (!((Boolean) objHasNext).booleanValue()) {
                    }
                } catch (Throwable th3) {
                    e$iv = th3;
                    Throwable cause$iv222 = e$iv;
                    throw e$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object singleOrNull(ReceiveChannel $this$singleOrNull, Continuation $completion) {
        C07551 c07551;
        ReceiveChannel $this$consume$iv;
        Throwable e$iv;
        ChannelIterator iterator;
        Object objHasNext;
        Throwable cause$iv;
        ReceiveChannel $this$consume$iv2;
        Throwable cause$iv2;
        Object objHasNext2;
        Object obj;
        Throwable th;
        if ($completion instanceof C07551) {
            c07551 = (C07551) $completion;
            if ((c07551.label & Integer.MIN_VALUE) != 0) {
                c07551.label -= Integer.MIN_VALUE;
            } else {
                c07551 = new C07551($completion);
            }
        }
        Object $result = c07551.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07551.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$consume$iv = $this$singleOrNull;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07551.L$0 = $this$consume$iv;
                    c07551.L$1 = iterator;
                    c07551.label = 1;
                    objHasNext = iterator.hasNext(c07551);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    cause$iv = null;
                    $this$consume$iv2 = $this$consume$iv;
                    cause$iv2 = null;
                    try {
                        if (((Boolean) objHasNext).booleanValue()) {
                            ChannelsKt.cancelConsumed($this$consume$iv2, cause$iv2);
                            return null;
                        }
                        try {
                            Object single = iterator.next();
                            c07551.L$0 = $this$consume$iv2;
                            c07551.L$1 = single;
                            c07551.label = 2;
                            objHasNext2 = iterator.hasNext(c07551);
                            if (objHasNext2 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj = single;
                            th = cause$iv2;
                            $this$consume$iv = $this$consume$iv2;
                            try {
                                if (((Boolean) objHasNext2).booleanValue()) {
                                    ChannelsKt.cancelConsumed($this$consume$iv, th);
                                    return obj;
                                }
                                ChannelsKt.cancelConsumed($this$consume$iv, th);
                                return null;
                            } catch (Throwable th2) {
                                e$iv = th2;
                                Throwable cause$iv3 = e$iv;
                                try {
                                    throw e$iv;
                                } catch (Throwable e$iv2) {
                                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv3);
                                    throw e$iv2;
                                }
                            }
                        } catch (Throwable th3) {
                            e$iv = th3;
                            $this$consume$iv = $this$consume$iv2;
                            Throwable cause$iv32 = e$iv;
                            throw e$iv;
                        }
                    } catch (Throwable th4) {
                        e$iv = th4;
                        $this$consume$iv = $this$consume$iv2;
                    }
                } catch (Throwable th5) {
                    e$iv = th5;
                    Throwable cause$iv322 = e$iv;
                    throw e$iv;
                }
                break;
            case 1:
                ChannelIterator iterator2 = (ChannelIterator) c07551.L$1;
                ReceiveChannel receiveChannel = (ReceiveChannel) c07551.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    cause$iv = null;
                    iterator = iterator2;
                    $this$consume$iv2 = receiveChannel;
                    objHasNext = $result;
                    cause$iv2 = null;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                } catch (Throwable th6) {
                    $this$consume$iv = receiveChannel;
                    e$iv = th6;
                    Throwable cause$iv3222 = e$iv;
                    throw e$iv;
                }
                break;
            case 2:
                obj = c07551.L$1;
                $this$consume$iv = (ReceiveChannel) c07551.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objHasNext2 = $result;
                    th = null;
                    if (((Boolean) objHasNext2).booleanValue()) {
                    }
                } catch (Throwable th7) {
                    e$iv = th7;
                    Throwable cause$iv32222 = e$iv;
                    throw e$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ ReceiveChannel drop$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return drop(receiveChannel, i, coroutineContext);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {194, 199, 200}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
    static final class C07321<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $n;
        final /* synthetic */ ReceiveChannel<E> $this_drop;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07321(int i, ReceiveChannel<? extends E> receiveChannel, Continuation<? super C07321> continuation) {
            super(2, continuation);
            this.$n = i;
            this.$this_drop = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07321 c07321 = new C07321(this.$n, this.$this_drop, continuation);
            c07321.L$0 = obj;
            return c07321;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07321) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00b7 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00de  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x007c -> B:22:0x0084). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00da -> B:31:0x00a7). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            ProducerScope $this$produce;
            C07321<E> c07321;
            ChannelIterator<E> it;
            Object $result2;
            ProducerScope $this$produce2;
            ChannelIterator<E> channelIterator;
            int remaining;
            Object obj;
            ProducerScope $this$produce3;
            Object obj2;
            Object $result3;
            Object objHasNext;
            Object $result4 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$produce = (ProducerScope) this.L$0;
                    boolean z = this.$n >= 0;
                    int i = this.$n;
                    if (!z) {
                        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
                    }
                    int remaining2 = this.$n;
                    if (remaining2 > 0) {
                        ProducerScope $this$produce4 = $this$produce;
                        int remaining3 = remaining2;
                        ChannelIterator<E> it2 = this.$this_drop.iterator();
                        C07321<E> c073212 = this;
                        c073212.L$0 = $this$produce4;
                        c073212.L$1 = it2;
                        c073212.I$0 = remaining3;
                        c073212.label = 1;
                        Object objHasNext2 = it2.hasNext(c073212);
                        if (objHasNext2 != $result4) {
                            return $result4;
                        }
                        Object obj3 = $result4;
                        $result2 = $result;
                        $result = objHasNext2;
                        c07321 = c073212;
                        $this$produce2 = $this$produce4;
                        channelIterator = it2;
                        remaining = remaining3;
                        obj = obj3;
                        if (((Boolean) $result).booleanValue()) {
                            channelIterator.next();
                            int remaining4 = remaining - 1;
                            if (remaining4 != 0) {
                                Object obj4 = obj;
                                remaining3 = remaining4;
                                $result = $result2;
                                $result4 = obj4;
                                it2 = channelIterator;
                                $this$produce4 = $this$produce2;
                                c073212 = c07321;
                                c073212.L$0 = $this$produce4;
                                c073212.L$1 = it2;
                                c073212.I$0 = remaining3;
                                c073212.label = 1;
                                Object objHasNext22 = it2.hasNext(c073212);
                                if (objHasNext22 != $result4) {
                                }
                            }
                        }
                        $result = $result2;
                        $result4 = obj;
                        $this$produce = $this$produce2;
                        it = c07321.$this_drop.iterator();
                        c07321.L$0 = $this$produce;
                        c07321.L$1 = it;
                        c07321.label = 2;
                        objHasNext = it.hasNext(c07321);
                        if (objHasNext == $result4) {
                            return $result4;
                        }
                        Object obj5 = $result4;
                        $result3 = $result;
                        $result = objHasNext;
                        $this$produce3 = $this$produce;
                        obj2 = obj5;
                        if (((Boolean) $result).booleanValue()) {
                            return Unit.INSTANCE;
                        }
                        c07321.L$0 = $this$produce3;
                        c07321.L$1 = it;
                        c07321.label = 3;
                        Object e = $this$produce3.send(it.next(), c07321);
                        if (e == obj2) {
                            return obj2;
                        }
                        $result = $result3;
                        $result4 = obj2;
                        $this$produce = $this$produce3;
                        c07321.L$0 = $this$produce;
                        c07321.L$1 = it;
                        c07321.label = 2;
                        objHasNext = it.hasNext(c07321);
                        if (objHasNext == $result4) {
                        }
                    } else {
                        c07321 = this;
                        it = c07321.$this_drop.iterator();
                        c07321.L$0 = $this$produce;
                        c07321.L$1 = it;
                        c07321.label = 2;
                        objHasNext = it.hasNext(c07321);
                        if (objHasNext == $result4) {
                        }
                    }
                    break;
                case 1:
                    int remaining5 = this.I$0;
                    ChannelIterator<E> channelIterator2 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce5 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c07321 = this;
                    $this$produce2 = $this$produce5;
                    channelIterator = channelIterator2;
                    remaining = remaining5;
                    obj = $result4;
                    $result2 = $result;
                    if (((Boolean) $result).booleanValue()) {
                    }
                    $result = $result2;
                    $result4 = obj;
                    $this$produce = $this$produce2;
                    it = c07321.$this_drop.iterator();
                    c07321.L$0 = $this$produce;
                    c07321.L$1 = it;
                    c07321.label = 2;
                    objHasNext = it.hasNext(c07321);
                    if (objHasNext == $result4) {
                    }
                    break;
                case 2:
                    ChannelIterator<E> channelIterator3 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce6 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c07321 = this;
                    $this$produce3 = $this$produce6;
                    it = channelIterator3;
                    obj2 = $result4;
                    $result3 = $result;
                    if (((Boolean) $result).booleanValue()) {
                    }
                    break;
                case 3:
                    ChannelIterator<E> channelIterator4 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce7 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    it = channelIterator4;
                    $this$produce = $this$produce7;
                    c07321 = this;
                    c07321.L$0 = $this$produce;
                    c07321.L$1 = it;
                    c07321.label = 2;
                    objHasNext = it.hasNext(c07321);
                    if (objHasNext == $result4) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel drop(ReceiveChannel $this$drop, int n, CoroutineContext context) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$drop), new C07321(n, $this$drop, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel dropWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return dropWhile(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2, 3, 4}, l = {211, 212, 213, 217, 218}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$0"})
    static final class C07331<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> $predicate;
        final /* synthetic */ ReceiveChannel<E> $this_dropWhile;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07331(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C07331> continuation) {
            super(2, continuation);
            this.$this_dropWhile = receiveChannel;
            this.$predicate = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07331 c07331 = new C07331(this.$this_dropWhile, this.$predicate, continuation);
            c07331.L$0 = obj;
            return c07331;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07331) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0086 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ef A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00f0  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00fb  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0112  */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v27 */
        /* JADX WARN: Type inference failed for: r1v28 */
        /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.Object, kotlinx.coroutines.channels.ProducerScope] */
        /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v15 */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v18 */
        /* JADX WARN: Type inference failed for: r4v19 */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v20 */
        /* JADX WARN: Type inference failed for: r4v21 */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, kotlinx.coroutines.channels.ProducerScope] */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00ab -> B:22:0x00b0). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0110 -> B:31:0x00df). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ChannelIterator<E> it;
            C07331<E> c07331;
            ?? r4;
            Object obj2;
            Object obj3;
            Object obj4;
            C07331<E> c073312;
            ChannelIterator<E> channelIterator;
            ?? r42;
            ?? r1;
            ?? r43;
            ChannelIterator<E> it2;
            ?? r44;
            ChannelIterator<E> channelIterator2;
            ?? r45;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope = (ProducerScope) this.L$0;
                    it = this.$this_dropWhile.iterator();
                    C07331<E> c073313 = this;
                    ?? r12 = producerScope;
                    c073313.L$0 = r12;
                    c073313.L$1 = it;
                    c073313.L$2 = null;
                    c073313.label = 1;
                    Object objHasNext2 = it.hasNext(c073313);
                    if (objHasNext2 != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj5 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext2;
                    c07331 = c073313;
                    r4 = r12;
                    obj2 = obj5;
                    r43 = r4;
                    if (((Boolean) obj).booleanValue()) {
                        E next = it.next();
                        Function2<E, Continuation<? super Boolean>, Object> function2 = c07331.$predicate;
                        c07331.L$0 = r4;
                        c07331.L$1 = it;
                        c07331.L$2 = next;
                        c07331.label = 2;
                        Object objInvoke = function2.invoke(next, c07331);
                        if (objInvoke == obj2) {
                            return obj2;
                        }
                        ChannelIterator<E> channelIterator3 = it;
                        obj4 = next;
                        obj = objInvoke;
                        c073312 = c07331;
                        channelIterator = channelIterator3;
                        r42 = r4;
                        if (((Boolean) obj).booleanValue()) {
                            c073312.L$0 = r42;
                            c073312.L$1 = null;
                            c073312.L$2 = null;
                            c073312.label = 3;
                            if (r42.send(obj4, c073312) == obj2) {
                                return obj2;
                            }
                            obj = obj3;
                            coroutine_suspended = obj2;
                            r1 = r42;
                            c07331 = c073312;
                            r43 = r1;
                            obj2 = coroutine_suspended;
                        } else {
                            obj = obj3;
                            coroutine_suspended = obj2;
                            r12 = r42;
                            it = channelIterator;
                            c073313 = c073312;
                            c073313.L$0 = r12;
                            c073313.L$1 = it;
                            c073313.L$2 = null;
                            c073313.label = 1;
                            Object objHasNext22 = it.hasNext(c073313);
                            if (objHasNext22 != coroutine_suspended) {
                            }
                        }
                    }
                    it2 = c07331.$this_dropWhile.iterator();
                    r45 = r43;
                    c07331.L$0 = r45;
                    c07331.L$1 = it2;
                    c07331.label = 4;
                    objHasNext = it2.hasNext(c07331);
                    if (objHasNext == obj2) {
                        return obj2;
                    }
                    channelIterator2 = it2;
                    obj = objHasNext;
                    r44 = r45;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    c07331.L$0 = r44;
                    c07331.L$1 = channelIterator2;
                    c07331.label = 5;
                    if (r44.send(channelIterator2.next(), c07331) == obj2) {
                        return obj2;
                    }
                    it2 = channelIterator2;
                    r45 = r44;
                    c07331.L$0 = r45;
                    c07331.L$1 = it2;
                    c07331.label = 4;
                    objHasNext = it2.hasNext(c07331);
                    if (objHasNext == obj2) {
                    }
                    break;
                case 1:
                    ChannelIterator<E> channelIterator4 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07331 = this;
                    r4 = producerScope2;
                    it = channelIterator4;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    r43 = r4;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    it2 = c07331.$this_dropWhile.iterator();
                    r45 = r43;
                    c07331.L$0 = r45;
                    c07331.L$1 = it2;
                    c07331.label = 4;
                    objHasNext = it2.hasNext(c07331);
                    if (objHasNext == obj2) {
                    }
                    break;
                case 2:
                    Object obj6 = this.L$2;
                    ChannelIterator<E> channelIterator5 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope3 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073312 = this;
                    channelIterator = channelIterator5;
                    obj4 = obj6;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    r42 = producerScope3;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 3:
                    ProducerScope producerScope4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07331 = this;
                    r1 = producerScope4;
                    r43 = r1;
                    obj2 = coroutine_suspended;
                    it2 = c07331.$this_dropWhile.iterator();
                    r45 = r43;
                    c07331.L$0 = r45;
                    c07331.L$1 = it2;
                    c07331.label = 4;
                    objHasNext = it2.hasNext(c07331);
                    if (objHasNext == obj2) {
                    }
                    break;
                case 4:
                    ChannelIterator<E> channelIterator6 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope5 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07331 = this;
                    r44 = producerScope5;
                    channelIterator2 = channelIterator6;
                    obj2 = coroutine_suspended;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 5:
                    ChannelIterator<E> channelIterator7 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope6 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    it2 = channelIterator7;
                    obj2 = coroutine_suspended;
                    c07331 = this;
                    r45 = producerScope6;
                    c07331.L$0 = r45;
                    c07331.L$1 = it2;
                    c07331.label = 4;
                    objHasNext = it2.hasNext(c07331);
                    if (objHasNext == obj2) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel dropWhile(ReceiveChannel $this$dropWhile, CoroutineContext context, Function2 predicate) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$dropWhile), new C07331($this$dropWhile, predicate, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filter$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.filter(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {228, 229, 229}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    static final class C07361<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> $predicate;
        final /* synthetic */ ReceiveChannel<E> $this_filter;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07361(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C07361> continuation) {
            super(2, continuation);
            this.$this_filter = receiveChannel;
            this.$predicate = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07361 c07361 = new C07361(this.$this_filter, this.$predicate, continuation);
            c07361.L$0 = obj;
            return c07361;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07361) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0069 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00bc  */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v18 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r4v12 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, kotlinx.coroutines.channels.ProducerScope] */
        /* JADX WARN: Type inference failed for: r5v4 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00b0 -> B:10:0x0057). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00b6 -> B:10:0x0057). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ?? r3;
            ChannelIterator<E> it;
            C07361<E> c07361;
            C07361<E> c073612;
            ?? r4;
            ChannelIterator<E> channelIterator;
            Object obj2;
            Object obj3;
            C07361<E> c073613;
            ?? r5;
            ChannelIterator<E> channelIterator2;
            Object obj4;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope = (ProducerScope) this.L$0;
                    r3 = producerScope;
                    it = this.$this_filter.iterator();
                    c07361 = this;
                    c07361.L$0 = r3;
                    c07361.L$1 = it;
                    c07361.L$2 = null;
                    c07361.label = 1;
                    objHasNext = it.hasNext(c07361);
                    if (objHasNext != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj5 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext;
                    c073612 = c07361;
                    r4 = r3;
                    channelIterator = it;
                    obj2 = obj5;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    E next = channelIterator.next();
                    Function2<E, Continuation<? super Boolean>, Object> function2 = c073612.$predicate;
                    c073612.L$0 = r4;
                    c073612.L$1 = channelIterator;
                    c073612.L$2 = next;
                    c073612.label = 2;
                    Object objInvoke = function2.invoke(next, c073612);
                    if (objInvoke == obj2) {
                        return obj2;
                    }
                    ChannelIterator<E> channelIterator3 = channelIterator;
                    obj4 = next;
                    obj = objInvoke;
                    c073613 = c073612;
                    r5 = r4;
                    channelIterator2 = channelIterator3;
                    if (((Boolean) obj).booleanValue()) {
                        obj = obj3;
                        coroutine_suspended = obj2;
                        it = channelIterator2;
                        r3 = r5;
                        c07361 = c073613;
                    } else {
                        c073613.L$0 = r5;
                        c073613.L$1 = channelIterator2;
                        c073613.L$2 = null;
                        c073613.label = 3;
                        if (r5.send(obj4, c073613) == obj2) {
                            return obj2;
                        }
                        obj = obj3;
                        coroutine_suspended = obj2;
                        it = channelIterator2;
                        r3 = r5;
                        c07361 = c073613;
                    }
                    c07361.L$0 = r3;
                    c07361.L$1 = it;
                    c07361.L$2 = null;
                    c07361.label = 1;
                    objHasNext = it.hasNext(c07361);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                case 1:
                    ChannelIterator<E> channelIterator4 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073612 = this;
                    r4 = producerScope2;
                    channelIterator = channelIterator4;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 2:
                    Object obj6 = this.L$2;
                    ChannelIterator<E> channelIterator5 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope3 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073613 = this;
                    r5 = producerScope3;
                    channelIterator2 = channelIterator5;
                    obj4 = obj6;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    c07361.L$0 = r3;
                    c07361.L$1 = it;
                    c07361.L$2 = null;
                    c07361.label = 1;
                    objHasNext = it.hasNext(c07361);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                case 3:
                    it = (ChannelIterator) this.L$1;
                    ProducerScope producerScope4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07361 = this;
                    r3 = producerScope4;
                    c07361.L$0 = r3;
                    c07361.L$1 = it;
                    c07361.L$2 = null;
                    c07361.label = 1;
                    objHasNext = it.hasNext(c07361);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <E> ReceiveChannel<E> filter(ReceiveChannel<? extends E> receiveChannel, CoroutineContext context, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes(receiveChannel), new C07361(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filterIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterIndexed(receiveChannel, coroutineContext, function3);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {241, 242, 242}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "e", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
    static final class C07371<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function3<Integer, E, Continuation<? super Boolean>, Object> $predicate;
        final /* synthetic */ ReceiveChannel<E> $this_filterIndexed;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07371(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super C07371> continuation) {
            super(2, continuation);
            this.$this_filterIndexed = receiveChannel;
            this.$predicate = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07371 c07371 = new C07371(this.$this_filterIndexed, this.$predicate, continuation);
            c07371.L$0 = obj;
            return c07371;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07371) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0072 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00cf  */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Type inference failed for: r5v10 */
        /* JADX WARN: Type inference failed for: r5v12 */
        /* JADX WARN: Type inference failed for: r5v13 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object, kotlinx.coroutines.channels.ProducerScope] */
        /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.Object] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00c1 -> B:10:0x005e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00c8 -> B:10:0x005e). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ?? r4;
            int i;
            ChannelIterator<E> it;
            C07371<E> c07371;
            C07371<E> c073712;
            ?? r5;
            ChannelIterator<E> channelIterator;
            int i2;
            Object obj2;
            Object obj3;
            Object obj4;
            int i3;
            ?? r52;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    r4 = (ProducerScope) this.L$0;
                    i = 0;
                    it = this.$this_filterIndexed.iterator();
                    c07371 = this;
                    c07371.L$0 = r4;
                    c07371.L$1 = it;
                    c07371.L$2 = null;
                    c07371.I$0 = i;
                    c07371.label = 1;
                    objHasNext = it.hasNext(c07371);
                    if (objHasNext != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj5 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext;
                    c073712 = c07371;
                    r5 = r4;
                    channelIterator = it;
                    i2 = i;
                    obj2 = obj5;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    E next = channelIterator.next();
                    Function3<Integer, E, Continuation<? super Boolean>, Object> function3 = c073712.$predicate;
                    i3 = i2 + 1;
                    Integer numBoxInt = Boxing.boxInt(i2);
                    c073712.L$0 = r5;
                    c073712.L$1 = channelIterator;
                    c073712.L$2 = next;
                    c073712.I$0 = i3;
                    c073712.label = 2;
                    Object objInvoke = function3.invoke(numBoxInt, next, c073712);
                    if (objInvoke == obj2) {
                        return obj2;
                    }
                    obj4 = next;
                    obj = objInvoke;
                    r52 = r5;
                    if (((Boolean) obj).booleanValue()) {
                        obj = obj3;
                        coroutine_suspended = obj2;
                        it = channelIterator;
                        r4 = r52;
                        c07371 = c073712;
                        i = i3;
                    } else {
                        c073712.L$0 = r52;
                        c073712.L$1 = channelIterator;
                        c073712.L$2 = null;
                        c073712.I$0 = i3;
                        c073712.label = 3;
                        if (r52.send(obj4, c073712) == obj2) {
                            return obj2;
                        }
                        obj = obj3;
                        coroutine_suspended = obj2;
                        it = channelIterator;
                        r4 = r52;
                        c07371 = c073712;
                        i = i3;
                    }
                    c07371.L$0 = r4;
                    c07371.L$1 = it;
                    c07371.L$2 = null;
                    c07371.I$0 = i;
                    c07371.label = 1;
                    objHasNext = it.hasNext(c07371);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                case 1:
                    int i4 = this.I$0;
                    ChannelIterator<E> channelIterator2 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073712 = this;
                    r5 = producerScope;
                    channelIterator = channelIterator2;
                    i2 = i4;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 2:
                    int i5 = this.I$0;
                    obj4 = this.L$2;
                    channelIterator = (ChannelIterator) this.L$1;
                    ProducerScope producerScope2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073712 = this;
                    i3 = i5;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    r52 = producerScope2;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    c07371.L$0 = r4;
                    c07371.L$1 = it;
                    c07371.L$2 = null;
                    c07371.I$0 = i;
                    c07371.label = 1;
                    objHasNext = it.hasNext(c07371);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                case 3:
                    i = this.I$0;
                    it = (ChannelIterator) this.L$1;
                    ProducerScope producerScope3 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07371 = this;
                    r4 = producerScope3;
                    c07371.L$0 = r4;
                    c07371.L$1 = it;
                    c07371.L$2 = null;
                    c07371.I$0 = i;
                    c07371.label = 1;
                    objHasNext = it.hasNext(c07371);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel filterIndexed(ReceiveChannel $this$filterIndexed, CoroutineContext context, Function3 predicate) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$filterIndexed), new C07371($this$filterIndexed, predicate, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filterNot$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterNot(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1", f = "Deprecated.kt", i = {}, l = {252}, m = "invokeSuspend", n = {}, s = {})
    static final class C07381<E> extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {
        final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> $predicate;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07381(Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C07381> continuation) {
            super(2, continuation);
            this.$predicate = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07381 c07381 = new C07381(this.$predicate, continuation);
            c07381.L$0 = obj;
            return c07381;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(E e, Continuation<? super Boolean> continuation) {
            return ((C07381) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1<E> for r4v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r4.label
                r2 = 1
                switch(r1) {
                    case 0: goto L17;
                    case 1: goto L12;
                    default: goto La;
                }
            La:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r0)
                throw r5
            L12:
                kotlin.ResultKt.throwOnFailure(r5)
                r0 = r5
                goto L29
            L17:
                kotlin.ResultKt.throwOnFailure(r5)
                java.lang.Object r1 = r4.L$0
                kotlin.jvm.functions.Function2<E, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r3 = r4.$predicate
                r4.label = r2
                java.lang.Object r1 = r3.invoke(r1, r4)
                if (r1 != r0) goto L27
                return r0
            L27:
                r0 = r5
                r5 = r1
            L29:
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                boolean r5 = r5.booleanValue()
                r5 = r5 ^ r2
                java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C07381.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel filterNot(ReceiveChannel $this$filterNot, CoroutineContext context, Function2 predicate) {
        return ChannelsKt.filter($this$filterNot, context, new C07381(predicate, null));
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07391<E> extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C07391(Continuation<? super C07391> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07391 c07391 = new C07391(continuation);
            c07391.L$0 = obj;
            return c07391;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(E e, Continuation<? super Boolean> continuation) {
            return ((C07391) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Object it = this.L$0;
                    return Boxing.boxBoolean(it != null);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <E> ReceiveChannel<E> filterNotNull(ReceiveChannel<? extends E> receiveChannel) {
        ReceiveChannel<E> receiveChannelFilter$default = filter$default(receiveChannel, null, new C07391(null), 1, null);
        Intrinsics.checkNotNull(receiveChannelFilter$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNull>");
        return receiveChannelFilter$default;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[Catch: all -> 0x009d, TryCatch #3 {all -> 0x009d, blocks: (B:24:0x0078, B:26:0x0080, B:28:0x0087, B:30:0x0093), top: B:48:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0093 A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #3 {all -> 0x009d, blocks: (B:24:0x0078, B:26:0x0080, B:28:0x0087, B:30:0x0093), top: B:48:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006f -> B:48:0x0078). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object filterNotNullTo(ReceiveChannel $this$consumeEach$iv, Collection destination, Continuation $completion) {
        C07401 c07401;
        ReceiveChannel $this$consume$iv$iv;
        Throwable cause$iv$iv;
        Object $result;
        Collection destination2;
        ReceiveChannel $this$consume$iv$iv2;
        Throwable cause$iv$iv2;
        ChannelIterator channelIterator;
        int i;
        Object obj;
        if ($completion instanceof C07401) {
            c07401 = (C07401) $completion;
            if ((c07401.label & Integer.MIN_VALUE) != 0) {
                c07401.label -= Integer.MIN_VALUE;
            } else {
                c07401 = new C07401($completion);
            }
        }
        Object $result2 = c07401.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07401.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                $this$consume$iv$iv = $this$consumeEach$iv;
                Throwable cause$iv$iv3 = null;
                try {
                    int $i$f$consumeEach = 0;
                    Collection destination3 = destination;
                    ChannelIterator it = $this$consume$iv$iv.iterator();
                    c07401.L$0 = destination3;
                    c07401.L$1 = $this$consume$iv$iv;
                    c07401.L$2 = it;
                    c07401.label = 1;
                    Object objHasNext = it.hasNext(c07401);
                    if (objHasNext != $result3) {
                        return $result3;
                    }
                    Object obj2 = $result3;
                    $result = $result2;
                    $result2 = objHasNext;
                    destination2 = destination3;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv2 = cause$iv$iv3;
                    channelIterator = it;
                    i = $i$f$consumeEach;
                    obj = obj2;
                    try {
                        if (((Boolean) $result2).booleanValue()) {
                            Object it2 = channelIterator.next();
                            if (it2 != null) {
                                destination2.add(it2);
                            }
                            $result2 = $result;
                            $result3 = obj;
                            $i$f$consumeEach = i;
                            it = channelIterator;
                            cause$iv$iv3 = cause$iv$iv;
                            $this$consume$iv$iv = $this$consume$iv$iv;
                            destination3 = destination2;
                            c07401.L$0 = destination3;
                            c07401.L$1 = $this$consume$iv$iv;
                            c07401.L$2 = it;
                            c07401.label = 1;
                            Object objHasNext2 = it.hasNext(c07401);
                            if (objHasNext2 != $result3) {
                            }
                        } else {
                            Unit unit = Unit.INSTANCE;
                            return destination2;
                        }
                    } catch (Throwable th) {
                        e$iv$iv = th;
                        $this$consume$iv$iv = $this$consume$iv$iv;
                        cause$iv$iv = e$iv$iv;
                        try {
                            throw e$iv$iv;
                        } finally {
                            ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv);
                        }
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                    cause$iv$iv = e$iv$iv;
                    throw e$iv$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c07401.L$2;
                $this$consume$iv$iv = (ReceiveChannel) c07401.L$1;
                Collection destination4 = (Collection) c07401.L$0;
                try {
                    ResultKt.throwOnFailure($result2);
                    destination2 = destination4;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv2 = null;
                    channelIterator = channelIterator2;
                    i = 0;
                    obj = $result3;
                    $result = $result2;
                    if (((Boolean) $result2).booleanValue()) {
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                    cause$iv$iv = e$iv$iv;
                    throw e$iv$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0083 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093 A[Catch: all -> 0x00c9, TryCatch #1 {all -> 0x00c9, blocks: (B:27:0x008b, B:29:0x0093, B:31:0x009a, B:38:0x00bf), top: B:54:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf A[Catch: all -> 0x00c9, TRY_LEAVE, TryCatch #1 {all -> 0x00c9, blocks: (B:27:0x008b, B:29:0x0093, B:31:0x009a, B:38:0x00bf), top: B:54:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00aa -> B:35:0x00af). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:37:0x00be). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object filterNotNullTo(ReceiveChannel $this$consumeEach$iv, SendChannel destination, Continuation $completion) {
        AnonymousClass3 anonymousClass3;
        ReceiveChannel $this$consume$iv$iv;
        Throwable cause$iv$iv;
        int i;
        ChannelIterator it;
        Continuation $completion2;
        Object obj;
        Object $result;
        AnonymousClass3 anonymousClass32;
        Continuation $continuation;
        Continuation continuation;
        ChannelIterator channelIterator;
        SendChannel destination2;
        int i2;
        ChannelIterator channelIterator2;
        Object objHasNext;
        if ($completion instanceof AnonymousClass3) {
            anonymousClass3 = (AnonymousClass3) $completion;
            if ((anonymousClass3.label & Integer.MIN_VALUE) != 0) {
                anonymousClass3.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass3 = new AnonymousClass3($completion);
            }
        }
        Object $result2 = anonymousClass3.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
        } catch (Throwable th) {
            e$iv$iv = th;
        }
        switch (anonymousClass3.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                $this$consume$iv$iv = $this$consumeEach$iv;
                cause$iv$iv = null;
                i = 0;
                try {
                    it = $this$consume$iv$iv.iterator();
                    $completion2 = null;
                    obj = $result3;
                    $result = $result2;
                    anonymousClass32 = anonymousClass3;
                    $continuation = $completion;
                    try {
                        anonymousClass32.L$0 = destination;
                        anonymousClass32.L$1 = $this$consume$iv$iv;
                        anonymousClass32.L$2 = it;
                        anonymousClass32.label = 1;
                        objHasNext = it.hasNext(anonymousClass32);
                    } catch (Throwable th2) {
                        e$iv$iv = th2;
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                }
                if (objHasNext != obj) {
                    return obj;
                }
                ChannelIterator channelIterator3 = it;
                destination2 = destination;
                continuation = $completion2;
                $completion = $continuation;
                anonymousClass3 = anonymousClass32;
                $result2 = objHasNext;
                channelIterator = channelIterator3;
                try {
                    if (!((Boolean) $result2).booleanValue()) {
                        Unit unit = Unit.INSTANCE;
                        return destination2;
                    }
                    Object it2 = channelIterator.next();
                    if (it2 != null) {
                        anonymousClass3.L$0 = destination2;
                        anonymousClass3.L$1 = $this$consume$iv$iv;
                        anonymousClass3.L$2 = channelIterator;
                        anonymousClass3.label = 2;
                        if (destination2.send(it2, anonymousClass3) == obj) {
                            return obj;
                        }
                        $result2 = $result;
                        $result3 = obj;
                        i2 = i;
                        channelIterator2 = channelIterator;
                        Continuation continuation2 = $completion;
                        $completion2 = continuation;
                        destination = destination2;
                        it = channelIterator2;
                        i = i2;
                        obj = $result3;
                        $result = $result2;
                        anonymousClass32 = anonymousClass3;
                        $continuation = continuation2;
                        anonymousClass32.L$0 = destination;
                        anonymousClass32.L$1 = $this$consume$iv$iv;
                        anonymousClass32.L$2 = it;
                        anonymousClass32.label = 1;
                        objHasNext = it.hasNext(anonymousClass32);
                        if (objHasNext != obj) {
                        }
                    } else {
                        anonymousClass32 = anonymousClass3;
                        $continuation = $completion;
                        $completion2 = continuation;
                        destination = destination2;
                        it = channelIterator;
                        anonymousClass32.L$0 = destination;
                        anonymousClass32.L$1 = $this$consume$iv$iv;
                        anonymousClass32.L$2 = it;
                        anonymousClass32.label = 1;
                        objHasNext = it.hasNext(anonymousClass32);
                        if (objHasNext != obj) {
                        }
                    }
                } catch (Throwable th4) {
                    e$iv$iv = th4;
                }
                Throwable cause$iv$iv2 = e$iv$iv;
                try {
                    throw e$iv$iv;
                } finally {
                    ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv2);
                }
                break;
            case 1:
                continuation = null;
                channelIterator = (ChannelIterator) anonymousClass3.L$2;
                cause$iv$iv = null;
                ReceiveChannel $this$consume$iv$iv2 = (ReceiveChannel) anonymousClass3.L$1;
                $this$consume$iv$iv = $this$consume$iv$iv2;
                SendChannel destination3 = (SendChannel) anonymousClass3.L$0;
                ResultKt.throwOnFailure($result2);
                destination2 = destination3;
                i = 0;
                obj = $result3;
                $result = $result2;
                if (!((Boolean) $result2).booleanValue()) {
                }
                Throwable cause$iv$iv22 = e$iv$iv;
                throw e$iv$iv;
            case 2:
                continuation = null;
                i2 = 0;
                channelIterator2 = (ChannelIterator) anonymousClass3.L$2;
                cause$iv$iv = null;
                $this$consume$iv$iv = (ReceiveChannel) anonymousClass3.L$1;
                destination2 = (SendChannel) anonymousClass3.L$0;
                ResultKt.throwOnFailure($result2);
                Continuation continuation22 = $completion;
                $completion2 = continuation;
                destination = destination2;
                it = channelIterator2;
                i = i2;
                obj = $result3;
                $result = $result2;
                anonymousClass32 = anonymousClass3;
                $continuation = continuation22;
                anonymousClass32.L$0 = destination;
                anonymousClass32.L$1 = $this$consume$iv$iv;
                anonymousClass32.L$2 = it;
                anonymousClass32.label = 1;
                objHasNext = it.hasNext(anonymousClass32);
                if (objHasNext != obj) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ ReceiveChannel take$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return take(receiveChannel, i, coroutineContext);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {284, 285}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "remaining"}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class C07561<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $n;
        final /* synthetic */ ReceiveChannel<E> $this_take;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07561(int i, ReceiveChannel<? extends E> receiveChannel, Continuation<? super C07561> continuation) {
            super(2, continuation);
            this.$n = i;
            this.$this_take = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07561 c07561 = new C07561(this.$n, this.$this_take, continuation);
            c07561.L$0 = obj;
            return c07561;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07561) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0069 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00a1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008f -> B:29:0x0095). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            int remaining;
            ChannelIterator<E> it;
            C07561<E> c07561;
            C07561<E> c075612;
            ProducerScope $this$produce;
            Object obj;
            Object $result2;
            int remaining2;
            ChannelIterator<E> channelIterator;
            ProducerScope $this$produce2;
            int remaining3;
            Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProducerScope $this$produce3 = (ProducerScope) this.L$0;
                    if (this.$n == 0) {
                        return Unit.INSTANCE;
                    }
                    boolean z = this.$n >= 0;
                    int i = this.$n;
                    if (!z) {
                        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
                    }
                    remaining = this.$n;
                    it = this.$this_take.iterator();
                    c07561 = this;
                    c07561.L$0 = $this$produce3;
                    c07561.L$1 = it;
                    c07561.I$0 = remaining;
                    c07561.label = 1;
                    Object objHasNext = it.hasNext(c07561);
                    if (objHasNext != $result3) {
                        return $result3;
                    }
                    Object obj2 = $result3;
                    $result2 = $result;
                    $result = objHasNext;
                    c075612 = c07561;
                    $this$produce = $this$produce3;
                    obj = obj2;
                    if (!((Boolean) $result).booleanValue()) {
                        c075612.L$0 = $this$produce;
                        c075612.L$1 = it;
                        c075612.I$0 = remaining;
                        c075612.label = 2;
                        Object e = $this$produce.send(it.next(), c075612);
                        if (e == obj) {
                            return obj;
                        }
                        $result = $result2;
                        $result3 = obj;
                        remaining2 = remaining;
                        channelIterator = it;
                        $this$produce2 = $this$produce;
                        c07561 = c075612;
                        remaining3 = remaining2 - 1;
                        if (remaining3 == 0) {
                            ChannelIterator<E> channelIterator2 = channelIterator;
                            remaining = remaining3;
                            $this$produce3 = $this$produce2;
                            it = channelIterator2;
                            c07561.L$0 = $this$produce3;
                            c07561.L$1 = it;
                            c07561.I$0 = remaining;
                            c07561.label = 1;
                            Object objHasNext2 = it.hasNext(c07561);
                            if (objHasNext2 != $result3) {
                            }
                        } else {
                            return Unit.INSTANCE;
                        }
                    } else {
                        return Unit.INSTANCE;
                    }
                    break;
                case 1:
                    int remaining4 = this.I$0;
                    ChannelIterator<E> channelIterator3 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c075612 = this;
                    $this$produce = $this$produce4;
                    it = channelIterator3;
                    remaining = remaining4;
                    obj = $result3;
                    $result2 = $result;
                    if (!((Boolean) $result).booleanValue()) {
                    }
                    break;
                case 2:
                    remaining2 = this.I$0;
                    channelIterator = (ChannelIterator) this.L$1;
                    $this$produce2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c07561 = this;
                    remaining3 = remaining2 - 1;
                    if (remaining3 == 0) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel take(ReceiveChannel $this$take, int n, CoroutineContext context) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$take), new C07561(n, $this$take, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel takeWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return takeWhile(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {299, 300, 301}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    static final class C07571<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> $predicate;
        final /* synthetic */ ReceiveChannel<E> $this_takeWhile;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07571(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C07571> continuation) {
            super(2, continuation);
            this.$this_takeWhile = receiveChannel;
            this.$predicate = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07571 c07571 = new C07571(this.$this_takeWhile, this.$predicate, continuation);
            c07571.L$0 = obj;
            return c07571;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07571) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0066 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v13, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, kotlinx.coroutines.channels.ProducerScope] */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00b1 -> B:10:0x0056). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ?? r2;
            ChannelIterator<E> it;
            C07571<E> c07571;
            C07571<E> c075712;
            ?? r3;
            ChannelIterator<E> channelIterator;
            Object obj2;
            Object obj3;
            C07571<E> c075713;
            ?? r4;
            ChannelIterator<E> channelIterator2;
            Object obj4;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope = (ProducerScope) this.L$0;
                    r2 = producerScope;
                    it = this.$this_takeWhile.iterator();
                    c07571 = this;
                    c07571.L$0 = r2;
                    c07571.L$1 = it;
                    c07571.label = 1;
                    objHasNext = it.hasNext(c07571);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj5 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext;
                    c075712 = c07571;
                    r3 = r2;
                    channelIterator = it;
                    obj2 = obj5;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    E next = channelIterator.next();
                    Function2<E, Continuation<? super Boolean>, Object> function2 = c075712.$predicate;
                    c075712.L$0 = r3;
                    c075712.L$1 = channelIterator;
                    c075712.L$2 = next;
                    c075712.label = 2;
                    Object objInvoke = function2.invoke(next, c075712);
                    if (objInvoke == obj2) {
                        return obj2;
                    }
                    ChannelIterator<E> channelIterator3 = channelIterator;
                    obj4 = next;
                    obj = objInvoke;
                    c075713 = c075712;
                    r4 = r3;
                    channelIterator2 = channelIterator3;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    c075713.L$0 = r4;
                    c075713.L$1 = channelIterator2;
                    c075713.L$2 = null;
                    c075713.label = 3;
                    if (r4.send(obj4, c075713) == obj2) {
                        return obj2;
                    }
                    obj = obj3;
                    coroutine_suspended = obj2;
                    it = channelIterator2;
                    r2 = r4;
                    c07571 = c075713;
                    c07571.L$0 = r2;
                    c07571.L$1 = it;
                    c07571.label = 1;
                    objHasNext = it.hasNext(c07571);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                case 1:
                    ChannelIterator<E> channelIterator4 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c075712 = this;
                    r3 = producerScope2;
                    channelIterator = channelIterator4;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 2:
                    Object obj6 = this.L$2;
                    ChannelIterator<E> channelIterator5 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope3 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c075713 = this;
                    r4 = producerScope3;
                    channelIterator2 = channelIterator5;
                    obj4 = obj6;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 3:
                    it = (ChannelIterator) this.L$1;
                    ProducerScope producerScope4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07571 = this;
                    r2 = producerScope4;
                    c07571.L$0 = r2;
                    c07571.L$1 = it;
                    c07571.label = 1;
                    objHasNext = it.hasNext(c07571);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel takeWhile(ReceiveChannel $this$takeWhile, CoroutineContext context, Function2 predicate) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$takeWhile), new C07571($this$takeWhile, predicate, null), 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c A[Catch: all -> 0x00c3, TryCatch #1 {all -> 0x00c3, blocks: (B:27:0x0094, B:29:0x009c, B:34:0x00b9), top: B:50:0x0094 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9 A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #1 {all -> 0x00c3, blocks: (B:27:0x0094, B:29:0x009c, B:34:0x00b9), top: B:50:0x0094 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:33:0x00b7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E, C extends SendChannel<? super E>> Object toChannel(ReceiveChannel<? extends E> receiveChannel, C c, Continuation<? super C> continuation) {
        C07581 c07581;
        ReceiveChannel<? extends E> receiveChannel2;
        Throwable th;
        ChannelIterator<? extends E> it;
        Continuation continuation2;
        Object obj;
        Object obj2;
        C07581 c075812;
        Continuation<? super C> continuation3;
        Continuation continuation4;
        ChannelIterator<? extends E> channelIterator;
        SendChannel sendChannel;
        SendChannel sendChannel2;
        SendChannel sendChannel3;
        Object objHasNext;
        if (continuation instanceof C07581) {
            c07581 = (C07581) continuation;
            if ((c07581.label & Integer.MIN_VALUE) != 0) {
                c07581.label -= Integer.MIN_VALUE;
            } else {
                c07581 = new C07581(continuation);
            }
        }
        Object obj3 = c07581.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
        } catch (Throwable th2) {
            th = th2;
        }
        switch (c07581.label) {
            case 0:
                ResultKt.throwOnFailure(obj3);
                receiveChannel2 = receiveChannel;
                th = null;
                try {
                    it = receiveChannel2.iterator();
                    continuation2 = null;
                    obj = coroutine_suspended;
                    obj2 = obj3;
                    c075812 = c07581;
                    continuation3 = continuation;
                    sendChannel3 = c;
                    try {
                        c075812.L$0 = sendChannel3;
                        c075812.L$1 = receiveChannel2;
                        c075812.L$2 = it;
                        c075812.label = 1;
                        objHasNext = it.hasNext(c075812);
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
                if (objHasNext == obj) {
                    return obj;
                }
                ChannelIterator<? extends E> channelIterator2 = it;
                sendChannel = sendChannel3;
                continuation4 = continuation2;
                continuation = continuation3;
                c07581 = c075812;
                obj3 = objHasNext;
                channelIterator = channelIterator2;
                try {
                    if (((Boolean) obj3).booleanValue()) {
                        Unit unit = Unit.INSTANCE;
                        return sendChannel;
                    }
                    E next = channelIterator.next();
                    c07581.L$0 = sendChannel;
                    c07581.L$1 = receiveChannel2;
                    c07581.L$2 = channelIterator;
                    c07581.label = 2;
                    if (sendChannel.send(next, c07581) == obj) {
                        return obj;
                    }
                    c075812 = c07581;
                    continuation3 = continuation;
                    continuation2 = continuation4;
                    sendChannel2 = sendChannel;
                    it = channelIterator;
                    sendChannel3 = sendChannel2;
                    c075812.L$0 = sendChannel3;
                    c075812.L$1 = receiveChannel2;
                    c075812.L$2 = it;
                    c075812.label = 1;
                    objHasNext = it.hasNext(c075812);
                    if (objHasNext == obj) {
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
                Throwable th6 = th;
                try {
                    throw th;
                } finally {
                    ChannelsKt.cancelConsumed(receiveChannel2, th6);
                }
                break;
            case 1:
                continuation4 = null;
                channelIterator = (ChannelIterator) c07581.L$2;
                th = null;
                receiveChannel2 = (ReceiveChannel) c07581.L$1;
                SendChannel sendChannel4 = (SendChannel) c07581.L$0;
                ResultKt.throwOnFailure(obj3);
                sendChannel = sendChannel4;
                obj = coroutine_suspended;
                obj2 = obj3;
                if (((Boolean) obj3).booleanValue()) {
                }
                Throwable th62 = th;
                throw th;
            case 2:
                ChannelIterator<? extends E> channelIterator3 = (ChannelIterator) c07581.L$2;
                th = null;
                receiveChannel2 = (ReceiveChannel) c07581.L$1;
                SendChannel sendChannel5 = (SendChannel) c07581.L$0;
                ResultKt.throwOnFailure(obj3);
                continuation2 = null;
                SendChannel sendChannel6 = (C) sendChannel5;
                it = channelIterator3;
                obj = coroutine_suspended;
                obj2 = obj3;
                c075812 = c07581;
                continuation3 = continuation;
                sendChannel2 = sendChannel6;
                sendChannel3 = sendChannel2;
                c075812.L$0 = sendChannel3;
                c075812.L$1 = receiveChannel2;
                c075812.L$2 = it;
                c075812.label = 1;
                objHasNext = it.hasNext(c075812);
                if (objHasNext == obj) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[Catch: all -> 0x009c, TryCatch #3 {all -> 0x009c, blocks: (B:24:0x0078, B:26:0x0080, B:27:0x0092), top: B:45:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092 A[Catch: all -> 0x009c, TRY_LEAVE, TryCatch #3 {all -> 0x009c, blocks: (B:24:0x0078, B:26:0x0080, B:27:0x0092), top: B:45:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006f -> B:45:0x0078). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E, C extends Collection<? super E>> Object toCollection(ReceiveChannel<? extends E> receiveChannel, C c, Continuation<? super C> continuation) {
        C07591 c07591;
        ReceiveChannel<? extends E> receiveChannel2;
        Throwable cause$iv$iv;
        Object $result;
        ?? r8;
        ReceiveChannel<? extends E> receiveChannel3;
        Throwable cause$iv$iv2;
        ChannelIterator channelIterator;
        int i;
        Object obj;
        if (continuation instanceof C07591) {
            c07591 = (C07591) continuation;
            if ((c07591.label & Integer.MIN_VALUE) != 0) {
                c07591.label -= Integer.MIN_VALUE;
            } else {
                c07591 = new C07591(continuation);
            }
        }
        Object e$iv = c07591.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07591.label) {
            case 0:
                ResultKt.throwOnFailure(e$iv);
                receiveChannel2 = receiveChannel;
                Throwable cause$iv$iv3 = null;
                try {
                    int $i$f$consumeEach = 0;
                    ?? r7 = c;
                    ChannelIterator it = receiveChannel2.iterator();
                    c07591.L$0 = r7;
                    c07591.L$1 = receiveChannel2;
                    c07591.L$2 = it;
                    c07591.label = 1;
                    Object objHasNext = it.hasNext(c07591);
                    if (objHasNext != $result2) {
                        return $result2;
                    }
                    Object obj2 = $result2;
                    $result = e$iv;
                    e$iv = objHasNext;
                    r8 = r7;
                    receiveChannel3 = receiveChannel2;
                    cause$iv$iv2 = cause$iv$iv3;
                    channelIterator = it;
                    i = $i$f$consumeEach;
                    obj = obj2;
                    try {
                        if (!((Boolean) e$iv).booleanValue()) {
                            r8.add(channelIterator.next());
                            e$iv = $result;
                            $result2 = obj;
                            $i$f$consumeEach = i;
                            it = channelIterator;
                            cause$iv$iv3 = cause$iv$iv;
                            receiveChannel2 = receiveChannel2;
                            r7 = r8;
                            c07591.L$0 = r7;
                            c07591.L$1 = receiveChannel2;
                            c07591.L$2 = it;
                            c07591.label = 1;
                            Object objHasNext2 = it.hasNext(c07591);
                            if (objHasNext2 != $result2) {
                            }
                        } else {
                            Unit unit = Unit.INSTANCE;
                            return r8;
                        }
                    } catch (Throwable th) {
                        e$iv$iv = th;
                        receiveChannel2 = receiveChannel2;
                        cause$iv$iv = e$iv$iv;
                        try {
                            throw e$iv$iv;
                        } finally {
                            ChannelsKt.cancelConsumed(receiveChannel2, cause$iv$iv);
                        }
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                    cause$iv$iv = e$iv$iv;
                    throw e$iv$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c07591.L$2;
                receiveChannel2 = (ReceiveChannel) c07591.L$1;
                Collection destination = (Collection) c07591.L$0;
                try {
                    ResultKt.throwOnFailure(e$iv);
                    r8 = destination;
                    receiveChannel3 = receiveChannel2;
                    cause$iv$iv2 = null;
                    channelIterator = channelIterator2;
                    i = 0;
                    obj = $result2;
                    $result = e$iv;
                    if (!((Boolean) e$iv).booleanValue()) {
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                    cause$iv$iv = e$iv$iv;
                    throw e$iv$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b A[Catch: all -> 0x00b2, TryCatch #1 {all -> 0x00b2, blocks: (B:24:0x0083, B:26:0x008b, B:27:0x00a8), top: B:43:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8 A[Catch: all -> 0x00b2, TRY_LEAVE, TryCatch #1 {all -> 0x00b2, blocks: (B:24:0x0083, B:26:0x008b, B:27:0x00a8), top: B:43:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0077 -> B:43:0x0083). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <K, V, M extends Map<? super K, ? super V>> Object toMap(ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel, M m, Continuation<? super M> continuation) {
        AnonymousClass2 anonymousClass2;
        ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel2;
        Map destination;
        int $i$f$consume;
        int $i$f$consume2;
        ?? r10;
        ChannelIterator it;
        Throwable cause$iv$iv;
        Object objHasNext;
        Object $result;
        ?? r11;
        ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel3;
        Throwable cause$iv$iv2;
        ChannelIterator channelIterator;
        int i;
        Map map;
        int $i$f$consume3;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        }
        AnonymousClass2 anonymousClass22 = anonymousClass2;
        Object e$iv = anonymousClass22.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass22.label) {
            case 0:
                ResultKt.throwOnFailure(e$iv);
                receiveChannel2 = receiveChannel;
                Throwable cause$iv$iv3 = null;
                try {
                    destination = null;
                    $i$f$consume = 0;
                    $i$f$consume2 = 0;
                    r10 = m;
                    it = receiveChannel2.iterator();
                    try {
                        anonymousClass22.L$0 = r10;
                        anonymousClass22.L$1 = receiveChannel2;
                        anonymousClass22.L$2 = it;
                        anonymousClass22.label = 1;
                        objHasNext = it.hasNext(anonymousClass22);
                    } catch (Throwable th) {
                        e$iv$iv = th;
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                }
                if (objHasNext != coroutine_suspended) {
                    return coroutine_suspended;
                }
                int i2 = $i$f$consume;
                $result = e$iv;
                e$iv = objHasNext;
                r11 = r10;
                receiveChannel3 = receiveChannel2;
                cause$iv$iv2 = cause$iv$iv3;
                channelIterator = it;
                i = $i$f$consume2;
                map = destination;
                $i$f$consume3 = i2;
                try {
                    if (!((Boolean) e$iv).booleanValue()) {
                        Pair it2 = (Pair) channelIterator.next();
                        r11.put(it2.getFirst(), it2.getSecond());
                        e$iv = $result;
                        $i$f$consume = $i$f$consume3;
                        destination = map;
                        $i$f$consume2 = i;
                        it = channelIterator;
                        cause$iv$iv3 = cause$iv$iv;
                        receiveChannel2 = receiveChannel2;
                        r10 = r11;
                        anonymousClass22.L$0 = r10;
                        anonymousClass22.L$1 = receiveChannel2;
                        anonymousClass22.L$2 = it;
                        anonymousClass22.label = 1;
                        objHasNext = it.hasNext(anonymousClass22);
                        if (objHasNext != coroutine_suspended) {
                        }
                    } else {
                        Unit unit = Unit.INSTANCE;
                        return r11;
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                    receiveChannel2 = receiveChannel2;
                }
                cause$iv$iv = e$iv$iv;
                try {
                    throw e$iv$iv;
                } finally {
                    ChannelsKt.cancelConsumed(receiveChannel2, cause$iv$iv);
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) anonymousClass22.L$2;
                receiveChannel2 = (ReceiveChannel) anonymousClass22.L$1;
                Map destination2 = (Map) anonymousClass22.L$0;
                try {
                    ResultKt.throwOnFailure(e$iv);
                    r11 = destination2;
                    receiveChannel3 = receiveChannel2;
                    cause$iv$iv2 = null;
                    channelIterator = channelIterator2;
                    i = 0;
                    map = null;
                    $i$f$consume3 = 0;
                    $result = e$iv;
                    if (!((Boolean) e$iv).booleanValue()) {
                    }
                } catch (Throwable th4) {
                    e$iv$iv = th4;
                }
                cause$iv$iv = e$iv$iv;
                throw e$iv$iv;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ ReceiveChannel flatMap$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return flatMap(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {351, 352, 352}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    static final class C07431<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReceiveChannel<E> $this_flatMap;
        final /* synthetic */ Function2<E, Continuation<? super ReceiveChannel<? extends R>>, Object> $transform;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07431(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super ReceiveChannel<? extends R>>, ? extends Object> function2, Continuation<? super C07431> continuation) {
            super(2, continuation);
            this.$this_flatMap = receiveChannel;
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07431 c07431 = new C07431(this.$this_flatMap, this.$transform, continuation);
            c07431.L$0 = obj;
            return c07431;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((C07431) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0062 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x009b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x009c -> B:10:0x0052). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ProducerScope producerScope;
            ChannelIterator it;
            C07431<R> c07431;
            C07431<R> c074312;
            ProducerScope producerScope2;
            ChannelIterator channelIterator;
            Object obj2;
            Object obj3;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope3 = (ProducerScope) this.L$0;
                    producerScope = producerScope3;
                    it = this.$this_flatMap.iterator();
                    c07431 = this;
                    c07431.L$0 = producerScope;
                    c07431.L$1 = it;
                    c07431.label = 1;
                    objHasNext = it.hasNext(c07431);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj4 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext;
                    c074312 = c07431;
                    producerScope2 = producerScope;
                    channelIterator = it;
                    obj2 = obj4;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    Object next = channelIterator.next();
                    Function2<E, Continuation<? super ReceiveChannel<? extends R>>, Object> function2 = c074312.$transform;
                    c074312.L$0 = producerScope2;
                    c074312.L$1 = channelIterator;
                    c074312.label = 2;
                    obj = function2.invoke((E) next, c074312);
                    if (obj == obj2) {
                        return obj2;
                    }
                    c074312.L$0 = producerScope2;
                    c074312.L$1 = channelIterator;
                    c074312.label = 3;
                    if (ChannelsKt.toChannel((ReceiveChannel) obj, producerScope2, c074312) != obj2) {
                        return obj2;
                    }
                    obj = obj3;
                    coroutine_suspended = obj2;
                    it = channelIterator;
                    producerScope = producerScope2;
                    c07431 = c074312;
                    c07431.L$0 = producerScope;
                    c07431.L$1 = it;
                    c07431.label = 1;
                    objHasNext = it.hasNext(c07431);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                case 1:
                    ChannelIterator channelIterator2 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c074312 = this;
                    producerScope2 = producerScope4;
                    channelIterator = channelIterator2;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 2:
                    ChannelIterator channelIterator3 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope5 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c074312 = this;
                    producerScope2 = producerScope5;
                    channelIterator = channelIterator3;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    c074312.L$0 = producerScope2;
                    c074312.L$1 = channelIterator;
                    c074312.label = 3;
                    if (ChannelsKt.toChannel((ReceiveChannel) obj, producerScope2, c074312) != obj2) {
                    }
                    break;
                case 3:
                    it = (ChannelIterator) this.L$1;
                    producerScope = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c07431 = this;
                    c07431.L$0 = producerScope;
                    c07431.L$1 = it;
                    c07431.label = 1;
                    objHasNext = it.hasNext(c07431);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel flatMap(ReceiveChannel $this$flatMap, CoroutineContext context, Function2 transform) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$flatMap), new C07431($this$flatMap, transform, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel map$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.map(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {514, 363, 363}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
    static final class C07481<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReceiveChannel<E> $this_map;
        final /* synthetic */ Function2<E, Continuation<? super R>, Object> $transform;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07481(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super C07481> continuation) {
            super(2, continuation);
            this.$this_map = receiveChannel;
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07481 c07481 = new C07481(this.$this_map, this.$transform, continuation);
            c07481.L$0 = obj;
            return c07481;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((C07481) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00b3 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00c6 A[Catch: all -> 0x0113, TryCatch #1 {all -> 0x0113, blocks: (B:26:0x00be, B:28:0x00c6, B:32:0x00e4, B:37:0x0107), top: B:53:0x00be }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00f8 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0107 A[Catch: all -> 0x0113, TRY_LEAVE, TryCatch #1 {all -> 0x0113, blocks: (B:26:0x00be, B:28:0x00c6, B:32:0x00e4, B:37:0x0107), top: B:53:0x00be }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f9 -> B:36:0x0102). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ReceiveChannel $this$consume$iv$iv;
            Object $result;
            ProducerScope $this$produce;
            int $i$f$consumeEach;
            Throwable cause$iv$iv;
            ChannelIterator it;
            Function2 function2;
            C07481<R> c07481;
            Object $result2;
            Function2 function22;
            ProducerScope $this$produce2;
            ReceiveChannel $this$consume$iv$iv2;
            Throwable cause$iv$iv2;
            C07481<R> c074812;
            Object $result3;
            Object $result4;
            ChannelIterator channelIterator;
            Function2 function23;
            int i;
            ProducerScope $this$produce3;
            Function2 function24;
            int $i$f$consumeEach2;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
            } catch (Throwable th) {
                e$iv$iv = th;
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    $result = obj;
                    $this$produce = (ProducerScope) this.L$0;
                    ReceiveChannel $this$consumeEach$iv = this.$this_map;
                    Function2 function25 = this.$transform;
                    $i$f$consumeEach = 0;
                    $this$consume$iv$iv = $this$consumeEach$iv;
                    cause$iv$iv = null;
                    try {
                        it = $this$consume$iv$iv.iterator();
                        function2 = function25;
                        c07481 = this;
                        try {
                            c07481.L$0 = $this$produce;
                            c07481.L$1 = function2;
                            c07481.L$2 = $this$consume$iv$iv;
                            c07481.L$3 = it;
                            c07481.label = 1;
                            objHasNext = it.hasNext(c07481);
                        } catch (Throwable th2) {
                            e$iv$iv = th2;
                        }
                    } catch (Throwable th3) {
                        e$iv$iv = th3;
                    }
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ProducerScope producerScope = $this$produce;
                    $result3 = $result;
                    $result2 = objHasNext;
                    c074812 = c07481;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv2 = cause$iv$iv;
                    function22 = function2;
                    $this$produce2 = producerScope;
                    try {
                        if (((Boolean) $result2).booleanValue()) {
                            Unit unit = Unit.INSTANCE;
                            ChannelsKt.cancelConsumed($this$consume$iv$iv2, cause$iv$iv2);
                            return Unit.INSTANCE;
                        }
                        Object it2 = it.next();
                        i = 0;
                        c074812.L$0 = $this$produce2;
                        c074812.L$1 = function22;
                        c074812.L$2 = $this$consume$iv$iv2;
                        c074812.L$3 = it;
                        c074812.L$4 = $this$produce2;
                        c074812.label = 2;
                        Object objInvoke = function22.invoke(it2, c074812);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ChannelIterator channelIterator2 = it;
                        function23 = function22;
                        channelIterator = channelIterator2;
                        $result4 = objInvoke;
                        $this$produce3 = $this$produce2;
                        c074812.L$0 = $this$produce3;
                        c074812.L$1 = function23;
                        c074812.L$2 = $this$consume$iv$iv2;
                        c074812.L$3 = channelIterator;
                        c074812.L$4 = null;
                        c074812.label = 3;
                        if ($this$produce2.send($result4, c074812) != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        Function2 function26 = function23;
                        it = channelIterator;
                        cause$iv$iv = cause$iv$iv2;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                        function24 = function26;
                        $result = $result3;
                        $i$f$consumeEach2 = $i$f$consumeEach;
                        $this$produce = $this$produce3;
                        $i$f$consumeEach = $i$f$consumeEach2;
                        function2 = function24;
                        c07481 = c074812;
                        c07481.L$0 = $this$produce;
                        c07481.L$1 = function2;
                        c07481.L$2 = $this$consume$iv$iv;
                        c07481.L$3 = it;
                        c07481.label = 1;
                        objHasNext = it.hasNext(c07481);
                        if (objHasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th4) {
                        e$iv$iv = th4;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                    }
                    Throwable cause$iv$iv3 = e$iv$iv;
                    try {
                        throw e$iv$iv;
                    } catch (Throwable e$iv$iv) {
                        ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv3);
                        throw e$iv$iv;
                    }
                    break;
                case 1:
                    $result2 = obj;
                    ChannelIterator channelIterator3 = (ChannelIterator) this.L$3;
                    ReceiveChannel $this$consume$iv$iv3 = (ReceiveChannel) this.L$2;
                    Function2 function27 = (Function2) this.L$1;
                    ProducerScope $this$produce4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result2);
                    function22 = function27;
                    $this$produce2 = $this$produce4;
                    $this$consume$iv$iv2 = $this$consume$iv$iv3;
                    cause$iv$iv2 = null;
                    c074812 = this;
                    it = channelIterator3;
                    $i$f$consumeEach = 0;
                    $result3 = $result2;
                    if (((Boolean) $result2).booleanValue()) {
                    }
                    Throwable cause$iv$iv32 = e$iv$iv;
                    throw e$iv$iv;
                case 2:
                    $result4 = obj;
                    $this$produce2 = (ProducerScope) this.L$4;
                    channelIterator = (ChannelIterator) this.L$3;
                    cause$iv$iv2 = null;
                    $this$consume$iv$iv2 = (ReceiveChannel) this.L$2;
                    function23 = (Function2) this.L$1;
                    ProducerScope $this$produce5 = (ProducerScope) this.L$0;
                    try {
                        ResultKt.throwOnFailure($result4);
                        i = 0;
                        $this$produce3 = $this$produce5;
                        c074812 = this;
                        $i$f$consumeEach = 0;
                        $result3 = $result4;
                        c074812.L$0 = $this$produce3;
                        c074812.L$1 = function23;
                        c074812.L$2 = $this$consume$iv$iv2;
                        c074812.L$3 = channelIterator;
                        c074812.L$4 = null;
                        c074812.label = 3;
                        if ($this$produce2.send($result4, c074812) != coroutine_suspended) {
                        }
                    } catch (Throwable th5) {
                        e$iv$iv = th5;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                        break;
                    }
                    break;
                case 3:
                    $result = obj;
                    ChannelIterator channelIterator4 = (ChannelIterator) this.L$3;
                    cause$iv$iv = null;
                    $this$consume$iv$iv = (ReceiveChannel) this.L$2;
                    function24 = (Function2) this.L$1;
                    ProducerScope $this$produce6 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $i$f$consumeEach2 = 0;
                    $this$produce = $this$produce6;
                    it = channelIterator4;
                    c074812 = this;
                    $i$f$consumeEach = $i$f$consumeEach2;
                    function2 = function24;
                    c07481 = c074812;
                    c07481.L$0 = $this$produce;
                    c07481.L$1 = function2;
                    c07481.L$2 = $this$consume$iv$iv;
                    c07481.L$3 = it;
                    c07481.label = 1;
                    objHasNext = it.hasNext(c07481);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <E, R> ReceiveChannel<R> map(ReceiveChannel<? extends E> receiveChannel, CoroutineContext context, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes(receiveChannel), new C07481(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {374, 375, 375}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
    static final class C07491<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReceiveChannel<E> $this_mapIndexed;
        final /* synthetic */ Function3<Integer, E, Continuation<? super R>, Object> $transform;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07491(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super C07491> continuation) {
            super(2, continuation);
            this.$this_mapIndexed = receiveChannel;
            this.$transform = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07491 c07491 = new C07491(this.$this_mapIndexed, this.$transform, continuation);
            c07491.L$0 = obj;
            return c07491;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((C07491) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0070 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b6 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00bd  */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00b7 -> B:10:0x005e). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ProducerScope producerScope;
            int i;
            ChannelIterator it;
            C07491<R> c07491;
            ProducerScope producerScope2;
            C07491<R> c074912;
            ChannelIterator channelIterator;
            Object obj2;
            Object obj3;
            ProducerScope producerScope3;
            ProducerScope producerScope4;
            int i2;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    producerScope = (ProducerScope) this.L$0;
                    i = 0;
                    it = this.$this_mapIndexed.iterator();
                    c07491 = this;
                    c07491.L$0 = producerScope;
                    c07491.L$1 = it;
                    c07491.I$0 = i;
                    c07491.label = 1;
                    objHasNext = it.hasNext(c07491);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj4 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext;
                    c074912 = c07491;
                    channelIterator = it;
                    producerScope2 = producerScope;
                    obj2 = obj4;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    Object next = channelIterator.next();
                    Function3<Integer, E, Continuation<? super R>, Object> function3 = c074912.$transform;
                    i2 = i + 1;
                    Integer numBoxInt = Boxing.boxInt(i);
                    c074912.L$0 = producerScope2;
                    c074912.L$1 = channelIterator;
                    c074912.L$2 = producerScope2;
                    c074912.I$0 = i2;
                    c074912.label = 2;
                    obj = function3.invoke(numBoxInt, (E) next, c074912);
                    if (obj == obj2) {
                        return obj2;
                    }
                    producerScope3 = producerScope2;
                    it = channelIterator;
                    producerScope4 = producerScope3;
                    c074912.L$0 = producerScope4;
                    c074912.L$1 = it;
                    c074912.L$2 = null;
                    c074912.I$0 = i2;
                    c074912.label = 3;
                    if (producerScope3.send(obj, c074912) != obj2) {
                        return obj2;
                    }
                    obj = obj3;
                    coroutine_suspended = obj2;
                    producerScope = producerScope4;
                    c07491 = c074912;
                    i = i2;
                    c07491.L$0 = producerScope;
                    c07491.L$1 = it;
                    c07491.I$0 = i;
                    c07491.label = 1;
                    objHasNext = it.hasNext(c07491);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                case 1:
                    int i3 = this.I$0;
                    ChannelIterator channelIterator2 = (ChannelIterator) this.L$1;
                    producerScope2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c074912 = this;
                    channelIterator = channelIterator2;
                    i = i3;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 2:
                    int i4 = this.I$0;
                    producerScope3 = (ProducerScope) this.L$2;
                    it = (ChannelIterator) this.L$1;
                    producerScope4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c074912 = this;
                    i2 = i4;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    c074912.L$0 = producerScope4;
                    c074912.L$1 = it;
                    c074912.L$2 = null;
                    c074912.I$0 = i2;
                    c074912.label = 3;
                    if (producerScope3.send(obj, c074912) != obj2) {
                    }
                    break;
                case 3:
                    int i5 = this.I$0;
                    ChannelIterator channelIterator3 = (ChannelIterator) this.L$1;
                    ProducerScope producerScope5 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    i = i5;
                    producerScope = producerScope5;
                    it = channelIterator3;
                    c07491 = this;
                    c07491.L$0 = producerScope;
                    c07491.L$1 = it;
                    c07491.I$0 = i;
                    c07491.label = 1;
                    objHasNext = it.hasNext(c07491);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <E, R> ReceiveChannel<R> mapIndexed(ReceiveChannel<? extends E> receiveChannel, CoroutineContext context, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes(receiveChannel), new C07491(receiveChannel, function3, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexedNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapIndexedNotNull(receiveChannel, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel mapIndexedNotNull(ReceiveChannel $this$mapIndexedNotNull, CoroutineContext context, Function3 transform) {
        return ChannelsKt.filterNotNull(ChannelsKt.mapIndexed($this$mapIndexedNotNull, context, transform));
    }

    public static /* synthetic */ ReceiveChannel mapNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapNotNull(receiveChannel, coroutineContext, function2);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel mapNotNull(ReceiveChannel $this$mapNotNull, CoroutineContext context, Function2 transform) {
        return ChannelsKt.filterNotNull(ChannelsKt.map($this$mapNotNull, context, transform));
    }

    public static /* synthetic */ ReceiveChannel withIndex$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return withIndex(receiveChannel, coroutineContext);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlin/collections/IndexedValue;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {LogSeverity.WARNING_VALUE, 401}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class C07601<E> extends SuspendLambda implements Function2<ProducerScope<? super IndexedValue<? extends E>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReceiveChannel<E> $this_withIndex;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07601(ReceiveChannel<? extends E> receiveChannel, Continuation<? super C07601> continuation) {
            super(2, continuation);
            this.$this_withIndex = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07601 c07601 = new C07601(this.$this_withIndex, continuation);
            c07601.L$0 = obj;
            return c07601;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super IndexedValue<? extends E>> producerScope, Continuation<? super Unit> continuation) {
            return ((C07601) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x005a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0087 -> B:9:0x0048). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            ProducerScope $this$produce;
            int index;
            ChannelIterator<E> it;
            C07601<E> c07601;
            C07601<E> c076012;
            ProducerScope $this$produce2;
            Object obj;
            Object $result2;
            Object objHasNext;
            Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$produce = (ProducerScope) this.L$0;
                    index = 0;
                    it = this.$this_withIndex.iterator();
                    c07601 = this;
                    c07601.L$0 = $this$produce;
                    c07601.L$1 = it;
                    c07601.I$0 = index;
                    c07601.label = 1;
                    objHasNext = it.hasNext(c07601);
                    if (objHasNext == $result3) {
                        return $result3;
                    }
                    Object obj2 = $result3;
                    $result2 = $result;
                    $result = objHasNext;
                    c076012 = c07601;
                    $this$produce2 = $this$produce;
                    obj = obj2;
                    if (!((Boolean) $result).booleanValue()) {
                        Object e = it.next();
                        int index2 = index + 1;
                        c076012.L$0 = $this$produce2;
                        c076012.L$1 = it;
                        c076012.I$0 = index2;
                        c076012.label = 2;
                        if ($this$produce2.send(new IndexedValue(index, e), c076012) == obj) {
                            return obj;
                        }
                        $result = $result2;
                        $result3 = obj;
                        $this$produce = $this$produce2;
                        c07601 = c076012;
                        index = index2;
                        c07601.L$0 = $this$produce;
                        c07601.L$1 = it;
                        c07601.I$0 = index;
                        c07601.label = 1;
                        objHasNext = it.hasNext(c07601);
                        if (objHasNext == $result3) {
                        }
                    } else {
                        return Unit.INSTANCE;
                    }
                    break;
                case 1:
                    int index3 = this.I$0;
                    ChannelIterator<E> channelIterator = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce3 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c076012 = this;
                    $this$produce2 = $this$produce3;
                    it = channelIterator;
                    index = index3;
                    obj = $result3;
                    $result2 = $result;
                    if (!((Boolean) $result).booleanValue()) {
                    }
                    break;
                case 2:
                    int index4 = this.I$0;
                    ChannelIterator<E> channelIterator2 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    index = index4;
                    $this$produce = $this$produce4;
                    it = channelIterator2;
                    c07601 = this;
                    c07601.L$0 = $this$produce;
                    c07601.L$1 = it;
                    c07601.I$0 = index;
                    c07601.label = 1;
                    objHasNext = it.hasNext(c07601);
                    if (objHasNext == $result3) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel withIndex(ReceiveChannel $this$withIndex, CoroutineContext context) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes($this$withIndex), new C07601($this$withIndex, null), 6, null);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n"}, d2 = {"<anonymous>", ExifInterface.LONGITUDE_EAST, "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07301<E> extends SuspendLambda implements Function2<E, Continuation<? super E>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C07301(Continuation<? super C07301> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07301 c07301 = new C07301(continuation);
            c07301.L$0 = obj;
            return c07301;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(E e, Continuation<? super E> continuation) {
            return ((C07301) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Object it = this.L$0;
                    return it;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static /* synthetic */ ReceiveChannel distinctBy$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.distinctBy(receiveChannel, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {417, 418, 420}, m = "invokeSuspend", n = {"$this$produce", "keys", "$this$produce", "keys", "e", "$this$produce", "keys", "k"}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
    static final class C07311<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<E, Continuation<? super K>, Object> $selector;
        final /* synthetic */ ReceiveChannel<E> $this_distinctBy;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07311(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2, Continuation<? super C07311> continuation) {
            super(2, continuation);
            this.$this_distinctBy = receiveChannel;
            this.$selector = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07311 c07311 = new C07311(this.$this_distinctBy, this.$selector, continuation);
            c07311.L$0 = obj;
            return c07311;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C07311) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0080 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00de  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v17 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r4v12 */
        /* JADX WARN: Type inference failed for: r4v13 */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v8 */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v10, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, kotlinx.coroutines.channels.ProducerScope] */
        /* JADX WARN: Type inference failed for: r5v4 */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00cc -> B:26:0x00d3). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00de -> B:10:0x006b). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            HashSet hashSet;
            ?? r3;
            ChannelIterator<E> it;
            C07311<E> c07311;
            C07311<E> c073112;
            ?? r4;
            HashSet hashSet2;
            ChannelIterator<E> channelIterator;
            Object obj2;
            Object obj3;
            C07311<E> c073113;
            ?? r5;
            HashSet hashSet3;
            ChannelIterator<E> channelIterator2;
            Object obj4;
            Object obj5;
            ChannelIterator<E> channelIterator3;
            HashSet hashSet4;
            ?? r42;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope = (ProducerScope) this.L$0;
                    hashSet = new HashSet();
                    r3 = producerScope;
                    it = this.$this_distinctBy.iterator();
                    c07311 = this;
                    c07311.L$0 = r3;
                    c07311.L$1 = hashSet;
                    c07311.L$2 = it;
                    c07311.L$3 = null;
                    c07311.label = 1;
                    objHasNext = it.hasNext(c07311);
                    if (objHasNext != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj6 = coroutine_suspended;
                    obj3 = obj;
                    obj = objHasNext;
                    c073112 = c07311;
                    r4 = r3;
                    hashSet2 = hashSet;
                    channelIterator = it;
                    obj2 = obj6;
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    E next = channelIterator.next();
                    Function2 function2 = c073112.$selector;
                    c073112.L$0 = r4;
                    c073112.L$1 = hashSet2;
                    c073112.L$2 = channelIterator;
                    c073112.L$3 = next;
                    c073112.label = 2;
                    Object objInvoke = function2.invoke(next, c073112);
                    if (objInvoke == obj2) {
                        return obj2;
                    }
                    ChannelIterator<E> channelIterator4 = channelIterator;
                    obj4 = next;
                    obj = objInvoke;
                    c073113 = c073112;
                    r5 = r4;
                    hashSet3 = hashSet2;
                    channelIterator2 = channelIterator4;
                    if (hashSet3.contains(obj)) {
                        c073113.L$0 = r5;
                        c073113.L$1 = hashSet3;
                        c073113.L$2 = channelIterator2;
                        c073113.L$3 = obj;
                        c073113.label = 3;
                        if (r5.send(obj4, c073113) == obj2) {
                            return obj2;
                        }
                        Object obj7 = obj2;
                        obj5 = obj;
                        obj = obj3;
                        coroutine_suspended = obj7;
                        channelIterator3 = channelIterator2;
                        hashSet4 = hashSet3;
                        r42 = r5;
                        hashSet4.add(obj5);
                        it = channelIterator3;
                        hashSet = hashSet4;
                        r3 = r42;
                        c07311 = c073113;
                        c07311.L$0 = r3;
                        c07311.L$1 = hashSet;
                        c07311.L$2 = it;
                        c07311.L$3 = null;
                        c07311.label = 1;
                        objHasNext = it.hasNext(c07311);
                        if (objHasNext != coroutine_suspended) {
                        }
                    } else {
                        obj = obj3;
                        coroutine_suspended = obj2;
                        it = channelIterator2;
                        hashSet = hashSet3;
                        r3 = r5;
                        c07311 = c073113;
                        c07311.L$0 = r3;
                        c07311.L$1 = hashSet;
                        c07311.L$2 = it;
                        c07311.L$3 = null;
                        c07311.label = 1;
                        objHasNext = it.hasNext(c07311);
                        if (objHasNext != coroutine_suspended) {
                        }
                    }
                    break;
                case 1:
                    ChannelIterator<E> channelIterator5 = (ChannelIterator) this.L$2;
                    HashSet hashSet5 = (HashSet) this.L$1;
                    ProducerScope producerScope2 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073112 = this;
                    r4 = producerScope2;
                    hashSet2 = hashSet5;
                    channelIterator = channelIterator5;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    break;
                case 2:
                    Object obj8 = this.L$3;
                    ChannelIterator<E> channelIterator6 = (ChannelIterator) this.L$2;
                    HashSet hashSet6 = (HashSet) this.L$1;
                    ProducerScope producerScope3 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073113 = this;
                    r5 = producerScope3;
                    hashSet3 = hashSet6;
                    channelIterator2 = channelIterator6;
                    obj4 = obj8;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    if (hashSet3.contains(obj)) {
                    }
                    break;
                case 3:
                    obj5 = this.L$3;
                    channelIterator3 = (ChannelIterator) this.L$2;
                    hashSet4 = (HashSet) this.L$1;
                    ProducerScope producerScope4 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c073113 = this;
                    r42 = producerScope4;
                    hashSet4.add(obj5);
                    it = channelIterator3;
                    hashSet = hashSet4;
                    r3 = r42;
                    c07311 = c073113;
                    c07311.L$0 = r3;
                    c07311.L$1 = hashSet;
                    c07311.L$2 = it;
                    c07311.L$3 = null;
                    c07311.label = 1;
                    objHasNext = it.hasNext(c07311);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <E, K> ReceiveChannel<E> distinctBy(ReceiveChannel<? extends E> receiveChannel, CoroutineContext context, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumes(receiveChannel), new C07311(receiveChannel, function2, null), 6, null);
    }

    public static final <E> Object toMutableSet(ReceiveChannel<? extends E> receiveChannel, Continuation<? super Set<E>> continuation) {
        return ChannelsKt.toCollection(receiveChannel, new LinkedHashSet(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object any(ReceiveChannel $this$any, Continuation $completion) {
        AnonymousClass1 anonymousClass1;
        ReceiveChannel $this$consume$iv;
        Throwable cause$iv;
        Object objHasNext;
        if ($completion instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) $completion;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1($completion);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$consume$iv = $this$any;
                cause$iv = null;
                try {
                    ChannelIterator it = $this$consume$iv.iterator();
                    anonymousClass1.L$0 = $this$consume$iv;
                    anonymousClass1.label = 1;
                    objHasNext = it.hasNext(anonymousClass1);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objHasNext;
                } catch (Throwable th) {
                    e$iv = th;
                    Throwable cause$iv2 = e$iv;
                    try {
                        throw e$iv;
                    } finally {
                        ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                    }
                }
            case 1:
                $this$consume$iv = (ReceiveChannel) anonymousClass1.L$0;
                cause$iv = null;
                try {
                    ResultKt.throwOnFailure($result);
                    objHasNext = $result;
                    return objHasNext;
                } catch (Throwable th2) {
                    e$iv = th2;
                    Throwable cause$iv22 = e$iv;
                    throw e$iv;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087 A[Catch: all -> 0x00aa, TryCatch #3 {all -> 0x00aa, blocks: (B:24:0x007f, B:26:0x0087, B:27:0x009a), top: B:45:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a A[Catch: all -> 0x00aa, TRY_LEAVE, TryCatch #3 {all -> 0x00aa, blocks: (B:24:0x007f, B:26:0x0087, B:27:0x009a), top: B:45:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:45:0x007f). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object count(ReceiveChannel $this$consumeEach$iv, Continuation $completion) {
        C07291 c07291;
        ReceiveChannel $this$consume$iv$iv;
        Object $result;
        Ref.IntRef count;
        ReceiveChannel $this$consume$iv$iv2;
        Throwable cause$iv$iv;
        ChannelIterator channelIterator;
        int i;
        Ref.IntRef intRef;
        Object obj;
        if ($completion instanceof C07291) {
            c07291 = (C07291) $completion;
            if ((c07291.label & Integer.MIN_VALUE) != 0) {
                c07291.label -= Integer.MIN_VALUE;
            } else {
                c07291 = new C07291($completion);
            }
        }
        Object e$iv = c07291.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07291.label) {
            case 0:
                ResultKt.throwOnFailure(e$iv);
                Ref.IntRef count2 = new Ref.IntRef();
                $this$consume$iv$iv = $this$consumeEach$iv;
                Throwable cause$iv$iv2 = null;
                try {
                    Ref.IntRef count3 = null;
                    int $i$f$consume = 0;
                    Ref.IntRef count4 = count2;
                    ChannelIterator it = $this$consume$iv$iv.iterator();
                    c07291.L$0 = count4;
                    c07291.L$1 = $this$consume$iv$iv;
                    c07291.L$2 = it;
                    c07291.label = 1;
                    Object objHasNext = it.hasNext(c07291);
                    if (objHasNext != $result2) {
                        return $result2;
                    }
                    Object obj2 = $result2;
                    $result = e$iv;
                    e$iv = objHasNext;
                    count = count4;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv = cause$iv$iv2;
                    channelIterator = it;
                    i = $i$f$consume;
                    intRef = count3;
                    obj = obj2;
                    try {
                        if (!((Boolean) e$iv).booleanValue()) {
                            channelIterator.next();
                            count.element++;
                            e$iv = $result;
                            $result2 = obj;
                            count3 = intRef;
                            $i$f$consume = i;
                            it = channelIterator;
                            cause$iv$iv2 = cause$iv$iv;
                            $this$consume$iv$iv = $this$consume$iv$iv2;
                            count4 = count;
                            c07291.L$0 = count4;
                            c07291.L$1 = $this$consume$iv$iv;
                            c07291.L$2 = it;
                            c07291.label = 1;
                            Object objHasNext2 = it.hasNext(c07291);
                            if (objHasNext2 != $result2) {
                            }
                        } else {
                            Unit unit = Unit.INSTANCE;
                            ChannelsKt.cancelConsumed($this$consume$iv$iv2, cause$iv$iv);
                            int $i$f$consumeEach = count.element;
                            return Boxing.boxInt($i$f$consumeEach);
                        }
                    } catch (Throwable th) {
                        e$iv$iv = th;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                        Throwable cause$iv$iv3 = e$iv$iv;
                        try {
                            throw e$iv$iv;
                        } catch (Throwable e$iv$iv) {
                            ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv3);
                            throw e$iv$iv;
                        }
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                    Throwable cause$iv$iv32 = e$iv$iv;
                    throw e$iv$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c07291.L$2;
                $this$consume$iv$iv = (ReceiveChannel) c07291.L$1;
                Ref.IntRef count5 = (Ref.IntRef) c07291.L$0;
                try {
                    ResultKt.throwOnFailure(e$iv);
                    count = count5;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv = null;
                    channelIterator = channelIterator2;
                    i = 0;
                    intRef = null;
                    obj = $result2;
                    $result = e$iv;
                    if (!((Boolean) e$iv).booleanValue()) {
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                    Throwable cause$iv$iv322 = e$iv$iv;
                    throw e$iv$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00be A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #5 {all -> 0x00de, blocks: (B:37:0x00b6, B:39:0x00be), top: B:68:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ad -> B:68:0x00b6). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object maxWith(ReceiveChannel $this$consume$iv, Comparator comparator, Continuation $completion) {
        C07501 c07501;
        Throwable cause$iv;
        ReceiveChannel $this$consume$iv2;
        Throwable e$iv;
        ChannelIterator iterator;
        Object objHasNext;
        Comparator comparator2;
        Object $result;
        Comparator comparator3;
        ReceiveChannel $this$consume$iv3;
        ChannelIterator iterator2;
        Throwable th;
        Object max;
        Object max2;
        if ($completion instanceof C07501) {
            c07501 = (C07501) $completion;
            if ((c07501.label & Integer.MIN_VALUE) != 0) {
                c07501.label -= Integer.MIN_VALUE;
            } else {
                c07501 = new C07501($completion);
            }
        }
        Object max3 = c07501.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07501.label) {
            case 0:
                ResultKt.throwOnFailure(max3);
                cause$iv = null;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07501.L$0 = comparator;
                    c07501.L$1 = $this$consume$iv;
                    c07501.L$2 = iterator;
                    c07501.label = 1;
                    objHasNext = iterator.hasNext(c07501);
                    if (objHasNext == $result2) {
                        return $result2;
                    }
                    $this$consume$iv2 = $this$consume$iv;
                    comparator2 = comparator;
                    try {
                        if (((Boolean) objHasNext).booleanValue()) {
                            ChannelsKt.cancelConsumed($this$consume$iv2, cause$iv);
                            return null;
                        }
                        Throwable cause$iv2 = cause$iv;
                        try {
                            Object max4 = iterator.next();
                            ChannelIterator iterator3 = iterator;
                            c07501.L$0 = comparator2;
                            c07501.L$1 = $this$consume$iv2;
                            c07501.L$2 = iterator3;
                            c07501.L$3 = max4;
                            c07501.label = 2;
                            Object objHasNext2 = iterator3.hasNext(c07501);
                            if (objHasNext2 != $result2) {
                                return $result2;
                            }
                            Object obj = $result2;
                            $result = max3;
                            max3 = objHasNext2;
                            comparator3 = comparator2;
                            $this$consume$iv3 = $this$consume$iv2;
                            iterator2 = iterator3;
                            th = cause$iv2;
                            max = max4;
                            max2 = obj;
                            try {
                                if (((Boolean) max3).booleanValue()) {
                                    ChannelsKt.cancelConsumed($this$consume$iv3, th);
                                    return max;
                                }
                                Object e = iterator2.next();
                                if (comparator3.compare(max, e) < 0) {
                                    cause$iv2 = th;
                                    Object obj2 = max2;
                                    max4 = e;
                                    max3 = $result;
                                    $result2 = obj2;
                                    iterator3 = iterator2;
                                    $this$consume$iv2 = $this$consume$iv3;
                                    comparator2 = comparator3;
                                } else {
                                    max3 = $result;
                                    $result2 = max2;
                                    max4 = max;
                                    cause$iv2 = th;
                                    iterator3 = iterator2;
                                    $this$consume$iv2 = $this$consume$iv3;
                                    comparator2 = comparator3;
                                }
                                c07501.L$0 = comparator2;
                                c07501.L$1 = $this$consume$iv2;
                                c07501.L$2 = iterator3;
                                c07501.L$3 = max4;
                                c07501.label = 2;
                                Object objHasNext22 = iterator3.hasNext(c07501);
                                if (objHasNext22 != $result2) {
                                }
                            } catch (Throwable th2) {
                                e$iv = th2;
                                $this$consume$iv2 = $this$consume$iv3;
                                Throwable cause$iv3 = e$iv;
                                try {
                                    throw e$iv;
                                } catch (Throwable e$iv2) {
                                    ChannelsKt.cancelConsumed($this$consume$iv2, cause$iv3);
                                    throw e$iv2;
                                }
                            }
                        } catch (Throwable th3) {
                            e$iv = th3;
                            Throwable cause$iv32 = e$iv;
                            throw e$iv;
                        }
                    } catch (Throwable th4) {
                        e$iv = th4;
                        Throwable cause$iv322 = e$iv;
                        throw e$iv;
                    }
                } catch (Throwable th5) {
                    $this$consume$iv2 = $this$consume$iv;
                    e$iv = th5;
                    Throwable cause$iv3222 = e$iv;
                    throw e$iv;
                }
                break;
            case 1:
                ChannelIterator iterator4 = (ChannelIterator) c07501.L$2;
                ReceiveChannel receiveChannel = (ReceiveChannel) c07501.L$1;
                Comparator comparator4 = (Comparator) c07501.L$0;
                try {
                    ResultKt.throwOnFailure(max3);
                    iterator = iterator4;
                    cause$iv = null;
                    comparator2 = comparator4;
                    $this$consume$iv2 = receiveChannel;
                    objHasNext = max3;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                } catch (Throwable th6) {
                    e$iv = th6;
                    $this$consume$iv2 = receiveChannel;
                    Throwable cause$iv32222 = e$iv;
                    throw e$iv;
                }
                break;
            case 2:
                Object max5 = c07501.L$3;
                ChannelIterator iterator5 = (ChannelIterator) c07501.L$2;
                $this$consume$iv2 = (ReceiveChannel) c07501.L$1;
                Comparator comparator5 = (Comparator) c07501.L$0;
                try {
                    ResultKt.throwOnFailure(max3);
                    comparator3 = comparator5;
                    $this$consume$iv3 = $this$consume$iv2;
                    iterator2 = iterator5;
                    th = null;
                    max = max5;
                    max2 = $result2;
                    $result = max3;
                    if (((Boolean) max3).booleanValue()) {
                    }
                } catch (Throwable th7) {
                    e$iv = th7;
                    Throwable cause$iv322222 = e$iv;
                    throw e$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00be A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #5 {all -> 0x00de, blocks: (B:37:0x00b6, B:39:0x00be), top: B:68:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ad -> B:68:0x00b6). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object minWith(ReceiveChannel $this$consume$iv, Comparator comparator, Continuation $completion) {
        C07511 c07511;
        Throwable cause$iv;
        ReceiveChannel $this$consume$iv2;
        Throwable e$iv;
        ChannelIterator iterator;
        Object objHasNext;
        Comparator comparator2;
        Object $result;
        Comparator comparator3;
        ReceiveChannel $this$consume$iv3;
        ChannelIterator iterator2;
        Throwable th;
        Object min;
        Object min2;
        if ($completion instanceof C07511) {
            c07511 = (C07511) $completion;
            if ((c07511.label & Integer.MIN_VALUE) != 0) {
                c07511.label -= Integer.MIN_VALUE;
            } else {
                c07511 = new C07511($completion);
            }
        }
        Object min3 = c07511.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07511.label) {
            case 0:
                ResultKt.throwOnFailure(min3);
                cause$iv = null;
                try {
                    iterator = $this$consume$iv.iterator();
                    c07511.L$0 = comparator;
                    c07511.L$1 = $this$consume$iv;
                    c07511.L$2 = iterator;
                    c07511.label = 1;
                    objHasNext = iterator.hasNext(c07511);
                    if (objHasNext == $result2) {
                        return $result2;
                    }
                    $this$consume$iv2 = $this$consume$iv;
                    comparator2 = comparator;
                    try {
                        if (((Boolean) objHasNext).booleanValue()) {
                            ChannelsKt.cancelConsumed($this$consume$iv2, cause$iv);
                            return null;
                        }
                        Throwable cause$iv2 = cause$iv;
                        try {
                            Object min4 = iterator.next();
                            ChannelIterator iterator3 = iterator;
                            c07511.L$0 = comparator2;
                            c07511.L$1 = $this$consume$iv2;
                            c07511.L$2 = iterator3;
                            c07511.L$3 = min4;
                            c07511.label = 2;
                            Object objHasNext2 = iterator3.hasNext(c07511);
                            if (objHasNext2 != $result2) {
                                return $result2;
                            }
                            Object obj = $result2;
                            $result = min3;
                            min3 = objHasNext2;
                            comparator3 = comparator2;
                            $this$consume$iv3 = $this$consume$iv2;
                            iterator2 = iterator3;
                            th = cause$iv2;
                            min = min4;
                            min2 = obj;
                            try {
                                if (((Boolean) min3).booleanValue()) {
                                    ChannelsKt.cancelConsumed($this$consume$iv3, th);
                                    return min;
                                }
                                Object e = iterator2.next();
                                if (comparator3.compare(min, e) > 0) {
                                    cause$iv2 = th;
                                    Object obj2 = min2;
                                    min4 = e;
                                    min3 = $result;
                                    $result2 = obj2;
                                    iterator3 = iterator2;
                                    $this$consume$iv2 = $this$consume$iv3;
                                    comparator2 = comparator3;
                                } else {
                                    min3 = $result;
                                    $result2 = min2;
                                    min4 = min;
                                    cause$iv2 = th;
                                    iterator3 = iterator2;
                                    $this$consume$iv2 = $this$consume$iv3;
                                    comparator2 = comparator3;
                                }
                                c07511.L$0 = comparator2;
                                c07511.L$1 = $this$consume$iv2;
                                c07511.L$2 = iterator3;
                                c07511.L$3 = min4;
                                c07511.label = 2;
                                Object objHasNext22 = iterator3.hasNext(c07511);
                                if (objHasNext22 != $result2) {
                                }
                            } catch (Throwable th2) {
                                e$iv = th2;
                                $this$consume$iv2 = $this$consume$iv3;
                                Throwable cause$iv3 = e$iv;
                                try {
                                    throw e$iv;
                                } catch (Throwable e$iv2) {
                                    ChannelsKt.cancelConsumed($this$consume$iv2, cause$iv3);
                                    throw e$iv2;
                                }
                            }
                        } catch (Throwable th3) {
                            e$iv = th3;
                            Throwable cause$iv32 = e$iv;
                            throw e$iv;
                        }
                    } catch (Throwable th4) {
                        e$iv = th4;
                        Throwable cause$iv322 = e$iv;
                        throw e$iv;
                    }
                } catch (Throwable th5) {
                    $this$consume$iv2 = $this$consume$iv;
                    e$iv = th5;
                    Throwable cause$iv3222 = e$iv;
                    throw e$iv;
                }
                break;
            case 1:
                ChannelIterator iterator4 = (ChannelIterator) c07511.L$2;
                ReceiveChannel receiveChannel = (ReceiveChannel) c07511.L$1;
                Comparator comparator4 = (Comparator) c07511.L$0;
                try {
                    ResultKt.throwOnFailure(min3);
                    iterator = iterator4;
                    cause$iv = null;
                    comparator2 = comparator4;
                    $this$consume$iv2 = receiveChannel;
                    objHasNext = min3;
                    if (((Boolean) objHasNext).booleanValue()) {
                    }
                } catch (Throwable th6) {
                    e$iv = th6;
                    $this$consume$iv2 = receiveChannel;
                    Throwable cause$iv32222 = e$iv;
                    throw e$iv;
                }
                break;
            case 2:
                Object min5 = c07511.L$3;
                ChannelIterator iterator5 = (ChannelIterator) c07511.L$2;
                $this$consume$iv2 = (ReceiveChannel) c07511.L$1;
                Comparator comparator5 = (Comparator) c07511.L$0;
                try {
                    ResultKt.throwOnFailure(min3);
                    comparator3 = comparator5;
                    $this$consume$iv3 = $this$consume$iv2;
                    iterator2 = iterator5;
                    th = null;
                    min = min5;
                    min2 = $result2;
                    $result = min3;
                    if (((Boolean) min3).booleanValue()) {
                    }
                } catch (Throwable th7) {
                    e$iv = th7;
                    Throwable cause$iv322222 = e$iv;
                    throw e$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ Object none(ReceiveChannel $this$none, Continuation $completion) {
        C07521 c07521;
        ReceiveChannel $this$consume$iv;
        Throwable cause$iv;
        Object objHasNext;
        if ($completion instanceof C07521) {
            c07521 = (C07521) $completion;
            if ((c07521.label & Integer.MIN_VALUE) != 0) {
                c07521.label -= Integer.MIN_VALUE;
            } else {
                c07521 = new C07521($completion);
            }
        }
        Object $result = c07521.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z = true;
        switch (c07521.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$consume$iv = $this$none;
                cause$iv = null;
                try {
                    ChannelIterator it = $this$consume$iv.iterator();
                    c07521.L$0 = $this$consume$iv;
                    c07521.label = 1;
                    objHasNext = it.hasNext(c07521);
                    if (objHasNext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objHasNext).booleanValue()) {
                        z = false;
                    }
                    Boolean boolBoxBoolean = Boxing.boxBoolean(z);
                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                    return boolBoxBoolean;
                } catch (Throwable th) {
                    e$iv = th;
                    Throwable cause$iv2 = e$iv;
                    try {
                        throw e$iv;
                    } catch (Throwable e$iv) {
                        ChannelsKt.cancelConsumed($this$consume$iv, cause$iv2);
                        throw e$iv;
                    }
                }
            case 1:
                $this$consume$iv = (ReceiveChannel) c07521.L$0;
                cause$iv = null;
                try {
                    ResultKt.throwOnFailure($result);
                    objHasNext = $result;
                    if (!((Boolean) objHasNext).booleanValue()) {
                    }
                    Boolean boolBoxBoolean2 = Boxing.boxBoolean(z);
                    ChannelsKt.cancelConsumed($this$consume$iv, cause$iv);
                    return boolBoxBoolean2;
                } catch (Throwable th2) {
                    e$iv = th2;
                    Throwable cause$iv22 = e$iv;
                    throw e$iv;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\n"}, d2 = {"<anonymous>", ExifInterface.LONGITUDE_EAST, "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07531<E> extends SuspendLambda implements Function2<E, Continuation<? super E>, Object> {
        final /* synthetic */ ReceiveChannel<E> $this_requireNoNulls;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07531(ReceiveChannel<? extends E> receiveChannel, Continuation<? super C07531> continuation) {
            super(2, continuation);
            this.$this_requireNoNulls = receiveChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07531 c07531 = new C07531(this.$this_requireNoNulls, continuation);
            c07531.L$0 = obj;
            return c07531;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(E e, Continuation<? super E> continuation) {
            return ((C07531) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Object it = this.L$0;
                    if (it != null) {
                        return it;
                    }
                    throw new IllegalArgumentException("null element found in " + this.$this_requireNoNulls + '.');
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static /* synthetic */ ReceiveChannel zip$default(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.zip(receiveChannel, receiveChannel2, coroutineContext, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [V] */
    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {514, 499, 501}, m = "invokeSuspend", n = {"$this$produce", "otherIterator", "$this$consume$iv$iv", "$this$produce", "otherIterator", "$this$consume$iv$iv", "element1", "$this$produce", "otherIterator", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$5", "L$0", "L$1", "L$3"})
    static final class C07612<V> extends SuspendLambda implements Function2<ProducerScope<? super V>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ReceiveChannel<R> $other;
        final /* synthetic */ ReceiveChannel<E> $this_zip;
        final /* synthetic */ Function2<E, R, V> $transform;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C07612(ReceiveChannel<? extends R> receiveChannel, ReceiveChannel<? extends E> receiveChannel2, Function2<? super E, ? super R, ? extends V> function2, Continuation<? super C07612> continuation) {
            super(2, continuation);
            this.$other = receiveChannel;
            this.$this_zip = receiveChannel2;
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07612 c07612 = new C07612(this.$other, this.$this_zip, this.$transform, continuation);
            c07612.L$0 = obj;
            return c07612;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super V> producerScope, Continuation<? super Unit> continuation) {
            return ((C07612) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00d1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00e9 A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:26:0x00e1, B:28:0x00e9, B:46:0x0166), top: B:60:0x00e1 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x014f  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0166 A[Catch: all -> 0x0171, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:26:0x00e1, B:28:0x00e9, B:46:0x0166), top: B:60:0x00e1 }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x013a -> B:38:0x0143). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x014f -> B:42:0x0159). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            ReceiveChannel $this$consume$iv$iv;
            Object $result;
            Throwable cause$iv$iv;
            ChannelIterator otherIterator;
            ChannelIterator otherIterator2;
            int $i$f$consume;
            ProducerScope $this$produce;
            Object $result2;
            Function2 function2;
            ChannelIterator it;
            C07612<V> c07612;
            Object $result3;
            C07612<V> c076122;
            ProducerScope $this$produce2;
            ChannelIterator otherIterator3;
            ReceiveChannel $this$consume$iv$iv2;
            Throwable cause$iv$iv2;
            Function2 function22;
            ChannelIterator channelIterator;
            int i;
            ChannelIterator channelIterator2;
            Object obj2;
            Object $result4;
            Object element1;
            Object element12;
            ChannelIterator channelIterator3;
            Function2 function23;
            int i2;
            ProducerScope $this$produce3;
            ChannelIterator channelIterator4;
            Function2 function24;
            Object objHasNext;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            Object obj3 = null;
            try {
            } catch (Throwable th) {
                e$iv$iv = th;
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    $result = obj;
                    ProducerScope $this$produce4 = (ProducerScope) this.L$0;
                    ChannelIterator otherIterator4 = this.$other.iterator();
                    ReceiveChannel $this$consumeEach$iv = this.$this_zip;
                    $this$consume$iv$iv = $this$consumeEach$iv;
                    cause$iv$iv = null;
                    try {
                        otherIterator = otherIterator4;
                        otherIterator2 = null;
                        $i$f$consume = 0;
                        $this$produce = $this$produce4;
                        $result2 = null;
                        function2 = this.$transform;
                        it = $this$consume$iv$iv.iterator();
                        c07612 = this;
                        try {
                            c07612.L$0 = $this$produce;
                            c07612.L$1 = otherIterator;
                            c07612.L$2 = function2;
                            c07612.L$3 = $this$consume$iv$iv;
                            c07612.L$4 = it;
                            c07612.L$5 = obj3;
                            c07612.label = 1;
                            objHasNext = it.hasNext(c07612);
                        } catch (Throwable th2) {
                            e$iv$iv = th2;
                        }
                    } catch (Throwable th3) {
                        e$iv$iv = th3;
                    }
                    if (objHasNext != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj4 = $result2;
                    $result4 = $result;
                    $result3 = objHasNext;
                    c076122 = c07612;
                    $this$produce2 = $this$produce;
                    otherIterator3 = otherIterator;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv2 = cause$iv$iv;
                    function22 = function2;
                    channelIterator = it;
                    i = $i$f$consume;
                    channelIterator2 = otherIterator2;
                    obj2 = obj4;
                    try {
                        if (((Boolean) $result3).booleanValue()) {
                            Unit unit = Unit.INSTANCE;
                            ChannelsKt.cancelConsumed($this$consume$iv$iv2, cause$iv$iv2);
                            return Unit.INSTANCE;
                        }
                        Object element13 = channelIterator.next();
                        i2 = 0;
                        c076122.L$0 = $this$produce2;
                        c076122.L$1 = otherIterator3;
                        c076122.L$2 = function22;
                        c076122.L$3 = $this$consume$iv$iv2;
                        c076122.L$4 = channelIterator;
                        c076122.L$5 = element13;
                        c076122.label = 2;
                        Object objHasNext2 = otherIterator3.hasNext(c076122);
                        if (objHasNext2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ChannelIterator channelIterator5 = channelIterator;
                        element12 = element13;
                        element1 = objHasNext2;
                        function23 = function22;
                        channelIterator3 = channelIterator5;
                        C07612<V> c076123 = c076122;
                        $this$produce3 = $this$produce2;
                        c07612 = c076123;
                        try {
                            if (((Boolean) element1).booleanValue()) {
                                function2 = function23;
                                $result = $result4;
                                $result2 = obj2;
                                otherIterator2 = channelIterator2;
                                $i$f$consume = i;
                                it = channelIterator3;
                                cause$iv$iv = cause$iv$iv2;
                                $this$consume$iv$iv = $this$consume$iv$iv2;
                                otherIterator = otherIterator3;
                                $this$produce = $this$produce3;
                                obj3 = null;
                                c07612.L$0 = $this$produce;
                                c07612.L$1 = otherIterator;
                                c07612.L$2 = function2;
                                c07612.L$3 = $this$consume$iv$iv;
                                c07612.L$4 = it;
                                c07612.L$5 = obj3;
                                c07612.label = 1;
                                objHasNext = it.hasNext(c07612);
                                if (objHasNext != coroutine_suspended) {
                                }
                            } else {
                                try {
                                    Object element2 = otherIterator3.next();
                                    Object objInvoke = function23.invoke(element12, element2);
                                    c07612.L$0 = $this$produce3;
                                    c07612.L$1 = otherIterator3;
                                    c07612.L$2 = function23;
                                    c07612.L$3 = $this$consume$iv$iv2;
                                    c07612.L$4 = channelIterator3;
                                    c07612.L$5 = null;
                                    c07612.label = 3;
                                    if ($this$produce3.send(objInvoke, c07612) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    $result = $result4;
                                    $result2 = obj2;
                                    otherIterator2 = channelIterator2;
                                    $i$f$consume = i;
                                    channelIterator4 = channelIterator3;
                                    cause$iv$iv = cause$iv$iv2;
                                    $this$consume$iv$iv = $this$consume$iv$iv2;
                                    function24 = function23;
                                    it = channelIterator4;
                                    function2 = function24;
                                    otherIterator = otherIterator3;
                                    $this$produce = $this$produce3;
                                    obj3 = null;
                                    c07612.L$0 = $this$produce;
                                    c07612.L$1 = otherIterator;
                                    c07612.L$2 = function2;
                                    c07612.L$3 = $this$consume$iv$iv;
                                    c07612.L$4 = it;
                                    c07612.L$5 = obj3;
                                    c07612.label = 1;
                                    objHasNext = it.hasNext(c07612);
                                    if (objHasNext != coroutine_suspended) {
                                    }
                                } catch (Throwable th4) {
                                    e$iv$iv = th4;
                                    $this$consume$iv$iv = $this$consume$iv$iv2;
                                }
                            }
                        } catch (Throwable th5) {
                            e$iv$iv = th5;
                            $this$consume$iv$iv = $this$consume$iv$iv2;
                        }
                    } catch (Throwable th6) {
                        e$iv$iv = th6;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                    }
                    Throwable cause$iv$iv3 = e$iv$iv;
                    try {
                        throw e$iv$iv;
                    } catch (Throwable e$iv$iv) {
                        ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv3);
                        throw e$iv$iv;
                    }
                    break;
                case 1:
                    $result3 = obj;
                    ChannelIterator channelIterator6 = (ChannelIterator) this.L$4;
                    ReceiveChannel $this$consume$iv$iv3 = (ReceiveChannel) this.L$3;
                    Function2 function25 = (Function2) this.L$2;
                    ChannelIterator otherIterator5 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce5 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result3);
                    c076122 = this;
                    $this$produce2 = $this$produce5;
                    otherIterator3 = otherIterator5;
                    $this$consume$iv$iv2 = $this$consume$iv$iv3;
                    cause$iv$iv2 = null;
                    function22 = function25;
                    channelIterator = channelIterator6;
                    i = 0;
                    channelIterator2 = null;
                    obj2 = null;
                    $result4 = $result3;
                    if (((Boolean) $result3).booleanValue()) {
                    }
                    Throwable cause$iv$iv32 = e$iv$iv;
                    throw e$iv$iv;
                case 2:
                    element1 = obj;
                    element12 = this.L$5;
                    channelIterator3 = (ChannelIterator) this.L$4;
                    $this$consume$iv$iv = (ReceiveChannel) this.L$3;
                    Function2 function26 = (Function2) this.L$2;
                    otherIterator3 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce6 = (ProducerScope) this.L$0;
                    try {
                        ResultKt.throwOnFailure(element1);
                        cause$iv$iv2 = null;
                        function23 = function26;
                        $this$consume$iv$iv2 = $this$consume$iv$iv;
                        i2 = 0;
                        $this$produce3 = $this$produce6;
                        c07612 = this;
                        i = 0;
                        channelIterator2 = null;
                        obj2 = null;
                        $result4 = element1;
                        if (((Boolean) element1).booleanValue()) {
                        }
                    } catch (Throwable th7) {
                        e$iv$iv = th7;
                        break;
                    }
                    break;
                case 3:
                    $result = obj;
                    $result2 = null;
                    otherIterator2 = null;
                    $i$f$consume = 0;
                    channelIterator4 = (ChannelIterator) this.L$4;
                    cause$iv$iv = null;
                    $this$consume$iv$iv = (ReceiveChannel) this.L$3;
                    function24 = (Function2) this.L$2;
                    otherIterator3 = (ChannelIterator) this.L$1;
                    ProducerScope $this$produce7 = (ProducerScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$produce3 = $this$produce7;
                    c07612 = this;
                    it = channelIterator4;
                    function2 = function24;
                    otherIterator = otherIterator3;
                    $this$produce = $this$produce3;
                    obj3 = null;
                    c07612.L$0 = $this$produce;
                    c07612.L$1 = otherIterator;
                    c07612.L$2 = function2;
                    c07612.L$3 = $this$consume$iv$iv;
                    c07612.L$4 = it;
                    c07612.L$5 = obj3;
                    c07612.label = 1;
                    objHasNext = it.hasNext(c07612);
                    if (objHasNext != coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final <E, R, V> ReceiveChannel<V> zip(ReceiveChannel<? extends E> receiveChannel, ReceiveChannel<? extends R> receiveChannel2, CoroutineContext context, Function2<? super E, ? super R, ? extends V> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, context, 0, null, ChannelsKt.consumesAll(receiveChannel, receiveChannel2), new C07612(receiveChannel2, receiveChannel, function2, null), 6, null);
    }

    public static final Function1<Throwable, Unit> consumes(final ReceiveChannel<?> receiveChannel) {
        return new Function1() { // from class: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ChannelsKt__DeprecatedKt.consumes$lambda$24$ChannelsKt__DeprecatedKt(receiveChannel, (Throwable) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit consumes$lambda$24$ChannelsKt__DeprecatedKt(ReceiveChannel $this_consumes, Throwable cause) {
        ChannelsKt.cancelConsumed($this_consumes, cause);
        return Unit.INSTANCE;
    }
}
