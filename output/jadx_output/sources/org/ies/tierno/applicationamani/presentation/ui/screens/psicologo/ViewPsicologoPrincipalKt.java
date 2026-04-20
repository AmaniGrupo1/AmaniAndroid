package org.ies.tierno.applicationamani.presentation.ui.screens.psicologo;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.ErrorKt;
import androidx.compose.material.icons.filled.KeyboardArrowDownKt;
import androidx.compose.material.icons.filled.KeyboardArrowUpKt;
import androidx.compose.material.icons.filled.LocationOnKt;
import androidx.compose.material.icons.filled.PaymentKt;
import androidx.compose.material.icons.filled.PeopleKt;
import androidx.compose.material.icons.filled.PersonKt;
import androidx.compose.material.icons.filled.ScheduleKt;
import androidx.compose.material.icons.filled.WarningKt;
import androidx.compose.material.icons.outlined.BadgeKt;
import androidx.compose.material.icons.outlined.CakeKt;
import androidx.compose.material.icons.outlined.EmailKt;
import androidx.compose.material.icons.outlined.PhoneKt;
import androidx.compose.material.icons.outlined.WcKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.TileMode;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.profileinstaller.ProfileVerifier;
import com.google.android.gms.common.Scopes;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO;
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSettingKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: ViewPsicologoPrincipal.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\u0010\n\u001a\r\u0010\u000b\u001a\u00020\u0001H\u0003¢\u0006\u0002\u0010\f\u001a\r\u0010\r\u001a\u00020\u0001H\u0003¢\u0006\u0002\u0010\f\u001a+\u0010\u000e\u001a\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0003¢\u0006\u0002\u0010\u0016\u001a\u0015\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0019H\u0003¢\u0006\u0002\u0010\u001a\u001a\u0015\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u001d\u001a3\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u00152\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00010\"H\u0007¢\u0006\u0002\u0010#\u001a\u001d\u0010$\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u0015H\u0007¢\u0006\u0002\u0010%\u001a\u001b\u0010&\u001a\u00020\u00012\f\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u0010H\u0007¢\u0006\u0002\u0010)\u001a7\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0018\u0010/\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020,000\u0010H\u0007¢\u0006\u0002\u00101\u001a\u0012\u00102\u001a\u00020\u00192\b\u00103\u001a\u0004\u0018\u00010,H\u0003\u001a\u0012\u00104\u001a\u00020\u00152\b\u00103\u001a\u0004\u0018\u00010,H\u0003\u001a\u0012\u00105\u001a\u00020,2\b\u00106\u001a\u0004\u0018\u00010,H\u0003\u001a\u0012\u00107\u001a\u00020,2\b\u00108\u001a\u0004\u0018\u00010,H\u0003\u001a\u001c\u00109\u001a\u00020\u00192\b\u0010:\u001a\u0004\u0018\u00010,2\b\u0010;\u001a\u0004\u0018\u00010,H\u0002¨\u0006<²\u0006\u0010\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u008a\u0084\u0002²\u0006\n\u0010=\u001a\u00020\u0015X\u008a\u008e\u0002²\u0006\f\u0010>\u001a\u0004\u0018\u00010?X\u008a\u008e\u0002²\u0006\n\u0010@\u001a\u00020\u0015X\u008a\u008e\u0002²\u0006\f\u0010A\u001a\u0004\u0018\u00010BX\u008a\u0084\u0002²\u0006\n\u0010\u0014\u001a\u00020\u0015X\u008a\u0084\u0002²\u0006\n\u0010\u001f\u001a\u00020\u0015X\u008a\u008e\u0002"}, d2 = {"ViewPsicologoPrincipal", "", "userSessionDataStore", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;", "profilePsicologoViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;", "(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/Composer;II)V", "LoadingState", "(Landroidx/compose/runtime/Composer;I)V", "EmptyState", "PacientesList", "pacientes", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "listState", "Landroidx/compose/foundation/lazy/LazyListState;", "isScrolled", "", "(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/runtime/Composer;I)V", "HeaderStats", "totalPacientes", "", "(ILandroidx/compose/runtime/Composer;I)V", "PacienteCard", "paciente", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;Landroidx/compose/runtime/Composer;I)V", "PacienteHeader", "expanded", "esMenor", "onExpandClick", "Lkotlin/Function0;", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "ExpandedContent", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;ZLandroidx/compose/runtime/Composer;I)V", "TutorInfoSection", "tutores", "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;", "(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V", "InfoSection", "title", "", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "items", "Lkotlin/Pair;", "(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V", "calcularEdadDesdeString", "fechaNacimientoStr", "esMenorDeEdad", "formatearFechaDesdeString", "fechaStr", "formatearHoraDesdeString", "horaStr", "calcularDuracionDesdeStrings", "inicioStr", "finStr", "app", "showLoading", "idPsicologo", "", "isLoadingSession", Scopes.PROFILE, "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ViewPsicologoPrincipalKt {
    static final Unit EmptyState$lambda$34(int i, Composer composer, int i2) {
        EmptyState(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit ExpandedContent$lambda$82(PacientePsicologoResponseDTO pacientePsicologoResponseDTO, boolean z, int i, Composer composer, int i2) {
        ExpandedContent(pacientePsicologoResponseDTO, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit HeaderStats$lambda$44(int i, int i2, Composer composer, int i3) {
        HeaderStats(i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return Unit.INSTANCE;
    }

    static final Unit InfoSection$lambda$100(String str, ImageVector imageVector, List list, int i, Composer composer, int i2) {
        InfoSection(str, imageVector, list, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit LoadingState$lambda$29(int i, Composer composer, int i2) {
        LoadingState(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard$lambda$53(PacientePsicologoResponseDTO pacientePsicologoResponseDTO, int i, Composer composer, int i2) {
        PacienteCard(pacientePsicologoResponseDTO, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PacienteHeader$lambda$71(PacientePsicologoResponseDTO pacientePsicologoResponseDTO, boolean z, boolean z2, Function0 function0, int i, Composer composer, int i2) {
        PacienteHeader(pacientePsicologoResponseDTO, z, z2, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PacientesList$lambda$40(List list, LazyListState lazyListState, boolean z, int i, Composer composer, int i2) {
        PacientesList(list, lazyListState, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit TutorInfoSection$lambda$93(List list, int i, Composer composer, int i2) {
        TutorInfoSection(list, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit ViewPsicologoPrincipal$lambda$17(UserSessionDataStore userSessionDataStore, NavController navController, ListarPacientesByPsicologoViewModel listarPacientesByPsicologoViewModel, ProfilePsicologoViewModel profilePsicologoViewModel, int i, int i2, Composer composer, int i3) {
        ViewPsicologoPrincipal(userSessionDataStore, navController, listarPacientesByPsicologoViewModel, profilePsicologoViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit ViewPsicologoPrincipal$lambda$22(UserSessionDataStore userSessionDataStore, NavController navController, ListarPacientesByPsicologoViewModel listarPacientesByPsicologoViewModel, ProfilePsicologoViewModel profilePsicologoViewModel, int i, int i2, Composer composer, int i3) {
        ViewPsicologoPrincipal(userSessionDataStore, navController, listarPacientesByPsicologoViewModel, profilePsicologoViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit ViewPsicologoPrincipal$lambda$26(UserSessionDataStore userSessionDataStore, NavController navController, ListarPacientesByPsicologoViewModel listarPacientesByPsicologoViewModel, ProfilePsicologoViewModel profilePsicologoViewModel, int i, int i2, Composer composer, int i3) {
        ViewPsicologoPrincipal(userSessionDataStore, navController, listarPacientesByPsicologoViewModel, profilePsicologoViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void ViewPsicologoPrincipal(final UserSessionDataStore userSessionDataStore, final NavController navController, ListarPacientesByPsicologoViewModel viewModel, ProfilePsicologoViewModel profilePsicologoViewModel, Composer $composer, final int $changed, final int i) {
        final ListarPacientesByPsicologoViewModel viewModel2;
        ProfilePsicologoViewModel profilePsicologoViewModel2;
        final ProfilePsicologoViewModel profilePsicologoViewModel3;
        int $dirty;
        ListarPacientesByPsicologoViewModel viewModel3;
        ProfilePsicologoViewModel profilePsicologoViewModel4;
        MutableState idPsicologo$delegate;
        ProfilePsicologoViewModel profilePsicologoViewModel5;
        MutableState idPsicologo$delegate2;
        MutableState isLoadingSession$delegate;
        ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1 viewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;
        ProfilePsicologoViewModel profilePsicologoViewModel6;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Intrinsics.checkNotNullParameter(userSessionDataStore, "userSessionDataStore");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(1557050818);
        ComposerKt.sourceInformation($composer2, "C(ViewPsicologoPrincipal)N(userSessionDataStore,navController,viewModel,profilePsicologoViewModel)122@5993L16,123@6033L33,126@6147L40,127@6216L33,130@6329L450,130@6308L471,145@6833L16,147@6881L54,147@6855L80,152@6957L23,153@7003L67,209@9148L93,213@9306L501,208@9121L686:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changedInstance(userSessionDataStore) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(navController) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                viewModel2 = viewModel;
                int i2 = $composer2.changedInstance(viewModel2) ? 256 : 128;
                $dirty2 |= i2;
            } else {
                viewModel2 = viewModel;
            }
            $dirty2 |= i2;
        } else {
            viewModel2 = viewModel;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                profilePsicologoViewModel2 = profilePsicologoViewModel;
                int i3 = $composer2.changedInstance(profilePsicologoViewModel2) ? 2048 : 1024;
                $dirty2 |= i3;
            } else {
                profilePsicologoViewModel2 = profilePsicologoViewModel;
            }
            $dirty2 |= i3;
        } else {
            profilePsicologoViewModel2 = profilePsicologoViewModel;
        }
        if ($composer2.shouldExecute(($dirty2 & 1171) != 1170, $dirty2 & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "119@5856L15,120@5932L15");
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if ((i & 4) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ListarPacientesByPsicologoViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer2, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    viewModel2 = (ListarPacientesByPsicologoViewModel) viewModelResolveViewModel;
                    $dirty2 &= -897;
                }
                if ((i & 8) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current2 = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                    if (current2 == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel2 = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ProfilePsicologoViewModel.class), current2.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope($composer2, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    profilePsicologoViewModel4 = (ProfilePsicologoViewModel) viewModelResolveViewModel2;
                    $dirty = $dirty2 & (-7169);
                    viewModel3 = viewModel2;
                } else {
                    $dirty = $dirty2;
                    viewModel3 = viewModel2;
                    profilePsicologoViewModel4 = profilePsicologoViewModel2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 8) != 0) {
                    $dirty2 &= -7169;
                }
                $dirty = $dirty2;
                viewModel3 = viewModel2;
                profilePsicologoViewModel4 = profilePsicologoViewModel2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1557050818, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal (ViewPsicologoPrincipal.kt:121)");
            }
            final State pacientes$delegate = SnapshotStateKt.collectAsState(viewModel3.getPacientes(), null, $composer2, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer2, 1677231363, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            }
            final MutableState showLoading$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 1677235018, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue2 = $composer2.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue2 = objMutableStateOf$default2;
            }
            MutableState idPsicologo$delegate3 = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 1677237219, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue3 = $composer2.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                idPsicologo$delegate = idPsicologo$delegate3;
                Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default3);
                objRememberedValue3 = objMutableStateOf$default3;
            } else {
                idPsicologo$delegate = idPsicologo$delegate3;
            }
            MutableState isLoadingSession$delegate2 = (MutableState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Unit unit = Unit.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer2, 1677241252, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            boolean zChangedInstance = $composer2.changedInstance(userSessionDataStore) | $composer2.changedInstance(profilePsicologoViewModel4);
            Object objRememberedValue4 = $composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                profilePsicologoViewModel5 = profilePsicologoViewModel4;
                idPsicologo$delegate2 = idPsicologo$delegate;
                isLoadingSession$delegate = isLoadingSession$delegate2;
                viewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1 = new ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1(userSessionDataStore, profilePsicologoViewModel5, idPsicologo$delegate2, isLoadingSession$delegate2, null);
                $composer2.updateRememberedValue(viewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1);
            } else {
                isLoadingSession$delegate = isLoadingSession$delegate2;
                viewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1 = objRememberedValue4;
                profilePsicologoViewModel5 = profilePsicologoViewModel4;
                idPsicologo$delegate2 = idPsicologo$delegate;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) viewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1, $composer2, 6);
            SnapshotStateKt.collectAsState(profilePsicologoViewModel5.getPerfil(), null, $composer2, 0, 1);
            List<PacientePsicologoResponseDTO> listViewPsicologoPrincipal$lambda$0 = ViewPsicologoPrincipal$lambda$0(pacientes$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, 1677258520, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue5 = $composer2.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                profilePsicologoViewModel6 = profilePsicologoViewModel5;
                Object obj = (Function2) new ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$2$1(showLoading$delegate, null);
                $composer2.updateRememberedValue(obj);
                objRememberedValue5 = obj;
            } else {
                profilePsicologoViewModel6 = profilePsicologoViewModel5;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(listViewPsicologoPrincipal$lambda$0, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue5, $composer2, 0);
            final LazyListState listState = LazyListStateKt.rememberLazyListState(0, 0, $composer2, 0, 3);
            ComposerKt.sourceInformationMarkerStart($composer2, 1677262437, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue6 = $composer2.rememberedValue();
            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                Object objDerivedStateOf = SnapshotStateKt.derivedStateOf(new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda25
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Boolean.valueOf(ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$14$lambda$13(listState));
                    }
                });
                $composer2.updateRememberedValue(objDerivedStateOf);
                objRememberedValue6 = objDerivedStateOf;
            }
            final State isScrolled$delegate = (State) objRememberedValue6;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ViewPsicologoPrincipal$lambda$8(isLoadingSession$delegate)) {
                $composer2.startReplaceGroup(455680331);
                ComposerKt.sourceInformation($composer2, "157@7159L278");
                Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment center = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart($composer2, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierFillMaxSize$default);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int i4 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    function03 = constructor;
                    $composer2.createNode(function03);
                } else {
                    function03 = constructor;
                    $composer2.useNode();
                }
                Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                int i5 = (i4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i6 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 610907214, "C158@7249L178:ViewPsicologoPrincipal.kt#m19rak");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), Dp.m7505constructorimpl(3), 0L, 0, $composer2, 438, 24);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ListarPacientesByPsicologoViewModel viewModel4 = viewModel3;
                    final ProfilePsicologoViewModel profilePsicologoViewModel7 = profilePsicologoViewModel6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda26
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            return ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$17(userSessionDataStore, navController, viewModel4, profilePsicologoViewModel7, $changed, i, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            final MutableState idPsicologo$delegate4 = idPsicologo$delegate2;
            final ListarPacientesByPsicologoViewModel viewModel5 = viewModel3;
            $composer2.startReplaceGroup(448577952);
            $composer2.endReplaceGroup();
            if (ViewPsicologoPrincipal$lambda$5(idPsicologo$delegate4) == null) {
                $composer2.startReplaceGroup(456127630);
                ComposerKt.sourceInformation($composer2, "169@7571L1523");
                Modifier modifierFillMaxSize$default2 = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment center2 = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart($composer2, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center2, false);
                ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                CompositionLocalMap currentCompositionLocalMap2 = $composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer2, modifierFillMaxSize$default2);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i7 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    function0 = constructor2;
                    $composer2.createNode(function0);
                } else {
                    function0 = constructor2;
                    $composer2.useNode();
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i8 = (i7 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i9 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 1994154426, "C170@7661L1423:ViewPsicologoPrincipal.kt#m19rak");
                Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
                ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                int i10 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                CompositionLocalMap currentCompositionLocalMap3 = $composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer2, modifier);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int i11 = ((i10 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    function02 = constructor3;
                    $composer2.createNode(function02);
                } else {
                    function02 = constructor3;
                    $composer2.useNode();
                }
                Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                int i12 = (i11 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i13 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 1802842495, "C171@7738L232,177@7987L41,178@8045L218,184@8280L40,185@8337L189,190@8543L41,192@8639L91,196@8831L157,191@8601L469:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(ErrorKt.getError(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(64)), AmaniPsicologoColors.INSTANCE.m10471getError0d7_KjU(), $composer2, 3504, 0);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer2, 6);
                TextKt.m2976Text4IGK_g("Error de sesión", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer2, 6);
                TextKt.m2976Text4IGK_g("No se encontró el ID del psicólogo", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer2, 6);
                ComposerKt.sourceInformationMarkerStart($composer2, -1465836853, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                boolean zChangedInstance2 = $composer2.changedInstance(navController);
                Object objRememberedValue7 = $composer2.rememberedValue();
                if (zChangedInstance2 || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda27
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$21$lambda$20$lambda$19$lambda$18(navController);
                        }
                    };
                    $composer2.updateRememberedValue(obj2);
                    objRememberedValue7 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ButtonKt.Button((Function0) objRememberedValue7, null, false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 54, 12), null, null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.getLambda$620005248$app(), $composer2, 805306368, 486);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = $composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup2 != null) {
                    final ProfilePsicologoViewModel profilePsicologoViewModel8 = profilePsicologoViewModel6;
                    scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda28
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            return ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$22(userSessionDataStore, navController, viewModel5, profilePsicologoViewModel8, $changed, i, (Composer) obj3, ((Integer) obj4).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            $composer2.startReplaceGroup(448577952);
            $composer2.endReplaceGroup();
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(543479942, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$23(navController, idPsicologo$delegate4, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer2, 54), null, null, null, 0, AmaniPsicologoColors.INSTANCE.m10470getBackground0d7_KjU(), 0L, null, ComposableLambdaKt.rememberComposableLambda(1063097809, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$25(listState, showLoading$delegate, pacientes$delegate, isScrolled$delegate, (PaddingValues) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer2, 54), $composer2, 806879280, 445);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            viewModel2 = viewModel5;
            profilePsicologoViewModel3 = profilePsicologoViewModel6;
        } else {
            $composer2.skipToGroupEnd();
            profilePsicologoViewModel3 = profilePsicologoViewModel2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup3 = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup3 != null) {
            scopeUpdateScopeEndRestartGroup3.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$26(userSessionDataStore, navController, viewModel2, profilePsicologoViewModel3, $changed, i, (Composer) obj3, ((Integer) obj4).intValue());
                }
            });
        }
    }

    private static final List<PacientePsicologoResponseDTO> ViewPsicologoPrincipal$lambda$0(State<? extends List<PacientePsicologoResponseDTO>> state) {
        return (List) state.getValue();
    }

    private static final boolean ViewPsicologoPrincipal$lambda$2(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ViewPsicologoPrincipal$lambda$3(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long ViewPsicologoPrincipal$lambda$5(MutableState<Long> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean ViewPsicologoPrincipal$lambda$8(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ViewPsicologoPrincipal$lambda$9(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final PsicologoProfileResponseDTO ViewPsicologoPrincipal$lambda$11(State<PsicologoProfileResponseDTO> state) {
        return (PsicologoProfileResponseDTO) state.getValue();
    }

    static final boolean ViewPsicologoPrincipal$lambda$14$lambda$13(LazyListState $listState) {
        return $listState.getFirstVisibleItemIndex() > 0;
    }

    private static final boolean ViewPsicologoPrincipal$lambda$15(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    static final Unit ViewPsicologoPrincipal$lambda$21$lambda$20$lambda$19$lambda$18(NavController $navController) {
        NavController.navigate$default($navController, Screens.login.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit ViewPsicologoPrincipal$lambda$23(NavController $navController, MutableState $idPsicologo$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C210@9162L69:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(543479942, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal.<anonymous> (ViewPsicologoPrincipal.kt:210)");
            }
            MenuSettingKt.MenuSetting($navController, ViewPsicologoPrincipal$lambda$5($idPsicologo$delegate), $composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ViewPsicologoPrincipal$lambda$25(LazyListState $listState, MutableState $showLoading$delegate, State $pacientes$delegate, State $isScrolled$delegate, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)214@9332L469:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1063097809, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal.<anonymous> (ViewPsicologoPrincipal.kt:214)");
            }
            Modifier modifierPadding = PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), innerPadding);
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierPadding);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1341799184, "C:ViewPsicologoPrincipal.kt#m19rak");
            if (ViewPsicologoPrincipal$lambda$2($showLoading$delegate) && ViewPsicologoPrincipal$lambda$0($pacientes$delegate).isEmpty()) {
                $composer.startReplaceGroup(-1619282503);
                ComposerKt.sourceInformation($composer, "220@9524L14");
                LoadingState($composer, 0);
                $composer.endReplaceGroup();
            } else if (ViewPsicologoPrincipal$lambda$0($pacientes$delegate).isEmpty()) {
                $composer.startReplaceGroup(-1619280777);
                ComposerKt.sourceInformation($composer, "221@9578L12");
                EmptyState($composer, 0);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(-1619279443);
                ComposerKt.sourceInformation($composer, "222@9615L162");
                PacientesList(ViewPsicologoPrincipal$lambda$0($pacientes$delegate), $listState, ViewPsicologoPrincipal$lambda$15($isScrolled$delegate), $composer, 0);
                $composer.endReplaceGroup();
            }
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

    private static final void LoadingState(Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer $composer3 = $composer.startRestartGroup(1368925595);
        ComposerKt.sourceInformation($composer3, "C(LoadingState)234@9856L838:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer3.shouldExecute($changed != 0, $changed & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1368925595, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.LoadingState (ViewPsicologoPrincipal.kt:233)");
            }
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer3, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            $composer2 = $composer3;
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxSize$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -951320488, "C235@9942L746:ViewPsicologoPrincipal.kt#m19rak");
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer3, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer3, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -126526315, "C236@10015L178,241@10206L41,242@10260L164,247@10437L40,248@10490L188:ViewPsicologoPrincipal.kt#m19rak");
            ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), Dp.m7505constructorimpl(3), 0L, 0, $composer3, 438, 24);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer3, 6);
            TextKt.m2976Text4IGK_g("Cargando tus pacientes...", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer3, 6);
            long jM10480getTextSecondary0d7_KjU = AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU();
            TextKt.m2976Text4IGK_g("Esto puede tomar unos segundos", (Modifier) null, Color.m4695copywmQWz5c(jM10480getTextSecondary0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM10480getTextSecondary0d7_KjU) : 0.7f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM10480getTextSecondary0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM10480getTextSecondary0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM10480getTextSecondary0d7_KjU) : 0.0f), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.LoadingState$lambda$29($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void EmptyState(Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer $composer3 = $composer.startRestartGroup(-707119060);
        ComposerKt.sourceInformation($composer3, "C(EmptyState)259@10741L1547:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer3.shouldExecute($changed != 0, $changed & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-707119060, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.EmptyState (ViewPsicologoPrincipal.kt:258)");
            }
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer3, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            $composer2 = $composer3;
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxSize$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1985172610, "C260@10827L1455:ViewPsicologoPrincipal.kt#m19rak");
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24));
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer3, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -1499999547, "C264@10970L239,270@11222L41,271@11276L214,277@11503L40,278@11556L229,284@11798L41,286@11886L33,288@12012L145,285@11852L420:ViewPsicologoPrincipal.kt#m19rak");
            ImageVector people = PeopleKt.getPeople(Icons.INSTANCE.getDefault());
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(80));
            long jM10475getPrimaryLight0d7_KjU = AmaniPsicologoColors.INSTANCE.m10475getPrimaryLight0d7_KjU();
            IconKt.m2433Iconww6aTOc(people, (String) null, modifierM864size3ABfNKs, Color.m4695copywmQWz5c(jM10475getPrimaryLight0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM10475getPrimaryLight0d7_KjU) : 0.5f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM10475getPrimaryLight0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM10475getPrimaryLight0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM10475getPrimaryLight0d7_KjU) : 0.0f), $composer3, 3504, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer3, 6);
            TextKt.m2976Text4IGK_g("No tienes pacientes asignados", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer3, 6);
            TextKt.m2976Text4IGK_g("Cuando te asignen pacientes, aparecerán aquí", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 130546);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer3, 6);
            ComposerKt.sourceInformationMarkerStart($composer3, 228735625, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer3.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ButtonKt.Button((Function0) objRememberedValue, null, false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 54, 12), null, null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.getLambda$667450392$app(), $composer3, 805306374, 486);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.EmptyState$lambda$34($changed, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    private static final void PacientesList(final List<PacientePsicologoResponseDTO> list, final LazyListState listState, final boolean isScrolled, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-976062407);
        ComposerKt.sourceInformation($composer2, "C(PacientesList)N(pacientes,listState,isScrolled)313@12746L343,306@12513L576:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(list) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(listState) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-976062407, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacientesList (ViewPsicologoPrincipal.kt:305)");
            }
            Modifier modifierM822paddingqDBjuR0$default = PaddingKt.m822paddingqDBjuR0$default(PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16), 0.0f, 2, null), 0.0f, Dp.m7505constructorimpl(8), 0.0f, 0.0f, 13, null);
            Arrangement.HorizontalOrVertical horizontalOrVerticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer2, -1693087728, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            boolean zChangedInstance = $composer2.changedInstance(list);
            Object objRememberedValue = $composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return ViewPsicologoPrincipalKt.PacientesList$lambda$39$lambda$38(list, (LazyListScope) obj2);
                    }
                };
                $composer2.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LazyDslKt.LazyColumn(modifierM822paddingqDBjuR0$default, listState, null, false, horizontalOrVerticalM688spacedBy0680j_4, null, null, false, null, (Function1) objRememberedValue, $composer2, ($dirty2 & 112) | 24582, 492);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.PacientesList$lambda$40(list, listState, isScrolled, $changed, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    static final Unit PacientesList$lambda$39$lambda$38(final List $pacientes, LazyListScope LazyColumn) {
        Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
        LazyListScope.item$default(LazyColumn, null, null, ComposableLambdaKt.composableLambdaInstance(-1234732796, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return ViewPsicologoPrincipalKt.PacientesList$lambda$39$lambda$38$lambda$35($pacientes, (LazyItemScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
            }
        }), 3, null);
        final Function1 function1 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ViewPsicologoPrincipalKt.PacientesList$lambda$39$lambda$38$lambda$36((PacientePsicologoResponseDTO) obj);
            }
        };
        final Function1 function12 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$PacientesList$lambda$39$lambda$38$$inlined$items$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                return invoke((PacientePsicologoResponseDTO) p1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(PacientePsicologoResponseDTO pacientePsicologoResponseDTO) {
                return null;
            }
        };
        LazyColumn.items($pacientes.size(), new Function1<Integer, Object>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$PacientesList$lambda$39$lambda$38$$inlined$items$default$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final Object invoke(int index) {
                return function1.invoke($pacientes.get(index));
            }
        }, new Function1<Integer, Object>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$PacientesList$lambda$39$lambda$38$$inlined$items$default$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final Object invoke(int index) {
                return function12.invoke($pacientes.get(index));
            }
        }, ComposableLambdaKt.composableLambdaInstance(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$PacientesList$lambda$39$lambda$38$$inlined$items$default$4
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
                ComposerKt.sourceInformation($composer, "CN(it)178@8834L22:LazyDsl.kt#428nma");
                int $dirty = $changed;
                if (($changed & 6) == 0) {
                    $dirty |= $composer.changed($this$items) ? 4 : 2;
                }
                if (($changed & 48) == 0) {
                    $dirty |= $composer.changed(it) ? 32 : 16;
                }
                if (!$composer.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
                    $composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(802480018, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)");
                }
                PacientePsicologoResponseDTO pacientePsicologoResponseDTO = (PacientePsicologoResponseDTO) $pacientes.get(it);
                $composer.startReplaceGroup(-739196254);
                ComposerKt.sourceInformation($composer, "CN(paciente)*322@12980L33:ViewPsicologoPrincipal.kt#m19rak");
                ViewPsicologoPrincipalKt.PacienteCard(pacientePsicologoResponseDTO, $composer, (($dirty & 14) >> 3) & 14);
                $composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        LazyListScope.item$default(LazyColumn, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.getLambda$1612872365$app(), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit PacientesList$lambda$39$lambda$38$lambda$35(List $pacientes, LazyItemScope item, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(item, "$this$item");
        ComposerKt.sourceInformation($composer, "C315@12775L27:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1234732796, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacientesList.<anonymous>.<anonymous>.<anonymous> (ViewPsicologoPrincipal.kt:315)");
            }
            HeaderStats($pacientes.size(), $composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Object PacientesList$lambda$39$lambda$38$lambda$36(PacientePsicologoResponseDTO paciente) {
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Long idPaciente = paciente.getIdPaciente();
        return idPaciente == null ? Long.valueOf(System.currentTimeMillis()) : idPaciente;
    }

    private static final void HeaderStats(final int totalPacientes, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-26729663);
        ComposerKt.sourceInformation($composer3, "C(HeaderStats)N(totalPacientes)334@13279L57,335@13371L38,336@13416L1097,331@13156L1357:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(totalPacientes) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 3) != 2, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-26729663, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.HeaderStats (ViewPsicologoPrincipal.kt:330)");
            }
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(732636595, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.HeaderStats$lambda$43(totalPacientes, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), $composer3, 196614, 16);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.HeaderStats$lambda$44(totalPacientes, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit HeaderStats$lambda$43(int $totalPacientes, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C337@13426L1081:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(732636595, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.HeaderStats.<anonymous> (ViewPsicologoPrincipal.kt:337)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16));
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
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
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1938996332, "C344@13673L613,362@14299L198:ViewPsicologoPrincipal.kt#m19rak");
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((0 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -754476392, "C345@13698L169,350@13884L197,356@14098L174:ViewPsicologoPrincipal.kt#m19rak");
            long sp = TextUnitKt.getSp(14);
            long jM4734getWhite0d7_KjU = Color.INSTANCE.m4734getWhite0d7_KjU();
            TextKt.m2976Text4IGK_g("Total de Pacientes", (Modifier) null, Color.m4695copywmQWz5c(jM4734getWhite0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM4734getWhite0d7_KjU) : 0.9f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM4734getWhite0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM4734getWhite0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM4734getWhite0d7_KjU) : 0.0f), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3462, 0, 131058);
            TextKt.m2976Text4IGK_g(String.valueOf($totalPacientes), (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), TextUnitKt.getSp(32), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200064, 0, 131026);
            long sp2 = TextUnitKt.getSp(12);
            long jM4734getWhite0d7_KjU2 = Color.INSTANCE.m4734getWhite0d7_KjU();
            TextKt.m2976Text4IGK_g("Asignados a tu consulta", (Modifier) null, Color.m4695copywmQWz5c(jM4734getWhite0d7_KjU2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM4734getWhite0d7_KjU2) : 0.8f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM4734getWhite0d7_KjU2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM4734getWhite0d7_KjU2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM4734getWhite0d7_KjU2) : 0.0f), sp2, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3462, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconKt.m2433Iconww6aTOc(PeopleKt.getPeople(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3504, 0);
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
        return Unit.INSTANCE;
    }

    public static final void PacienteCard(final PacientePsicologoResponseDTO paciente, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Composer $composer3 = $composer.startRestartGroup(-1133983967);
        ComposerKt.sourceInformation($composer3, "C(PacienteCard)N(paciente)375@14644L34,383@14915L97,387@15044L57,388@15108L908,378@14742L1274:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(paciente) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 3) != 2, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1133983967, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteCard (ViewPsicologoPrincipal.kt:374)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 1163104995, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer3.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            }
            final MutableState expanded$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final boolean esMenor = esMenorDeEdad(paciente.getFechaNacimiento());
            CardKt.Card(AnimationModifierKt.animateContentSize$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), null, null, 3, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10478getSurface0d7_KjU(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(2), Dp.m7505constructorimpl(6), 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (CardDefaults.$stable << 18) | 54, 60), null, ComposableLambdaKt.rememberComposableLambda(874954515, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.PacienteCard$lambda$52(paciente, esMenor, expanded$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 16);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.PacienteCard$lambda$53(paciente, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final boolean PacienteCard$lambda$46(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void PacienteCard$lambda$47(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit PacienteCard$lambda$52(final PacientePsicologoResponseDTO $paciente, final boolean $esMenor, MutableState $expanded$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        final MutableState mutableState;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C389@15118L892:ViewPsicologoPrincipal.kt#m19rak");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(874954515, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteCard.<anonymous> (ViewPsicologoPrincipal.kt:389)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(0));
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
            int i3 = ((6 >> 6) & 112) | 6;
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -75381625, "C398@15402L24,394@15245L195,409@15855L145,401@15454L546:ViewPsicologoPrincipal.kt#m19rak");
            boolean zPacienteCard$lambda$46 = PacienteCard$lambda$46($expanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1521593281, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                mutableState = $expanded$delegate;
                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ViewPsicologoPrincipalKt.PacienteCard$lambda$52$lambda$51$lambda$49$lambda$48(mutableState);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            } else {
                mutableState = $expanded$delegate;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            PacienteHeader($paciente, zPacienteCard$lambda$46, $esMenor, (Function0) objRememberedValue, $composer, 3072);
            AnimatedVisibilityKt.AnimatedVisibility(columnScope, PacienteCard$lambda$46(mutableState), (Modifier) null, EnterExitTransitionKt.expandVertically$default(AnimationSpecKt.tween$default(300, 0, EasingKt.getFastOutSlowInEasing(), 2, null), null, false, null, 14, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null)), EnterExitTransitionKt.shrinkVertically$default(AnimationSpecKt.tween$default(200, 0, EasingKt.getFastOutSlowInEasing(), 2, null), null, false, null, 14, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(-1889507999, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.PacienteCard$lambda$52$lambda$51$lambda$50($paciente, $esMenor, (AnimatedVisibilityScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, (i3 & 14) | 1572864, 18);
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

    static final Unit PacienteCard$lambda$52$lambda$51$lambda$49$lambda$48(MutableState $expanded$delegate) {
        PacienteCard$lambda$47($expanded$delegate, !PacienteCard$lambda$46($expanded$delegate));
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard$lambda$52$lambda$51$lambda$50(PacientePsicologoResponseDTO $paciente, boolean $esMenor, AnimatedVisibilityScope AnimatedVisibility, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        ComposerKt.sourceInformation($composer, "C410@15873L113:ViewPsicologoPrincipal.kt#m19rak");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1889507999, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteCard.<anonymous>.<anonymous>.<anonymous> (ViewPsicologoPrincipal.kt:410)");
        }
        ExpandedContent($paciente, $esMenor, $composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    public static final void PacienteHeader(final PacientePsicologoResponseDTO paciente, final boolean expanded, final boolean esMenor, final Function0<Unit> onExpandClick, Composer $composer, final int $changed) {
        boolean z;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Intrinsics.checkNotNullParameter(onExpandClick, "onExpandClick");
        Composer $composer3 = $composer.startRestartGroup(-788380280);
        ComposerKt.sourceInformation($composer3, "C(PacienteHeader)N(paciente,expanded,esMenor,onExpandClick)434@16502L10983,430@16342L11143:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(paciente) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(expanded) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = esMenor;
            $dirty |= $composer3.changed(z) ? 256 : 128;
        } else {
            z = esMenor;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changedInstance(onExpandClick) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 1171) != 1170, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-788380280, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteHeader (ViewPsicologoPrincipal.kt:426)");
            }
            EstadoPago estadoPago = paciente.getEstadoPago();
            if (estadoPago == null) {
                estadoPago = EstadoPago.PENDIENTE;
            }
            EstadoPago estadoPago2 = estadoPago;
            boolean isPagoPendiente = estadoPago2 == EstadoPago.PENDIENTE;
            final boolean z2 = z;
            final boolean isPagoPendiente2 = isPagoPendiente;
            $composer2 = $composer3;
            SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), null, AmaniPsicologoColors.INSTANCE.m10478getSurface0d7_KjU(), 0L, 0.0f, expanded ? Dp.m7505constructorimpl(2) : Dp.m7505constructorimpl(0), null, ComposableLambdaKt.rememberComposableLambda(1630878435, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.PacienteHeader$lambda$70(expanded, isPagoPendiente2, paciente, z2, onExpandClick, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), $composer2, 12583302, 90);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.PacienteHeader$lambda$71(paciente, expanded, esMenor, onExpandClick, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0bb9  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0ccd  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0cd9  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0cdf  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0d6a  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0d84  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0e3e  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x150b  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x1532  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x062a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0636  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x075c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0762  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x07dd  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0849  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0894  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x095c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0968  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x096e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0a13  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0b02  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0b0e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0b14  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit PacienteHeader$lambda$70(final boolean $expanded, final boolean $isPagoPendiente, PacientePsicologoResponseDTO $paciente, boolean $esMenor, Function0 $onExpandClick, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Function0<ComposeUiNode> function04;
        String strTake;
        Composer composer;
        String strTake2;
        Function0<ComposeUiNode> function05;
        Function0<ComposeUiNode> function06;
        String nombre;
        String apellido;
        Function0<ComposeUiNode> function07;
        String email;
        Function0<ComposeUiNode> function08;
        String telefono;
        Function0<ComposeUiNode> function09;
        long jM4695copywmQWz5c;
        Composer composer2;
        Function0<ComposeUiNode> function010;
        Function0<ComposeUiNode> function011;
        Function0<ComposeUiNode> function012;
        Function0<ComposeUiNode> function013;
        ComposerKt.sourceInformation($composer, "C435@16512L10967:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1630878435, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteHeader.<anonymous> (ViewPsicologoPrincipal.kt:435)");
            }
            Modifier modifierAnimateContentSize$default = AnimationModifierKt.animateContentSize$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), null, null, 3, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierAnimateContentSize$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
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
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 175227919, "C440@16646L8006:ViewPsicologoPrincipal.kt#m19rak");
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16));
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            Alignment.Vertical top = Alignment.INSTANCE.getTop();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, top, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((438 << 3) & 112) << 6) & 896) | 6;
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
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i6 = ((438 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -300277656, "C447@16908L5431,555@22357L2281:ViewPsicologoPrincipal.kt#m19rak");
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierWeight$default);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i7 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            int i8 = (i7 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i9 = ((48 >> 6) & 112) | 6;
            RowScope rowScope2 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1059293374, "C451@17077L1072,473@18171L4150:ViewPsicologoPrincipal.kt#m19rak");
            Modifier modifierClip = ClipKt.clip(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(56)), RoundedCornerShapeKt.getCircleShape());
            Brush.Companion companion = Brush.INSTANCE;
            Color[] colorArr = new Color[2];
            AmaniPsicologoColors amaniPsicologoColors = AmaniPsicologoColors.INSTANCE;
            colorArr[0] = Color.m4687boximpl($isPagoPendiente ? amaniPsicologoColors.m10481getWarning0d7_KjU() : amaniPsicologoColors.m10477getSuccess0d7_KjU());
            AmaniPsicologoColors amaniPsicologoColors2 = AmaniPsicologoColors.INSTANCE;
            colorArr[1] = Color.m4687boximpl($isPagoPendiente ? amaniPsicologoColors2.m10475getPrimaryLight0d7_KjU() : amaniPsicologoColors2.m10473getPrimary0d7_KjU());
            Modifier modifierBackground$default = BackgroundKt.background$default(modifierClip, companion.m4657linearGradientmHitzGk((List<Color>) CollectionsKt.listOf((Object[]) colorArr), (14 & 2) != 0 ? Offset.INSTANCE.m4468getZeroF1C5BW0() : 0L, (14 & 4) != 0 ? Offset.INSTANCE.m4466getInfiniteF1C5BW0() : 0L, (14 & 8) != 0 ? TileMode.INSTANCE.m5092getClamp3opZhB0() : 0), null, 0.0f, 6, null);
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierBackground$default);
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            int i10 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
            int i11 = (i10 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i12 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -853949536, "C465@17835L292:ViewPsicologoPrincipal.kt#m19rak");
            String nombre2 = $paciente.getNombre();
            if (nombre2 == null || (strTake = StringsKt.take(nombre2, 1)) == null) {
                strTake = "?";
            }
            String apellido2 = $paciente.getApellido();
            if (apellido2 != null) {
                composer = $composer;
                strTake2 = StringsKt.take(apellido2, 1);
                if (strTake2 == null) {
                }
                TextKt.m2976Text4IGK_g(strTake + strTake2, (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 200064, 0, 131026);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Modifier modifierWeight$default2 = RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null);
                ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap5 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier($composer, modifierWeight$default2);
                Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
                int i13 = ((((0 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if (!$composer.getInserting()) {
                    function05 = constructor5;
                    $composer.createNode(function05);
                } else {
                    function05 = constructor5;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl5 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl5, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl5, currentCompositionLocalMap5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl5, Integer.valueOf(iHashCode5), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl5, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl5, modifierMaterializeModifier5, ComposeUiNode.INSTANCE.getSetModifier());
                int i14 = (i13 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                int i15 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 157196067, "C476@18282L2157,515@20465L40,517@20531L924,536@21481L818:ViewPsicologoPrincipal.kt#m19rak");
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal horizontalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_42, centerVertically, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap6 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier($composer, modifier);
                Function0<ComposeUiNode> constructor6 = ComposeUiNode.INSTANCE.getConstructor();
                int i16 = ((((432 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if (!$composer.getInserting()) {
                    function06 = constructor6;
                    $composer.createNode(function06);
                } else {
                    function06 = constructor6;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl6 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl6, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl6, currentCompositionLocalMap6, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl6, Integer.valueOf(iHashCode6), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl6, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl6, modifierMaterializeModifier6, ComposeUiNode.INSTANCE.getSetModifier());
                int i17 = (i16 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i18 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 895609725, "C480@18498L331:ViewPsicologoPrincipal.kt#m19rak");
                nombre = $paciente.getNombre();
                if (nombre == null) {
                    nombre = "Sin nombre";
                }
                apellido = $paciente.getApellido();
                if (apellido == null) {
                    apellido = "";
                }
                TextKt.m2976Text4IGK_g(StringsKt.trim((CharSequence) (nombre + " " + apellido)).toString(), (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200064, 0, 131026);
                if (!$esMenor) {
                    $composer.startReplaceGroup(896024876);
                    ComposerKt.sourceInformation($composer, "489@18964L1419");
                    RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                    long jM10481getWarning0d7_KjU = AmaniPsicologoColors.INSTANCE.m10481getWarning0d7_KjU();
                    SurfaceKt.m2826SurfaceT9BRK9s(null, roundedCornerShapeM1126RoundedCornerShape0680j_4, Color.m4695copywmQWz5c(jM10481getWarning0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM10481getWarning0d7_KjU) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM10481getWarning0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM10481getWarning0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM10481getWarning0d7_KjU) : 0.0f), 0L, 0.0f, 0.0f, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.getLambda$142644309$app(), $composer, 12583296, 121);
                } else {
                    $composer.startReplaceGroup(877199351);
                }
                $composer.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
                Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal horizontalM688spacedBy0680j_43 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier2 = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_43, centerVertically2, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap7 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier($composer, modifier2);
                Function0<ComposeUiNode> constructor7 = ComposeUiNode.INSTANCE.getConstructor();
                int i19 = ((((432 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if (!$composer.getInserting()) {
                    function07 = constructor7;
                    $composer.createNode(function07);
                } else {
                    function07 = constructor7;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl7 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl7, measurePolicyRowMeasurePolicy4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl7, currentCompositionLocalMap7, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl7, Integer.valueOf(iHashCode7), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl7, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl7, modifierMaterializeModifier7, ComposeUiNode.INSTANCE.getSetModifier());
                int i20 = (i19 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                int i21 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -211530459, "C521@20747L301,527@21077L352:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(EmailKt.getEmail(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), $composer, 3504, 0);
                email = $paciente.getEmail();
                if (email == null) {
                    email = "Email no disponible";
                }
                TextKt.m2976Text4IGK_g(email, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8(), false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 3120, 120818);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Alignment.Vertical centerVertically3 = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal horizontalM688spacedBy0680j_44 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier3 = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy5 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_44, centerVertically3, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap8 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier($composer, modifier3);
                Function0<ComposeUiNode> constructor8 = ComposeUiNode.INSTANCE.getConstructor();
                int i22 = ((((432 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if (!$composer.getInserting()) {
                    function08 = constructor8;
                    $composer.createNode(function08);
                } else {
                    function08 = constructor8;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl8 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl8, measurePolicyRowMeasurePolicy5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl8, currentCompositionLocalMap8, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl8, Integer.valueOf(iHashCode8), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl8, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl8, modifierMaterializeModifier8, ComposeUiNode.INSTANCE.getSetModifier());
                int i23 = (i22 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                int i24 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 52487120, "C540@21697L301,546@22027L246:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(PhoneKt.getPhone(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), $composer, 3504, 0);
                telefono = $paciente.getTelefono();
                if (telefono == null) {
                    telefono = "Teléfono no disponible";
                }
                TextKt.m2976Text4IGK_g(telefono, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 0, 131058);
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
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Alignment.Horizontal end = Alignment.INSTANCE.getEnd();
                Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                Modifier modifier4 = Modifier.INSTANCE;
                MeasurePolicy measurePolicyColumnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, end, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode9 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap9 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier($composer, modifier4);
                Function0<ComposeUiNode> constructor9 = ComposeUiNode.INSTANCE.getConstructor();
                int i25 = ((((432 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if (!$composer.getInserting()) {
                    function09 = constructor9;
                    $composer.createNode(function09);
                } else {
                    function09 = constructor9;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl9 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl9, measurePolicyColumnMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl9, currentCompositionLocalMap9, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl9, Integer.valueOf(iHashCode9), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl9, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl9, modifierMaterializeModifier9, ComposeUiNode.INSTANCE.getSetModifier());
                int i26 = (i25 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                int i27 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 119001159, "C566@22925L1176,559@22531L1570,590@24262L358,587@24123L497:ViewPsicologoPrincipal.kt#m19rak");
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20));
                if (!$isPagoPendiente) {
                    long jM10481getWarning0d7_KjU2 = AmaniPsicologoColors.INSTANCE.m10481getWarning0d7_KjU();
                    jM4695copywmQWz5c = Color.m4695copywmQWz5c(jM10481getWarning0d7_KjU2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM10481getWarning0d7_KjU2) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM10481getWarning0d7_KjU2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM10481getWarning0d7_KjU2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM10481getWarning0d7_KjU2) : 0.0f);
                } else {
                    long jM10477getSuccess0d7_KjU = AmaniPsicologoColors.INSTANCE.m10477getSuccess0d7_KjU();
                    jM4695copywmQWz5c = Color.m4695copywmQWz5c(jM10477getSuccess0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM10477getSuccess0d7_KjU) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM10477getSuccess0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM10477getSuccess0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM10477getSuccess0d7_KjU) : 0.0f);
                }
                SurfaceKt.m2826SurfaceT9BRK9s(IntrinsicKt.width(Modifier.INSTANCE, IntrinsicSize.Min), roundedCornerShapeM1126RoundedCornerShape0680j_42, jM4695copywmQWz5c, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1371373656, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ViewPsicologoPrincipalKt.PacienteHeader$lambda$70$lambda$69$lambda$64$lambda$63$lambda$61($isPagoPendiente, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), $composer, 12582918, 120);
                IconButtonKt.IconButton($onExpandClick, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(32)), false, null, null, ComposableLambdaKt.rememberComposableLambda(-506778026, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ViewPsicologoPrincipalKt.PacienteHeader$lambda$70$lambda$69$lambda$64$lambda$63$lambda$62($expanded, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), $composer, 196656, 28);
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
                if ($expanded) {
                    $composer.startReplaceGroup(182949553);
                    ComposerKt.sourceInformation($composer, "601@24699L189,607@24906L41,609@24965L2431,659@27414L41");
                    DividerKt.m2354Divider9IZ8Weo(PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, Dp.m7505constructorimpl(16), 0.0f, 2, null), Dp.m7505constructorimpl(1), AmaniPsicologoColors.INSTANCE.m10469getAccent0d7_KjU(), $composer, 438, 0);
                    composer2 = $composer;
                    SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), composer2, 6);
                    Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16), Dp.m7505constructorimpl(0));
                    Arrangement.Horizontal horizontalM688spacedBy0680j_45 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                    ComposerKt.sourceInformationMarkerStart(composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicyRowMeasurePolicy6 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_45, Alignment.INSTANCE.getTop(), composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode10 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap10 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composer2, modifierM819paddingVpY3zN4);
                    Function0<ComposeUiNode> constructor10 = ComposeUiNode.INSTANCE.getConstructor();
                    int i28 = ((((54 << 3) & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        function010 = constructor10;
                        composer2.createNode(function010);
                    } else {
                        function010 = constructor10;
                        composer2.useNode();
                    }
                    Composer composerM3967constructorimpl10 = Updater.m3967constructorimpl(composer2);
                    Updater.m3975setimpl(composerM3967constructorimpl10, measurePolicyRowMeasurePolicy6, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl10, currentCompositionLocalMap10, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl10, Integer.valueOf(iHashCode10), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl10, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl10, modifierMaterializeModifier10, ComposeUiNode.INSTANCE.getSetModifier());
                    int i29 = (i28 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart(composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                    int i30 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, -345195084, "C615@25233L696,629@25950L719,643@26690L688:ViewPsicologoPrincipal.kt#m19rak");
                    Alignment.Vertical centerVertically4 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart(composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    Modifier modifier5 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy7 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically4, composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                    int i31 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode11 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap11 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composer2, modifier5);
                    Function0<ComposeUiNode> constructor11 = ComposeUiNode.INSTANCE.getConstructor();
                    int i32 = ((i31 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        function011 = constructor11;
                        composer2.createNode(function011);
                    } else {
                        function011 = constructor11;
                        composer2.useNode();
                    }
                    Composer composerM3967constructorimpl11 = Updater.m3967constructorimpl(composer2);
                    Updater.m3975setimpl(composerM3967constructorimpl11, measurePolicyRowMeasurePolicy7, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl11, currentCompositionLocalMap11, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl11, Integer.valueOf(iHashCode11), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl11, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl11, modifierMaterializeModifier11, ComposeUiNode.INSTANCE.getSetModifier());
                    int i33 = (i32 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart(composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance5 = RowScopeInstance.INSTANCE;
                    int i34 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, 818174213, "C616@25311L281,622@25617L39,623@25681L226:ViewPsicologoPrincipal.kt#m19rak");
                    IconKt.m2433Iconww6aTOc(BadgeKt.getBadge(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer2, 3504, 0);
                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer2, 6);
                    String dni = $paciente.getDni();
                    if (dni == null) {
                        dni = "No registrado";
                    }
                    TextKt.m2976Text4IGK_g("DNI: " + dni, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    Alignment.Vertical centerVertically5 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart(composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    Modifier modifier6 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy8 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically5, composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                    int i35 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode12 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap12 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composer2, modifier6);
                    Function0<ComposeUiNode> constructor12 = ComposeUiNode.INSTANCE.getConstructor();
                    int i36 = ((i35 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        function012 = constructor12;
                        composer2.createNode(function012);
                    } else {
                        function012 = constructor12;
                        composer2.useNode();
                    }
                    Composer composerM3967constructorimpl12 = Updater.m3967constructorimpl(composer2);
                    Updater.m3975setimpl(composerM3967constructorimpl12, measurePolicyRowMeasurePolicy8, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl12, currentCompositionLocalMap12, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl12, Integer.valueOf(iHashCode12), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl12, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl12, modifierMaterializeModifier12, ComposeUiNode.INSTANCE.getSetModifier());
                    int i37 = (i36 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart(composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance6 = RowScopeInstance.INSTANCE;
                    int i38 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, 278478789, "C630@26028L280,636@26333L39,637@26397L250:ViewPsicologoPrincipal.kt#m19rak");
                    IconKt.m2433Iconww6aTOc(CakeKt.getCake(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer2, 3504, 0);
                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer2, 6);
                    TextKt.m2976Text4IGK_g("Edad: " + calcularEdadDesdeString($paciente.getFechaNacimiento()) + " años", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    Alignment.Vertical centerVertically6 = Alignment.INSTANCE.getCenterVertically();
                    ComposerKt.sourceInformationMarkerStart(composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    Modifier modifier7 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy9 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically6, composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                    int i39 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode13 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap13 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composer2, modifier7);
                    Function0<ComposeUiNode> constructor13 = ComposeUiNode.INSTANCE.getConstructor();
                    int i40 = ((i39 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!(composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        function013 = constructor13;
                        composer2.createNode(function013);
                    } else {
                        function013 = constructor13;
                        composer2.useNode();
                    }
                    Composer composerM3967constructorimpl13 = Updater.m3967constructorimpl(composer2);
                    Updater.m3975setimpl(composerM3967constructorimpl13, measurePolicyRowMeasurePolicy9, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl13, currentCompositionLocalMap13, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl13, Integer.valueOf(iHashCode13), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl13, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl13, modifierMaterializeModifier13, ComposeUiNode.INSTANCE.getSetModifier());
                    int i41 = (i40 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart(composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance7 = RowScopeInstance.INSTANCE;
                    int i42 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart(composer2, 1830132357, "C644@26768L278,650@27071L39,651@27135L221:ViewPsicologoPrincipal.kt#m19rak");
                    IconKt.m2433Iconww6aTOc(WcKt.getWc(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer2, 3504, 0);
                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer2, 6);
                    String genero = $paciente.getGenero();
                    if (genero == null) {
                        genero = "No especificado";
                    }
                    TextKt.m2976Text4IGK_g(genero, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), composer2, 6);
                } else {
                    composer2 = $composer;
                    composer2.startReplaceGroup(158378581);
                }
                composer2.endReplaceGroup();
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
                composer = $composer;
            }
            strTake2 = "?";
            TextKt.m2976Text4IGK_g(strTake + strTake2, (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 200064, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierWeight$default22 = RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy22 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode52 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap52 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier52 = ComposedModifierKt.materializeModifier($composer, modifierWeight$default22);
            Function0<ComposeUiNode> constructor52 = ComposeUiNode.INSTANCE.getConstructor();
            int i132 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if (!$composer.getInserting()) {
            }
            Composer composerM3967constructorimpl52 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl52, measurePolicyColumnMeasurePolicy22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl52, currentCompositionLocalMap52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl52, Integer.valueOf(iHashCode52), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl52, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl52, modifierMaterializeModifier52, ComposeUiNode.INSTANCE.getSetModifier());
            int i142 = (i132 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
            int i152 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 157196067, "C476@18282L2157,515@20465L40,517@20531L924,536@21481L818:ViewPsicologoPrincipal.kt#m19rak");
            Alignment.Vertical centerVertically7 = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_422 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier8 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy32 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_422, centerVertically7, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode62 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap62 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier62 = ComposedModifierKt.materializeModifier($composer, modifier8);
            Function0<ComposeUiNode> constructor62 = ComposeUiNode.INSTANCE.getConstructor();
            int i162 = ((((432 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if (!$composer.getInserting()) {
            }
            Composer composerM3967constructorimpl62 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl62, measurePolicyRowMeasurePolicy32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl62, currentCompositionLocalMap62, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl62, Integer.valueOf(iHashCode62), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl62, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl62, modifierMaterializeModifier62, ComposeUiNode.INSTANCE.getSetModifier());
            int i172 = (i162 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance8 = RowScopeInstance.INSTANCE;
            int i182 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 895609725, "C480@18498L331:ViewPsicologoPrincipal.kt#m19rak");
            nombre = $paciente.getNombre();
            if (nombre == null) {
            }
            apellido = $paciente.getApellido();
            if (apellido == null) {
            }
            TextKt.m2976Text4IGK_g(StringsKt.trim((CharSequence) (nombre + " " + apellido)).toString(), (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200064, 0, 131026);
            if (!$esMenor) {
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            Alignment.Vertical centerVertically22 = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_432 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier22 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy42 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_432, centerVertically22, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode72 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap72 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier72 = ComposedModifierKt.materializeModifier($composer, modifier22);
            Function0<ComposeUiNode> constructor72 = ComposeUiNode.INSTANCE.getConstructor();
            int i192 = ((((432 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if (!$composer.getInserting()) {
            }
            Composer composerM3967constructorimpl72 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl72, measurePolicyRowMeasurePolicy42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl72, currentCompositionLocalMap72, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl72, Integer.valueOf(iHashCode72), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl72, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl72, modifierMaterializeModifier72, ComposeUiNode.INSTANCE.getSetModifier());
            int i202 = (i192 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
            int i212 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -211530459, "C521@20747L301,527@21077L352:ViewPsicologoPrincipal.kt#m19rak");
            IconKt.m2433Iconww6aTOc(EmailKt.getEmail(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), $composer, 3504, 0);
            email = $paciente.getEmail();
            if (email == null) {
            }
            TextKt.m2976Text4IGK_g(email, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, TextOverflow.INSTANCE.m7416getEllipsisgIe3tQ8(), false, 1, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 3120, 120818);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Alignment.Vertical centerVertically32 = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_442 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier32 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy52 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_442, centerVertically32, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode82 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap82 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier82 = ComposedModifierKt.materializeModifier($composer, modifier32);
            Function0<ComposeUiNode> constructor82 = ComposeUiNode.INSTANCE.getConstructor();
            int i222 = ((((432 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if (!$composer.getInserting()) {
            }
            Composer composerM3967constructorimpl82 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl82, measurePolicyRowMeasurePolicy52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl82, currentCompositionLocalMap82, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl82, Integer.valueOf(iHashCode82), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl82, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl82, modifierMaterializeModifier82, ComposeUiNode.INSTANCE.getSetModifier());
            int i232 = (i222 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance32 = RowScopeInstance.INSTANCE;
            int i242 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 52487120, "C540@21697L301,546@22027L246:ViewPsicologoPrincipal.kt#m19rak");
            IconKt.m2433Iconww6aTOc(PhoneKt.getPhone(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), $composer, 3504, 0);
            telefono = $paciente.getTelefono();
            if (telefono == null) {
            }
            TextKt.m2976Text4IGK_g(telefono, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 0, 131058);
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
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Alignment.Horizontal end2 = Alignment.INSTANCE.getEnd();
            Arrangement.Vertical verticalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier42 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy32 = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_42, end2, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode92 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap92 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier92 = ComposedModifierKt.materializeModifier($composer, modifier42);
            Function0<ComposeUiNode> constructor92 = ComposeUiNode.INSTANCE.getConstructor();
            int i252 = ((((432 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if (!$composer.getInserting()) {
            }
            Composer composerM3967constructorimpl92 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl92, measurePolicyColumnMeasurePolicy32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl92, currentCompositionLocalMap92, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl92, Integer.valueOf(iHashCode92), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl92, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl92, modifierMaterializeModifier92, ComposeUiNode.INSTANCE.getSetModifier());
            int i262 = (i252 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
            int i272 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 119001159, "C566@22925L1176,559@22531L1570,590@24262L358,587@24123L497:ViewPsicologoPrincipal.kt#m19rak");
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_422 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20));
            if (!$isPagoPendiente) {
            }
            SurfaceKt.m2826SurfaceT9BRK9s(IntrinsicKt.width(Modifier.INSTANCE, IntrinsicSize.Min), roundedCornerShapeM1126RoundedCornerShape0680j_422, jM4695copywmQWz5c, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1371373656, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.PacienteHeader$lambda$70$lambda$69$lambda$64$lambda$63$lambda$61($isPagoPendiente, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 12582918, 120);
            IconButtonKt.IconButton($onExpandClick, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(32)), false, null, null, ComposableLambdaKt.rememberComposableLambda(-506778026, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.PacienteHeader$lambda$70$lambda$69$lambda$64$lambda$63$lambda$62($expanded, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 196656, 28);
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
            if ($expanded) {
            }
            composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PacienteHeader$lambda$70$lambda$69$lambda$64$lambda$63$lambda$61(boolean $isPagoPendiente, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C567@22951L1128:ViewPsicologoPrincipal.kt#m19rak");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1371373656, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteHeader.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ViewPsicologoPrincipal.kt:567)");
            }
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(10), Dp.m7505constructorimpl(4));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(4));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
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
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 839944943, "C572@23261L403,578@23693L360:ViewPsicologoPrincipal.kt#m19rak");
            Icons.Filled filled = Icons.INSTANCE.getDefault();
            ImageVector warning = $isPagoPendiente ? WarningKt.getWarning(filled) : CheckCircleKt.getCheckCircle(filled);
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14));
            AmaniPsicologoColors amaniPsicologoColors = AmaniPsicologoColors.INSTANCE;
            IconKt.m2433Iconww6aTOc(warning, (String) null, modifierM864size3ABfNKs, $isPagoPendiente ? amaniPsicologoColors.m10481getWarning0d7_KjU() : amaniPsicologoColors.m10477getSuccess0d7_KjU(), $composer, 432, 0);
            String str = $isPagoPendiente ? "PENDIENTE" : "PAGADO";
            long sp = TextUnitKt.getSp(11);
            FontWeight medium = FontWeight.INSTANCE.getMedium();
            AmaniPsicologoColors amaniPsicologoColors2 = AmaniPsicologoColors.INSTANCE;
            TextKt.m2976Text4IGK_g(str, (Modifier) null, $isPagoPendiente ? amaniPsicologoColors2.m10481getWarning0d7_KjU() : amaniPsicologoColors2.m10477getSuccess0d7_KjU(), sp, (FontStyle) null, medium, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 0, 131026);
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

    static final Unit PacienteHeader$lambda$70$lambda$69$lambda$64$lambda$63$lambda$62(boolean $expanded, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C591@24288L310:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-506778026, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.PacienteHeader.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ViewPsicologoPrincipal.kt:591)");
            }
            Icons.Filled filled = Icons.INSTANCE.getDefault();
            IconKt.m2433Iconww6aTOc($expanded ? KeyboardArrowUpKt.getKeyboardArrowUp(filled) : KeyboardArrowDownKt.getKeyboardArrowDown(filled), $expanded ? "Contraer" : "Expandir", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), $composer, 3072, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0669  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0718  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x07ce  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x07e0  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x093c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ExpandedContent(final PacientePsicologoResponseDTO paciente, final boolean esMenor, Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        String strName;
        Function0<ComposeUiNode> function03;
        Object objRememberedValue;
        Object obj;
        Object objRememberedValue2;
        Object obj2;
        Object objRememberedValue3;
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Composer $composer3 = $composer.startRestartGroup(-1553665062);
        ComposerKt.sourceInformation($composer3, "C(ExpandedContent)N(paciente,esMenor)671@27631L5886:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(paciente) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(esMenor) ? 32 : 16;
        }
        if ($composer3.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1553665062, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ExpandedContent (ViewPsicologoPrincipal.kt:670)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), AmaniPsicologoColors.INSTANCE.m10469getAccent0d7_KjU(), null, 2, null), Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            $composer2 = $composer3;
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -1522107992, "C677@27792L248,685@28050L2670,743@30730L41,745@30781L1968,796@32759L40,799@32847L20,802@33000L95,798@32809L702:ViewPsicologoPrincipal.kt#m19rak");
            TextKt.m2976Text4IGK_g("📋 Información Detallada", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(12), 7, null), AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200118, 0, 131024);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer3, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            int i6 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1151677647, "C688@28144L737,721@29794L304:ViewPsicologoPrincipal.kt#m19rak");
            ImageVector person = PersonKt.getPerson(Icons.INSTANCE.getDefault());
            Pair[] pairArr = new Pair[7];
            String nombre = paciente.getNombre();
            if (nombre == null) {
                nombre = "N/A";
            }
            String str = nombre;
            String apellido = paciente.getApellido();
            if (apellido == null) {
                apellido = "";
            }
            pairArr[0] = TuplesKt.to("Nombre completo", StringsKt.trim((CharSequence) (str + " " + apellido)).toString());
            String dni = paciente.getDni();
            if (dni == null) {
                dni = "No registrado";
            }
            pairArr[1] = TuplesKt.to("DNI", dni);
            pairArr[2] = TuplesKt.to("Fecha de nacimiento", formatearFechaDesdeString(paciente.getFechaNacimiento()));
            pairArr[3] = TuplesKt.to("Edad", calcularEdadDesdeString(paciente.getFechaNacimiento()) + " años");
            String genero = paciente.getGenero();
            if (genero == null) {
                genero = "No especificado";
            }
            pairArr[4] = TuplesKt.to("Género", genero);
            String email = paciente.getEmail();
            if (email == null) {
                email = "No disponible";
            }
            pairArr[5] = TuplesKt.to("Email", email);
            String telefono = paciente.getTelefono();
            if (telefono == null) {
                telefono = "No disponible";
            }
            pairArr[6] = TuplesKt.to("Teléfono", telefono);
            InfoSection("Datos Personales", person, CollectionsKt.listOf((Object[]) pairArr), $composer3, 6);
            List<TutorResponseDTO> tutor = paciente.getTutor();
            if (tutor == null) {
                tutor = CollectionsKt.emptyList();
            }
            if (!esMenor || tutor.isEmpty()) {
                $composer3.startReplaceGroup(1123678260);
            } else {
                $composer3.startReplaceGroup(1152506865);
                ComposerKt.sourceInformation($composer3, "704@29076L35");
                TutorInfoSection(tutor, $composer3, 0);
            }
            $composer3.endReplaceGroup();
            DireccionResponseDTO direccion = paciente.getDireccion();
            if (direccion == null) {
                $composer3.startReplaceGroup(1152624230);
                $composer3.endReplaceGroup();
            } else {
                $composer3.startReplaceGroup(1152624231);
                ComposerKt.sourceInformation($composer3, "*708@29194L572");
                ImageVector locationOn = LocationOnKt.getLocationOn(Icons.INSTANCE.getDefault());
                Pair[] pairArr2 = new Pair[5];
                String calle = direccion.getCalle();
                pairArr2[0] = TuplesKt.to("Calle", calle == null ? "No disponible" : calle);
                String ciudad = direccion.getCiudad();
                if (ciudad == null) {
                    ciudad = "No disponible";
                }
                pairArr2[1] = TuplesKt.to("Ciudad", ciudad);
                String provincia = direccion.getProvincia();
                if (provincia == null) {
                    provincia = "No disponible";
                }
                pairArr2[2] = TuplesKt.to("Provincia", provincia);
                String codigoPostal = direccion.getCodigoPostal();
                if (codigoPostal == null) {
                    codigoPostal = "No disponible";
                }
                pairArr2[3] = TuplesKt.to("Código Postal", codigoPostal);
                String pais = direccion.getPais();
                if (pais == null) {
                    pais = "No disponible";
                }
                pairArr2[4] = TuplesKt.to("País", pais);
                InfoSection("📍 Dirección", locationOn, CollectionsKt.listOf((Object[]) pairArr2), $composer3, 6);
                Unit unit = Unit.INSTANCE;
                $composer3.endReplaceGroup();
                Unit unit2 = Unit.INSTANCE;
            }
            ImageVector payment = PaymentKt.getPayment(Icons.INSTANCE.getDefault());
            Pair[] pairArr3 = new Pair[2];
            EstadoPago estadoPago = paciente.getEstadoPago();
            if (estadoPago == null || (strName = estadoPago.name()) == null) {
                strName = "PENDIENTE";
            }
            pairArr3[0] = TuplesKt.to("Estado actual", strName);
            pairArr3[1] = TuplesKt.to("Método de pago", "Por definir");
            InfoSection("💰 Estado de Pago", payment, CollectionsKt.listOf((Object[]) pairArr3), $composer3, 6);
            String horaInicio = paciente.getHoraInicio();
            if (horaInicio == null || horaInicio.length() == 0) {
                $composer3.startReplaceGroup(1123678260);
                $composer3.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer3, 6);
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
                ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
                CompositionLocalMap currentCompositionLocalMap3 = $composer3.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxWidth$default);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int i7 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function03 = constructor3;
                    $composer3.useNode();
                } else {
                    function03 = constructor3;
                    $composer3.createNode(function03);
                }
                Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                int i8 = (i7 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                int i9 = ((54 >> 6) & 112) | 6;
                RowScope rowScope = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 1924430090, "C750@30956L37,753@31134L145,757@31324L40,749@30922L893,773@31863L26,776@32030L164,780@32239L40,772@31829L910:ViewPsicologoPrincipal.kt#m19rak");
                ComposerKt.sourceInformationMarkerStart($composer3, -907753627, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                    Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer3.updateRememberedValue(obj3);
                    obj = obj3;
                } else {
                    obj = objRememberedValue;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ButtonKt.Button((Function0) obj, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 54, 12), ButtonDefaults.INSTANCE.m2093buttonElevationR_JCAzs(Dp.m7505constructorimpl(2), 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (ButtonDefaults.$stable << 15) | 6, 30), null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.getLambda$1054536528$app(), $composer3, 805306374, 452);
                ComposerKt.sourceInformationMarkerStart($composer3, -907724614, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                objRememberedValue2 = $composer3.rememberedValue();
                if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                    Object obj4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer3.updateRememberedValue(obj4);
                    obj2 = obj4;
                } else {
                    obj2 = objRememberedValue2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ButtonKt.Button((Function0) obj2, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10476getSecondary0d7_KjU(), AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 54, 12), ButtonDefaults.INSTANCE.m2093buttonElevationR_JCAzs(Dp.m7505constructorimpl(2), 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (ButtonDefaults.$stable << 15) | 6, 30), null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.m10482getLambda$1793859015$app(), $composer3, 805306374, 452);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer3, 6);
                ComposerKt.sourceInformationMarkerStart($composer3, 920887128, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                objRememberedValue3 = $composer3.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    Object obj5 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer3.updateRememberedValue(obj5);
                    objRememberedValue3 = obj5;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ButtonKt.OutlinedButton((Function0) objRememberedValue3, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2102outlinedButtonColorsro_MJ88(0L, AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 48, 13), null, null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.m10483getLambda$2054918926$app(), $composer3, 805306422, 484);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                String horaFin = paciente.getHoraFin();
                if (!(horaFin == null || horaFin.length() == 0)) {
                    $composer3.startReplaceGroup(1153644813);
                    ComposerKt.sourceInformation($composer3, "731@30209L487");
                    InfoSection("⏰ Horario de Sesiones", ScheduleKt.getSchedule(Icons.INSTANCE.getDefault()), CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("Hora de inicio", formatearHoraDesdeString(paciente.getHoraInicio())), TuplesKt.to("Hora de fin", formatearHoraDesdeString(paciente.getHoraFin())), TuplesKt.to("Duración", calcularDuracionDesdeStrings(paciente.getHoraInicio(), paciente.getHoraFin()) + " minutos")}), $composer3, 6);
                }
                $composer3.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer3, 6);
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
                ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_42, Alignment.INSTANCE.getTop(), $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode32 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
                CompositionLocalMap currentCompositionLocalMap32 = $composer3.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier32 = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxWidth$default2);
                Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                int i72 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                }
                Composer composerM3967constructorimpl32 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl(composerM3967constructorimpl32, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl32, currentCompositionLocalMap32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl32, Integer.valueOf(iHashCode32), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl32, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl32, modifierMaterializeModifier32, ComposeUiNode.INSTANCE.getSetModifier());
                int i82 = (i72 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                int i92 = ((54 >> 6) & 112) | 6;
                RowScope rowScope2 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 1924430090, "C750@30956L37,753@31134L145,757@31324L40,749@30922L893,773@31863L26,776@32030L164,780@32239L40,772@31829L910:ViewPsicologoPrincipal.kt#m19rak");
                ComposerKt.sourceInformationMarkerStart($composer3, -907753627, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ButtonKt.Button((Function0) obj, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 54, 12), ButtonDefaults.INSTANCE.m2093buttonElevationR_JCAzs(Dp.m7505constructorimpl(2), 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (ButtonDefaults.$stable << 15) | 6, 30), null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.getLambda$1054536528$app(), $composer3, 805306374, 452);
                ComposerKt.sourceInformationMarkerStart($composer3, -907724614, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                objRememberedValue2 = $composer3.rememberedValue();
                if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ButtonKt.Button((Function0) obj2, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(AmaniPsicologoColors.INSTANCE.m10476getSecondary0d7_KjU(), AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 54, 12), ButtonDefaults.INSTANCE.m2093buttonElevationR_JCAzs(Dp.m7505constructorimpl(2), 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (ButtonDefaults.$stable << 15) | 6, 30), null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.m10482getLambda$1793859015$app(), $composer3, 805306374, 452);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer3, 6);
                ComposerKt.sourceInformationMarkerStart($composer3, 920887128, "CC(remember):ViewPsicologoPrincipal.kt#9igjgp");
                objRememberedValue3 = $composer3.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ButtonKt.OutlinedButton((Function0) objRememberedValue3, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), ButtonDefaults.INSTANCE.m2102outlinedButtonColorsro_MJ88(0L, AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 48, 13), null, null, null, null, ComposableSingletons$ViewPsicologoPrincipalKt.INSTANCE.m10483getLambda$2054918926$app(), $composer3, 805306422, 484);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj6, Object obj7) {
                    return ViewPsicologoPrincipalKt.ExpandedContent$lambda$82(paciente, esMenor, $changed, (Composer) obj6, ((Integer) obj7).intValue());
                }
            });
        }
    }

    public static final void TutorInfoSection(final List<TutorResponseDTO> tutores, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(tutores, "tutores");
        Composer $composer3 = $composer.startRestartGroup(1093923661);
        ComposerKt.sourceInformation($composer3, "C(TutorInfoSection)N(tutores)826@33716L40,827@33791L38,828@33836L5320,823@33593L5563:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(tutores) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 3) != 2, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1093923661, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.TutorInfoSection (ViewPsicologoPrincipal.kt:822)");
            }
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(1), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(-1959536577, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.TutorInfoSection$lambda$92(tutores, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), $composer3, 196614, 16);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.TutorInfoSection$lambda$93(tutores, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit TutorInfoSection$lambda$92(List $tutores, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Function0<ComposeUiNode> function04;
        Function0<ComposeUiNode> function05;
        Function0<ComposeUiNode> function06;
        Function0<ComposeUiNode> function07;
        Function0<ComposeUiNode> function08;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C829@33846L5304:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1959536577, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.TutorInfoSection.<anonymous> (ViewPsicologoPrincipal.kt:829)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12));
            int i = 6;
            Composer composer = $composer;
            int i2 = 0;
            ComposerKt.sourceInformationMarkerStart(composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            String str = "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh";
            ComposerKt.sourceInformationMarkerStart(composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i3 = ((((6 << 3) & 112) << 6) & 896) | 6;
            String str2 = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
            ComposerKt.sourceInformationMarkerStart(composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                function0 = constructor;
                composer.createNode(function0);
            } else {
                function0 = constructor;
                composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl(composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i4 = (i3 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i5 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, 427289344, "C834@33974L675,852@34663L40:ViewPsicologoPrincipal.kt#m19rak");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            String str3 = "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo";
            ComposerKt.sourceInformationMarkerStart(composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, centerVertically, composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart(composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i6 = ((((432 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                function02 = constructor2;
                composer.createNode(function02);
            } else {
                function02 = constructor2;
                composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i7 = (i6 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i8 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, 173586877, "C838@34142L235,844@34394L241:ViewPsicologoPrincipal.kt#m19rak");
            IconKt.m2433Iconww6aTOc(PeopleKt.getPeople(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), AmaniPsicologoColors.INSTANCE.m10481getWarning0d7_KjU(), composer, 3504, 0);
            TextKt.m2976Text4IGK_g("👨\u200d👩\u200d👧 Datos del Tutor / Responsable", (Modifier) null, AmaniPsicologoColors.INSTANCE.m10481getWarning0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 200070, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer, 6);
            composer.startReplaceGroup(-124740524);
            ComposerKt.sourceInformation(composer, "*855@34774L4049");
            List list = $tutores;
            int i9 = 0;
            int i10 = 0;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                TutorResponseDTO tutorResponseDTO = (TutorResponseDTO) next;
                Iterable iterable = list;
                int i12 = i9;
                Iterator it2 = it;
                int i13 = i;
                Composer composer2 = composer;
                Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(8), 1, null);
                ComposerKt.sourceInformationMarkerStart(composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer, -1159599143, str);
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
                CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer, modifierM820paddingVpY3zN4$default);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int i14 = ((((6 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer, -553112988, str2);
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    function03 = constructor3;
                    composer.createNode(function03);
                } else {
                    function03 = constructor3;
                    composer.useNode();
                }
                Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl(composer);
                Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                int i15 = (i14 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                int i16 = ((6 >> 6) & 112) | 6;
                Composer composer3 = composer;
                ComposerKt.sourceInformationMarkerStart(composer3, -1375014436, "C870@35368L1135,895@36525L40,897@36587L725,914@37334L729,931@38085L720:ViewPsicologoPrincipal.kt#m19rak");
                if ($tutores.size() > 1) {
                    composer3.startReplaceGroup(-1375100524);
                    ComposerKt.sourceInformation(composer3, "861@35000L259,867@35284L40");
                    TextKt.m2976Text4IGK_g("Tutor " + (i10 + 1), (Modifier) null, AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 200064, 0, 131026);
                    composer3 = composer3;
                    SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer3, 6);
                } else {
                    composer3.startReplaceGroup(-1409807256);
                }
                composer3.endReplaceGroup();
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                Composer composer4 = composer3;
                ComposerKt.sourceInformationMarkerStart(composer4, 844473419, str3);
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_42, Alignment.INSTANCE.getTop(), composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer4, -1159599143, str);
                int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer4, 0));
                CompositionLocalMap currentCompositionLocalMap4 = composer4.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                int i17 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer4, -553112988, str2);
                if (!(composer4.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer4.startReusableNode();
                if (composer4.getInserting()) {
                    function04 = constructor4;
                    composer4.createNode(function04);
                } else {
                    function04 = constructor4;
                    composer4.useNode();
                }
                Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl(composer4);
                int i18 = i2;
                Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
                int i19 = (i17 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer4, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                int i20 = ((54 >> 6) & 112) | 6;
                RowScope rowScope = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(composer4, -1700548632, "C874@35556L281,880@35862L619:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(PersonKt.getPerson(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer4, 3504, 0);
                Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
                ComposerKt.sourceInformationMarkerStart(composer4, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer4, -1159599143, str);
                int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer4, 0));
                CompositionLocalMap currentCompositionLocalMap5 = composer4.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composer4, modifierWeight$default);
                Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
                int i21 = ((((0 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer4, -553112988, str2);
                if (!(composer4.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer4.startReusableNode();
                if (composer4.getInserting()) {
                    function05 = constructor5;
                    composer4.createNode(function05);
                } else {
                    function05 = constructor5;
                    composer4.useNode();
                }
                Composer composerM3967constructorimpl5 = Updater.m3967constructorimpl(composer4);
                Updater.m3975setimpl(composerM3967constructorimpl5, measurePolicyColumnMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl5, currentCompositionLocalMap5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl5, Integer.valueOf(iHashCode5), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl5, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl5, modifierMaterializeModifier5, ComposeUiNode.INSTANCE.getSetModifier());
                int i22 = (i21 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer4, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                int i23 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer4, 562138659, "C881@35931L275,887@36235L220:ViewPsicologoPrincipal.kt#m19rak");
                TextKt.m2976Text4IGK_g(tutorResponseDTO.getNombre(), (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 200064, 0, 131026);
                TextKt.m2976Text4IGK_g("DNI: " + tutorResponseDTO.getDni(), (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                composer4.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                composer4.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer3, 6);
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_43 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                Composer composer5 = composer3;
                ComposerKt.sourceInformationMarkerStart(composer5, 844473419, str3);
                Composer composer6 = composer3;
                MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_43, Alignment.INSTANCE.getTop(), composer5, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer5, -1159599143, str);
                int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer5, 0));
                CompositionLocalMap currentCompositionLocalMap6 = composer5.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composer5, modifierFillMaxWidth$default2);
                Function0<ComposeUiNode> constructor6 = ComposeUiNode.INSTANCE.getConstructor();
                int i24 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer5, -553112988, str2);
                if (!(composer5.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer5.startReusableNode();
                if (composer5.getInserting()) {
                    function06 = constructor6;
                    composer5.createNode(function06);
                } else {
                    function06 = constructor6;
                    composer5.useNode();
                }
                Composer composerM3967constructorimpl6 = Updater.m3967constructorimpl(composer5);
                Updater.m3975setimpl(composerM3967constructorimpl6, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl6, currentCompositionLocalMap6, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl6, Integer.valueOf(iHashCode6), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl6, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl6, modifierMaterializeModifier6, ComposeUiNode.INSTANCE.getSetModifier());
                int i25 = (i24 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer5, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                int i26 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer5, -290247125, "C901@36775L281,907@37081L209:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(PhoneKt.getPhone(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer5, 3504, 0);
                String telefono = tutorResponseDTO.getTelefono();
                if (telefono == null) {
                    telefono = "No disponible";
                }
                TextKt.m2976Text4IGK_g(telefono, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer5, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd(composer5);
                ComposerKt.sourceInformationMarkerEnd(composer5);
                composer5.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer5);
                ComposerKt.sourceInformationMarkerEnd(composer5);
                ComposerKt.sourceInformationMarkerEnd(composer5);
                Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_44 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart(composer6, 844473419, str3);
                MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_44, Alignment.INSTANCE.getTop(), composer6, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer6, -1159599143, str);
                int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer6, 0));
                CompositionLocalMap currentCompositionLocalMap7 = composer6.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composer6, modifierFillMaxWidth$default3);
                Function0<ComposeUiNode> constructor7 = ComposeUiNode.INSTANCE.getConstructor();
                int i27 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer6, -553112988, str2);
                if (!(composer6.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer6.startReusableNode();
                if (composer6.getInserting()) {
                    function07 = constructor7;
                    composer6.createNode(function07);
                } else {
                    function07 = constructor7;
                    composer6.useNode();
                }
                Composer composerM3967constructorimpl7 = Updater.m3967constructorimpl(composer6);
                Updater.m3975setimpl(composerM3967constructorimpl7, measurePolicyRowMeasurePolicy4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl7, currentCompositionLocalMap7, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl7, Integer.valueOf(iHashCode7), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl7, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl7, modifierMaterializeModifier7, ComposeUiNode.INSTANCE.getSetModifier());
                int i28 = (i27 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer6, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                int i29 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer6, 280982342, "C918@37522L281,924@37828L213:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(EmailKt.getEmail(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer6, 3504, 0);
                String email = tutorResponseDTO.getEmail();
                if (email == null) {
                    email = "No disponible";
                }
                TextKt.m2976Text4IGK_g(email, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                composer6.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_45 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart(composer6, 844473419, str3);
                MeasurePolicy measurePolicyRowMeasurePolicy5 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_45, Alignment.INSTANCE.getTop(), composer6, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer6, -1159599143, str);
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer6, 0));
                CompositionLocalMap currentCompositionLocalMap8 = composer6.getCurrentCompositionLocalMap();
                String str4 = str3;
                String str5 = str;
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composer6, modifierFillMaxWidth$default4);
                Function0<ComposeUiNode> constructor8 = ComposeUiNode.INSTANCE.getConstructor();
                int i30 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer6, -553112988, str2);
                if (!(composer6.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer6.startReusableNode();
                if (composer6.getInserting()) {
                    function08 = constructor8;
                    composer6.createNode(function08);
                } else {
                    function08 = constructor8;
                    composer6.useNode();
                }
                Composer composerM3967constructorimpl8 = Updater.m3967constructorimpl(composer6);
                String str6 = str2;
                Updater.m3975setimpl(composerM3967constructorimpl8, measurePolicyRowMeasurePolicy5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl8, currentCompositionLocalMap8, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl8, Integer.valueOf(iHashCode8), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl8, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl8, modifierMaterializeModifier8, ComposeUiNode.INSTANCE.getSetModifier());
                int i31 = (i30 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer6, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                int i32 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer6, 852211406, "C935@38273L281,941@38579L204:ViewPsicologoPrincipal.kt#m19rak");
                IconKt.m2433Iconww6aTOc(BadgeKt.getBadge(Icons.Outlined.INSTANCE), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), composer6, 3504, 0);
                TextKt.m2976Text4IGK_g("Tipo: " + tutorResponseDTO.getTipo(), (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer6, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                composer6.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (i10 != $tutores.size() - 1) {
                    composer.startReplaceGroup(-1392430464);
                    ComposerKt.sourceInformation(composer, "950@38894L214");
                    DividerKt.m2355HorizontalDivider9IZ8Weo(PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(8), 1, null), Dp.m7505constructorimpl((float) 0.5d), AmaniPsicologoColors.INSTANCE.m10469getAccent0d7_KjU(), composer, 438, 0);
                } else {
                    composer.startReplaceGroup(-1431000354);
                }
                composer.endReplaceGroup();
                str = str5;
                i10 = i11;
                list = iterable;
                i9 = i12;
                it = it2;
                i = i13;
                composer = composer2;
                str3 = str4;
                str2 = str6;
                i2 = i18;
            }
            composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void InfoSection(final String title, final ImageVector icon, final List<Pair<String, String>> items, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(items, "items");
        Composer $composer3 = $composer.startRestartGroup(1986773470);
        ComposerKt.sourceInformation($composer3, "C(InfoSection)N(title,icon,items)970@39436L40,971@39511L38,972@39556L1898,967@39313L2141:ViewPsicologoPrincipal.kt#m19rak");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(title) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(icon) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(items) ? 256 : 128;
        }
        if ($composer3.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1986773470, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.InfoSection (ViewPsicologoPrincipal.kt:966)");
            }
            $composer2 = $composer3;
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(1), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(842471248, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ViewPsicologoPrincipalKt.InfoSection$lambda$99(items, icon, title, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 196614, 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ViewPsicologoPrincipalKt.InfoSection$lambda$100(title, icon, items, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit InfoSection$lambda$99(List $items, ImageVector $icon, String $title, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C973@39566L1882:ViewPsicologoPrincipal.kt#m19rak");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(842471248, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.InfoSection.<anonymous> (ViewPsicologoPrincipal.kt:973)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            String str = "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh";
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            String str2 = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
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
            Composer composer = $composer;
            ComposerKt.sourceInformationMarkerStart(composer, -1367081363, "C978@39694L628,996@40336L40:ViewPsicologoPrincipal.kt#m19rak");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart(composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, centerVertically, composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart(composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((432 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                function02 = constructor2;
                composer.createNode(function02);
            } else {
                function02 = constructor2;
                composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i6 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, 1016415451, "C982@39862L219,988@40098L210:ViewPsicologoPrincipal.kt#m19rak");
            IconKt.m2433Iconww6aTOc($icon, (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), AmaniPsicologoColors.INSTANCE.m10473getPrimary0d7_KjU(), composer, 3504, 0);
            TextKt.m2976Text4IGK_g($title, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 200064, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer, 6);
            composer.startReplaceGroup(925753688);
            ComposerKt.sourceInformation(composer, "*999@40454L970");
            List list = $items;
            int i7 = 0;
            int i8 = 0;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                int i9 = i8 + 1;
                if (i8 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair = (Pair) next;
                String str3 = (String) pair.component1();
                String str4 = (String) pair.component2();
                Iterable iterable = list;
                int i10 = i7;
                Composer composer2 = composer;
                Iterator it2 = it;
                Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(4), 1, null);
                ComposerKt.sourceInformationMarkerStart(composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer2, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, str);
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                CompositionLocalMap currentCompositionLocalMap3 = composer2.getCurrentCompositionLocalMap();
                String str5 = str;
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer2, modifierM820paddingVpY3zN4$default);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int i11 = ((((6 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer2, -553112988, str2);
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    function03 = constructor3;
                    composer2.createNode(function03);
                } else {
                    function03 = constructor3;
                    composer2.useNode();
                }
                Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl(composer2);
                String str6 = str2;
                Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                int i12 = (i11 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                int i13 = ((6 >> 6) & 112) | 6;
                Composer composer3 = composer2;
                ComposerKt.sourceInformationMarkerStart(composer3, 1149428260, "C1004@40632L174,1009@40827L256:ViewPsicologoPrincipal.kt#m19rak");
                TextKt.m2976Text4IGK_g(str3, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10480getTextSecondary0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer2, 3456, 0, 131058);
                String str7 = str4;
                if (str7.length() == 0) {
                    str7 = "No disponible";
                }
                TextKt.m2976Text4IGK_g(str7, (Modifier) null, AmaniPsicologoColors.INSTANCE.m10479getTextPrimary0d7_KjU(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 200064, 0, 131026);
                if (i8 != $items.size() - 1) {
                    composer3.startReplaceGroup(1149909720);
                    ComposerKt.sourceInformation(composer3, "1016@41159L225");
                    DividerKt.m2355HorizontalDivider9IZ8Weo(PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(4), 0.0f, 0.0f, 13, null), Dp.m7505constructorimpl((float) 0.5d), AmaniPsicologoColors.INSTANCE.m10469getAccent0d7_KjU(), composer3, 438, 0);
                    composer3 = composer3;
                } else {
                    composer3.startReplaceGroup(1109096329);
                }
                composer3.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer = composer2;
                it = it2;
                i8 = i9;
                i7 = i10;
                list = iterable;
                str = str5;
                str2 = str6;
            }
            Composer composer4 = composer;
            composer4.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer4);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    private static final int calcularEdadDesdeString(String fechaNacimientoStr) {
        String str = fechaNacimientoStr;
        if (str == null || str.length() == 0) {
            return 0;
        }
        try {
            LocalDate fechaNacimiento = LocalDate.parse(fechaNacimientoStr);
            LocalDate hoy = LocalDate.now();
            return (hoy.getYear() - fechaNacimiento.getYear()) - (hoy.getDayOfYear() >= fechaNacimiento.getDayOfYear() ? 0 : 1);
        } catch (Exception e) {
            return 0;
        }
    }

    private static final boolean esMenorDeEdad(String fechaNacimientoStr) {
        return calcularEdadDesdeString(fechaNacimientoStr) < 18;
    }

    private static final String formatearFechaDesdeString(String fechaStr) {
        String str = fechaStr;
        if (str == null || str.length() == 0) {
            return "No disponible";
        }
        try {
            DateTimeFormatter formatterInput = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate fecha = LocalDate.parse(fechaStr, formatterInput);
            DateTimeFormatter formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            String str2 = fecha.format(formatterOutput);
            Intrinsics.checkNotNull(str2);
            return str2;
        } catch (Exception e) {
            return fechaStr;
        }
    }

    private static final String formatearHoraDesdeString(String horaStr) {
        String str = horaStr;
        if (str == null || str.length() == 0) {
            return "No disponible";
        }
        try {
            DateTimeFormatter formatterInput = DateTimeFormatter.ofPattern("HH:mm:ss");
            LocalTime hora = LocalTime.parse(horaStr, formatterInput);
            DateTimeFormatter formatterOutput = DateTimeFormatter.ofPattern("HH:mm");
            String str2 = hora.format(formatterOutput);
            Intrinsics.checkNotNull(str2);
            return str2;
        } catch (Exception e) {
            return horaStr;
        }
    }

    private static final int calcularDuracionDesdeStrings(String inicioStr, String finStr) {
        String str = inicioStr;
        boolean z = true;
        if (!(str == null || str.length() == 0)) {
            String str2 = finStr;
            if (str2 != null && str2.length() != 0) {
                z = false;
            }
            if (!z) {
                try {
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
                    LocalTime inicio = LocalTime.parse(inicioStr, formatter);
                    LocalTime fin = LocalTime.parse(finStr, formatter);
                    return ((fin.getHour() - inicio.getHour()) * 60) + (fin.getMinute() - inicio.getMinute());
                } catch (Exception e) {
                    return 0;
                }
            }
        }
        return 0;
    }
}
