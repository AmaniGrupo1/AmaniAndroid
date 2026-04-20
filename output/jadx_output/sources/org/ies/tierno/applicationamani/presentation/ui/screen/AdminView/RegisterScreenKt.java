package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material.icons.filled.ArrowDropUpKt;
import androidx.compose.material.icons.filled.DocumentScannerKt;
import androidx.compose.material.icons.filled.ListKt;
import androidx.compose.material.icons.filled.LocationOnKt;
import androidx.compose.material.icons.filled.PeopleKt;
import androidx.compose.material.icons.filled.PersonKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CheckboxDefaults;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.ExposedDropdownMenuDefaults;
import androidx.compose.material3.ExposedDropdownMenu_androidKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.MenuAnchorType;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyKt;
import androidx.compose.ui.text.font.FontKt;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.profileinstaller.ProfileVerifier;
import androidx.window.core.layout.WindowSizeClass;
import com.google.logging.type.LogSeverity;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.ies.tierno.applicationamani.R;
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: RegisterScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b¨\u0006\t²\u0006\n\u0010\n\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\f\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\r\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u000e\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u000f\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u0010\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u0011\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u0012\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0015\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0016\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0017\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0018\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0019\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001a\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001b\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001c\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001d\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001e\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001f\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010 \u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010!\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\n\u0010\"\u001a\u00020\u000bX\u008a\u0084\u0002²\u0006\u0010\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$X\u008a\u0084\u0002²\u0006\u0010\u0010&\u001a\b\u0012\u0004\u0012\u00020'0$X\u008a\u0084\u0002²\u0006\n\u0010(\u001a\u00020\u0014X\u008a\u008e\u0002²\u0006\n\u0010)\u001a\u00020\u0014X\u008a\u008e\u0002²\u0006\n\u0010*\u001a\u00020\u0014X\u008a\u008e\u0002²\u0006\n\u0010+\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\f\u0010,\u001a\u0004\u0018\u00010\u000bX\u008a\u0084\u0002"}, d2 = {"RegisterScreen", "", "navController", "Landroidx/navigation/NavController;", "loginViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "situacionViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;Landroidx/compose/runtime/Composer;II)V", "app", "nombre", "", "apellido", "dni", "email", "regPassword", "telefono", "genero", "fechaNacimiento", "aceptaTerminos", "", "aceptaVideoconferencia", "aceptaComunicacion", "esMenor", "formularioCompletoValido", "tutorNombre", "tutorTelefono", "tutorEmail", "tutorDni", "tutorTipo", "calle", "ciudad", "provincia", "codigoPostal", "pais", "situacionesIds", "", "", "listaSituaciones", "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;", "expandedGenero", "expandedSituacion", "expandedTipoTutor", "registerSuccess", "registerError"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class RegisterScreenKt {
    static final Unit RegisterScreen$lambda$189(NavController navController, LoginViewModel loginViewModel, SituacionViewModel situacionViewModel, int i, int i2, Composer composer, int i3) {
        RegisterScreen(navController, loginViewModel, situacionViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x042d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void RegisterScreen(final NavController navController, final LoginViewModel loginViewModel, SituacionViewModel situacionViewModel, Composer $composer, final int $changed, final int i) {
        SituacionViewModel situacionViewModel2;
        final SituacionViewModel situacionViewModel3;
        int $dirty;
        SituacionViewModel situacionViewModel4;
        Object objRememberedValue;
        Object objRememberedValue2;
        Object objRememberedValue3;
        State nombre$delegate;
        State listaSituaciones$delegate;
        Object objRememberedValue4;
        MutableState expandedGenero$delegate;
        Object objRememberedValue5;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(loginViewModel, "loginViewModel");
        Composer $composer2 = $composer.startRestartGroup(691563705);
        ComposerKt.sourceInformation($composer2, "C(RegisterScreen)N(navController,loginViewModel,situacionViewModel)38@1718L32,40@1839L24,43@1939L29,44@2013L29,45@2077L29,46@2145L29,47@2225L29,48@2299L29,49@2369L29,50@2457L29,51@2543L29,52@2645L29,53@2739L29,54@2811L29,55@2917L29,58@3023L29,59@3107L29,60@3185L29,61@3259L29,62@3335L29,65@3432L29,66@3502L29,67@3578L29,68@3660L29,69@3726L29,72@3843L29,75@3971L40,78@4068L34,79@4132L34,80@4196L34,88@4546L593,87@4480L47,103@5146L34438,85@4405L35179:RegisterScreen.kt#6w2cjo");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(loginViewModel) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                situacionViewModel2 = situacionViewModel;
                int i2 = $composer2.changedInstance(situacionViewModel2) ? 256 : 128;
                $dirty2 |= i2;
            } else {
                situacionViewModel2 = situacionViewModel;
            }
            $dirty2 |= i2;
        } else {
            situacionViewModel2 = situacionViewModel;
        }
        if ($composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "34@1585L15");
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if ((i & 4) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(SituacionViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer2, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $dirty = $dirty2 & (-897);
                    situacionViewModel4 = (SituacionViewModel) viewModelResolveViewModel;
                }
                $composer2.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(691563705, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen (RegisterScreen.kt:35)");
                }
                final long primaryColor = ColorKt.Color(4285293567L);
                long backgroundColor = ColorKt.Color(4291608804L);
                ComposerKt.sourceInformationMarkerStart($composer2, -1127200103, "CC(remember):RegisterScreen.kt#9igjgp");
                objRememberedValue = $composer2.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object snackbarHostState = new SnackbarHostState();
                    $composer2.updateRememberedValue(snackbarHostState);
                    objRememberedValue = snackbarHostState;
                }
                final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                final FontFamily roboto = FontFamilyKt.FontFamily(FontKt.m7021FontYpTlLL0$default(R.font.roboto_variablefont_wdth_wght, null, 0, 0, 14, null));
                ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
                objRememberedValue2 = $composer2.rememberedValue();
                if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                    $composer2.updateRememberedValue(objRememberedValue2);
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                State nombre$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getNombre(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State apellido$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getApellido(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State dni$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getDni(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State email$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getEmail(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State regPassword$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegPassword(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State telefono$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTelefono(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State genero$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getGenero(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State fechaNacimiento$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getFechaNacimiento(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State aceptaTerminos$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaTerminos(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State aceptaVideoconferencia$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaVideoconferencia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State aceptaComunicacion$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaComunicacion(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State esMenor$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getEsMenor(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State formularioCompletoValido$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getFormularioCompletoValido(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State tutorNombre$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorNombre(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State tutorTelefono$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorTelefono(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State tutorEmail$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorEmail(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State tutorDni$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorDni(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State tutorTipo$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorTipo(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State calle$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getCalle(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State ciudad$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getCiudad(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State provincia$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getProvincia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State codigoPostal$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getCodigoPostal(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State pais$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getPais(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                final State situacionesIds$delegate = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getSituacionesIds(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
                State listaSituaciones$delegate2 = FlowExtKt.collectAsStateWithLifecycle(situacionViewModel4.getSituaciones(), CollectionsKt.emptyList(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 48, 14);
                ComposerKt.sourceInformationMarkerStart($composer2, -1127124901, "CC(remember):RegisterScreen.kt#9igjgp");
                objRememberedValue3 = $composer2.rememberedValue();
                if (objRememberedValue3 != Composer.INSTANCE.getEmpty()) {
                    nombre$delegate = nombre$delegate2;
                    listaSituaciones$delegate = listaSituaciones$delegate2;
                    Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    $composer2.updateRememberedValue(objMutableStateOf$default);
                    objRememberedValue3 = objMutableStateOf$default;
                } else {
                    nombre$delegate = nombre$delegate2;
                    listaSituaciones$delegate = listaSituaciones$delegate2;
                }
                MutableState expandedGenero$delegate2 = (MutableState) objRememberedValue3;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerStart($composer2, -1127122853, "CC(remember):RegisterScreen.kt#9igjgp");
                objRememberedValue4 = $composer2.rememberedValue();
                if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
                    expandedGenero$delegate = expandedGenero$delegate2;
                    Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    $composer2.updateRememberedValue(objMutableStateOf$default2);
                    objRememberedValue4 = objMutableStateOf$default2;
                } else {
                    expandedGenero$delegate = expandedGenero$delegate2;
                }
                final MutableState expandedSituacion$delegate = (MutableState) objRememberedValue4;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerStart($composer2, -1127120805, "CC(remember):RegisterScreen.kt#9igjgp");
                objRememberedValue5 = $composer2.rememberedValue();
                if (objRememberedValue5 != Composer.INSTANCE.getEmpty()) {
                    Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    $composer2.updateRememberedValue(objMutableStateOf$default3);
                    objRememberedValue5 = objMutableStateOf$default3;
                }
                final MutableState expandedTipoTutor$delegate = (MutableState) objRememberedValue5;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                final List listaGeneros = CollectionsKt.listOf((Object[]) new String[]{"MASCULINO", "FEMENINO", "OTRO", "PREFIERO_NO_DECIR"});
                final List listaTiposTutor = CollectionsKt.listOf((Object[]) new String[]{"PADRE", "MADRE", "TUTOR LEGAL", "ABUELO", "OTRO"});
                final State nombre$delegate3 = nombre$delegate;
                final State ciudad$delegate2 = listaSituaciones$delegate;
                final MutableState expandedGenero$delegate3 = expandedGenero$delegate;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-1161785219, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda30
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$38(primaryColor, navController, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(-1977832449, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$39(snackbarHostState2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer2, 54), null, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(-1594622840, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda32
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return RegisterScreenKt.RegisterScreen$lambda$188(loginViewModel, primaryColor, roboto, nombre$delegate3, apellido$delegate, dni$delegate, email$delegate, regPassword$delegate, telefono$delegate, expandedGenero$delegate3, genero$delegate, listaGeneros, fechaNacimiento$delegate, esMenor$delegate, tutorNombre$delegate, tutorTelefono$delegate, tutorEmail$delegate, tutorDni$delegate, expandedTipoTutor$delegate, tutorTipo$delegate, listaTiposTutor, calle$delegate, ciudad$delegate, provincia$delegate, codigoPostal$delegate, pais$delegate, situacionesIds$delegate, expandedSituacion$delegate, ciudad$delegate2, aceptaTerminos$delegate, aceptaVideoconferencia$delegate, aceptaComunicacion$delegate, formularioCompletoValido$delegate, snackbarHostState2, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer2, 54), $composer2, 806882352, 437);
                $composer2 = $composer2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                situacionViewModel3 = situacionViewModel4;
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
            }
            $dirty = $dirty2;
            situacionViewModel4 = situacionViewModel2;
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            final long primaryColor2 = ColorKt.Color(4285293567L);
            long backgroundColor2 = ColorKt.Color(4291608804L);
            ComposerKt.sourceInformationMarkerStart($composer2, -1127200103, "CC(remember):RegisterScreen.kt#9igjgp");
            objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            }
            final SnackbarHostState snackbarHostState22 = (SnackbarHostState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final FontFamily roboto2 = FontFamilyKt.FontFamily(FontKt.m7021FontYpTlLL0$default(R.font.roboto_variablefont_wdth_wght, null, 0, 0, 14, null));
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
            objRememberedValue2 = $composer2.rememberedValue();
            if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            State nombre$delegate22 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getNombre(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State apellido$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getApellido(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State dni$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getDni(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State email$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getEmail(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State regPassword$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getRegPassword(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State telefono$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTelefono(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State genero$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getGenero(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State fechaNacimiento$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getFechaNacimiento(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State aceptaTerminos$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaTerminos(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State aceptaVideoconferencia$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaVideoconferencia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State aceptaComunicacion$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getAceptaComunicacion(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State esMenor$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getEsMenor(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State formularioCompletoValido$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getFormularioCompletoValido(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State tutorNombre$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorNombre(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State tutorTelefono$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorTelefono(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State tutorEmail$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorEmail(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State tutorDni$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorDni(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State tutorTipo$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getTutorTipo(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State calle$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getCalle(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State ciudad$delegate3 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getCiudad(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State provincia$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getProvincia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State codigoPostal$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getCodigoPostal(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State pais$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getPais(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State situacionesIds$delegate2 = FlowExtKt.collectAsStateWithLifecycle(loginViewModel.getSituacionesIds(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State listaSituaciones$delegate22 = FlowExtKt.collectAsStateWithLifecycle(situacionViewModel4.getSituaciones(), CollectionsKt.emptyList(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 48, 14);
            ComposerKt.sourceInformationMarkerStart($composer2, -1127124901, "CC(remember):RegisterScreen.kt#9igjgp");
            objRememberedValue3 = $composer2.rememberedValue();
            if (objRememberedValue3 != Composer.INSTANCE.getEmpty()) {
            }
            MutableState expandedGenero$delegate22 = (MutableState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1127122853, "CC(remember):RegisterScreen.kt#9igjgp");
            objRememberedValue4 = $composer2.rememberedValue();
            if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
            }
            final MutableState expandedSituacion$delegate2 = (MutableState) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1127120805, "CC(remember):RegisterScreen.kt#9igjgp");
            objRememberedValue5 = $composer2.rememberedValue();
            if (objRememberedValue5 != Composer.INSTANCE.getEmpty()) {
            }
            final MutableState expandedTipoTutor$delegate2 = (MutableState) objRememberedValue5;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final List listaGeneros2 = CollectionsKt.listOf((Object[]) new String[]{"MASCULINO", "FEMENINO", "OTRO", "PREFIERO_NO_DECIR"});
            final List listaTiposTutor2 = CollectionsKt.listOf((Object[]) new String[]{"PADRE", "MADRE", "TUTOR LEGAL", "ABUELO", "OTRO"});
            final State nombre$delegate32 = nombre$delegate;
            final State ciudad$delegate22 = listaSituaciones$delegate;
            final MutableState expandedGenero$delegate32 = expandedGenero$delegate;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-1161785219, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegisterScreenKt.RegisterScreen$lambda$38(primaryColor2, navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(-1977832449, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegisterScreenKt.RegisterScreen$lambda$39(snackbarHostState22, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, 0, backgroundColor2, 0L, null, ComposableLambdaKt.rememberComposableLambda(-1594622840, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188(loginViewModel, primaryColor2, roboto2, nombre$delegate32, apellido$delegate2, dni$delegate2, email$delegate2, regPassword$delegate2, telefono$delegate2, expandedGenero$delegate32, genero$delegate2, listaGeneros2, fechaNacimiento$delegate2, esMenor$delegate2, tutorNombre$delegate2, tutorTelefono$delegate2, tutorEmail$delegate2, tutorDni$delegate2, expandedTipoTutor$delegate2, tutorTipo$delegate2, listaTiposTutor2, calle$delegate2, ciudad$delegate3, provincia$delegate2, codigoPostal$delegate2, pais$delegate2, situacionesIds$delegate2, expandedSituacion$delegate2, ciudad$delegate22, aceptaTerminos$delegate2, aceptaVideoconferencia$delegate2, aceptaComunicacion$delegate2, formularioCompletoValido$delegate2, snackbarHostState22, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 806882352, 437);
            $composer2 = $composer2;
            if (ComposerKt.isTraceInProgress()) {
            }
            situacionViewModel3 = situacionViewModel4;
        } else {
            $composer2.skipToGroupEnd();
            situacionViewModel3 = situacionViewModel2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda33
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegisterScreenKt.RegisterScreen$lambda$189(navController, loginViewModel, situacionViewModel3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final String RegisterScreen$lambda$1(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$2(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$3(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$4(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$5(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$6(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$7(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$8(State<String> state) {
        return (String) state.getValue();
    }

    private static final boolean RegisterScreen$lambda$9(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean RegisterScreen$lambda$10(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean RegisterScreen$lambda$11(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean RegisterScreen$lambda$12(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean RegisterScreen$lambda$13(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final String RegisterScreen$lambda$14(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$15(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$16(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$17(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$18(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$19(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$20(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$21(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$22(State<String> state) {
        return (String) state.getValue();
    }

    private static final String RegisterScreen$lambda$23(State<String> state) {
        return (String) state.getValue();
    }

    private static final List<Long> RegisterScreen$lambda$24(State<? extends List<Long>> state) {
        return (List) state.getValue();
    }

    private static final List<SituacionDTO> RegisterScreen$lambda$25(State<? extends List<SituacionDTO>> state) {
        return (List) state.getValue();
    }

    private static final boolean RegisterScreen$lambda$27(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void RegisterScreen$lambda$28(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean RegisterScreen$lambda$30(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void RegisterScreen$lambda$31(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean RegisterScreen$lambda$33(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void RegisterScreen$lambda$34(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit RegisterScreen$lambda$39(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C87@4482L43:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1977832449, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous> (RegisterScreen.kt:87)");
            }
            SnackbarHostKt.SnackbarHost($snackbarHostState, null, null, $composer, 6, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$38(long $primaryColor, final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C91@4691L46,92@4772L343,89@4560L569:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1161785219, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous> (RegisterScreen.kt:89)");
            }
            AppBarKt.m2057TopAppBarGHTll3U(ComposableSingletons$RegisterScreenKt.INSTANCE.getLambda$1498402617$app(), null, ComposableLambdaKt.rememberComposableLambda(-207726985, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RegisterScreenKt.RegisterScreen$lambda$38$lambda$37($navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), null, 0.0f, null, TopAppBarDefaults.INSTANCE.m3147topAppBarColorszjMxDiM($primaryColor, 0L, 0L, 0L, 0L, $composer, (TopAppBarDefaults.$stable << 15) | 6, 30), null, $composer, 390, 186);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$38$lambda$37(final NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C93@4815L30,93@4794L303:RegisterScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-207726985, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous> (RegisterScreen.kt:93)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -2057135563, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($navController);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda36
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$38$lambda$37$lambda$36$lambda$35($navController);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$RegisterScreenKt.INSTANCE.m10420getLambda$467439238$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$38$lambda$37$lambda$36$lambda$35(NavController $navController) {
        $navController.navigateUp();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    static final Unit RegisterScreen$lambda$188(final LoginViewModel $loginViewModel, final long $primaryColor, final FontFamily $roboto, final State $nombre$delegate, final State $apellido$delegate, final State $dni$delegate, final State $email$delegate, final State $regPassword$delegate, final State $telefono$delegate, final MutableState $expandedGenero$delegate, final State $genero$delegate, final List $listaGeneros, final State $fechaNacimiento$delegate, State $esMenor$delegate, final State $tutorNombre$delegate, final State $tutorTelefono$delegate, final State $tutorEmail$delegate, final State $tutorDni$delegate, final MutableState $expandedTipoTutor$delegate, final State $tutorTipo$delegate, final List $listaTiposTutor, final State $calle$delegate, final State $ciudad$delegate, final State $provincia$delegate, final State $codigoPostal$delegate, final State $pais$delegate, final State $situacionesIds$delegate, final MutableState $expandedSituacion$delegate, final State $listaSituaciones$delegate, final State $aceptaTerminos$delegate, final State $aceptaVideoconferencia$delegate, final State $aceptaComunicacion$delegate, State $formularioCompletoValido$delegate, SnackbarHostState $snackbarHostState, PaddingValues padding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        float f;
        Intrinsics.checkNotNullParameter(padding, "padding");
        ComposerKt.sourceInformation($composer, "CN(padding)109@5336L21,104@5167L34411:RegisterScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(padding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1594622840, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous> (RegisterScreen.kt:104)");
            }
            Modifier modifierVerticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxSize$default(PaddingKt.padding(Modifier.INSTANCE, padding), 0.0f, 1, null), Dp.m7505constructorimpl(16)), ScrollKt.rememberScrollState(0, $composer, 0, 1), false, null, false, 14, null);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierVerticalScroll$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -2136264921, "C117@5687L40,119@5821L38,120@5874L8518,115@5591L8801,446@23020L40,448@23154L38,449@23207L4274,444@22924L4557,540@27671L40,542@27805L38,543@27858L6335,538@27575L6618,660@34387L40,662@34521L38,663@34574L3407,658@34291L3690,738@37995L40,741@38176L29,742@38268L29,752@38620L43,745@38345L74,754@38730L266,744@38311L685,764@39107L461,764@39060L508:RegisterScreen.kt#6w2cjo");
            final RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            Composer composer = $composer;
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(1361449376, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83($primaryColor, $loginViewModel, roundedCornerShapeM1126RoundedCornerShape0680j_4, $roboto, $nombre$delegate, $apellido$delegate, $dni$delegate, $email$delegate, $regPassword$delegate, $telefono$delegate, $expandedGenero$delegate, $genero$delegate, $listaGeneros, $fechaNacimiento$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, composer, 54), composer, 196614, 16);
            if (!RegisterScreen$lambda$12($esMenor$delegate) || StringsKt.isBlank(RegisterScreen$lambda$8($fechaNacimiento$delegate))) {
                f = 0.0f;
                composer.startReplaceGroup(-2142726128);
            } else {
                composer.startReplaceGroup(-2128030950);
                ComposerKt.sourceInformation(composer, "291@14676L46,293@14824L38,294@14881L7937,289@14572L8246");
                f = 0.0f;
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                CardColors cardColorsM2112cardColorsro_MJ88 = CardDefaults.INSTANCE.m2112cardColorsro_MJ88(ColorKt.Color(4294964192L), 0L, 0L, 0L, composer, (CardDefaults.$stable << 12) | 6, 14);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
                CardElevation cardElevationM2113cardElevationaqJV_2Y = CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer, (CardDefaults.$stable << 18) | 6, 62);
                RoundedCornerShape roundedCornerShape = roundedCornerShapeM1126RoundedCornerShape0680j_42;
                Function3 function3 = new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117($roboto, $loginViewModel, roundedCornerShapeM1126RoundedCornerShape0680j_4, $tutorNombre$delegate, $tutorTelefono$delegate, $tutorEmail$delegate, $tutorDni$delegate, $expandedTipoTutor$delegate, $tutorTipo$delegate, $listaTiposTutor, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                };
                roundedCornerShapeM1126RoundedCornerShape0680j_4 = roundedCornerShapeM1126RoundedCornerShape0680j_4;
                CardKt.Card(modifierFillMaxWidth$default, roundedCornerShape, cardColorsM2112cardColorsro_MJ88, cardElevationM2113cardElevationaqJV_2Y, null, ComposableLambdaKt.rememberComposableLambda(941212709, true, function3, composer, 54), composer, 196614, 16);
                composer = composer;
            }
            composer.endReplaceGroup();
            Composer composer2 = composer;
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, composer2, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-1436894775, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137($primaryColor, $loginViewModel, roundedCornerShapeM1126RoundedCornerShape0680j_4, $roboto, $calle$delegate, $ciudad$delegate, $provincia$delegate, $codigoPostal$delegate, $pais$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, composer2, 54), composer2, 196614, 16);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, composer2, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-1678592088, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162($roboto, $primaryColor, roundedCornerShapeM1126RoundedCornerShape0680j_4, $situacionesIds$delegate, $expandedSituacion$delegate, $listaSituaciones$delegate, $loginViewModel, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, composer2, 54), composer2, 196614, 16);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, composer2, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-1920289401, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180($primaryColor, $roboto, $loginViewModel, $aceptaTerminos$delegate, $aceptaVideoconferencia$delegate, $aceptaComunicacion$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, composer2, 54), composer2, 196614, 16);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer2, 6);
            State stateCollectAsStateWithLifecycle = FlowExtKt.collectAsStateWithLifecycle($loginViewModel.getRegisterSuccess(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, composer2, 0, 7);
            State stateCollectAsStateWithLifecycle2 = FlowExtKt.collectAsStateWithLifecycle($loginViewModel.getRegisterError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, composer2, 0, 7);
            Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, f, 1, null), Dp.m7505constructorimpl(56));
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_43 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
            ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($primaryColor, 0L, 0L, 0L, composer2, (ButtonDefaults.$stable << 12) | 6, 14);
            boolean zRegisterScreen$lambda$13 = RegisterScreen$lambda$13($formularioCompletoValido$delegate);
            ComposerKt.sourceInformationMarkerStart(composer2, -344987716, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance = composer2.changedInstance($loginViewModel);
            Object objRememberedValue = composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$184$lambda$183($loginViewModel);
                    }
                };
                composer2.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs, zRegisterScreen$lambda$13, roundedCornerShapeM1126RoundedCornerShape0680j_43, buttonColorsM2092buttonColorsro_MJ88, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(845713378, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$185($roboto, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, composer2, 54), composer2, 805306416, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND);
            Boolean boolValueOf = Boolean.valueOf(RegisterScreen$lambda$188$lambda$187$lambda$181(stateCollectAsStateWithLifecycle));
            String strRegisterScreen$lambda$188$lambda$187$lambda$182 = RegisterScreen$lambda$188$lambda$187$lambda$182(stateCollectAsStateWithLifecycle2);
            ComposerKt.sourceInformationMarkerStart(composer2, -344962945, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChanged = composer2.changed(stateCollectAsStateWithLifecycle) | composer2.changedInstance($loginViewModel) | composer2.changed(stateCollectAsStateWithLifecycle2);
            Object objRememberedValue2 = composer2.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = (Function2) new RegisterScreenKt$RegisterScreen$3$1$8$1($snackbarHostState, $loginViewModel, stateCollectAsStateWithLifecycle, stateCollectAsStateWithLifecycle2, null);
                composer2.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd(composer2);
            EffectsKt.LaunchedEffect(boolValueOf, strRegisterScreen$lambda$188$lambda$187$lambda$182, (Function2) objRememberedValue2, composer2, 0);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x08ae  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x09de  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x09ec  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0a3d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0ae3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0b86  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83(final long $primaryColor, final LoginViewModel $loginViewModel, final RoundedCornerShape $textFieldShape, final FontFamily $roboto, State $nombre$delegate, State $apellido$delegate, final State $dni$delegate, State $email$delegate, State $regPassword$delegate, final State $telefono$delegate, MutableState $expandedGenero$delegate, final State $genero$delegate, final List $listaGeneros, final State $fechaNacimiento$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        String str;
        String str2;
        String str3;
        String str4;
        Object objRememberedValue;
        final MutableState mutableState;
        String strRegisterScreen$lambda$8;
        boolean zChangedInstance;
        Object objRememberedValue2;
        String str5;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C121@5892L8486:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1361449376, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:121)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 926719782, "C122@5957L513,132@6491L41,140@6929L158,136@6653L32,137@6719L41,134@6554L555,152@7512L158,148@7232L34,149@7300L43,146@7131L561,174@8694L158,160@7810L41,161@7885L38,162@7963L42,166@8253L380,158@7714L1160,186@9268L158,182@8994L31,183@9059L40,180@8896L552,199@9938L158,194@9574L37,195@9645L45,192@9470L648,221@11109L158,207@10241L34,208@10309L43,209@10392L42,213@10684L364,205@10140L1149,230@11468L23,231@11514L1593,228@11350L1757,279@14180L158,265@13237L41,266@13312L51,267@13403L43,271@13721L398,263@13129L1231:RegisterScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -716265344, "C123@6035L74,124@6134L39,127@6302L10,125@6198L250:RegisterScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(PersonKt.getPerson(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, $primaryColor, $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Datos Personales", (Modifier) null, $primaryColor, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 390, 0, 65466);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            String strRegisterScreen$lambda$1 = RegisterScreen$lambda$1($nombre$delegate);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -1494112566, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda59
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$42$lambda$41($loginViewModel, (String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue3 = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$1, (Function1<? super String, Unit>) objRememberedValue3, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(212665616, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$43($roboto, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
            String strRegisterScreen$lambda$2 = RegisterScreen$lambda$2($apellido$delegate);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_02 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -1494094036, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance3 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue4 = $composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda73
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$45$lambda$44($loginViewModel, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue4 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$2, (Function1<? super String, Unit>) objRememberedValue4, modifierFillMaxWidth$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1518286727, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda74
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$46($roboto, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 1573248, 0, 0, 2097080);
            String strRegisterScreen$lambda$3 = RegisterScreen$lambda$3($dni$delegate);
            Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            if (!StringsKt.isBlank(RegisterScreen$lambda$3($dni$delegate))) {
                boolean z = !new Regex("^[0-9]{8}[A-Za-z]$").matches(RegisterScreen$lambda$3($dni$delegate));
                TextFieldColors textFieldColorsM2626colors0hiis_03 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, -1494075533, "CC(remember):RegisterScreen.kt#9igjgp");
                boolean zChangedInstance4 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue5 = $composer.rememberedValue();
                if (zChangedInstance4 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                    str = strRegisterScreen$lambda$3;
                    Object obj3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda75
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$48$lambda$47($loginViewModel, (String) obj4);
                        }
                    };
                    $composer.updateRememberedValue(obj3);
                    objRememberedValue5 = obj3;
                } else {
                    str = strRegisterScreen$lambda$3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) objRememberedValue5, modifierFillMaxWidth$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1745219352, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda76
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$49($roboto, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(2104633689, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda77
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$50($roboto, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1467624917, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda78
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$51($dni$delegate, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                String strRegisterScreen$lambda$4 = RegisterScreen$lambda$4($email$delegate);
                Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                TextFieldColors textFieldColorsM2626colors0hiis_04 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, -1494037655, "CC(remember):RegisterScreen.kt#9igjgp");
                boolean zChangedInstance5 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue6 = $composer.rememberedValue();
                if (zChangedInstance5 || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                    str2 = strRegisterScreen$lambda$4;
                    Object obj4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda79
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj5) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$53$lambda$52($loginViewModel, (String) obj5);
                        }
                    };
                    $composer.updateRememberedValue(obj4);
                    objRememberedValue6 = obj4;
                } else {
                    str2 = strRegisterScreen$lambda$4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str2, (Function1<? super String, Unit>) objRememberedValue6, modifierFillMaxWidth$default4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(713758135, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$54($roboto, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_04, $composer, 1573248, 0, 0, 2097080);
                String strRegisterScreen$lambda$5 = RegisterScreen$lambda$5($regPassword$delegate);
                PasswordVisualTransformation passwordVisualTransformation = new PasswordVisualTransformation((char) 0, 1, null);
                Modifier modifierFillMaxWidth$default5 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                TextFieldColors textFieldColorsM2626colors0hiis_05 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, -1494019089, "CC(remember):RegisterScreen.kt#9igjgp");
                boolean zChangedInstance6 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue7 = $composer.rememberedValue();
                if (zChangedInstance6 || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                    str3 = strRegisterScreen$lambda$5;
                    Object obj5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda60
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj6) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$56$lambda$55($loginViewModel, (String) obj6);
                        }
                    };
                    $composer.updateRememberedValue(obj5);
                    objRememberedValue7 = obj5;
                } else {
                    str3 = strRegisterScreen$lambda$5;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str3, (Function1<? super String, Unit>) objRememberedValue7, modifierFillMaxWidth$default5, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-317703082, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda61
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj6, Object obj7) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$57($roboto, (Composer) obj6, ((Integer) obj7).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) passwordVisualTransformation, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_05, $composer, 1573248, 0, 0, 2080696);
                String strRegisterScreen$lambda$6 = RegisterScreen$lambda$6($telefono$delegate);
                Modifier modifierFillMaxWidth$default6 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                if (!StringsKt.isBlank(RegisterScreen$lambda$6($telefono$delegate))) {
                    boolean z2 = !new Regex("^[0-9]{9}$").matches(RegisterScreen$lambda$6($telefono$delegate));
                    TextFieldColors textFieldColorsM2626colors0hiis_06 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, -1493997748, "CC(remember):RegisterScreen.kt#9igjgp");
                    boolean zChangedInstance7 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue8 = $composer.rememberedValue();
                    if (!zChangedInstance7) {
                        str4 = strRegisterScreen$lambda$6;
                        if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(str4, (Function1<? super String, Unit>) objRememberedValue8, modifierFillMaxWidth$default6, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1349164299, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda63
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj6, Object obj7) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$60($roboto, (Composer) obj6, ((Integer) obj7).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-989749962, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda64
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj6, Object obj7) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$61($roboto, (Composer) obj6, ((Integer) obj7).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-267041272, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda65
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj6, Object obj7) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$62($telefono$delegate, (Composer) obj6, ((Integer) obj7).intValue());
                            }
                        }, $composer, 54), z2, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_06, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                        boolean zRegisterScreen$lambda$27 = RegisterScreen$lambda$27($expandedGenero$delegate);
                        ComposerKt.sourceInformationMarkerStart($composer, -1493958495, "CC(remember):RegisterScreen.kt#9igjgp");
                        objRememberedValue = $composer.rememberedValue();
                        if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                            mutableState = $expandedGenero$delegate;
                            Object obj6 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda66
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj7) {
                                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$64$lambda$63(mutableState, ((Boolean) obj7).booleanValue());
                                }
                            };
                            $composer.updateRememberedValue(obj6);
                            objRememberedValue = obj6;
                        } else {
                            mutableState = $expandedGenero$delegate;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        final MutableState mutableState2 = mutableState;
                        boolean z3 = false;
                        ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zRegisterScreen$lambda$27, (Function1) objRememberedValue, null, ComposableLambdaKt.rememberComposableLambda(833433236, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda67
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj7, Object obj8, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76($primaryColor, $textFieldShape, $genero$delegate, $roboto, mutableState2, $listaGeneros, $loginViewModel, (ExposedDropdownMenuBoxScope) obj7, (Composer) obj8, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), $composer, 3120, 4);
                        strRegisterScreen$lambda$8 = RegisterScreen$lambda$8($fechaNacimiento$delegate);
                        Modifier modifierFillMaxWidth$default7 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        if (!StringsKt.isBlank(RegisterScreen$lambda$8($fechaNacimiento$delegate))) {
                            if (!new Regex("\\d{4}-\\d{2}-\\d{2}").matches(RegisterScreen$lambda$8($fechaNacimiento$delegate))) {
                                z3 = true;
                            }
                        }
                        TextFieldColors textFieldColorsM2626colors0hiis_07 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer, -1493901869, "CC(remember):RegisterScreen.kt#9igjgp");
                        zChangedInstance = $composer.changedInstance($loginViewModel);
                        objRememberedValue2 = $composer.rememberedValue();
                        if (!zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                            str5 = strRegisterScreen$lambda$8;
                            Object obj7 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda68
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj8) {
                                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$78$lambda$77($loginViewModel, (String) obj8);
                                }
                            };
                            $composer.updateRememberedValue(obj7);
                            objRememberedValue2 = obj7;
                        } else {
                            str5 = strRegisterScreen$lambda$8;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(str5, (Function1<? super String, Unit>) objRememberedValue2, modifierFillMaxWidth$default7, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1914341780, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda69
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj8, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$79($roboto, (Composer) obj8, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-2021211179, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda71
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj8, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$80($roboto, (Composer) obj8, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1298502489, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda72
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj8, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$81($fechaNacimiento$delegate, (Composer) obj8, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), z3, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_07, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        str4 = strRegisterScreen$lambda$6;
                    }
                    Object obj8 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda62
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj9) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$59$lambda$58($loginViewModel, (String) obj9);
                        }
                    };
                    $composer.updateRememberedValue(obj8);
                    objRememberedValue8 = obj8;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(str4, (Function1<? super String, Unit>) objRememberedValue8, modifierFillMaxWidth$default6, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1349164299, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda63
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj62, Object obj72) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$60($roboto, (Composer) obj62, ((Integer) obj72).intValue());
                        }
                    }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-989749962, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda64
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj62, Object obj72) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$61($roboto, (Composer) obj62, ((Integer) obj72).intValue());
                        }
                    }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-267041272, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda65
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj62, Object obj72) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$62($telefono$delegate, (Composer) obj62, ((Integer) obj72).intValue());
                        }
                    }, $composer, 54), z2, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_06, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                    boolean zRegisterScreen$lambda$272 = RegisterScreen$lambda$27($expandedGenero$delegate);
                    ComposerKt.sourceInformationMarkerStart($composer, -1493958495, "CC(remember):RegisterScreen.kt#9igjgp");
                    objRememberedValue = $composer.rememberedValue();
                    if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    final MutableState mutableState22 = mutableState;
                    boolean z32 = false;
                    ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zRegisterScreen$lambda$272, (Function1) objRememberedValue, null, ComposableLambdaKt.rememberComposableLambda(833433236, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda67
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj72, Object obj82, Object obj9) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76($primaryColor, $textFieldShape, $genero$delegate, $roboto, mutableState22, $listaGeneros, $loginViewModel, (ExposedDropdownMenuBoxScope) obj72, (Composer) obj82, ((Integer) obj9).intValue());
                        }
                    }, $composer, 54), $composer, 3120, 4);
                    strRegisterScreen$lambda$8 = RegisterScreen$lambda$8($fechaNacimiento$delegate);
                    Modifier modifierFillMaxWidth$default72 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    if (!StringsKt.isBlank(RegisterScreen$lambda$8($fechaNacimiento$delegate))) {
                    }
                    TextFieldColors textFieldColorsM2626colors0hiis_072 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, -1493901869, "CC(remember):RegisterScreen.kt#9igjgp");
                    zChangedInstance = $composer.changedInstance($loginViewModel);
                    objRememberedValue2 = $composer.rememberedValue();
                    if (!zChangedInstance) {
                        str5 = strRegisterScreen$lambda$8;
                        Object obj72 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda68
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj82) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$78$lambda$77($loginViewModel, (String) obj82);
                            }
                        };
                        $composer.updateRememberedValue(obj72);
                        objRememberedValue2 = obj72;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(str5, (Function1<? super String, Unit>) objRememberedValue2, modifierFillMaxWidth$default72, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1914341780, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda69
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj82, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$79($roboto, (Composer) obj82, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-2021211179, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda71
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj82, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$80($roboto, (Composer) obj82, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1298502489, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda72
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj82, Object obj9) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$81($fechaNacimiento$delegate, (Composer) obj82, ((Integer) obj9).intValue());
                            }
                        }, $composer, 54), z32, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_072, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$42$lambda$41(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setNombre(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$43(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C137@6721L37:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(212665616, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:137)");
            }
            TextKt.m2976Text4IGK_g("Nombre *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$45$lambda$44(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setApellido(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$46(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C149@7302L39:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1518286727, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:149)");
            }
            TextKt.m2976Text4IGK_g("Apellido *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$48$lambda$47(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String upperCase = it.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        $loginViewModel.setDni(upperCase);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$49(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C161@7887L34:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1745219352, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:161)");
            }
            TextKt.m2976Text4IGK_g("DNI *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$50(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C162@7965L38:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2104633689, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:162)");
            }
            TextKt.m2976Text4IGK_g("12345678A", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$51(State $dni$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1467624917, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:167)");
            }
            if (!StringsKt.isBlank(RegisterScreen$lambda$3($dni$delegate))) {
                if (new Regex("^[0-9]{8}[A-Za-z]$").matches(RegisterScreen$lambda$3($dni$delegate))) {
                    composer.startReplaceGroup(744982967);
                } else {
                    composer.startReplaceGroup(753275126);
                    ComposerKt.sourceInformation(composer, "170@8526L11,168@8384L193");
                    TextKt.m2976Text4IGK_g("Formato inválido (8 números + 1 letra)", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$53$lambda$52(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setEmail(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$54(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C183@9061L36:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(713758135, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:183)");
            }
            TextKt.m2976Text4IGK_g("Email *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$56$lambda$55(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setRegPassword(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$57(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C195@9647L41:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-317703082, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:195)");
            }
            TextKt.m2976Text4IGK_g("Contraseña *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$59$lambda$58(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setTelefono(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$60(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C208@10311L39:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1349164299, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:208)");
            }
            TextKt.m2976Text4IGK_g("Teléfono *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$61(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C209@10394L38:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-989749962, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:209)");
            }
            TextKt.m2976Text4IGK_g("123456789", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$62(State $telefono$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-267041272, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:214)");
            }
            if (!StringsKt.isBlank(RegisterScreen$lambda$6($telefono$delegate))) {
                if (new Regex("^[0-9]{9}$").matches(RegisterScreen$lambda$6($telefono$delegate))) {
                    composer.startReplaceGroup(-1157701478);
                } else {
                    composer.startReplaceGroup(-1146996341);
                    ComposerKt.sourceInformation(composer, "217@10941L11,215@10817L175");
                    TextKt.m2976Text4IGK_g("Debe tener 9 dígitos", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$64$lambda$63(MutableState $expandedGenero$delegate, boolean it) {
        RegisterScreen$lambda$28($expandedGenero$delegate, it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76(long $primaryColor, RoundedCornerShape $textFieldShape, State $genero$delegate, final FontFamily $roboto, final MutableState $expandedGenero$delegate, final List $listaGeneros, final LoginViewModel $loginViewModel, ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
        ComposerKt.sourceInformation($composer, "C242@12182L170,234@11647L2,236@11732L41,237@11818L71,232@11540L838,249@12526L26,250@12579L506,247@12403L682:RegisterScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer.changed(ExposedDropdownMenuBox) : $composer.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if ($composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(833433236, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:232)");
            }
            String strRegisterScreen$lambda$7 = RegisterScreen$lambda$7($genero$delegate);
            Modifier modifierM2362menuAnchorfsE2BvY$default = ExposedDropdownMenuBoxScope.m2362menuAnchorfsE2BvY$default(ExposedDropdownMenuBox, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MenuAnchorType.INSTANCE.m2508getPrimaryNotEditableMg6Rgbw(), false, 2, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 2065426998, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda37
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$66$lambda$65((String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$7, (Function1<? super String, Unit>) objRememberedValue, modifierM2362menuAnchorfsE2BvY$default, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1513698618, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda38
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$67($roboto, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(852836669, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda39
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$68($expandedGenero$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 806903856, 0, 0, 2096552);
            boolean zRegisterScreen$lambda$27 = RegisterScreen$lambda$27($expandedGenero$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 2065455150, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda40
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$70$lambda$69($expandedGenero$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zRegisterScreen$lambda$27, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(944327702, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda41
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75($listaGeneros, $loginViewModel, $roboto, $expandedGenero$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty2 << 3) & 112), 1020);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$66$lambda$65(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$67(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C236@11734L37:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1513698618, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:236)");
            }
            TextKt.m2976Text4IGK_g("Género *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$68(MutableState $expandedGenero$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C237@11848L39:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(852836669, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:237)");
            }
            ExposedDropdownMenuDefaults.INSTANCE.TrailingIcon(RegisterScreen$lambda$27($expandedGenero$delegate), null, $composer, ExposedDropdownMenuDefaults.$stable << 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$70$lambda$69(MutableState $expandedGenero$delegate) {
        RegisterScreen$lambda$28($expandedGenero$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75(List $listaGeneros, final LoginViewModel $loginViewModel, final FontFamily $roboto, final MutableState $expandedGenero$delegate, ColumnScope ExposedDropdownMenu, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
        ComposerKt.sourceInformation(composer, "C*253@12735L37,254@12820L175,252@12674L355:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(944327702, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:251)");
            }
            Iterator it = $listaGeneros.iterator();
            while (it.hasNext()) {
                final String str = (String) it.next();
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1172982378, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda34
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75$lambda$74$lambda$71(str, $roboto, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -205065035, "CC(remember):RegisterScreen.kt#9igjgp");
                boolean zChangedInstance = composer.changedInstance($loginViewModel) | composer.changed(str);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda35
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75$lambda$74$lambda$73$lambda$72($loginViewModel, str, $expandedGenero$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, composer, 6, 508);
                composer = $composer;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75$lambda$74$lambda$71(String $opcion, FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C253@12737L33:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1172982378, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:253)");
            }
            TextKt.m2976Text4IGK_g($opcion, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$76$lambda$75$lambda$74$lambda$73$lambda$72(LoginViewModel $loginViewModel, String $opcion, MutableState $expandedGenero$delegate) {
        $loginViewModel.setGenero($opcion);
        RegisterScreen$lambda$28($expandedGenero$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$78$lambda$77(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setFechaNacimiento(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$79(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C266@13314L47:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1914341780, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:266)");
            }
            TextKt.m2976Text4IGK_g("Fecha nacimiento *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$80(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C267@13405L39:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2021211179, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:267)");
            }
            TextKt.m2976Text4IGK_g("1990-05-15", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$83$lambda$82$lambda$81(State $fechaNacimiento$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1298502489, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:272)");
            }
            if (!StringsKt.isBlank(RegisterScreen$lambda$8($fechaNacimiento$delegate))) {
                if (new Regex("\\d{4}-\\d{2}-\\d{2}").matches(RegisterScreen$lambda$8($fechaNacimiento$delegate))) {
                    composer.startReplaceGroup(1069173051);
                } else {
                    composer.startReplaceGroup(1082915971);
                    ComposerKt.sourceInformation(composer, "275@14012L11,273@13879L184");
                    TextKt.m2976Text4IGK_g("Formato inválido (YYYY-MM-DD)", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0700  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117(final FontFamily $roboto, final LoginViewModel $loginViewModel, final RoundedCornerShape $textFieldShape, State $tutorNombre$delegate, final State $tutorTelefono$delegate, final State $tutorEmail$delegate, final State $tutorDni$delegate, MutableState $expandedTipoTutor$delegate, final State $tutorTipo$delegate, final List $listaTiposTutor, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        final MutableState mutableState;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C295@14903L7897:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(941212709, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:295)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1791061558, "C296@14972L684,312@15802L10,310@15681L271,316@15977L41,324@16462L175,320@16156L37,321@16231L50,318@16044L619,349@17857L175,332@16803L39,333@16880L43,334@16967L42,339@17321L471,330@16689L1369,373@19176L175,357@18195L36,358@18269L40,363@18628L483,355@18084L1293,398@20582L175,381@19512L46,382@19596L38,383@19678L42,388@20030L487,379@19403L1380,407@20988L26,408@21041L1737,405@20859L1919:RegisterScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor2;
                $composer.createNode(function0);
            } else {
                function0 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -961780072, "C297@15054L205,302@15288L39,305@15467L10,303@15356L274:RegisterScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(PeopleKt.getPeople(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, ColorKt.Color(4293295650L), $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Datos del Tutor", (Modifier) null, ColorKt.Color(4293295650L), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 390, 0, 65466);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextKt.m2976Text4IGK_g("Obligatorio por ser menor de edad", (Modifier) null, ColorKt.Color(4293295650L), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 390, 0, 65466);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            String strRegisterScreen$lambda$14 = RegisterScreen$lambda$14($tutorNombre$delegate);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, ColorKt.Color(4293295650L), Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1997468948, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda44
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$86$lambda$85($loginViewModel, (String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$14, (Function1<? super String, Unit>) objRememberedValue, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-35968107, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$87($roboto, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
            String strRegisterScreen$lambda$15 = RegisterScreen$lambda$15($tutorTelefono$delegate);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            if (!StringsKt.isBlank(RegisterScreen$lambda$15($tutorTelefono$delegate))) {
                boolean z = !new Regex("^[0-9]{9}$").matches(RegisterScreen$lambda$15($tutorTelefono$delegate));
                TextFieldColors textFieldColorsM2626colors0hiis_02 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, ColorKt.Color(4293295650L), Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 1997489654, "CC(remember):RegisterScreen.kt#9igjgp");
                boolean zChangedInstance2 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue2 = $composer.rememberedValue();
                if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda51
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$89$lambda$88($loginViewModel, (String) obj3);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue2 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$15, (Function1<? super String, Unit>) objRememberedValue2, modifierFillMaxWidth$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(820281278, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda52
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$90($roboto, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(232889535, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda53
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$91($roboto, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-165812463, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda54
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$92($tutorTelefono$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                String strRegisterScreen$lambda$16 = RegisterScreen$lambda$16($tutorEmail$delegate);
                Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                if (!StringsKt.isBlank(RegisterScreen$lambda$16($tutorEmail$delegate))) {
                    boolean z2 = !new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(RegisterScreen$lambda$16($tutorEmail$delegate));
                    TextFieldColors textFieldColorsM2626colors0hiis_03 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, ColorKt.Color(4293295650L), Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                    ComposerKt.sourceInformationMarkerStart($composer, 1997534195, "CC(remember):RegisterScreen.kt#9igjgp");
                    boolean zChangedInstance3 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue3 = $composer.rememberedValue();
                    if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        Object obj3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda55
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$94$lambda$93($loginViewModel, (String) obj4);
                            }
                        };
                        $composer.updateRememberedValue(obj3);
                        objRememberedValue3 = obj3;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$16, (Function1<? super String, Unit>) objRememberedValue3, modifierFillMaxWidth$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1111676003, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda56
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$95($roboto, (Composer) obj4, ((Integer) obj5).intValue());
                        }
                    }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-2097769744, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda57
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$96($tutorEmail$delegate, (Composer) obj4, ((Integer) obj5).intValue());
                        }
                    }, $composer, 54), z2, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 1573248, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084792);
                    String strRegisterScreen$lambda$17 = RegisterScreen$lambda$17($tutorDni$delegate);
                    Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    if (!StringsKt.isBlank(RegisterScreen$lambda$17($tutorDni$delegate))) {
                        boolean z3 = !new Regex("^[0-9]{8}[A-Za-z]$").matches(RegisterScreen$lambda$17($tutorDni$delegate));
                        TextFieldColors textFieldColorsM2626colors0hiis_04 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, ColorKt.Color(4293295650L), Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
                        ComposerKt.sourceInformationMarkerStart($composer, 1997576349, "CC(remember):RegisterScreen.kt#9igjgp");
                        boolean zChangedInstance4 = $composer.changedInstance($loginViewModel);
                        Object objRememberedValue4 = $composer.rememberedValue();
                        if (zChangedInstance4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                            Object obj4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda58
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$98$lambda$97($loginViewModel, (String) obj5);
                                }
                            };
                            $composer.updateRememberedValue(obj4);
                            objRememberedValue4 = obj4;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$17, (Function1<? super String, Unit>) objRememberedValue4, modifierFillMaxWidth$default4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1251334012, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda45
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$99($roboto, (Composer) obj5, ((Integer) obj6).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(663942269, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda46
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$100($roboto, (Composer) obj5, ((Integer) obj6).intValue());
                            }
                        }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(265240271, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda47
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$101($tutorDni$delegate, (Composer) obj5, ((Integer) obj6).intValue());
                            }
                        }, $composer, 54), z3, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_04, $composer, 14156160, RendererCapabilities.DECODER_SUPPORT_MASK, 0, 2084664);
                        boolean zRegisterScreen$lambda$33 = RegisterScreen$lambda$33($expandedTipoTutor$delegate);
                        ComposerKt.sourceInformationMarkerStart($composer, 1997623561, "CC(remember):RegisterScreen.kt#9igjgp");
                        Object objRememberedValue5 = $composer.rememberedValue();
                        if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                            mutableState = $expandedTipoTutor$delegate;
                            Object obj5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda48
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj6) {
                                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$103$lambda$102(mutableState, ((Boolean) obj6).booleanValue());
                                }
                            };
                            $composer.updateRememberedValue(obj5);
                            objRememberedValue5 = obj5;
                        } else {
                            mutableState = $expandedTipoTutor$delegate;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        final MutableState mutableState2 = mutableState;
                        ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zRegisterScreen$lambda$33, (Function1) objRememberedValue5, null, ComposableLambdaKt.rememberComposableLambda(1231568921, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda49
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115($textFieldShape, $tutorTipo$delegate, $roboto, mutableState2, $listaTiposTutor, $loginViewModel, (ExposedDropdownMenuBoxScope) obj6, (Composer) obj7, ((Integer) obj8).intValue());
                            }
                        }, $composer, 54), $composer, 3120, 4);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$86$lambda$85(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setTutorNombre(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$87(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C321@16233L46:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-35968107, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:321)");
            }
            TextKt.m2976Text4IGK_g("Nombre completo *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$89$lambda$88(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setTutorTelefono(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$90(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C333@16882L39:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(820281278, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:333)");
            }
            TextKt.m2976Text4IGK_g("Teléfono *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$91(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C334@16969L38:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(232889535, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:334)");
            }
            TextKt.m2976Text4IGK_g("123456789", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$92(State $tutorTelefono$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-165812463, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:340)");
            }
            if (!StringsKt.isBlank(RegisterScreen$lambda$15($tutorTelefono$delegate))) {
                if (new Regex("^[0-9]{9}$").matches(RegisterScreen$lambda$15($tutorTelefono$delegate))) {
                    composer.startReplaceGroup(-523878255);
                } else {
                    composer.startReplaceGroup(-506506258);
                    ComposerKt.sourceInformation(composer, "345@17673L11,343@17541L187");
                    TextKt.m2976Text4IGK_g("Debe tener 9 dígitos", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$94$lambda$93(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setTutorEmail(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$95(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C358@18271L36:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1111676003, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:358)");
            }
            TextKt.m2976Text4IGK_g("Email *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$96(State $tutorEmail$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2097769744, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:364)");
            }
            if (!StringsKt.isBlank(RegisterScreen$lambda$16($tutorEmail$delegate))) {
                if (new Regex("^[A-Za-z0-9+_.-]+@(.+)$").matches(RegisterScreen$lambda$16($tutorEmail$delegate))) {
                    composer.startReplaceGroup(1392200626);
                } else {
                    composer.startReplaceGroup(1410876266);
                    ComposerKt.sourceInformation(composer, "369@18992L11,367@18855L192");
                    TextKt.m2976Text4IGK_g("Formato de email inválido", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$98$lambda$97(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String upperCase = it.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        $loginViewModel.setTutorDni(upperCase);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$99(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C382@19598L34:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1251334012, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:382)");
            }
            TextKt.m2976Text4IGK_g("DNI *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$100(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C383@19680L38:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(663942269, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:383)");
            }
            TextKt.m2976Text4IGK_g("12345678A", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$101(State $tutorDni$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(265240271, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:389)");
            }
            if (!StringsKt.isBlank(RegisterScreen$lambda$17($tutorDni$delegate))) {
                if (new Regex("^[0-9]{8}[A-Za-z]$").matches(RegisterScreen$lambda$17($tutorDni$delegate))) {
                    composer.startReplaceGroup(-986782029);
                } else {
                    composer.startReplaceGroup(-966724130);
                    ComposerKt.sourceInformation(composer, "394@20398L11,392@20248L205");
                    TextKt.m2976Text4IGK_g("Formato inválido (8 números + 1 letra)", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
                    composer = $composer;
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$103$lambda$102(MutableState $expandedTipoTutor$delegate, boolean it) {
        RegisterScreen$lambda$34($expandedTipoTutor$delegate, it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115(RoundedCornerShape $textFieldShape, State $tutorTipo$delegate, final FontFamily $roboto, final MutableState $expandedTipoTutor$delegate, final List $listaTiposTutor, final LoginViewModel $loginViewModel, ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
        ComposerKt.sourceInformation($composer, "C419@21763L187,411@21189L2,413@21282L45,414@21376L74,409@21071L909,426@22143L29,427@22203L549,424@22009L743:RegisterScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer.changed(ExposedDropdownMenuBox) : $composer.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if ($composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1231568921, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:409)");
            }
            String strRegisterScreen$lambda$18 = RegisterScreen$lambda$18($tutorTipo$delegate);
            Modifier modifierM2362menuAnchorfsE2BvY$default = ExposedDropdownMenuBoxScope.m2362menuAnchorfsE2BvY$default(ExposedDropdownMenuBox, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MenuAnchorType.INSTANCE.m2508getPrimaryNotEditableMg6Rgbw(), false, 2, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, ColorKt.Color(4293295650L), Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -1873235877, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda81
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$105$lambda$104((String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$18, (Function1<? super String, Unit>) objRememberedValue, modifierM2362menuAnchorfsE2BvY$default, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(460369727, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda82
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$106($roboto, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1478218626, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda83
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$107($expandedTipoTutor$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 806903856, 0, 0, 2096552);
            boolean zRegisterScreen$lambda$33 = RegisterScreen$lambda$33($expandedTipoTutor$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1873205322, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda84
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$109$lambda$108($expandedTipoTutor$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zRegisterScreen$lambda$33, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1097261851, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda85
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$114($listaTiposTutor, $loginViewModel, $roboto, $expandedTipoTutor$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty2 << 3) & 112), 1020);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$105$lambda$104(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$106(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C413@21284L41:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(460369727, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:413)");
            }
            TextKt.m2976Text4IGK_g("Parentesco *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$107(MutableState $expandedTipoTutor$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C414@21406L42:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1478218626, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:414)");
            }
            ExposedDropdownMenuDefaults.INSTANCE.TrailingIcon(RegisterScreen$lambda$33($expandedTipoTutor$delegate), null, $composer, ExposedDropdownMenuDefaults.$stable << 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$109$lambda$108(MutableState $expandedTipoTutor$delegate) {
        RegisterScreen$lambda$34($expandedTipoTutor$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$114(List $listaTiposTutor, final LoginViewModel $loginViewModel, final FontFamily $roboto, final MutableState $expandedTipoTutor$delegate, ColumnScope ExposedDropdownMenu, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
        ComposerKt.sourceInformation(composer, "C*430@22372L35,431@22459L191,429@22307L381:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1097261851, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:428)");
            }
            Iterator it = $listaTiposTutor.iterator();
            while (it.hasNext()) {
                final String str = (String) it.next();
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(870149275, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda42
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$114$lambda$113$lambda$110(str, $roboto, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -1079147638, "CC(remember):RegisterScreen.kt#9igjgp");
                boolean zChangedInstance = composer.changedInstance($loginViewModel) | composer.changed(str);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda43
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$114$lambda$113$lambda$112$lambda$111($loginViewModel, str, $expandedTipoTutor$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, composer, 6, 508);
                composer = $composer;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$114$lambda$113$lambda$110(String $tipo, FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C430@22374L31:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(870149275, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:430)");
            }
            TextKt.m2976Text4IGK_g($tipo, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115$lambda$114$lambda$113$lambda$112$lambda$111(LoginViewModel $loginViewModel, String $tipo, MutableState $expandedTipoTutor$delegate) {
        $loginViewModel.setTutorTipo($tipo);
        RegisterScreen$lambda$34($expandedTipoTutor$delegate, false);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0af2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137(long $primaryColor, final LoginViewModel $loginViewModel, RoundedCornerShape $textFieldShape, final FontFamily $roboto, State $calle$delegate, State $ciudad$delegate, State $provincia$delegate, State $codigoPostal$delegate, State $pais$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Object obj;
        String str;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C450@23225L4242:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1436894775, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:450)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 339604209, "C451@23290L620,465@23931L41,473@24375L158,469@24092L31,470@24157L49,467@23994L561,479@24577L1423,507@26022L1427:RegisterScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor2;
                $composer.createNode(function0);
            } else {
                function0 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -2081996244, "C452@23368L188,457@23581L39,460@23742L10,458@23645L243:RegisterScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(LocationOnKt.getLocationOn(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, $primaryColor, $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Dirección", (Modifier) null, $primaryColor, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 390, 0, 65466);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            String strRegisterScreen$lambda$19 = RegisterScreen$lambda$19($calle$delegate);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -404665486, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$120$lambda$119($loginViewModel, (String) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$19, (Function1<? super String, Unit>) objRememberedValue, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1611493063, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$121($roboto, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 1573248, 0, 0, 2097080);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default2);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i8 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor3;
                $composer.createNode(function02);
            } else {
                function02 = constructor3;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i9 = (i8 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i10 = ((54 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 2038571439, "C489@25159L170,485@24873L32,486@24943L39,483@24766L589,500@25782L170,496@25490L35,497@25563L42,494@25380L598:RegisterScreen.kt#6w2cjo");
            String strRegisterScreen$lambda$20 = RegisterScreen$lambda$20($ciudad$delegate);
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            TextFieldColors textFieldColorsM2626colors0hiis_02 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -904068712, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$123$lambda$122($loginViewModel, (String) obj4);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue2 = obj3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$20, (Function1<? super String, Unit>) objRememberedValue2, modifierWeight$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-82389250, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$124($roboto, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_02, $composer, 1572864, 0, 0, 2097080);
            String strRegisterScreen$lambda$21 = RegisterScreen$lambda$21($provincia$delegate);
            Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            TextFieldColors textFieldColorsM2626colors0hiis_03 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -904048965, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance3 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$126$lambda$125($loginViewModel, (String) obj5);
                    }
                };
                $composer.updateRememberedValue(obj4);
                objRememberedValue3 = obj4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$21, (Function1<? super String, Unit>) objRememberedValue3, modifierWeight$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-991752665, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj5, Object obj6) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$127($roboto, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_03, $composer, 1572864, 0, 0, 2097080);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_42, Alignment.INSTANCE.getTop(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default3);
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            int i11 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function03 = constructor4;
                $composer.createNode(function03);
            } else {
                function03 = constructor4;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
            int i12 = (i11 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i13 = ((54 >> 6) & 112) | 6;
            RowScope rowScope2 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 1771521772, "C517@26623L170,513@26324L38,514@26400L46,511@26211L608,528@27231L170,524@26949L30,525@27017L37,522@26844L583:RegisterScreen.kt#6w2cjo");
            String strRegisterScreen$lambda$22 = RegisterScreen$lambda$22($codigoPostal$delegate);
            Modifier modifierWeight$default3 = RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null);
            TextFieldColors textFieldColorsM2626colors0hiis_04 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -497041027, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance4 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue4 = $composer.rememberedValue();
            if (zChangedInstance4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$130$lambda$129($loginViewModel, (String) obj5);
                    }
                };
                $composer.updateRememberedValue(obj);
            } else {
                obj = objRememberedValue4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strRegisterScreen$lambda$22, (Function1<? super String, Unit>) obj, modifierWeight$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(820826589, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj5, Object obj6) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$131($roboto, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_04, $composer, 1572864, 0, 0, 2097080);
            String strRegisterScreen$lambda$23 = RegisterScreen$lambda$23($pais$delegate);
            Modifier modifierWeight$default4 = RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null);
            TextFieldColors textFieldColorsM2626colors0hiis_05 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 432, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -497021035, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance5 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue5 = $composer.rememberedValue();
            if (!zChangedInstance5) {
                str = strRegisterScreen$lambda$23;
                if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) objRememberedValue5, modifierWeight$default4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-88536826, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$134($roboto, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_05, $composer, 1572864, 0, 0, 2097080);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                str = strRegisterScreen$lambda$23;
            }
            Object obj5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj6) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$133$lambda$132($loginViewModel, (String) obj6);
                }
            };
            $composer.updateRememberedValue(obj5);
            objRememberedValue5 = obj5;
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) objRememberedValue5, modifierWeight$default4, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-88536826, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj52, Object obj6) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$134($roboto, (Composer) obj52, ((Integer) obj6).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_05, $composer, 1572864, 0, 0, 2097080);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$120$lambda$119(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setCalle(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$121(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C470@24159L45:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1611493063, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:470)");
            }
            TextKt.m2976Text4IGK_g("Calle y número *", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$123$lambda$122(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setCiudad(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$124(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C486@24945L35:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-82389250, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:486)");
            }
            TextKt.m2976Text4IGK_g("Ciudad", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$126$lambda$125(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setProvincia(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$128$lambda$127(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C497@25565L38:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-991752665, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:497)");
            }
            TextKt.m2976Text4IGK_g("Provincia", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$130$lambda$129(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setCodigoPostal(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$131(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C514@26402L42:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(820826589, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:514)");
            }
            TextKt.m2976Text4IGK_g("Código Postal", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$133$lambda$132(LoginViewModel $loginViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $loginViewModel.setPais(it);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$137$lambda$136$lambda$135$lambda$134(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C525@27019L33:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-88536826, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:525)");
            }
            TextKt.m2976Text4IGK_g("País", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162(final FontFamily $roboto, long $primaryColor, RoundedCornerShape $textFieldShape, final State $situacionesIds$delegate, final MutableState $expandedSituacion$delegate, final State $listaSituaciones$delegate, final LoginViewModel $loginViewModel, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C544@27876L6303:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1678592088, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:544)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1699795387, "C545@27941L506,557@28582L10,555@28468L245,561@28734L41,563@28797L4864:RegisterScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 173504031, "C546@28019L72,547@28116L39,550@28279L10,548@28180L245:RegisterScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(ListKt.getList(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, $primaryColor, $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Situaciones", (Modifier) null, $primaryColor, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 390, 0, 65466);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextKt.m2976Text4IGK_g("Seleccione una o más situaciones *", (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 390, 0, 65466);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Modifier modifier2 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifier2);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i8 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function03 = constructor3;
                $composer.createNode(function03);
            } else {
                function03 = constructor3;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i9 = (i8 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i10 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -885344181, "C580@29768L42,583@29991L215,568@29102L2,570@29194L433,564@28827L1405,591@30377L29,595@30590L3049,589@30258L3381:RegisterScreen.kt#6w2cjo");
            String str = RegisterScreen$lambda$24($situacionesIds$delegate).isEmpty() ? "Seleccione situaciones" : RegisterScreen$lambda$24($situacionesIds$delegate).size() + " situación(es) seleccionada(s)";
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1911128502, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda86
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$140$lambda$139($expandedSituacion$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default, false, null, null, null, (Function0) objRememberedValue, 15, null);
            boolean zIsEmpty = RegisterScreen$lambda$24($situacionesIds$delegate).isEmpty();
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $primaryColor, RegisterScreen$lambda$24($situacionesIds$delegate).isEmpty() ? Color.INSTANCE.m4731getRed0d7_KjU() : Color.INSTANCE.m4727getGray0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 48, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, 1911107150, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda87
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$142$lambda$141((String) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) objRememberedValue2, modifierM299clickableoSLSa3U$default, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1810893099, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda88
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$146($expandedSituacion$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, zIsEmpty, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 0, 0, (MutableInteractionSource) null, (Shape) $textFieldShape, textFieldColorsM2626colors0hiis_0, $composer, 805330992, 0, 0, 2088424);
            boolean zRegisterScreen$lambda$30 = RegisterScreen$lambda$30($expandedSituacion$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1911147977, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda89
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$148$lambda$147($expandedSituacion$delegate);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AndroidMenu_androidKt.m2048DropdownMenuIlH_yew(zRegisterScreen$lambda$30, (Function0) objRememberedValue3, SizeKt.m852heightInVpY3zN4$default(SizeKt.fillMaxWidth(Modifier.INSTANCE, 0.9f), 0.0f, Dp.m7505constructorimpl(LogSeverity.WARNING_VALUE), 1, null), 0L, null, null, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-974896281, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda90
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj4, Object obj5, Object obj6) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159($listaSituaciones$delegate, $roboto, $expandedSituacion$delegate, $situacionesIds$delegate, $loginViewModel, (ColumnScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer, 54), $composer, 432, 48, 2040);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$142$lambda$141(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$146(final MutableState $expandedSituacion$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C571@29249L42,571@29293L304,571@29228L369:RegisterScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1810893099, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:571)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -806511457, "CC(remember):RegisterScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$146$lambda$144$lambda$143($expandedSituacion$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableLambdaKt.rememberComposableLambda(1323172722, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$146$lambda$145($expandedSituacion$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$146$lambda$144$lambda$143(MutableState $expandedSituacion$delegate) {
        RegisterScreen$lambda$31($expandedSituacion$delegate, !RegisterScreen$lambda$30($expandedSituacion$delegate));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$146$lambda$145(MutableState $expandedSituacion$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C572@29331L232:RegisterScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1323172722, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:572)");
            }
            IconKt.m2433Iconww6aTOc(RegisterScreen$lambda$30($expandedSituacion$delegate) ? ArrowDropUpKt.getArrowDropUp(Icons.INSTANCE.getDefault()) : ArrowDropDownKt.getArrowDropDown(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$140$lambda$139(MutableState $expandedSituacion$delegate) {
        RegisterScreen$lambda$31($expandedSituacion$delegate, !RegisterScreen$lambda$30($expandedSituacion$delegate));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$148$lambda$147(MutableState $expandedSituacion$delegate) {
        RegisterScreen$lambda$31($expandedSituacion$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159(State $listaSituaciones$delegate, final FontFamily $roboto, final MutableState $expandedSituacion$delegate, final State $situacionesIds$delegate, final LoginViewModel $loginViewModel, ColumnScope DropdownMenu, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(DropdownMenu, "$this$DropdownMenu");
        ComposerKt.sourceInformation(composer, "C:RegisterScreen.kt#6w2cjo");
        if (!composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-974896281, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:596)");
            }
            int i = 54;
            if (RegisterScreen$lambda$25($listaSituaciones$delegate).isEmpty()) {
                composer.startReplaceGroup(-566172915);
                ComposerKt.sourceInformation(composer, "598@30747L269,604@31064L29,597@30686L494");
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1705519570, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$149($roboto, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -572440316, "CC(remember):RegisterScreen.kt#9igjgp");
                Object objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda20
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$151$lambda$150($expandedSituacion$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, composer, 196662, 476);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(-565556418);
                ComposerKt.sourceInformation(composer, "*611@31491L1966,639@33509L2,610@31426L2123");
                for (final SituacionDTO situacionDTO : RegisterScreen$lambda$25($listaSituaciones$delegate)) {
                    final boolean zContains = RegisterScreen$lambda$24($situacionesIds$delegate).contains(Long.valueOf(situacionDTO.getIdSituacion()));
                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1425415402, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda21
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$158$lambda$155(zContains, $situacionesIds$delegate, situacionDTO, $loginViewModel, $roboto, $expandedSituacion$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    }, composer, i);
                    ComposerKt.sourceInformationMarkerStart(composer, 734003068, "CC(remember):RegisterScreen.kt#9igjgp");
                    Object objRememberedValue2 = $composer.rememberedValue();
                    if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda22
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Unit.INSTANCE;
                            }
                        };
                        $composer.updateRememberedValue(obj2);
                        objRememberedValue2 = obj2;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda2, (Function0) objRememberedValue2, null, null, null, false, null, null, null, composer, 54, 508);
                    composer = $composer;
                    i = i;
                }
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$149(FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C599@30789L189:RegisterScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1705519570, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:599)");
            }
            TextKt.m2976Text4IGK_g("No hay situaciones disponibles", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$151$lambda$150(MutableState $expandedSituacion$delegate) {
        RegisterScreen$lambda$31($expandedSituacion$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$158$lambda$155(boolean $isSelected, final State $situacionesIds$delegate, final SituacionDTO $situacion, final LoginViewModel $loginViewModel, FontFamily $roboto, final MutableState $expandedSituacion$delegate, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C612@31537L1878:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1425415402, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:612)");
            }
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i3 = ((390 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 668069101, "C618@31971L844,616@31817L1133,631@32999L40,632@33088L281:RegisterScreen.kt#6w2cjo");
            ComposerKt.sourceInformationMarkerStart($composer, 2099764818, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChanged = $composer.changed($situacionesIds$delegate) | $composer.changed($situacion) | $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda91
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$158$lambda$155$lambda$154$lambda$153$lambda$152($situacion, $loginViewModel, $situacionesIds$delegate, $expandedSituacion$delegate, ((Boolean) obj).booleanValue());
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CheckboxKt.Checkbox($isSelected, (Function1) objRememberedValue, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), false, null, null, $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 56);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            TextKt.m2976Text4IGK_g($situacion.getNombre(), RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131004);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$162$lambda$161$lambda$160$lambda$159$lambda$158$lambda$155$lambda$154$lambda$153$lambda$152(SituacionDTO $situacion, LoginViewModel $loginViewModel, State $situacionesIds$delegate, MutableState $expandedSituacion$delegate, boolean checked) {
        List<Long> mutableList = CollectionsKt.toMutableList((Collection) RegisterScreen$lambda$24($situacionesIds$delegate));
        if (checked) {
            mutableList.add(Long.valueOf($situacion.getIdSituacion()));
        } else {
            mutableList.remove(Long.valueOf($situacion.getIdSituacion()));
        }
        $loginViewModel.getSituacionesIds().setValue(mutableList);
        RegisterScreen$lambda$31($expandedSituacion$delegate, false);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x05cc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x07cc  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x07d8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x086e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x08df  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x08eb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0973  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180(long $primaryColor, FontFamily $roboto, final LoginViewModel $loginViewModel, final State $aceptaTerminos$delegate, final State $aceptaVideoconferencia$delegate, final State $aceptaComunicacion$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Composer composer;
        boolean zChangedInstance;
        Composer composer2;
        Function0<ComposeUiNode> function04;
        boolean zChangedInstance2;
        Composer composer3;
        boolean zChangedInstance3;
        Composer composer4;
        Function0<ComposeUiNode> function05;
        boolean zChangedInstance4;
        Composer composer5;
        boolean zChangedInstance5;
        Composer composer6;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C664@34592L3375:RegisterScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1920289401, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:664)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 555617654, "C665@34657L631,679@35309L41,681@35372L825,699@36219L881,718@37122L827:RegisterScreen.kt#6w2cjo");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1865955581, "C666@34735L193,671@34953L39,674@35120L10,672@35017L249:RegisterScreen.kt#6w2cjo");
            IconKt.m2433Iconww6aTOc(DocumentScannerKt.getDocumentScanner(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, $primaryColor, $composer, 3120, 4);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Consentimientos", (Modifier) null, $primaryColor, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, 390, 0, 65466);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i8 = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function03 = constructor3;
                $composer.createNode(function03);
            } else {
                function03 = constructor3;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i9 = (i8 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            int i10 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -2040373918, "C687@35666L44,688@35766L35,685@35556L271,693@36032L117,690@35852L323:RegisterScreen.kt#6w2cjo");
            boolean zRegisterScreen$lambda$9 = RegisterScreen$lambda$9($aceptaTerminos$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1589836222, "CC(remember):RegisterScreen.kt#9igjgp");
            boolean zChangedInstance6 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance6) {
                composer = $composer;
            } else {
                composer = $composer;
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                Composer composer7 = composer;
                CheckboxKt.Checkbox(zRegisterScreen$lambda$9, (Function1) objRememberedValue, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer7, 0, 44);
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(composer7, -1589824437, "CC(remember):RegisterScreen.kt#9igjgp");
                zChangedInstance = composer7.changedInstance($loginViewModel) | composer7.changed($aceptaTerminos$delegate);
                Object objRememberedValue2 = composer7.rememberedValue();
                if (zChangedInstance) {
                    composer2 = composer7;
                    if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    TextKt.m2976Text4IGK_g("Acepto los términos y condiciones *", ClickableKt.m299clickableoSLSa3U$default(companion, false, null, null, null, (Function0) objRememberedValue2, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 6, 0, 131004);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Alignment.Vertical centerVertically3 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically3, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                    ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                    CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default2);
                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                    int i11 = ((((390 << 3) & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!($composer.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer.startReusableNode();
                    if ($composer.getInserting()) {
                        function04 = constructor4;
                        $composer.createNode(function04);
                    } else {
                        function04 = constructor4;
                        $composer.useNode();
                    }
                    Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl($composer);
                    Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
                    int i12 = (i11 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                    int i13 = ((390 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, 1987545323, "C705@36521L52,706@36629L35,703@36403L287,711@36883L169,708@36715L363:RegisterScreen.kt#6w2cjo");
                    boolean zRegisterScreen$lambda$10 = RegisterScreen$lambda$10($aceptaVideoconferencia$delegate);
                    ComposerKt.sourceInformationMarkerStart($composer, -1182808471, "CC(remember):RegisterScreen.kt#9igjgp");
                    zChangedInstance2 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue3 = $composer.rememberedValue();
                    if (zChangedInstance2) {
                        composer3 = $composer;
                    } else {
                        composer3 = $composer;
                        if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Composer composer8 = composer3;
                        CheckboxKt.Checkbox(zRegisterScreen$lambda$10, (Function1) objRememberedValue3, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer3, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer8, 0, 44);
                        Modifier.Companion companion2 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer8, -1182796770, "CC(remember):RegisterScreen.kt#9igjgp");
                        zChangedInstance3 = composer8.changedInstance($loginViewModel) | composer8.changed($aceptaVideoconferencia$delegate);
                        Object objRememberedValue4 = composer8.rememberedValue();
                        if (zChangedInstance3) {
                            composer4 = composer8;
                            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd(composer4);
                            TextKt.m2976Text4IGK_g("Acepto videoconferencia", ClickableKt.m299clickableoSLSa3U$default(companion2, false, null, null, null, (Function0) objRememberedValue4, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 6, 0, 131004);
                            ComposerKt.sourceInformationMarkerEnd(composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            $composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Alignment.Vertical centerVertically4 = Alignment.INSTANCE.getCenterVertically();
                            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically4, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                            int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                            CompositionLocalMap currentCompositionLocalMap5 = $composer.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default3);
                            Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
                            int i14 = ((((390 << 3) & 112) << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                            if (!($composer.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer.startReusableNode();
                            if ($composer.getInserting()) {
                                function05 = constructor5;
                                $composer.createNode(function05);
                            } else {
                                function05 = constructor5;
                                $composer.useNode();
                            }
                            Composer composerM3967constructorimpl5 = Updater.m3967constructorimpl($composer);
                            Updater.m3975setimpl(composerM3967constructorimpl5, measurePolicyRowMeasurePolicy4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl(composerM3967constructorimpl5, currentCompositionLocalMap5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Updater.m3971initimpl(composerM3967constructorimpl5, Integer.valueOf(iHashCode5), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                            Updater.m3973reconcileimpl(composerM3967constructorimpl5, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                            Updater.m3975setimpl(composerM3967constructorimpl5, modifierMaterializeModifier5, ComposeUiNode.INSTANCE.getSetModifier());
                            int i15 = (i14 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                            int i16 = ((390 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer, 1720493858, "C724@37420L48,725@37524L35,722@37306L279,730@37776L125,727@37610L317:RegisterScreen.kt#6w2cjo");
                            boolean zRegisterScreen$lambda$11 = RegisterScreen$lambda$11($aceptaComunicacion$delegate);
                            ComposerKt.sourceInformationMarkerStart($composer, -775781116, "CC(remember):RegisterScreen.kt#9igjgp");
                            zChangedInstance4 = $composer.changedInstance($loginViewModel);
                            Object objRememberedValue5 = $composer.rememberedValue();
                            if (zChangedInstance4) {
                                composer5 = $composer;
                            } else {
                                composer5 = $composer;
                                if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd(composer5);
                                Composer composer9 = composer5;
                                CheckboxKt.Checkbox(zRegisterScreen$lambda$11, (Function1) objRememberedValue5, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer5, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer9, 0, 44);
                                Modifier.Companion companion3 = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart(composer9, -775769647, "CC(remember):RegisterScreen.kt#9igjgp");
                                zChangedInstance5 = composer9.changedInstance($loginViewModel) | composer9.changed($aceptaComunicacion$delegate);
                                Object objRememberedValue6 = composer9.rememberedValue();
                                if (zChangedInstance5) {
                                    composer6 = composer9;
                                    if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd(composer6);
                                    TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion3, false, null, null, null, (Function0) objRememberedValue6, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
                                    ComposerKt.sourceInformationMarkerEnd(composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    $composer.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    $composer.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                } else {
                                    composer6 = composer9;
                                }
                                objRememberedValue6 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda29
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176($loginViewModel, $aceptaComunicacion$delegate);
                                    }
                                };
                                composer9.updateRememberedValue(objRememberedValue6);
                                ComposerKt.sourceInformationMarkerEnd(composer6);
                                TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion3, false, null, null, null, (Function0) objRememberedValue6, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
                                ComposerKt.sourceInformationMarkerEnd(composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                $composer.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                $composer.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            objRememberedValue5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda28
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$175$lambda$174($loginViewModel, ((Boolean) obj).booleanValue());
                                }
                            };
                            $composer.updateRememberedValue(objRememberedValue5);
                            ComposerKt.sourceInformationMarkerEnd(composer5);
                            Composer composer92 = composer5;
                            CheckboxKt.Checkbox(zRegisterScreen$lambda$11, (Function1) objRememberedValue5, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer5, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer92, 0, 44);
                            Modifier.Companion companion32 = Modifier.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composer92, -775769647, "CC(remember):RegisterScreen.kt#9igjgp");
                            zChangedInstance5 = composer92.changedInstance($loginViewModel) | composer92.changed($aceptaComunicacion$delegate);
                            Object objRememberedValue62 = composer92.rememberedValue();
                            if (zChangedInstance5) {
                            }
                            objRememberedValue62 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda29
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176($loginViewModel, $aceptaComunicacion$delegate);
                                }
                            };
                            composer92.updateRememberedValue(objRememberedValue62);
                            ComposerKt.sourceInformationMarkerEnd(composer6);
                            TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion32, false, null, null, null, (Function0) objRememberedValue62, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
                            ComposerKt.sourceInformationMarkerEnd(composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            $composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            $composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            composer4 = composer8;
                        }
                        objRememberedValue4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda27
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$172$lambda$171($loginViewModel, $aceptaVideoconferencia$delegate);
                            }
                        };
                        composer8.updateRememberedValue(objRememberedValue4);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        TextKt.m2976Text4IGK_g("Acepto videoconferencia", ClickableKt.m299clickableoSLSa3U$default(companion2, false, null, null, null, (Function0) objRememberedValue4, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 6, 0, 131004);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        Modifier modifierFillMaxWidth$default32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Alignment.Vertical centerVertically42 = Alignment.INSTANCE.getCenterVertically();
                        ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicyRowMeasurePolicy42 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically42, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                        int iHashCode52 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                        CompositionLocalMap currentCompositionLocalMap52 = $composer.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier52 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default32);
                        Function0<ComposeUiNode> constructor52 = ComposeUiNode.INSTANCE.getConstructor();
                        int i142 = ((((390 << 3) & 112) << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                        if (!($composer.getApplier() instanceof Applier)) {
                        }
                        $composer.startReusableNode();
                        if ($composer.getInserting()) {
                        }
                        Composer composerM3967constructorimpl52 = Updater.m3967constructorimpl($composer);
                        Updater.m3975setimpl(composerM3967constructorimpl52, measurePolicyRowMeasurePolicy42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl(composerM3967constructorimpl52, currentCompositionLocalMap52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Updater.m3971initimpl(composerM3967constructorimpl52, Integer.valueOf(iHashCode52), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                        Updater.m3973reconcileimpl(composerM3967constructorimpl52, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                        Updater.m3975setimpl(composerM3967constructorimpl52, modifierMaterializeModifier52, ComposeUiNode.INSTANCE.getSetModifier());
                        int i152 = (i142 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance42 = RowScopeInstance.INSTANCE;
                        int i162 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer, 1720493858, "C724@37420L48,725@37524L35,722@37306L279,730@37776L125,727@37610L317:RegisterScreen.kt#6w2cjo");
                        boolean zRegisterScreen$lambda$112 = RegisterScreen$lambda$11($aceptaComunicacion$delegate);
                        ComposerKt.sourceInformationMarkerStart($composer, -775781116, "CC(remember):RegisterScreen.kt#9igjgp");
                        zChangedInstance4 = $composer.changedInstance($loginViewModel);
                        Object objRememberedValue52 = $composer.rememberedValue();
                        if (zChangedInstance4) {
                        }
                        objRememberedValue52 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda28
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$175$lambda$174($loginViewModel, ((Boolean) obj).booleanValue());
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue52);
                        ComposerKt.sourceInformationMarkerEnd(composer5);
                        Composer composer922 = composer5;
                        CheckboxKt.Checkbox(zRegisterScreen$lambda$112, (Function1) objRememberedValue52, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer5, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer922, 0, 44);
                        Modifier.Companion companion322 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer922, -775769647, "CC(remember):RegisterScreen.kt#9igjgp");
                        zChangedInstance5 = composer922.changedInstance($loginViewModel) | composer922.changed($aceptaComunicacion$delegate);
                        Object objRememberedValue622 = composer922.rememberedValue();
                        if (zChangedInstance5) {
                        }
                        objRememberedValue622 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda29
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176($loginViewModel, $aceptaComunicacion$delegate);
                            }
                        };
                        composer922.updateRememberedValue(objRememberedValue622);
                        ComposerKt.sourceInformationMarkerEnd(composer6);
                        TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion322, false, null, null, null, (Function0) objRememberedValue622, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
                        ComposerKt.sourceInformationMarkerEnd(composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    objRememberedValue3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda26
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$170$lambda$169($loginViewModel, ((Boolean) obj).booleanValue());
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    Composer composer82 = composer3;
                    CheckboxKt.Checkbox(zRegisterScreen$lambda$10, (Function1) objRememberedValue3, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer3, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer82, 0, 44);
                    Modifier.Companion companion22 = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart(composer82, -1182796770, "CC(remember):RegisterScreen.kt#9igjgp");
                    zChangedInstance3 = composer82.changedInstance($loginViewModel) | composer82.changed($aceptaVideoconferencia$delegate);
                    Object objRememberedValue42 = composer82.rememberedValue();
                    if (zChangedInstance3) {
                    }
                    objRememberedValue42 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda27
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$172$lambda$171($loginViewModel, $aceptaVideoconferencia$delegate);
                        }
                    };
                    composer82.updateRememberedValue(objRememberedValue42);
                    ComposerKt.sourceInformationMarkerEnd(composer4);
                    TextKt.m2976Text4IGK_g("Acepto videoconferencia", ClickableKt.m299clickableoSLSa3U$default(companion22, false, null, null, null, (Function0) objRememberedValue42, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 6, 0, 131004);
                    ComposerKt.sourceInformationMarkerEnd(composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    Modifier modifierFillMaxWidth$default322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Alignment.Vertical centerVertically422 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicyRowMeasurePolicy422 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically422, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                    ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode522 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                    CompositionLocalMap currentCompositionLocalMap522 = $composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier522 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default322);
                    Function0<ComposeUiNode> constructor522 = ComposeUiNode.INSTANCE.getConstructor();
                    int i1422 = ((((390 << 3) & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!($composer.getApplier() instanceof Applier)) {
                    }
                    $composer.startReusableNode();
                    if ($composer.getInserting()) {
                    }
                    Composer composerM3967constructorimpl522 = Updater.m3967constructorimpl($composer);
                    Updater.m3975setimpl(composerM3967constructorimpl522, measurePolicyRowMeasurePolicy422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl522, currentCompositionLocalMap522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl522, Integer.valueOf(iHashCode522), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl522, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl522, modifierMaterializeModifier522, ComposeUiNode.INSTANCE.getSetModifier());
                    int i1522 = (i1422 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance422 = RowScopeInstance.INSTANCE;
                    int i1622 = ((390 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, 1720493858, "C724@37420L48,725@37524L35,722@37306L279,730@37776L125,727@37610L317:RegisterScreen.kt#6w2cjo");
                    boolean zRegisterScreen$lambda$1122 = RegisterScreen$lambda$11($aceptaComunicacion$delegate);
                    ComposerKt.sourceInformationMarkerStart($composer, -775781116, "CC(remember):RegisterScreen.kt#9igjgp");
                    zChangedInstance4 = $composer.changedInstance($loginViewModel);
                    Object objRememberedValue522 = $composer.rememberedValue();
                    if (zChangedInstance4) {
                    }
                    objRememberedValue522 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda28
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$175$lambda$174($loginViewModel, ((Boolean) obj).booleanValue());
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue522);
                    ComposerKt.sourceInformationMarkerEnd(composer5);
                    Composer composer9222 = composer5;
                    CheckboxKt.Checkbox(zRegisterScreen$lambda$1122, (Function1) objRememberedValue522, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer5, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer9222, 0, 44);
                    Modifier.Companion companion3222 = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart(composer9222, -775769647, "CC(remember):RegisterScreen.kt#9igjgp");
                    zChangedInstance5 = composer9222.changedInstance($loginViewModel) | composer9222.changed($aceptaComunicacion$delegate);
                    Object objRememberedValue6222 = composer9222.rememberedValue();
                    if (zChangedInstance5) {
                    }
                    objRememberedValue6222 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda29
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176($loginViewModel, $aceptaComunicacion$delegate);
                        }
                    };
                    composer9222.updateRememberedValue(objRememberedValue6222);
                    ComposerKt.sourceInformationMarkerEnd(composer6);
                    TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion3222, false, null, null, null, (Function0) objRememberedValue6222, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
                    ComposerKt.sourceInformationMarkerEnd(composer6);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    composer2 = composer7;
                }
                objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda25
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$168$lambda$167$lambda$166($loginViewModel, $aceptaTerminos$delegate);
                    }
                };
                composer7.updateRememberedValue(objRememberedValue2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                TextKt.m2976Text4IGK_g("Acepto los términos y condiciones *", ClickableKt.m299clickableoSLSa3U$default(companion, false, null, null, null, (Function0) objRememberedValue2, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 6, 0, 131004);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Modifier modifierFillMaxWidth$default22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment.Vertical centerVertically32 = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy32 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically32, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode42 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap42 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier42 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default22);
                Function0<ComposeUiNode> constructor42 = ComposeUiNode.INSTANCE.getConstructor();
                int i112 = ((((390 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                }
                Composer composerM3967constructorimpl42 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl42, measurePolicyRowMeasurePolicy32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl42, currentCompositionLocalMap42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl42, Integer.valueOf(iHashCode42), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl42, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl42, modifierMaterializeModifier42, ComposeUiNode.INSTANCE.getSetModifier());
                int i122 = (i112 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance32 = RowScopeInstance.INSTANCE;
                int i132 = ((390 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 1987545323, "C705@36521L52,706@36629L35,703@36403L287,711@36883L169,708@36715L363:RegisterScreen.kt#6w2cjo");
                boolean zRegisterScreen$lambda$102 = RegisterScreen$lambda$10($aceptaVideoconferencia$delegate);
                ComposerKt.sourceInformationMarkerStart($composer, -1182808471, "CC(remember):RegisterScreen.kt#9igjgp");
                zChangedInstance2 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue32 = $composer.rememberedValue();
                if (zChangedInstance2) {
                }
                objRememberedValue32 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$170$lambda$169($loginViewModel, ((Boolean) obj).booleanValue());
                    }
                };
                $composer.updateRememberedValue(objRememberedValue32);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                Composer composer822 = composer3;
                CheckboxKt.Checkbox(zRegisterScreen$lambda$102, (Function1) objRememberedValue32, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer3, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer822, 0, 44);
                Modifier.Companion companion222 = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(composer822, -1182796770, "CC(remember):RegisterScreen.kt#9igjgp");
                zChangedInstance3 = composer822.changedInstance($loginViewModel) | composer822.changed($aceptaVideoconferencia$delegate);
                Object objRememberedValue422 = composer822.rememberedValue();
                if (zChangedInstance3) {
                }
                objRememberedValue422 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$172$lambda$171($loginViewModel, $aceptaVideoconferencia$delegate);
                    }
                };
                composer822.updateRememberedValue(objRememberedValue422);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                TextKt.m2976Text4IGK_g("Acepto videoconferencia", ClickableKt.m299clickableoSLSa3U$default(companion222, false, null, null, null, (Function0) objRememberedValue422, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 6, 0, 131004);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Modifier modifierFillMaxWidth$default3222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment.Vertical centerVertically4222 = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy4222 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically4222, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode5222 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap5222 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5222 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default3222);
                Function0<ComposeUiNode> constructor5222 = ComposeUiNode.INSTANCE.getConstructor();
                int i14222 = ((((390 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                }
                Composer composerM3967constructorimpl5222 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl5222, measurePolicyRowMeasurePolicy4222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl5222, currentCompositionLocalMap5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl5222, Integer.valueOf(iHashCode5222), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl5222, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl5222, modifierMaterializeModifier5222, ComposeUiNode.INSTANCE.getSetModifier());
                int i15222 = (i14222 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance4222 = RowScopeInstance.INSTANCE;
                int i16222 = ((390 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 1720493858, "C724@37420L48,725@37524L35,722@37306L279,730@37776L125,727@37610L317:RegisterScreen.kt#6w2cjo");
                boolean zRegisterScreen$lambda$11222 = RegisterScreen$lambda$11($aceptaComunicacion$delegate);
                ComposerKt.sourceInformationMarkerStart($composer, -775781116, "CC(remember):RegisterScreen.kt#9igjgp");
                zChangedInstance4 = $composer.changedInstance($loginViewModel);
                Object objRememberedValue5222 = $composer.rememberedValue();
                if (zChangedInstance4) {
                }
                objRememberedValue5222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$175$lambda$174($loginViewModel, ((Boolean) obj).booleanValue());
                    }
                };
                $composer.updateRememberedValue(objRememberedValue5222);
                ComposerKt.sourceInformationMarkerEnd(composer5);
                Composer composer92222 = composer5;
                CheckboxKt.Checkbox(zRegisterScreen$lambda$11222, (Function1) objRememberedValue5222, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer5, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer92222, 0, 44);
                Modifier.Companion companion32222 = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(composer92222, -775769647, "CC(remember):RegisterScreen.kt#9igjgp");
                zChangedInstance5 = composer92222.changedInstance($loginViewModel) | composer92222.changed($aceptaComunicacion$delegate);
                Object objRememberedValue62222 = composer92222.rememberedValue();
                if (zChangedInstance5) {
                }
                objRememberedValue62222 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda29
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176($loginViewModel, $aceptaComunicacion$delegate);
                    }
                };
                composer92222.updateRememberedValue(objRememberedValue62222);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion32222, false, null, null, null, (Function0) objRememberedValue62222, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$168$lambda$165$lambda$164($loginViewModel, ((Boolean) obj).booleanValue());
                }
            };
            $composer.updateRememberedValue(objRememberedValue);
            ComposerKt.sourceInformationMarkerEnd(composer);
            Composer composer72 = composer;
            CheckboxKt.Checkbox(zRegisterScreen$lambda$9, (Function1) objRememberedValue, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer72, 0, 44);
            Modifier.Companion companion4 = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer72, -1589824437, "CC(remember):RegisterScreen.kt#9igjgp");
            zChangedInstance = composer72.changedInstance($loginViewModel) | composer72.changed($aceptaTerminos$delegate);
            Object objRememberedValue22 = composer72.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue22 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$168$lambda$167$lambda$166($loginViewModel, $aceptaTerminos$delegate);
                }
            };
            composer72.updateRememberedValue(objRememberedValue22);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            TextKt.m2976Text4IGK_g("Acepto los términos y condiciones *", ClickableKt.m299clickableoSLSa3U$default(companion4, false, null, null, null, (Function0) objRememberedValue22, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 6, 0, 131004);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierFillMaxWidth$default222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically322 = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy322 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically322, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode422 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap422 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier422 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default222);
            Function0<ComposeUiNode> constructor422 = ComposeUiNode.INSTANCE.getConstructor();
            int i1122 = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
            }
            Composer composerM3967constructorimpl422 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl422, measurePolicyRowMeasurePolicy322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl422, currentCompositionLocalMap422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl422, Integer.valueOf(iHashCode422), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl422, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl422, modifierMaterializeModifier422, ComposeUiNode.INSTANCE.getSetModifier());
            int i1222 = (i1122 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance322 = RowScopeInstance.INSTANCE;
            int i1322 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1987545323, "C705@36521L52,706@36629L35,703@36403L287,711@36883L169,708@36715L363:RegisterScreen.kt#6w2cjo");
            boolean zRegisterScreen$lambda$1022 = RegisterScreen$lambda$10($aceptaVideoconferencia$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -1182808471, "CC(remember):RegisterScreen.kt#9igjgp");
            zChangedInstance2 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue322 = $composer.rememberedValue();
            if (zChangedInstance2) {
            }
            objRememberedValue322 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda26
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$170$lambda$169($loginViewModel, ((Boolean) obj).booleanValue());
                }
            };
            $composer.updateRememberedValue(objRememberedValue322);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            Composer composer8222 = composer3;
            CheckboxKt.Checkbox(zRegisterScreen$lambda$1022, (Function1) objRememberedValue322, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer3, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer8222, 0, 44);
            Modifier.Companion companion2222 = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer8222, -1182796770, "CC(remember):RegisterScreen.kt#9igjgp");
            zChangedInstance3 = composer8222.changedInstance($loginViewModel) | composer8222.changed($aceptaVideoconferencia$delegate);
            Object objRememberedValue4222 = composer8222.rememberedValue();
            if (zChangedInstance3) {
            }
            objRememberedValue4222 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$172$lambda$171($loginViewModel, $aceptaVideoconferencia$delegate);
                }
            };
            composer8222.updateRememberedValue(objRememberedValue4222);
            ComposerKt.sourceInformationMarkerEnd(composer4);
            TextKt.m2976Text4IGK_g("Acepto videoconferencia", ClickableKt.m299clickableoSLSa3U$default(companion2222, false, null, null, null, (Function0) objRememberedValue4222, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 6, 0, 131004);
            ComposerKt.sourceInformationMarkerEnd(composer4);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierFillMaxWidth$default32222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically42222 = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy42222 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically42222, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode52222 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap52222 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier52222 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default32222);
            Function0<ComposeUiNode> constructor52222 = ComposeUiNode.INSTANCE.getConstructor();
            int i142222 = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
            }
            Composer composerM3967constructorimpl52222 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl52222, measurePolicyRowMeasurePolicy42222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl52222, currentCompositionLocalMap52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl52222, Integer.valueOf(iHashCode52222), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl52222, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl52222, modifierMaterializeModifier52222, ComposeUiNode.INSTANCE.getSetModifier());
            int i152222 = (i142222 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance42222 = RowScopeInstance.INSTANCE;
            int i162222 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1720493858, "C724@37420L48,725@37524L35,722@37306L279,730@37776L125,727@37610L317:RegisterScreen.kt#6w2cjo");
            boolean zRegisterScreen$lambda$112222 = RegisterScreen$lambda$11($aceptaComunicacion$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -775781116, "CC(remember):RegisterScreen.kt#9igjgp");
            zChangedInstance4 = $composer.changedInstance($loginViewModel);
            Object objRememberedValue52222 = $composer.rememberedValue();
            if (zChangedInstance4) {
            }
            objRememberedValue52222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$175$lambda$174($loginViewModel, ((Boolean) obj).booleanValue());
                }
            };
            $composer.updateRememberedValue(objRememberedValue52222);
            ComposerKt.sourceInformationMarkerEnd(composer5);
            Composer composer922222 = composer5;
            CheckboxKt.Checkbox(zRegisterScreen$lambda$112222, (Function1) objRememberedValue52222, null, false, CheckboxDefaults.INSTANCE.m2132colors5tl4gsc($primaryColor, 0L, 0L, 0L, 0L, 0L, composer5, (CheckboxDefaults.$stable << 18) | 6, 62), null, composer922222, 0, 44);
            Modifier.Companion companion322222 = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer922222, -775769647, "CC(remember):RegisterScreen.kt#9igjgp");
            zChangedInstance5 = composer922222.changedInstance($loginViewModel) | composer922222.changed($aceptaComunicacion$delegate);
            Object objRememberedValue622222 = composer922222.rememberedValue();
            if (zChangedInstance5) {
            }
            objRememberedValue622222 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176($loginViewModel, $aceptaComunicacion$delegate);
                }
            };
            composer922222.updateRememberedValue(objRememberedValue622222);
            ComposerKt.sourceInformationMarkerEnd(composer6);
            TextKt.m2976Text4IGK_g("Acepto comunicaciones", ClickableKt.m299clickableoSLSa3U$default(companion322222, false, null, null, null, (Function0) objRememberedValue622222, 15, null), 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 6, 0, 131004);
            ComposerKt.sourceInformationMarkerEnd(composer6);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$168$lambda$165$lambda$164(LoginViewModel $loginViewModel, boolean it) {
        $loginViewModel.getAceptaTerminos().setValue(Boolean.valueOf(it));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$168$lambda$167$lambda$166(LoginViewModel $loginViewModel, State $aceptaTerminos$delegate) {
        $loginViewModel.getAceptaTerminos().setValue(Boolean.valueOf(!RegisterScreen$lambda$9($aceptaTerminos$delegate)));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$170$lambda$169(LoginViewModel $loginViewModel, boolean it) {
        $loginViewModel.getAceptaVideoconferencia().setValue(Boolean.valueOf(it));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$173$lambda$172$lambda$171(LoginViewModel $loginViewModel, State $aceptaVideoconferencia$delegate) {
        $loginViewModel.getAceptaVideoconferencia().setValue(Boolean.valueOf(!RegisterScreen$lambda$10($aceptaVideoconferencia$delegate)));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$175$lambda$174(LoginViewModel $loginViewModel, boolean it) {
        $loginViewModel.getAceptaComunicacion().setValue(Boolean.valueOf(it));
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$180$lambda$179$lambda$178$lambda$177$lambda$176(LoginViewModel $loginViewModel, State $aceptaComunicacion$delegate) {
        $loginViewModel.getAceptaComunicacion().setValue(Boolean.valueOf(!RegisterScreen$lambda$11($aceptaComunicacion$delegate)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean RegisterScreen$lambda$188$lambda$187$lambda$181(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String RegisterScreen$lambda$188$lambda$187$lambda$182(State<String> state) {
        return (String) state.getValue();
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$184$lambda$183(LoginViewModel $loginViewModel) {
        $loginViewModel.registrarPaciente();
        return Unit.INSTANCE;
    }

    static final Unit RegisterScreen$lambda$188$lambda$187$lambda$185(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C759@38933L10,755@38748L234:RegisterScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(845713378, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen.<anonymous>.<anonymous>.<anonymous> (RegisterScreen.kt:755)");
            }
            TextKt.m2976Text4IGK_g("📝 Registrar Paciente", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleMedium().m6959getFontSizeXSAIIZE(), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 130994);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
