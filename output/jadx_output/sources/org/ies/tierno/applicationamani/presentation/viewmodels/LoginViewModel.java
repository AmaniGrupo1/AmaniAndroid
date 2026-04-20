package org.ies.tierno.applicationamani.presentation.viewmodels;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.firebase.database.core.ValidationPath;
import com.google.firebase.firestore.model.Values;
import j$.time.LocalDate;
import j$.time.Period;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago;
import org.ies.tierno.applicationamani.domain.models.enumm.Rol;
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase;
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionRequest;
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest;
import org.ies.tierno.applicationamani.dto.requestPaciente.UsuarioRequest;
import org.ies.tierno.applicationamani.dto.tutor.TutorRequestDTO;
import retrofit2.HttpException;

/* JADX INFO: compiled from: LoginViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b8\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\bO\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0082@¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0013J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\"\u0010!J\r\u0010#\u001a\u00020\f¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\f¢\u0006\u0004\b%\u0010$J\r\u0010&\u001a\u00020\f¢\u0006\u0004\b&\u0010$J\r\u0010'\u001a\u00020\u0011¢\u0006\u0004\b'\u0010(J\u0015\u0010*\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b*\u0010!J\u0015\u0010+\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b+\u0010!J\u0015\u0010,\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b,\u0010!J\u0015\u0010-\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b-\u0010!J\u0015\u0010.\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b.\u0010!J\u0015\u0010/\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b/\u0010!J\u0015\u00100\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b0\u0010!J\u0015\u00101\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b1\u0010!J\u0015\u00102\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b2\u0010!J\u0015\u00103\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b3\u0010!J\u0015\u00104\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b4\u0010!J\u0015\u00105\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b5\u0010!J\u0015\u00106\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b6\u0010!J\u0015\u00107\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\b7\u0010!J\u0017\u00108\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b8\u00109J\u0017\u0010:\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b:\u0010!J\u0017\u0010;\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b;\u0010!J\u0015\u0010=\u001a\u00020\f2\u0006\u0010<\u001a\u00020\u0018¢\u0006\u0004\b=\u0010>J\u0015\u0010@\u001a\u00020\f2\u0006\u0010?\u001a\u00020\u0011¢\u0006\u0004\b@\u0010AJ\u0017\u0010C\u001a\u00020\f2\b\u0010B\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\bC\u0010!J\u0017\u0010D\u001a\u00020\f2\b\u0010B\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\bD\u0010!J\u0017\u0010E\u001a\u00020\f2\b\u0010B\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\bE\u0010!J\u0017\u0010F\u001a\u00020\f2\b\u0010B\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\bF\u0010!J\u0015\u0010G\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u0011¢\u0006\u0004\bG\u0010AJ\u0015\u0010H\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\bH\u0010!J\r\u0010I\u001a\u00020\f¢\u0006\u0004\bI\u0010$J\u0015\u0010J\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\bJ\u0010!J\u0015\u0010K\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\bK\u0010!J\u0015\u0010L\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\bL\u0010!J\u0015\u0010M\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\bM\u0010!J\u0015\u0010N\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000f¢\u0006\u0004\bN\u0010!J\r\u0010O\u001a\u00020\f¢\u0006\u0004\bO\u0010$J\r\u0010P\u001a\u00020\f¢\u0006\u0004\bP\u0010$J\r\u0010Q\u001a\u00020\f¢\u0006\u0004\bQ\u0010$J\r\u0010R\u001a\u00020\f¢\u0006\u0004\bR\u0010$J\u001d\u0010V\u001a\u00020\f2\u0006\u0010T\u001a\u00020S2\u0006\u0010U\u001a\u00020S¢\u0006\u0004\bV\u0010WJ\r\u0010X\u001a\u00020\f¢\u0006\u0004\bX\u0010$J\r\u0010Y\u001a\u00020\f¢\u0006\u0004\bY\u0010$J\u001b\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u000f0Z¢\u0006\u0004\b[\u0010\\J\r\u0010]\u001a\u00020\f¢\u0006\u0004\b]\u0010$R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010^R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010_R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010`R\u001a\u0010b\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000f0d8\u0006¢\u0006\f\n\u0004\b\u001f\u0010e\u001a\u0004\bf\u0010gR\u001a\u0010h\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010cR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0d8\u0006¢\u0006\f\n\u0004\b\u0014\u0010e\u001a\u0004\bi\u0010gR\"\u0010k\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010j0a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010cR%\u0010l\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010j0d8\u0006¢\u0006\f\n\u0004\bl\u0010e\u001a\u0004\bm\u0010gR\u001a\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010cR\u001d\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\f\n\u0004\bo\u0010e\u001a\u0004\bo\u0010gR\u001c\u0010p\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010cR\u001f\u0010q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\f\n\u0004\bq\u0010e\u001a\u0004\br\u0010gR\u001d\u0010s\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\f\n\u0004\bs\u0010c\u001a\u0004\bt\u0010uR\u001d\u0010v\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\f\n\u0004\bv\u0010c\u001a\u0004\bw\u0010uR\u001d\u0010x\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\f\n\u0004\bx\u0010c\u001a\u0004\by\u0010uR\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\f\n\u0004\b\u0010\u0010c\u001a\u0004\bz\u0010uR\u001d\u0010{\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\f\n\u0004\b{\u0010c\u001a\u0004\b|\u0010uR\u001d\u0010}\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\f\n\u0004\b}\u0010c\u001a\u0004\b~\u0010uR\u001e\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\r\n\u0004\b\u007f\u0010c\u001a\u0005\b\u0080\u0001\u0010uR \u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010c\u001a\u0005\b\u0082\u0001\u0010uR \u0010\u0083\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0006¢\u0006\u000e\n\u0005\b\u0083\u0001\u0010c\u001a\u0005\b\u0084\u0001\u0010uR \u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0006¢\u0006\u000e\n\u0005\b\u0085\u0001\u0010c\u001a\u0005\b\u0086\u0001\u0010uR \u0010\u0087\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0006¢\u0006\u000e\n\u0005\b\u0087\u0001\u0010c\u001a\u0005\b\u0088\u0001\u0010uR!\u0010\u008a\u0001\u001a\t\u0012\u0005\u0012\u00030\u0089\u00010a8\u0006¢\u0006\u000e\n\u0005\b\u008a\u0001\u0010c\u001a\u0005\b\u008b\u0001\u0010uR'\u0010\u008d\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020S0\u008c\u00010a8\u0006¢\u0006\u000e\n\u0005\b\u008d\u0001\u0010c\u001a\u0005\b\u008e\u0001\u0010uR \u0010\u008f\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u008f\u0001\u0010c\u001a\u0005\b\u0090\u0001\u0010uR \u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u0091\u0001\u0010c\u001a\u0005\b\u0092\u0001\u0010uR \u0010\u0093\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u0093\u0001\u0010c\u001a\u0005\b\u0094\u0001\u0010uR \u0010\u0095\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u0095\u0001\u0010c\u001a\u0005\b\u0096\u0001\u0010uR \u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u0097\u0001\u0010c\u001a\u0005\b\u0098\u0001\u0010uR \u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u0099\u0001\u0010c\u001a\u0005\b\u009a\u0001\u0010uR\"\u0010\u009b\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0a8\u0006¢\u0006\u000e\n\u0005\b\u009b\u0001\u0010c\u001a\u0005\b\u009c\u0001\u0010uR\"\u0010\u009d\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u009d\u0001\u0010c\u001a\u0005\b\u009e\u0001\u0010uR\"\u0010\u009f\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0006¢\u0006\u000e\n\u0005\b\u009f\u0001\u0010c\u001a\u0005\b \u0001\u0010uR\u001c\u0010¡\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b¡\u0001\u0010cR \u0010¢\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\b¢\u0001\u0010e\u001a\u0005\b¢\u0001\u0010gR\u001e\u0010£\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b£\u0001\u0010cR\"\u0010¤\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\b¤\u0001\u0010e\u001a\u0005\b¥\u0001\u0010gR\u001c\u0010¦\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b¦\u0001\u0010cR \u0010§\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\b§\u0001\u0010e\u001a\u0005\b¨\u0001\u0010gR\u001e\u0010©\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b©\u0001\u0010cR \u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180d8\u0006¢\u0006\r\n\u0004\b\u0019\u0010e\u001a\u0005\bª\u0001\u0010gR\u001c\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b«\u0001\u0010cR \u0010¬\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\b¬\u0001\u0010e\u001a\u0005\b\u00ad\u0001\u0010gR\u001e\u0010®\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b®\u0001\u0010cR\"\u0010¯\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\b¯\u0001\u0010e\u001a\u0005\b°\u0001\u0010gR\u001e\u0010±\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b±\u0001\u0010cR\"\u0010²\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\b²\u0001\u0010e\u001a\u0005\b³\u0001\u0010gR\u001e\u0010´\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b´\u0001\u0010cR\"\u0010µ\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\bµ\u0001\u0010e\u001a\u0005\b¶\u0001\u0010gR\u001e\u0010·\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b·\u0001\u0010cR\"\u0010¸\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\b¸\u0001\u0010e\u001a\u0005\b¹\u0001\u0010gR \u0010º\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0006¢\u0006\u000e\n\u0005\bº\u0001\u0010c\u001a\u0005\b»\u0001\u0010uR \u0010¼\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b¼\u0001\u0010c\u001a\u0005\b½\u0001\u0010uR \u0010¾\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\b¾\u0001\u0010c\u001a\u0005\b¿\u0001\u0010uR \u0010À\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\bÀ\u0001\u0010c\u001a\u0005\bÁ\u0001\u0010uR \u0010Â\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\bÂ\u0001\u0010c\u001a\u0005\bÃ\u0001\u0010uR \u0010Ä\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0a8\u0006¢\u0006\u000e\n\u0005\bÄ\u0001\u0010c\u001a\u0005\bÅ\u0001\u0010uR \u0010Æ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÆ\u0001\u0010e\u001a\u0005\bÇ\u0001\u0010gR \u0010È\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÈ\u0001\u0010e\u001a\u0005\bÉ\u0001\u0010gR \u0010Ê\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÊ\u0001\u0010e\u001a\u0005\bË\u0001\u0010gR \u0010Ì\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÌ\u0001\u0010e\u001a\u0005\bÍ\u0001\u0010gR \u0010Î\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÎ\u0001\u0010e\u001a\u0005\bÏ\u0001\u0010gR\u001e\u0010Ð\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bÐ\u0001\u0010cR\"\u0010Ñ\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\bÑ\u0001\u0010e\u001a\u0005\bÒ\u0001\u0010gR\u001c\u0010Ó\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bÓ\u0001\u0010cR \u0010Ô\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÔ\u0001\u0010e\u001a\u0005\bÕ\u0001\u0010gR\u001e\u0010Ö\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bÖ\u0001\u0010cR\"\u0010×\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0d8\u0006¢\u0006\u000e\n\u0005\b×\u0001\u0010e\u001a\u0005\bØ\u0001\u0010gR\u001c\u0010Ù\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bÙ\u0001\u0010cR \u0010Ú\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110d8\u0006¢\u0006\u000e\n\u0005\bÚ\u0001\u0010e\u001a\u0005\bÚ\u0001\u0010g¨\u0006Û\u0001"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;", "loginUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;", "asignarPacienteAlPsicologoUseCase", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "userSessionDataStore", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "loginResponse", "", "saveUserSession", "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "email", "", "isValidEmail", "(Ljava/lang/String;)Z", HintConstants.AUTOFILL_HINT_PASSWORD, "isValidPassword", HintConstants.AUTOFILL_HINT_PHONE, "isValidPhone", "j$/time/LocalDate", "dateOfBirth", "", "calculateAge", "(Lj$/time/LocalDate;)I", "isAdult", "(Lj$/time/LocalDate;)Z", HintConstants.AUTOFILL_HINT_USERNAME, "setUsername", "(Ljava/lang/String;)V", "setPassword", "login", "()V", "clearLoginFields", "resetLoginState", "isLoginFormValid", "()Z", Values.VECTOR_MAP_VECTORS_KEY, "setNombre", "setApellido", "setDni", "setEmail", "setRegPassword", "setTelefono", "setGenero", "setFechaNacimiento", "setTutorNombre", "setTutorTelefono", "setTutorEmail", "setTutorDni", "setTutorTipo", "setRegistroEspecialidad", "setRegistroExperiencia", "(Ljava/lang/Integer;)V", "setRegistroDescripcion", "setRegistroLicencia", "date", "setDateOfBirth", "(Lj$/time/LocalDate;)V", "show", "setShowDatePicker", "(Z)V", "error", "setDateError", "setPhoneError", "setEmailError", "setPasswordError", "setAceptaTerminosPsicologo", "setTelefonoPsicologo", "resetRegisterState", "setCalle", "setCiudad", "setProvincia", "setCodigoPostal", "setPais", "limpiarFormularioPsicologo", "registrarAdmin", "registrarPaciente", "limpiarFormulario", "", "idPaciente", "idPsicologo", "asignarPaciente", "(JJ)V", "clearAsignarPsicologoResult", "clearAllErrors", "Lkotlin/Pair;", "validatePsychologistForm", "()Lkotlin/Pair;", "registrarPsicologo", "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "_username", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lkotlinx/coroutines/flow/StateFlow;", "Lkotlinx/coroutines/flow/StateFlow;", "getUsername", "()Lkotlinx/coroutines/flow/StateFlow;", "_password", "getPassword", "Lkotlin/Result;", "_loginResult", "loginResult", "getLoginResult", "_isLoggingIn", "isLoggingIn", "_loginError", "loginError", "getLoginError", "nombre", "getNombre", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "apellido", "getApellido", "dni", "getDni", "getEmail", "regPassword", "getRegPassword", "telefono", "getTelefono", "genero", "getGenero", "fechaNacimiento", "getFechaNacimiento", "aceptaTerminos", "getAceptaTerminos", "aceptaVideoconferencia", "getAceptaVideoconferencia", "aceptaComunicacion", "getAceptaComunicacion", "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;", "metodoPago", "getMetodoPago", "", "situacionesIds", "getSituacionesIds", "tutorNombre", "getTutorNombre", "tutorTelefono", "getTutorTelefono", "tutorEmail", "getTutorEmail", "tutorDni", "getTutorDni", "tutorTipo", "getTutorTipo", "registroEspecialidad", "getRegistroEspecialidad", "registroExperiencia", "getRegistroExperiencia", "registroDescripcion", "getRegistroDescripcion", "registroLicencia", "getRegistroLicencia", "_isRegistering", "isRegistering", "_registerError", "registerError", "getRegisterError", "_registerSuccess", "registerSuccess", "getRegisterSuccess", "_dateOfBirth", "getDateOfBirth", "_showDatePicker", "showDatePicker", "getShowDatePicker", "_dateError", "dateError", "getDateError", "_phoneError", "phoneError", "getPhoneError", "_emailError", "emailError", "getEmailError", "_passwordError", "passwordError", "getPasswordError", "aceptaTerminosPsicologo", "getAceptaTerminosPsicologo", "calle", "getCalle", "ciudad", "getCiudad", "provincia", "getProvincia", "codigoPostal", "getCodigoPostal", "pais", "getPais", "esMenor", "getEsMenor", "tutorValido", "getTutorValido", "direccionValida", "getDireccionValida", "formularioValido", "getFormularioValido", "formularioCompletoValido", "getFormularioCompletoValido", "_successMessage", "successMessage", "getSuccessMessage", "_asignarPacienteSuccess", "asignarPacienteSuccess", "getAsignarPacienteSuccess", "_asignarPacienteError", "asignarPacienteError", "getAsignarPacienteError", "_isAsignandoPaciente", "isAsignandoPaciente", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class LoginViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<String> _asignarPacienteError;
    private final MutableStateFlow<Boolean> _asignarPacienteSuccess;
    private final MutableStateFlow<String> _dateError;
    private final MutableStateFlow<LocalDate> _dateOfBirth;
    private final MutableStateFlow<String> _emailError;
    private final MutableStateFlow<Boolean> _isAsignandoPaciente;
    private final MutableStateFlow<Boolean> _isLoggingIn;
    private final MutableStateFlow<Boolean> _isRegistering;
    private final MutableStateFlow<String> _loginError;
    private final MutableStateFlow<Result<LoginResponseDTO>> _loginResult;
    private final MutableStateFlow<String> _password;
    private final MutableStateFlow<String> _passwordError;
    private final MutableStateFlow<String> _phoneError;
    private final MutableStateFlow<String> _registerError;
    private final MutableStateFlow<Boolean> _registerSuccess;
    private final MutableStateFlow<Boolean> _showDatePicker;
    private final MutableStateFlow<String> _successMessage;
    private final MutableStateFlow<String> _username;
    private final MutableStateFlow<Boolean> aceptaComunicacion;
    private final MutableStateFlow<Boolean> aceptaTerminos;
    private final MutableStateFlow<Boolean> aceptaTerminosPsicologo;
    private final MutableStateFlow<Boolean> aceptaVideoconferencia;
    private final MutableStateFlow<String> apellido;
    private final AsignarPacienteAlPsicologoUseCase asignarPacienteAlPsicologoUseCase;
    private final StateFlow<String> asignarPacienteError;
    private final StateFlow<Boolean> asignarPacienteSuccess;
    private final MutableStateFlow<String> calle;
    private final MutableStateFlow<String> ciudad;
    private final MutableStateFlow<String> codigoPostal;
    private final StateFlow<String> dateError;
    private final StateFlow<LocalDate> dateOfBirth;
    private final StateFlow<Boolean> direccionValida;
    private final MutableStateFlow<String> dni;
    private final MutableStateFlow<String> email;
    private final StateFlow<String> emailError;
    private final StateFlow<Boolean> esMenor;
    private final MutableStateFlow<String> fechaNacimiento;
    private final StateFlow<Boolean> formularioCompletoValido;
    private final StateFlow<Boolean> formularioValido;
    private final MutableStateFlow<String> genero;
    private final StateFlow<Boolean> isAsignandoPaciente;
    private final StateFlow<Boolean> isLoggingIn;
    private final StateFlow<Boolean> isRegistering;
    private final StateFlow<String> loginError;
    private final StateFlow<Result<LoginResponseDTO>> loginResult;
    private final LoginUseCase loginUseCase;
    private final MutableStateFlow<MetodoPago> metodoPago;
    private final MutableStateFlow<String> nombre;
    private final MutableStateFlow<String> pais;
    private final StateFlow<String> password;
    private final StateFlow<String> passwordError;
    private final StateFlow<String> phoneError;
    private final MutableStateFlow<String> provincia;
    private final MutableStateFlow<String> regPassword;
    private final StateFlow<String> registerError;
    private final StateFlow<Boolean> registerSuccess;
    private final MutableStateFlow<String> registroDescripcion;
    private final MutableStateFlow<String> registroEspecialidad;
    private final MutableStateFlow<Integer> registroExperiencia;
    private final MutableStateFlow<String> registroLicencia;
    private final StateFlow<Boolean> showDatePicker;
    private final MutableStateFlow<List<Long>> situacionesIds;
    private final StateFlow<String> successMessage;
    private final MutableStateFlow<String> telefono;
    private final MutableStateFlow<String> tutorDni;
    private final MutableStateFlow<String> tutorEmail;
    private final MutableStateFlow<String> tutorNombre;
    private final MutableStateFlow<String> tutorTelefono;
    private final MutableStateFlow<String> tutorTipo;
    private final StateFlow<Boolean> tutorValido;
    private final UserSessionDataStore userSessionDataStore;
    private final StateFlow<String> username;

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$saveUserSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel", f = "LoginViewModel.kt", i = {0, 0, 1, 1}, l = {TsExtractor.TS_STREAM_TYPE_DTS_HD, TsExtractor.TS_STREAM_TYPE_DTS_UHD}, m = "saveUserSession", n = {"loginResponse", "session", "loginResponse", "session"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C08141 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C08141(Continuation<? super C08141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LoginViewModel.this.saveUserSession(null, this);
        }
    }

    public LoginViewModel(LoginUseCase loginUseCase, AsignarPacienteAlPsicologoUseCase asignarPacienteAlPsicologoUseCase, UserSessionDataStore userSessionDataStore) {
        Intrinsics.checkNotNullParameter(loginUseCase, "loginUseCase");
        Intrinsics.checkNotNullParameter(asignarPacienteAlPsicologoUseCase, "asignarPacienteAlPsicologoUseCase");
        Intrinsics.checkNotNullParameter(userSessionDataStore, "userSessionDataStore");
        this.loginUseCase = loginUseCase;
        this.asignarPacienteAlPsicologoUseCase = asignarPacienteAlPsicologoUseCase;
        this.userSessionDataStore = userSessionDataStore;
        this._username = StateFlowKt.MutableStateFlow("");
        this.username = this._username;
        this._password = StateFlowKt.MutableStateFlow("");
        this.password = this._password;
        this._loginResult = StateFlowKt.MutableStateFlow(null);
        this.loginResult = this._loginResult;
        this._isLoggingIn = StateFlowKt.MutableStateFlow(false);
        this.isLoggingIn = this._isLoggingIn;
        this._loginError = StateFlowKt.MutableStateFlow(null);
        this.loginError = this._loginError;
        this.nombre = StateFlowKt.MutableStateFlow("");
        this.apellido = StateFlowKt.MutableStateFlow("");
        this.dni = StateFlowKt.MutableStateFlow("");
        this.email = StateFlowKt.MutableStateFlow("");
        this.regPassword = StateFlowKt.MutableStateFlow("");
        this.telefono = StateFlowKt.MutableStateFlow("");
        this.genero = StateFlowKt.MutableStateFlow("");
        this.fechaNacimiento = StateFlowKt.MutableStateFlow("");
        this.aceptaTerminos = StateFlowKt.MutableStateFlow(false);
        this.aceptaVideoconferencia = StateFlowKt.MutableStateFlow(false);
        this.aceptaComunicacion = StateFlowKt.MutableStateFlow(false);
        this.metodoPago = StateFlowKt.MutableStateFlow(MetodoPago.PRESENCIAL);
        this.situacionesIds = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.tutorNombre = StateFlowKt.MutableStateFlow("");
        this.tutorTelefono = StateFlowKt.MutableStateFlow("");
        this.tutorEmail = StateFlowKt.MutableStateFlow("");
        this.tutorDni = StateFlowKt.MutableStateFlow("");
        this.tutorTipo = StateFlowKt.MutableStateFlow("PADRE");
        this.registroEspecialidad = StateFlowKt.MutableStateFlow("");
        this.registroExperiencia = StateFlowKt.MutableStateFlow(null);
        this.registroDescripcion = StateFlowKt.MutableStateFlow(null);
        this.registroLicencia = StateFlowKt.MutableStateFlow(null);
        this._isRegistering = StateFlowKt.MutableStateFlow(false);
        this.isRegistering = this._isRegistering;
        this._registerError = StateFlowKt.MutableStateFlow(null);
        this.registerError = this._registerError;
        this._registerSuccess = StateFlowKt.MutableStateFlow(false);
        this.registerSuccess = this._registerSuccess;
        this._dateOfBirth = StateFlowKt.MutableStateFlow(null);
        this.dateOfBirth = this._dateOfBirth;
        this._showDatePicker = StateFlowKt.MutableStateFlow(false);
        this.showDatePicker = this._showDatePicker;
        this._dateError = StateFlowKt.MutableStateFlow(null);
        this.dateError = this._dateError;
        this._phoneError = StateFlowKt.MutableStateFlow(null);
        this.phoneError = this._phoneError;
        this._emailError = StateFlowKt.MutableStateFlow(null);
        this.emailError = this._emailError;
        this._passwordError = StateFlowKt.MutableStateFlow(null);
        this.passwordError = this._passwordError;
        this.aceptaTerminosPsicologo = StateFlowKt.MutableStateFlow(false);
        this.calle = StateFlowKt.MutableStateFlow("");
        this.ciudad = StateFlowKt.MutableStateFlow("");
        this.provincia = StateFlowKt.MutableStateFlow("");
        this.codigoPostal = StateFlowKt.MutableStateFlow("");
        this.pais = StateFlowKt.MutableStateFlow("España");
        final Flow flow = this.fechaNacimiento;
        this.esMenor = FlowKt.stateIn(new Flow<Boolean>() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$map$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation $completion) {
                Object objCollect = flow.collect(new AnonymousClass2(flowCollector), $completion);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
                @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$map$1$2", f = "LoginViewModel.kt", i = {0, 0, 0, 0, 0}, l = {50}, m = "emit", n = {Values.VECTOR_MAP_VECTORS_KEY, "$completion", Values.VECTOR_MAP_VECTORS_KEY, "$this$map_u24lambda_u245", "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0"})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int I$0;
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object value, Continuation $completion) {
                    AnonymousClass1 anonymousClass1;
                    boolean z;
                    if ($completion instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) $completion;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1($completion);
                        }
                    }
                    AnonymousClass1 anonymousClass12 = anonymousClass1;
                    Object $result = anonymousClass12.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (anonymousClass12.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FlowCollector $this$map_u24lambda_u245 = this.$this_unsafeFlow;
                            try {
                                z = Period.between(LocalDate.parse((String) value), LocalDate.now()).getYears() < 18;
                            } catch (Exception e) {
                                z = false;
                            }
                            Boolean boolBoxBoolean = Boxing.boxBoolean(z);
                            anonymousClass12.L$0 = SpillingKt.nullOutSpilledVariable(value);
                            anonymousClass12.L$1 = SpillingKt.nullOutSpilledVariable(anonymousClass12);
                            anonymousClass12.L$2 = SpillingKt.nullOutSpilledVariable(value);
                            anonymousClass12.L$3 = SpillingKt.nullOutSpilledVariable($this$map_u24lambda_u245);
                            anonymousClass12.I$0 = 0;
                            anonymousClass12.label = 1;
                            if ($this$map_u24lambda_u245.emit(boolBoxBoolean, anonymousClass12) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            int i = anonymousClass12.I$0;
                            Object obj = anonymousClass12.L$2;
                            Object obj2 = anonymousClass12.L$0;
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return Unit.INSTANCE;
                }
            }
        }, ViewModelKt.getViewModelScope(this), SharingStarted.INSTANCE.getLazily(), false);
        this.tutorValido = FlowKt.stateIn(FlowKt.combine(this.esMenor, this.tutorNombre, this.tutorTelefono, this.tutorEmail, this.tutorDni, new LoginViewModel$tutorValido$1(null)), ViewModelKt.getViewModelScope(this), SharingStarted.INSTANCE.getLazily(), false);
        final Flow[] flowArr = {this.calle};
        this.direccionValida = FlowKt.stateIn(new Flow<Boolean>() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation $completion) {
                Flow[] flowArr2 = flowArr;
                final Flow[] flowArr3 = flowArr;
                Object objCombineInternal = CombineKt.combineInternal(flowCollector, flowArr2, new Function0<String[]>() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    public final String[] invoke() {
                        return new String[flowArr3.length];
                    }
                }, new AnonymousClass3(null), $completion);
                return objCombineInternal == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCombineInternal : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$1$3, reason: invalid class name */
            /* JADX INFO: compiled from: Zip.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0006H\n¨\u0006\u0007"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2"}, k = 3, mv = {2, 2, 0}, xi = 48)
            @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$1$3", f = "LoginViewModel.kt", i = {0, 0}, l = {234}, m = "invokeSuspend", n = {"$this$combineInternal", "it"}, s = {"L$0", "L$1"})
            public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super Boolean>, String[], Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(FlowCollector<? super Boolean> flowCollector, String[] strArr, Continuation<? super Unit> continuation) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
                    anonymousClass3.L$0 = flowCollector;
                    anonymousClass3.L$1 = strArr;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FlowCollector $this$combineInternal = (FlowCollector) this.L$0;
                            Object[] it = (Object[]) this.L$1;
                            this.L$0 = SpillingKt.nullOutSpilledVariable($this$combineInternal);
                            this.L$1 = SpillingKt.nullOutSpilledVariable(it);
                            this.label = 1;
                            if ($this$combineInternal.emit(Boxing.boxBoolean(!StringsKt.isBlank(((String[]) it)[0])), this) == coroutine_suspended) {
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
        }, ViewModelKt.getViewModelScope(this), SharingStarted.INSTANCE.getLazily(), false);
        final Flow[] flowArr2 = (Flow[]) CollectionsKt.toList(CollectionsKt.listOf((Object[]) new MutableStateFlow[]{this.nombre, this.apellido, this.dni, this.email, this.regPassword, this.telefono, this.genero, this.fechaNacimiento, this.aceptaTerminos})).toArray(new Flow[0]);
        this.formularioValido = FlowKt.stateIn(new Flow<Boolean>() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$2
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation $completion) {
                Flow[] flowArr3 = flowArr2;
                final Flow[] flowArr4 = flowArr2;
                Object objCombineInternal = CombineKt.combineInternal(flowCollector, flowArr3, new Function0<Object[]>() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$2.2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object[] invoke() {
                        return new Object[flowArr4.length];
                    }
                }, new AnonymousClass3(null), $completion);
                return objCombineInternal == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCombineInternal : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$2$3, reason: invalid class name */
            /* JADX INFO: compiled from: Zip.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0006H\n¨\u0006\u0007"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2"}, k = 3, mv = {2, 2, 0}, xi = 48)
            @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$2$3", f = "LoginViewModel.kt", i = {0, 0}, l = {288}, m = "invokeSuspend", n = {"$this$combineInternal", "it"}, s = {"L$0", "L$1"})
            public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super Boolean>, Object[], Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(FlowCollector<? super Boolean> flowCollector, Object[] objArr, Continuation<? super Unit> continuation) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
                    anonymousClass3.L$0 = flowCollector;
                    anonymousClass3.L$1 = objArr;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    boolean z;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FlowCollector $this$combineInternal = (FlowCollector) this.L$0;
                            Object[] it = (Object[]) this.L$1;
                            Object obj = it[0];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                            Object obj2 = it[1];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                            Object obj3 = it[2];
                            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                            Object obj4 = it[3];
                            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.String");
                            Object obj5 = it[4];
                            Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.String");
                            Object obj6 = it[5];
                            Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.String");
                            Object obj7 = it[6];
                            Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type kotlin.String");
                            String str = (String) obj7;
                            Object obj8 = it[7];
                            Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.String");
                            String str2 = (String) obj8;
                            Object obj9 = it[8];
                            Intrinsics.checkNotNull(obj9, "null cannot be cast to non-null type kotlin.Boolean");
                            boolean zBooleanValue = ((Boolean) obj9).booleanValue();
                            Iterable iterableListOf = CollectionsKt.listOf((Object[]) new String[]{(String) obj, (String) obj2, (String) obj3, (String) obj4, (String) obj5, (String) obj6, str, str2});
                            if ((iterableListOf instanceof Collection) && ((Collection) iterableListOf).isEmpty()) {
                                z = true;
                            } else {
                                Iterator it2 = iterableListOf.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        if (StringsKt.isBlank((String) it2.next())) {
                                            z = false;
                                        }
                                    } else {
                                        z = true;
                                    }
                                }
                            }
                            boolean z2 = z && new Regex("\\d{4}-\\d{2}-\\d{2}").matches(str2) && zBooleanValue;
                            this.L$0 = SpillingKt.nullOutSpilledVariable($this$combineInternal);
                            this.L$1 = SpillingKt.nullOutSpilledVariable(it);
                            this.label = 1;
                            if ($this$combineInternal.emit(Boxing.boxBoolean(z2), this) == coroutine_suspended) {
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
        }, ViewModelKt.getViewModelScope(this), SharingStarted.INSTANCE.getLazily(), false);
        this.formularioCompletoValido = FlowKt.stateIn(FlowKt.combine(this.formularioValido, this.tutorValido, this.direccionValida, new LoginViewModel$formularioCompletoValido$1(null)), ViewModelKt.getViewModelScope(this), SharingStarted.INSTANCE.getLazily(), false);
        this._successMessage = StateFlowKt.MutableStateFlow(null);
        this.successMessage = this._successMessage;
        this._asignarPacienteSuccess = StateFlowKt.MutableStateFlow(false);
        this.asignarPacienteSuccess = this._asignarPacienteSuccess;
        this._asignarPacienteError = StateFlowKt.MutableStateFlow(null);
        this.asignarPacienteError = this._asignarPacienteError;
        this._isAsignandoPaciente = StateFlowKt.MutableStateFlow(false);
        this.isAsignandoPaciente = this._isAsignandoPaciente;
    }

    public final StateFlow<String> getUsername() {
        return this.username;
    }

    public final StateFlow<String> getPassword() {
        return this.password;
    }

    public final StateFlow<Result<LoginResponseDTO>> getLoginResult() {
        return this.loginResult;
    }

    public final StateFlow<Boolean> isLoggingIn() {
        return this.isLoggingIn;
    }

    public final StateFlow<String> getLoginError() {
        return this.loginError;
    }

    public final void setUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        this._username.setValue(username);
    }

    public final void setPassword(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        this._password.setValue(password);
    }

    public final void login() {
        String usernameValue = this._username.getValue();
        String passwordValue = this._password.getValue();
        if (StringsKt.isBlank(usernameValue)) {
            this._loginError.setValue("El correo electrónico es obligatorio");
            return;
        }
        if (!new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(usernameValue)) {
            this._loginError.setValue("Introduce un correo electrónico válido");
            return;
        }
        if (StringsKt.isBlank(passwordValue)) {
            this._loginError.setValue("La contraseña es obligatoria");
            return;
        }
        this._isLoggingIn.setValue(true);
        this._loginError.setValue(null);
        this._loginResult.setValue(null);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08101(usernameValue, passwordValue, this, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$login$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$login$1", f = "LoginViewModel.kt", i = {0, 1, 1, 1, 1}, l = {94, 98}, m = "invokeSuspend", n = {"request", "request", "result", "loginResponse\\1", "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0"}, s = {"L$0", "L$0", "L$1", "L$4", "I$0"})
    static final class C08101 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $passwordValue;
        final /* synthetic */ String $usernameValue;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ LoginViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08101(String str, String str2, LoginViewModel loginViewModel, Continuation<? super C08101> continuation) {
            super(2, continuation);
            this.$usernameValue = str;
            this.$passwordValue = str2;
            this.this$0 = loginViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C08101(this.$usernameValue, this.$passwordValue, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0068 A[Catch: all -> 0x0115, Exception -> 0x0117, TryCatch #1 {Exception -> 0x0117, blocks: (B:7:0x0024, B:23:0x008c, B:25:0x00a7, B:27:0x00b0, B:29:0x00ce, B:30:0x00d5, B:31:0x00d8, B:34:0x00e2, B:38:0x0102, B:35:0x00fa, B:10:0x002c, B:17:0x005f, B:19:0x0068, B:13:0x003c), top: B:53:0x0007, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00b0 A[Catch: all -> 0x0115, Exception -> 0x0117, TryCatch #1 {Exception -> 0x0117, blocks: (B:7:0x0024, B:23:0x008c, B:25:0x00a7, B:27:0x00b0, B:29:0x00ce, B:30:0x00d5, B:31:0x00d8, B:34:0x00e2, B:38:0x0102, B:35:0x00fa, B:10:0x002c, B:17:0x005f, B:19:0x0068, B:13:0x003c), top: B:53:0x0007, outer: #0 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object objM10387logingIAlus;
            LoginRequestDTO request;
            Object result;
            LoginViewModel loginViewModel;
            LoginResponseDTO loginResponseDTO;
            Throwable thM8545exceptionOrNullimpl;
            String message;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                try {
                } catch (Exception e) {
                    MutableStateFlow mutableStateFlow = this.this$0._loginError;
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = "Error inesperado al iniciar sesión";
                    }
                    mutableStateFlow.setValue(message2);
                    MutableStateFlow mutableStateFlow2 = this.this$0._loginResult;
                    Result.Companion companion = Result.INSTANCE;
                    mutableStateFlow2.setValue(Result.m8541boximpl(Result.m8542constructorimpl(ResultKt.createFailure(e))));
                }
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        LoginRequestDTO request2 = new LoginRequestDTO(this.$usernameValue, this.$passwordValue);
                        this.L$0 = SpillingKt.nullOutSpilledVariable(request2);
                        this.label = 1;
                        objM10387logingIAlus = this.this$0.loginUseCase.m10387logingIAlus(request2, this);
                        if (objM10387logingIAlus == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        request = request2;
                        result = objM10387logingIAlus;
                        loginViewModel = this.this$0;
                        if (!Result.m8549isSuccessimpl(result)) {
                            loginResponseDTO = (LoginResponseDTO) result;
                            this.L$0 = SpillingKt.nullOutSpilledVariable(request);
                            this.L$1 = SpillingKt.nullOutSpilledVariable(result);
                            this.L$2 = result;
                            this.L$3 = loginViewModel;
                            this.L$4 = loginResponseDTO;
                            this.I$0 = 0;
                            this.label = 2;
                            if (loginViewModel.saveUserSession(loginResponseDTO, this) != coroutine_suspended) {
                                MutableStateFlow mutableStateFlow3 = loginViewModel._loginResult;
                                Result.Companion companion2 = Result.INSTANCE;
                                mutableStateFlow3.setValue(Result.m8541boximpl(Result.m8542constructorimpl(loginResponseDTO)));
                                loginViewModel._loginError.setValue(null);
                                LoginViewModel loginViewModel2 = this.this$0;
                                thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                                if (thM8545exceptionOrNullimpl != null) {
                                    MutableStateFlow mutableStateFlow4 = loginViewModel2._loginResult;
                                    Result.Companion companion3 = Result.INSTANCE;
                                    mutableStateFlow4.setValue(Result.m8541boximpl(Result.m8542constructorimpl(ResultKt.createFailure(thM8545exceptionOrNullimpl))));
                                    MutableStateFlow mutableStateFlow5 = loginViewModel2._loginError;
                                    if (thM8545exceptionOrNullimpl instanceof HttpException) {
                                        switch (((HttpException) thM8545exceptionOrNullimpl).code()) {
                                            case 401:
                                                message = "Credenciales incorrectas";
                                                break;
                                            case 404:
                                                message = "Usuario no encontrado";
                                                break;
                                            default:
                                                message = "Error de conexión: " + ((HttpException) thM8545exceptionOrNullimpl).message();
                                                break;
                                        }
                                    } else {
                                        message = thM8545exceptionOrNullimpl.getMessage();
                                        if (message == null) {
                                            message = "Error al iniciar sesión";
                                        }
                                    }
                                    mutableStateFlow5.setValue(message);
                                    break;
                                }
                                return Unit.INSTANCE;
                            }
                            return coroutine_suspended;
                        }
                        LoginViewModel loginViewModel22 = this.this$0;
                        thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                        if (thM8545exceptionOrNullimpl != null) {
                        }
                        return Unit.INSTANCE;
                    case 1:
                        LoginRequestDTO request3 = (LoginRequestDTO) this.L$0;
                        ResultKt.throwOnFailure($result);
                        objM10387logingIAlus = ((Result) $result).getValue();
                        request = request3;
                        result = objM10387logingIAlus;
                        loginViewModel = this.this$0;
                        if (!Result.m8549isSuccessimpl(result)) {
                        }
                        break;
                    case 2:
                        int i = this.I$0;
                        loginResponseDTO = (LoginResponseDTO) this.L$4;
                        loginViewModel = (LoginViewModel) this.L$3;
                        result = this.L$2;
                        Object obj = this.L$1;
                        ResultKt.throwOnFailure($result);
                        MutableStateFlow mutableStateFlow32 = loginViewModel._loginResult;
                        Result.Companion companion22 = Result.INSTANCE;
                        mutableStateFlow32.setValue(Result.m8541boximpl(Result.m8542constructorimpl(loginResponseDTO)));
                        loginViewModel._loginError.setValue(null);
                        LoginViewModel loginViewModel222 = this.this$0;
                        thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                        if (thM8545exceptionOrNullimpl != null) {
                        }
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } finally {
                this.this$0._isLoggingIn.setValue(Boxing.boxBoolean(false));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0094 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2 A[Catch: Exception -> 0x0123, TryCatch #0 {Exception -> 0x0123, blocks: (B:13:0x0036, B:26:0x0096, B:28:0x00a2, B:30:0x00ac, B:32:0x00c6, B:34:0x00cc, B:36:0x00e6, B:38:0x00ec, B:40:0x0106, B:41:0x010a, B:16:0x0044, B:22:0x007d, B:19:0x004c), top: B:47:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c6 A[Catch: Exception -> 0x0123, TryCatch #0 {Exception -> 0x0123, blocks: (B:13:0x0036, B:26:0x0096, B:28:0x00a2, B:30:0x00ac, B:32:0x00c6, B:34:0x00cc, B:36:0x00e6, B:38:0x00ec, B:40:0x0106, B:41:0x010a, B:16:0x0044, B:22:0x007d, B:19:0x004c), top: B:47:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e6 A[Catch: Exception -> 0x0123, TryCatch #0 {Exception -> 0x0123, blocks: (B:13:0x0036, B:26:0x0096, B:28:0x00a2, B:30:0x00ac, B:32:0x00c6, B:34:0x00cc, B:36:0x00e6, B:38:0x00ec, B:40:0x0106, B:41:0x010a, B:16:0x0044, B:22:0x007d, B:19:0x004c), top: B:47:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0106 A[Catch: Exception -> 0x0123, TryCatch #0 {Exception -> 0x0123, blocks: (B:13:0x0036, B:26:0x0096, B:28:0x00a2, B:30:0x00ac, B:32:0x00c6, B:34:0x00cc, B:36:0x00e6, B:38:0x00ec, B:40:0x0106, B:41:0x010a, B:16:0x0044, B:22:0x007d, B:19:0x004c), top: B:47:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object saveUserSession(LoginResponseDTO loginResponse, Continuation<? super Unit> continuation) {
        C08141 c08141;
        UserSession session;
        Object session2;
        if (continuation instanceof C08141) {
            c08141 = (C08141) continuation;
            if ((c08141.label & Integer.MIN_VALUE) != 0) {
                c08141.label -= Integer.MIN_VALUE;
            } else {
                c08141 = new C08141(continuation);
            }
        }
        C08141 c081412 = c08141;
        Object $result = c081412.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
        } catch (Exception e) {
            System.out.println((Object) ("Error al guardar la sesión: " + e.getMessage()));
        }
        switch (c081412.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                session = new UserSession(loginResponse.getIdUsuario(), loginResponse.getNombre(), loginResponse.getRol(), loginResponse.getIdPsicologo(), loginResponse.getIdPaciente());
                UserSessionDataStore userSessionDataStore = this.userSessionDataStore;
                c081412.L$0 = SpillingKt.nullOutSpilledVariable(loginResponse);
                c081412.L$1 = SpillingKt.nullOutSpilledVariable(session);
                c081412.label = 1;
                if (userSessionDataStore.saveSession(session, c081412) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                UserSessionDataStore userSessionDataStore2 = this.userSessionDataStore;
                c081412.L$0 = SpillingKt.nullOutSpilledVariable(loginResponse);
                c081412.L$1 = SpillingKt.nullOutSpilledVariable(session);
                c081412.label = 2;
                session2 = userSessionDataStore2.getSession(c081412);
                if (session2 != coroutine_suspended) {
                    return coroutine_suspended;
                }
                UserSession savedSession = (UserSession) session2;
                System.out.println((Object) "=== SESIÓN GUARDADA ===");
                System.out.println((Object) ("ID Usuario: " + (savedSession == null ? Boxing.boxLong(savedSession.getIdUsuario()) : null)));
                System.out.println((Object) ("Nombre: " + (savedSession == null ? savedSession.getNombre() : null)));
                System.out.println((Object) ("Rol: " + (savedSession == null ? savedSession.getRol() : null)));
                System.out.println((Object) ("ID Psicólogo: " + (savedSession != null ? savedSession.getIdPsicologo() : null)));
                return Unit.INSTANCE;
            case 1:
                session = (UserSession) c081412.L$1;
                loginResponse = (LoginResponseDTO) c081412.L$0;
                ResultKt.throwOnFailure($result);
                UserSessionDataStore userSessionDataStore22 = this.userSessionDataStore;
                c081412.L$0 = SpillingKt.nullOutSpilledVariable(loginResponse);
                c081412.L$1 = SpillingKt.nullOutSpilledVariable(session);
                c081412.label = 2;
                session2 = userSessionDataStore22.getSession(c081412);
                if (session2 != coroutine_suspended) {
                }
                break;
            case 2:
                ResultKt.throwOnFailure($result);
                session2 = $result;
                UserSession savedSession2 = (UserSession) session2;
                System.out.println((Object) "=== SESIÓN GUARDADA ===");
                System.out.println((Object) ("ID Usuario: " + (savedSession2 == null ? Boxing.boxLong(savedSession2.getIdUsuario()) : null)));
                System.out.println((Object) ("Nombre: " + (savedSession2 == null ? savedSession2.getNombre() : null)));
                System.out.println((Object) ("Rol: " + (savedSession2 == null ? savedSession2.getRol() : null)));
                System.out.println((Object) ("ID Psicólogo: " + (savedSession2 != null ? savedSession2.getIdPsicologo() : null)));
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void clearLoginFields() {
        this._username.setValue("");
        this._password.setValue("");
    }

    public final void resetLoginState() {
        this._loginResult.setValue(null);
        this._loginError.setValue(null);
        this._isLoggingIn.setValue(false);
    }

    public final boolean isLoginFormValid() {
        if (!StringsKt.isBlank(this._username.getValue())) {
            if (new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(this._username.getValue()) && !StringsKt.isBlank(this._password.getValue())) {
                return true;
            }
        }
        return false;
    }

    public final MutableStateFlow<String> getNombre() {
        return this.nombre;
    }

    public final MutableStateFlow<String> getApellido() {
        return this.apellido;
    }

    public final MutableStateFlow<String> getDni() {
        return this.dni;
    }

    public final MutableStateFlow<String> getEmail() {
        return this.email;
    }

    public final MutableStateFlow<String> getRegPassword() {
        return this.regPassword;
    }

    public final MutableStateFlow<String> getTelefono() {
        return this.telefono;
    }

    public final MutableStateFlow<String> getGenero() {
        return this.genero;
    }

    public final MutableStateFlow<String> getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public final MutableStateFlow<Boolean> getAceptaTerminos() {
        return this.aceptaTerminos;
    }

    public final MutableStateFlow<Boolean> getAceptaVideoconferencia() {
        return this.aceptaVideoconferencia;
    }

    public final MutableStateFlow<Boolean> getAceptaComunicacion() {
        return this.aceptaComunicacion;
    }

    public final MutableStateFlow<MetodoPago> getMetodoPago() {
        return this.metodoPago;
    }

    public final MutableStateFlow<List<Long>> getSituacionesIds() {
        return this.situacionesIds;
    }

    public final MutableStateFlow<String> getTutorNombre() {
        return this.tutorNombre;
    }

    public final MutableStateFlow<String> getTutorTelefono() {
        return this.tutorTelefono;
    }

    public final MutableStateFlow<String> getTutorEmail() {
        return this.tutorEmail;
    }

    public final MutableStateFlow<String> getTutorDni() {
        return this.tutorDni;
    }

    public final MutableStateFlow<String> getTutorTipo() {
        return this.tutorTipo;
    }

    public final MutableStateFlow<String> getRegistroEspecialidad() {
        return this.registroEspecialidad;
    }

    public final MutableStateFlow<Integer> getRegistroExperiencia() {
        return this.registroExperiencia;
    }

    public final MutableStateFlow<String> getRegistroDescripcion() {
        return this.registroDescripcion;
    }

    public final MutableStateFlow<String> getRegistroLicencia() {
        return this.registroLicencia;
    }

    public final StateFlow<Boolean> isRegistering() {
        return this.isRegistering;
    }

    public final StateFlow<String> getRegisterError() {
        return this.registerError;
    }

    public final StateFlow<Boolean> getRegisterSuccess() {
        return this.registerSuccess;
    }

    public final StateFlow<LocalDate> getDateOfBirth() {
        return this.dateOfBirth;
    }

    public final StateFlow<Boolean> getShowDatePicker() {
        return this.showDatePicker;
    }

    public final StateFlow<String> getDateError() {
        return this.dateError;
    }

    public final StateFlow<String> getPhoneError() {
        return this.phoneError;
    }

    public final StateFlow<String> getEmailError() {
        return this.emailError;
    }

    public final StateFlow<String> getPasswordError() {
        return this.passwordError;
    }

    public final MutableStateFlow<Boolean> getAceptaTerminosPsicologo() {
        return this.aceptaTerminosPsicologo;
    }

    public final void setNombre(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.nombre.setValue(value);
    }

    public final void setApellido(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.apellido.setValue(value);
    }

    public final void setDni(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.dni.setValue(value);
    }

    public final void setEmail(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.email.setValue(value);
    }

    public final void setRegPassword(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.regPassword.setValue(value);
    }

    public final void setTelefono(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.telefono.setValue(value);
    }

    public final void setGenero(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.genero.setValue(value);
    }

    public final void setFechaNacimiento(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.fechaNacimiento.setValue(value);
    }

    public final void setTutorNombre(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tutorNombre.setValue(value);
    }

    public final void setTutorTelefono(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tutorTelefono.setValue(value);
    }

    public final void setTutorEmail(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tutorEmail.setValue(value);
    }

    public final void setTutorDni(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tutorDni.setValue(value);
    }

    public final void setTutorTipo(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tutorTipo.setValue(value);
    }

    public final void setRegistroEspecialidad(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.registroEspecialidad.setValue(value);
    }

    public final void setRegistroExperiencia(Integer value) {
        this.registroExperiencia.setValue(value);
    }

    public final void setRegistroDescripcion(String value) {
        this.registroDescripcion.setValue(value);
    }

    public final void setRegistroLicencia(String value) {
        this.registroLicencia.setValue(value);
    }

    public final void setDateOfBirth(LocalDate date) {
        Intrinsics.checkNotNullParameter(date, "date");
        this._dateOfBirth.setValue(date);
    }

    public final void setShowDatePicker(boolean show) {
        this._showDatePicker.setValue(Boolean.valueOf(show));
    }

    public final void setDateError(String error) {
        this._dateError.setValue(error);
    }

    public final void setPhoneError(String error) {
        this._phoneError.setValue(error);
    }

    public final void setEmailError(String error) {
        this._emailError.setValue(error);
    }

    public final void setPasswordError(String error) {
        this._passwordError.setValue(error);
    }

    public final void setAceptaTerminosPsicologo(boolean value) {
        this.aceptaTerminosPsicologo.setValue(Boolean.valueOf(value));
    }

    public final void setTelefonoPsicologo(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.telefono.setValue(value);
    }

    public final void resetRegisterState() {
        this._isRegistering.setValue(false);
        this._registerError.setValue(null);
        this._registerSuccess.setValue(false);
        this._dateOfBirth.setValue(null);
        this._dateError.setValue(null);
        this._phoneError.setValue(null);
        this._emailError.setValue(null);
        this._passwordError.setValue(null);
        this.aceptaTerminosPsicologo.setValue(false);
    }

    public final MutableStateFlow<String> getCalle() {
        return this.calle;
    }

    public final MutableStateFlow<String> getCiudad() {
        return this.ciudad;
    }

    public final MutableStateFlow<String> getProvincia() {
        return this.provincia;
    }

    public final MutableStateFlow<String> getCodigoPostal() {
        return this.codigoPostal;
    }

    public final MutableStateFlow<String> getPais() {
        return this.pais;
    }

    public final void setCalle(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.calle.setValue(value);
    }

    public final void setCiudad(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.ciudad.setValue(value);
    }

    public final void setProvincia(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.provincia.setValue(value);
    }

    public final void setCodigoPostal(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.codigoPostal.setValue(value);
    }

    public final void setPais(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.pais.setValue(value);
    }

    public final StateFlow<Boolean> getEsMenor() {
        return this.esMenor;
    }

    public final StateFlow<Boolean> getTutorValido() {
        return this.tutorValido;
    }

    public final StateFlow<Boolean> getDireccionValida() {
        return this.direccionValida;
    }

    public final StateFlow<Boolean> getFormularioValido() {
        return this.formularioValido;
    }

    public final StateFlow<Boolean> getFormularioCompletoValido() {
        return this.formularioCompletoValido;
    }

    public final void limpiarFormularioPsicologo() {
        this.nombre.setValue("");
        this.apellido.setValue("");
        this.email.setValue("");
        this.regPassword.setValue("");
        this.telefono.setValue("");
        this.registroEspecialidad.setValue("");
        this.registroExperiencia.setValue(null);
        this.registroDescripcion.setValue(null);
        this.registroLicencia.setValue(null);
        this._dateOfBirth.setValue(null);
        this.aceptaTerminosPsicologo.setValue(false);
        clearAllErrors();
        resetRegisterState();
    }

    public final void registrarAdmin() {
        this._isRegistering.setValue(true);
        this._registerError.setValue(null);
        this._registerSuccess.setValue(false);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08111(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarAdmin$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarAdmin$1", f = "LoginViewModel.kt", i = {}, l = {RendererCapabilities.DECODER_SUPPORT_MASK}, m = "invokeSuspend", n = {}, s = {})
    static final class C08111 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08111(Continuation<? super C08111> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginViewModel.this.new C08111(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08111) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            Object objM10390registrarAdmingIAlus = LoginViewModel.this.loginUseCase.m10390registrarAdmingIAlus(new RegistryPacienteDTO(LoginViewModel.this.getNombre().getValue(), LoginViewModel.this.getApellido().getValue(), LoginViewModel.this.getEmail().getValue(), LoginViewModel.this.getRegPassword().getValue()), this);
                            if (objM10390registrarAdmingIAlus == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            result = objM10390registrarAdmingIAlus;
                            break;
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            result = ((Result) $result).getValue();
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    LoginViewModel loginViewModel = LoginViewModel.this;
                    if (Result.m8549isSuccessimpl(result)) {
                        loginViewModel._registerSuccess.setValue(Boxing.boxBoolean(true));
                    }
                    LoginViewModel loginViewModel2 = LoginViewModel.this;
                    Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                    if (thM8545exceptionOrNullimpl != null) {
                        MutableStateFlow mutableStateFlow = loginViewModel2._registerError;
                        String message = thM8545exceptionOrNullimpl.getMessage();
                        if (message == null) {
                            message = "Error al registrar administrador";
                        }
                        mutableStateFlow.setValue(message);
                    }
                } catch (Exception e) {
                    MutableStateFlow mutableStateFlow2 = LoginViewModel.this._registerError;
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = "Error inesperado";
                    }
                    mutableStateFlow2.setValue(message2);
                }
                LoginViewModel.this._isRegistering.setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            } catch (Throwable th) {
                LoginViewModel.this._isRegistering.setValue(Boxing.boxBoolean(false));
                throw th;
            }
        }
    }

    public final StateFlow<String> getSuccessMessage() {
        return this.successMessage;
    }

    public final void registrarPaciente() {
        if (!this.formularioCompletoValido.getValue().booleanValue()) {
            this._registerError.setValue("Complete todos los campos obligatorios");
            return;
        }
        this._isRegistering.setValue(true);
        this._registerError.setValue(null);
        this._registerSuccess.setValue(false);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08121(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarPaciente$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarPaciente$1", f = "LoginViewModel.kt", i = {0, 0, 0}, l = {464}, m = "invokeSuspend", n = {"tutoresList", "direccion", "request"}, s = {"L$0", "L$1", "L$2"})
    static final class C08121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C08121(Continuation<? super C08121> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginViewModel.this.new C08121(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            List tutoresList = LoginViewModel.this.getEsMenor().getValue().booleanValue() ? CollectionsKt.listOf(new TutorRequestDTO(LoginViewModel.this.getTutorNombre().getValue(), LoginViewModel.this.getTutorTelefono().getValue(), LoginViewModel.this.getTutorEmail().getValue(), LoginViewModel.this.getTutorDni().getValue(), LoginViewModel.this.getTutorTipo().getValue())) : CollectionsKt.emptyList();
                            String value = LoginViewModel.this.getCalle().getValue();
                            String value2 = LoginViewModel.this.getCiudad().getValue();
                            if (StringsKt.isBlank(value2)) {
                                value2 = null;
                            }
                            String str = value2;
                            String value3 = LoginViewModel.this.getProvincia().getValue();
                            if (StringsKt.isBlank(value3)) {
                                value3 = null;
                            }
                            String str2 = value3;
                            String value4 = LoginViewModel.this.getCodigoPostal().getValue();
                            if (StringsKt.isBlank(value4)) {
                                value4 = null;
                            }
                            String str3 = value4;
                            String value5 = LoginViewModel.this.getPais().getValue();
                            if (StringsKt.isBlank(value5)) {
                                value5 = null;
                            }
                            DireccionRequest direccion = new DireccionRequest(null, value, str, str2, str3, value5);
                            PacienteRequest request = new PacienteRequest(null, LoginViewModel.this.getFechaNacimiento().getValue(), LoginViewModel.this.getGenero().getValue(), LoginViewModel.this.getTelefono().getValue(), new UsuarioRequest(null, LoginViewModel.this.getNombre().getValue(), LoginViewModel.this.getDni().getValue(), LoginViewModel.this.getApellido().getValue(), LoginViewModel.this.getEmail().getValue(), LoginViewModel.this.getRegPassword().getValue(), Rol.paciente, null, TsExtractor.TS_STREAM_TYPE_AC3, null), LoginViewModel.this.getAceptaTerminos().getValue().booleanValue(), LoginViewModel.this.getAceptaVideoconferencia().getValue(), LoginViewModel.this.getAceptaComunicacion().getValue(), LoginViewModel.this.getSituacionesIds().getValue(), tutoresList, CollectionsKt.listOf(direccion), 1, null);
                            this.L$0 = SpillingKt.nullOutSpilledVariable(tutoresList);
                            this.L$1 = SpillingKt.nullOutSpilledVariable(direccion);
                            this.L$2 = SpillingKt.nullOutSpilledVariable(request);
                            this.label = 1;
                            result = LoginViewModel.this.loginUseCase.m10388registerPacientegIAlus(request, this);
                            if (result == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            result = ((Result) $result).getValue();
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    LoginViewModel loginViewModel = LoginViewModel.this;
                    if (Result.m8549isSuccessimpl(result)) {
                        loginViewModel._registerSuccess.setValue(Boxing.boxBoolean(true));
                        loginViewModel._registerError.setValue(null);
                        loginViewModel._successMessage.setValue("¡Paciente registrado correctamente!");
                        loginViewModel.limpiarFormulario();
                    }
                    LoginViewModel loginViewModel2 = LoginViewModel.this;
                    Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                    if (thM8545exceptionOrNullimpl != null) {
                        MutableStateFlow mutableStateFlow = loginViewModel2._registerError;
                        String message = thM8545exceptionOrNullimpl.getMessage();
                        if (message == null) {
                            message = "Error al registrar paciente";
                        }
                        mutableStateFlow.setValue(message);
                        loginViewModel2._registerSuccess.setValue(Boxing.boxBoolean(false));
                    }
                } catch (Exception e) {
                    MutableStateFlow mutableStateFlow2 = LoginViewModel.this._registerError;
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = "Error inesperado al registrar paciente";
                    }
                    mutableStateFlow2.setValue(message2);
                    LoginViewModel.this._registerSuccess.setValue(Boxing.boxBoolean(false));
                }
                return Unit.INSTANCE;
            } finally {
                LoginViewModel.this._isRegistering.setValue(Boxing.boxBoolean(false));
            }
        }
    }

    public final void limpiarFormulario() {
        this.nombre.setValue("");
        this.apellido.setValue("");
        this.dni.setValue("");
        this.email.setValue("");
        this.regPassword.setValue("");
        this.telefono.setValue("");
        this.genero.setValue("");
        this.fechaNacimiento.setValue("");
        this.aceptaTerminos.setValue(false);
        this.aceptaVideoconferencia.setValue(false);
        this.aceptaComunicacion.setValue(false);
        this.tutorNombre.setValue("");
        this.tutorTelefono.setValue("");
        this.tutorEmail.setValue("");
        this.tutorDni.setValue("");
        this.tutorTipo.setValue("PADRE");
        this.metodoPago.setValue(MetodoPago.PRESENCIAL);
        this.situacionesIds.setValue(CollectionsKt.emptyList());
        this.calle.setValue("");
        this.ciudad.setValue("");
        this.provincia.setValue("");
        this.codigoPostal.setValue("");
        this.pais.setValue("España");
        this.registroEspecialidad.setValue("");
        this.registroExperiencia.setValue(null);
        this.registroDescripcion.setValue(null);
        this.registroLicencia.setValue(null);
        resetRegisterState();
    }

    public final StateFlow<Boolean> getAsignarPacienteSuccess() {
        return this.asignarPacienteSuccess;
    }

    public final StateFlow<String> getAsignarPacienteError() {
        return this.asignarPacienteError;
    }

    public final StateFlow<Boolean> isAsignandoPaciente() {
        return this.isAsignandoPaciente;
    }

    public final void asignarPaciente(long idPaciente, long idPsicologo) {
        this._isAsignandoPaciente.setValue(true);
        this._asignarPacienteError.setValue(null);
        this._asignarPacienteSuccess.setValue(false);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(idPaciente, idPsicologo, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$asignarPaciente$1, reason: invalid class name */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$asignarPaciente$1", f = "LoginViewModel.kt", i = {}, l = {535}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idPaciente;
        final /* synthetic */ long $idPsicologo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, long j2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$idPaciente = j;
            this.$idPsicologo = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginViewModel.this.new AnonymousClass1(this.$idPaciente, this.$idPsicologo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            Object objM10385invoke0E7RQCE = LoginViewModel.this.asignarPacienteAlPsicologoUseCase.m10385invoke0E7RQCE(this.$idPaciente, this.$idPsicologo, this);
                            if (objM10385invoke0E7RQCE == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            result = objM10385invoke0E7RQCE;
                            break;
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            result = ((Result) $result).getValue();
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    LoginViewModel loginViewModel = LoginViewModel.this;
                    if (Result.m8549isSuccessimpl(result)) {
                        ((Boolean) result).booleanValue();
                        loginViewModel._asignarPacienteSuccess.setValue(Boxing.boxBoolean(true));
                        loginViewModel._asignarPacienteError.setValue(null);
                    }
                    LoginViewModel loginViewModel2 = LoginViewModel.this;
                    Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                    if (thM8545exceptionOrNullimpl != null) {
                        MutableStateFlow mutableStateFlow = loginViewModel2._asignarPacienteError;
                        String message = thM8545exceptionOrNullimpl.getMessage();
                        if (message == null) {
                            message = "Error al asignar paciente";
                        }
                        mutableStateFlow.setValue(message);
                        loginViewModel2._asignarPacienteSuccess.setValue(Boxing.boxBoolean(false));
                    }
                } catch (Exception e) {
                    MutableStateFlow mutableStateFlow2 = LoginViewModel.this._asignarPacienteError;
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = "Error inesperado al asignar paciente";
                    }
                    mutableStateFlow2.setValue(message2);
                    LoginViewModel.this._asignarPacienteSuccess.setValue(Boxing.boxBoolean(false));
                }
                return Unit.INSTANCE;
            } finally {
                LoginViewModel.this._isAsignandoPaciente.setValue(Boxing.boxBoolean(false));
            }
        }
    }

    public final void clearAsignarPsicologoResult() {
        this._asignarPacienteSuccess.setValue(false);
        this._asignarPacienteError.setValue(null);
    }

    private final boolean isValidEmail(String email) {
        return new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(email);
    }

    private final boolean isValidPassword(String password) {
        return password.length() >= 8;
    }

    private final boolean isValidPhone(String phone) {
        return new Regex("^[0-9]{9}$").matches(phone);
    }

    private final int calculateAge(LocalDate dateOfBirth) {
        return Period.between(dateOfBirth, LocalDate.now()).getYears();
    }

    private final boolean isAdult(LocalDate dateOfBirth) {
        return calculateAge(dateOfBirth) >= 18;
    }

    public final void clearAllErrors() {
        this._dateError.setValue(null);
        this._phoneError.setValue(null);
        this._emailError.setValue(null);
        this._passwordError.setValue(null);
    }

    public final Pair<Boolean, String> validatePsychologistForm() {
        if (StringsKt.isBlank(this.nombre.getValue())) {
            return new Pair<>(false, "nombre");
        }
        if (StringsKt.isBlank(this.apellido.getValue())) {
            return new Pair<>(false, "apellido");
        }
        if (!StringsKt.isBlank(this.email.getValue()) && isValidEmail(this.email.getValue())) {
            if (!StringsKt.isBlank(this.regPassword.getValue()) && isValidPassword(this.regPassword.getValue())) {
                if (this._dateOfBirth.getValue() == null) {
                    return new Pair<>(false, "fecha");
                }
                LocalDate value = this._dateOfBirth.getValue();
                Intrinsics.checkNotNull(value);
                if (!isAdult(value)) {
                    return new Pair<>(false, "fecha");
                }
                if (!StringsKt.isBlank(this.telefono.getValue()) && isValidPhone(this.telefono.getValue())) {
                    return StringsKt.isBlank(this.registroEspecialidad.getValue()) ? new Pair<>(false, "especialidad") : !this.aceptaTerminosPsicologo.getValue().booleanValue() ? new Pair<>(false, "terminos") : new Pair<>(true, null);
                }
                return new Pair<>(false, "telefono");
            }
            return new Pair<>(false, HintConstants.AUTOFILL_HINT_PASSWORD);
        }
        return new Pair<>(false, "email");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void registrarPsicologo() {
        clearAllErrors();
        Pair<Boolean, String> pairValidatePsychologistForm = validatePsychologistForm();
        boolean isValid = pairValidatePsychologistForm.component1().booleanValue();
        String invalidField = pairValidatePsychologistForm.component2();
        if (isValid) {
            this._isRegistering.setValue(true);
            this._registerError.setValue(null);
            this._registerSuccess.setValue(false);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08131(null), 3, null);
            return;
        }
        if (invalidField != null) {
            switch (invalidField.hashCode()) {
                case -1360499980:
                    if (invalidField.equals("telefono")) {
                        this._phoneError.setValue("El teléfono debe tener 9 dígitos");
                        break;
                    }
                    break;
                case -1181248459:
                    if (invalidField.equals("terminos")) {
                        this._registerError.setValue("Debes aceptar los términos y condiciones");
                        break;
                    }
                    break;
                case -1039904823:
                    if (invalidField.equals("nombre")) {
                        this._registerError.setValue("El nombre es obligatorio");
                        break;
                    }
                    break;
                case -719341262:
                    if (invalidField.equals("especialidad")) {
                        this._registerError.setValue("La especialidad es obligatoria");
                        break;
                    }
                    break;
                case 96619420:
                    if (invalidField.equals("email")) {
                        this._emailError.setValue("Introduce un correo electrónico válido");
                        break;
                    }
                    break;
                case 97306493:
                    if (invalidField.equals("fecha")) {
                        this._dateError.setValue("Debes ser mayor de 18 años");
                        break;
                    }
                    break;
                case 864681182:
                    if (invalidField.equals("apellido")) {
                        this._registerError.setValue("El apellido es obligatorio");
                        break;
                    }
                    break;
                case 1216985755:
                    if (invalidField.equals(HintConstants.AUTOFILL_HINT_PASSWORD)) {
                        this._passwordError.setValue("La contraseña debe tener al menos 8 caracteres");
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarPsicologo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarPsicologo$1", f = "LoginViewModel.kt", i = {0}, l = {676}, m = "invokeSuspend", n = {"psicologoRequest"}, s = {"L$0"})
    static final class C08131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C08131(Continuation<? super C08131> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginViewModel.this.new C08131(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08131) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            boolean z = true;
            try {
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            PsicologoRequestDTO psicologoRequest = new PsicologoRequestDTO(LoginViewModel.this.getNombre().getValue(), LoginViewModel.this.getApellido().getValue(), LoginViewModel.this.getEmail().getValue(), LoginViewModel.this.getRegPassword().getValue(), LoginViewModel.this.getRegistroEspecialidad().getValue(), LoginViewModel.this.getRegistroExperiencia().getValue(), LoginViewModel.this.getRegistroDescripcion().getValue(), LoginViewModel.this.getRegistroLicencia().getValue(), null, null, ValidationPath.MAX_PATH_LENGTH_BYTES, null);
                            this.L$0 = SpillingKt.nullOutSpilledVariable(psicologoRequest);
                            this.label = 1;
                            result = LoginViewModel.this.loginUseCase.m10391registrarPsicologogIAlus(psicologoRequest, this);
                            if (result == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            result = ((Result) $result).getValue();
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    LoginViewModel loginViewModel = LoginViewModel.this;
                    if (Result.m8549isSuccessimpl(result)) {
                        loginViewModel._registerSuccess.setValue(Boxing.boxBoolean(true));
                        loginViewModel._registerError.setValue(null);
                    }
                    LoginViewModel loginViewModel2 = LoginViewModel.this;
                    Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                    if (thM8545exceptionOrNullimpl != null) {
                        String message = thM8545exceptionOrNullimpl.getMessage();
                        if (message == null || !StringsKt.contains((CharSequence) message, (CharSequence) "email", true)) {
                            z = false;
                        }
                        if (z) {
                            loginViewModel2._emailError.setValue("Este correo electrónico ya está registrado");
                        }
                        MutableStateFlow mutableStateFlow = loginViewModel2._registerError;
                        String message2 = thM8545exceptionOrNullimpl.getMessage();
                        if (message2 == null) {
                            message2 = "Error al registrar psicólogo";
                        }
                        mutableStateFlow.setValue(message2);
                        loginViewModel2._registerSuccess.setValue(Boxing.boxBoolean(false));
                    }
                } catch (Exception e) {
                    MutableStateFlow mutableStateFlow2 = LoginViewModel.this._registerError;
                    String message3 = e.getMessage();
                    if (message3 == null) {
                        message3 = "Error inesperado al registrar psicólogo";
                    }
                    mutableStateFlow2.setValue(message3);
                    LoginViewModel.this._registerSuccess.setValue(Boxing.boxBoolean(false));
                }
                return Unit.INSTANCE;
            } finally {
                LoginViewModel.this._isRegistering.setValue(Boxing.boxBoolean(false));
            }
        }
    }
}
