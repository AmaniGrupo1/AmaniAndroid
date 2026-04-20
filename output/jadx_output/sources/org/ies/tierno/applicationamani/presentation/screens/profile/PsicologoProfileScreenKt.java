package org.ies.tierno.applicationamani.presentation.screens.profile;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
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
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.BadgeKt;
import androidx.compose.material.icons.filled.ErrorKt;
import androidx.compose.material.icons.filled.TimelineKt;
import androidx.compose.material.icons.filled.WorkKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import coil.compose.SingletonAsyncImageKt;
import coil.request.ImageRequest;
import com.google.firebase.firestore.model.Values;
import com.google.logging.type.LogSeverity;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.R;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.UsuarioProfileResponseDTO;
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: PsicologoProfileScreen.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001a)\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\rH\u0007¢\u0006\u0002\u0010\u000f\u001a%\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0016\u001a#\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00142\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00010\u001aH\u0007¢\u0006\u0002\u0010\u001b¨\u0006\u001c²\u0006\f\u0010\n\u001a\u0004\u0018\u00010\u000bX\u008a\u0084\u0002²\u0006\n\u0010\u001d\u001a\u00020\u001eX\u008a\u0084\u0002²\u0006\f\u0010\u0018\u001a\u0004\u0018\u00010\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u001f\u001a\u00020\u001eX\u008a\u008e\u0002"}, d2 = {"PsicologoProfileScreen", "", "psicologoId", "", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;", "(JLandroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/Composer;II)V", "ProfileContent", "perfil", "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;", "onPhotoUpload", "Lkotlin/Function1;", "Landroid/net/Uri;", "(Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "InfoRow", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "label", "", Values.VECTOR_MAP_VECTORS_KEY, "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "ErrorContent", "error", "onRetry", "Lkotlin/Function0;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "app", "isLoading", "", "showOptions"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class PsicologoProfileScreenKt {
    static final Unit ErrorContent$lambda$49(String str, Function0 function0, int i, Composer composer, int i2) {
        ErrorContent(str, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit InfoRow$lambda$47(ImageVector imageVector, String str, String str2, int i, Composer composer, int i2) {
        InfoRow(imageVector, str, str2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$44(PsicologoProfileResponseDTO psicologoProfileResponseDTO, Function1 function1, int i, Composer composer, int i2) {
        ProfileContent(psicologoProfileResponseDTO, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PsicologoProfileScreen$lambda$12(long j, NavController navController, ProfilePsicologoViewModel profilePsicologoViewModel, int i, int i2, Composer composer, int i3) {
        PsicologoProfileScreen(j, navController, profilePsicologoViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PsicologoProfileScreen(final long psicologoId, final NavController navController, ProfilePsicologoViewModel viewModel, Composer $composer, final int $changed, final int i) {
        final ProfilePsicologoViewModel viewModel2;
        Composer $composer2;
        int $dirty;
        boolean zChangedInstance;
        State perfil$delegate;
        String strPsicologoProfileScreen$lambda$2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(-981189773);
        ComposerKt.sourceInformation($composer3, "C(PsicologoProfileScreen)N(psicologoId,navController,viewModel)80@3610L16,81@3668L16,82@3718L16,85@3793L51,85@3772L72,116@4733L791,96@3992L1532:PsicologoProfileScreen.kt#p875pu");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(psicologoId) ? 4 : 2;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                viewModel2 = viewModel;
                int i2 = $composer3.changedInstance(viewModel2) ? 256 : 128;
                $dirty2 |= i2;
            } else {
                viewModel2 = viewModel;
            }
            $dirty2 |= i2;
        } else {
            viewModel2 = viewModel;
        }
        if ($composer3.shouldExecute(($dirty2 & 131) != 130, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "78@3555L15");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
            } else {
                if ((i & 4) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -924953623, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)48@1587L7,51@1782L18:ViewModel.kt#7bazx");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ProfilePsicologoViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer3, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    viewModel2 = (ProfilePsicologoViewModel) viewModelResolveViewModel;
                    $dirty = $dirty2 & (-897);
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-981189773, $dirty, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreen (PsicologoProfileScreen.kt:79)");
                }
                State perfil$delegate2 = SnapshotStateKt.collectAsState(viewModel2.getPerfil(), null, $composer3, 0, 1);
                final State isLoading$delegate = SnapshotStateKt.collectAsState(viewModel2.isLoading(), null, $composer3, 0, 1);
                final State error$delegate = SnapshotStateKt.collectAsState(viewModel2.getError(), null, $composer3, 0, 1);
                Unit unit = Unit.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 1969446694, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
                zChangedInstance = (($dirty & 14) != 4) | $composer3.changedInstance(viewModel2);
                Object objRememberedValue = $composer3.rememberedValue();
                if (zChangedInstance) {
                    perfil$delegate = perfil$delegate2;
                    if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer3, 6);
                    strPsicologoProfileScreen$lambda$2 = PsicologoProfileScreen$lambda$2(error$delegate);
                    if (strPsicologoProfileScreen$lambda$2 == null) {
                        $composer3.startReplaceGroup(923401068);
                    } else {
                        $composer3.startReplaceGroup(923401069);
                        ComposerKt.sourceInformation($composer3, "*91@3921L59,91@3902L78");
                        ComposerKt.sourceInformationMarkerStart($composer3, -1542753076, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
                        Object objRememberedValue2 = $composer3.rememberedValue();
                        if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                            Object obj = (Function2) new PsicologoProfileScreenKt$PsicologoProfileScreen$2$1$1(null);
                            $composer3.updateRememberedValue(obj);
                            objRememberedValue2 = obj;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        EffectsKt.LaunchedEffect(strPsicologoProfileScreen$lambda$2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue2, $composer3, 0);
                    }
                    $composer3.endReplaceGroup();
                    final ProfilePsicologoViewModel viewModel3 = viewModel2;
                    final State perfil$delegate3 = perfil$delegate;
                    $composer2 = $composer3;
                    ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$2142114863$app(), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(1572603012, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj2, Object obj3, Object obj4) {
                            return PsicologoProfileScreenKt.PsicologoProfileScreen$lambda$11(viewModel3, psicologoId, isLoading$delegate, perfil$delegate3, error$delegate, (PaddingValues) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                        }
                    }, $composer3, 54), $composer2, 805306416, 509);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    viewModel2 = viewModel3;
                } else {
                    perfil$delegate = perfil$delegate2;
                }
                Object obj2 = (Function2) new PsicologoProfileScreenKt$PsicologoProfileScreen$1$1(viewModel2, psicologoId, null);
                $composer3.updateRememberedValue(obj2);
                objRememberedValue = obj2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer3, 6);
                strPsicologoProfileScreen$lambda$2 = PsicologoProfileScreen$lambda$2(error$delegate);
                if (strPsicologoProfileScreen$lambda$2 == null) {
                }
                $composer3.endReplaceGroup();
                final ProfilePsicologoViewModel viewModel32 = viewModel2;
                final State perfil$delegate32 = perfil$delegate;
                $composer2 = $composer3;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$2142114863$app(), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(1572603012, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj22, Object obj3, Object obj4) {
                        return PsicologoProfileScreenKt.PsicologoProfileScreen$lambda$11(viewModel32, psicologoId, isLoading$delegate, perfil$delegate32, error$delegate, (PaddingValues) obj22, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer3, 54), $composer2, 805306416, 509);
                if (ComposerKt.isTraceInProgress()) {
                }
                viewModel2 = viewModel32;
            }
            $dirty = $dirty2;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            State perfil$delegate22 = SnapshotStateKt.collectAsState(viewModel2.getPerfil(), null, $composer3, 0, 1);
            final State isLoading$delegate2 = SnapshotStateKt.collectAsState(viewModel2.isLoading(), null, $composer3, 0, 1);
            final State error$delegate2 = SnapshotStateKt.collectAsState(viewModel2.getError(), null, $composer3, 0, 1);
            Unit unit2 = Unit.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer3, 1969446694, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            zChangedInstance = (($dirty & 14) != 4) | $composer3.changedInstance(viewModel2);
            Object objRememberedValue3 = $composer3.rememberedValue();
            if (zChangedInstance) {
            }
            Object obj22 = (Function2) new PsicologoProfileScreenKt$PsicologoProfileScreen$1$1(viewModel2, psicologoId, null);
            $composer3.updateRememberedValue(obj22);
            objRememberedValue3 = obj22;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(unit2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue3, $composer3, 6);
            strPsicologoProfileScreen$lambda$2 = PsicologoProfileScreen$lambda$2(error$delegate2);
            if (strPsicologoProfileScreen$lambda$2 == null) {
            }
            $composer3.endReplaceGroup();
            final ProfilePsicologoViewModel viewModel322 = viewModel2;
            final State perfil$delegate322 = perfil$delegate;
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$2142114863$app(), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(1572603012, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj222, Object obj3, Object obj4) {
                    return PsicologoProfileScreenKt.PsicologoProfileScreen$lambda$11(viewModel322, psicologoId, isLoading$delegate2, perfil$delegate322, error$delegate2, (PaddingValues) obj222, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer3, 54), $composer2, 805306416, 509);
            if (ComposerKt.isTraceInProgress()) {
            }
            viewModel2 = viewModel322;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return PsicologoProfileScreenKt.PsicologoProfileScreen$lambda$12(psicologoId, navController, viewModel2, $changed, i, (Composer) obj3, ((Integer) obj4).intValue());
                }
            });
        }
    }

    private static final PsicologoProfileResponseDTO PsicologoProfileScreen$lambda$0(State<PsicologoProfileResponseDTO> state) {
        return (PsicologoProfileResponseDTO) state.getValue();
    }

    private static final boolean PsicologoProfileScreen$lambda$1(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final String PsicologoProfileScreen$lambda$2(State<String> state) {
        return (String) state.getValue();
    }

    static final Unit PsicologoProfileScreen$lambda$11(final ProfilePsicologoViewModel $viewModel, final long $psicologoId, State $isLoading$delegate, State $perfil$delegate, State $error$delegate, PaddingValues paddingValues, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        ComposerKt.sourceInformation($composer, "CN(paddingValues)117@4760L758:PsicologoProfileScreen.kt#p875pu");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(paddingValues) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1572603012, $dirty, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreen.<anonymous> (PsicologoProfileScreen.kt:117)");
            }
            Modifier modifierPadding = PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), paddingValues);
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
            int i3 = ((0 >> 6) & 112) | 6;
            BoxScope boxScope = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1361855855, "C:PsicologoProfileScreen.kt#p875pu");
            if (PsicologoProfileScreen$lambda$1($isLoading$delegate)) {
                $composer.startReplaceGroup(-1361855732);
                ComposerKt.sourceInformation($composer, "123@4925L108");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(boxScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenter()), 0L, 0.0f, 0L, 0, $composer, 0, 30);
                $composer.endReplaceGroup();
            } else if (PsicologoProfileScreen$lambda$0($perfil$delegate) != null) {
                $composer.startReplaceGroup(-1361687960);
                ComposerKt.sourceInformation($composer, "129@5182L99,127@5091L208");
                PsicologoProfileResponseDTO psicologoProfileResponseDTOPsicologoProfileScreen$lambda$0 = PsicologoProfileScreen$lambda$0($perfil$delegate);
                Intrinsics.checkNotNull(psicologoProfileResponseDTOPsicologoProfileScreen$lambda$0);
                ComposerKt.sourceInformationMarkerStart($composer, 94625261, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
                boolean zChangedInstance = $composer.changedInstance($viewModel) | $composer.changed($psicologoId);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda11
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PsicologoProfileScreenKt.PsicologoProfileScreen$lambda$11$lambda$10$lambda$7$lambda$6($viewModel, $psicologoId, (Uri) obj);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue);
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                ProfileContent(psicologoProfileResponseDTOPsicologoProfileScreen$lambda$0, (Function1) objRememberedValue, $composer, 0);
                $composer.endReplaceGroup();
            } else {
                if (PsicologoProfileScreen$lambda$2($error$delegate) != null) {
                    $composer.startReplaceGroup(-1361427250);
                    ComposerKt.sourceInformation($composer, "136@5437L39,134@5356L138");
                    String strPsicologoProfileScreen$lambda$2 = PsicologoProfileScreen$lambda$2($error$delegate);
                    Intrinsics.checkNotNull(strPsicologoProfileScreen$lambda$2);
                    ComposerKt.sourceInformationMarkerStart($composer, 94633361, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
                    boolean zChangedInstance2 = $composer.changedInstance($viewModel) | $composer.changed($psicologoId);
                    Object objRememberedValue2 = $composer.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PsicologoProfileScreenKt.PsicologoProfileScreen$lambda$11$lambda$10$lambda$9$lambda$8($viewModel, $psicologoId);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue2);
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ErrorContent(strPsicologoProfileScreen$lambda$2, (Function0) objRememberedValue2, $composer, 0);
                } else {
                    $composer.startReplaceGroup(-1366728808);
                }
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

    static final Unit PsicologoProfileScreen$lambda$11$lambda$10$lambda$7$lambda$6(ProfilePsicologoViewModel $viewModel, long $psicologoId, Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        $viewModel.uploadFotoPerfil($psicologoId, uri);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoProfileScreen$lambda$11$lambda$10$lambda$9$lambda$8(ProfilePsicologoViewModel $viewModel, long $psicologoId) {
        $viewModel.fetchProfile($psicologoId);
        return Unit.INSTANCE;
    }

    public static final void ProfileContent(final PsicologoProfileResponseDTO perfil, final Function1<? super Uri, Unit> onPhotoUpload, Composer $composer, final int $changed) {
        int i;
        int $dirty;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Object obj;
        Intrinsics.checkNotNullParameter(perfil, "perfil");
        Intrinsics.checkNotNullParameter(onPhotoUpload, "onPhotoUpload");
        Composer $composer2 = $composer.startRestartGroup(1160620019);
        ComposerKt.sourceInformation($composer2, "C(ProfileContent)N(perfil,onPhotoUpload)148@5712L7,149@5743L34,154@5939L79,152@5842L176,163@6189L390,161@6084L495,177@6676L21,174@6585L6515:PsicologoProfileScreen.kt#p875pu");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(perfil) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(onPhotoUpload) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1160620019, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.ProfileContent (PsicologoProfileScreen.kt:147)");
            }
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final Context context = (Context) objConsume;
            ComposerKt.sourceInformationMarkerStart($composer2, -1335651787, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            Object objRememberedValue = $composer2.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                i = 0;
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue = objMutableStateOf$default;
            } else {
                i = 0;
            }
            final MutableState showOptions$delegate = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ActivityResultContracts.GetContent getContent = new ActivityResultContracts.GetContent();
            ComposerKt.sourceInformationMarkerStart($composer2, -1335645470, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            int i2 = ($dirty2 & 112) == 32 ? 1 : i;
            Object objRememberedValue2 = $composer2.rememberedValue();
            if (i2 != 0 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$18$lambda$17(onPhotoUpload, (Uri) obj3);
                    }
                };
                $composer2.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ManagedActivityResultLauncher galleryLauncher = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent, (Function1) objRememberedValue2, $composer2, i);
            ActivityResultContracts.TakePicturePreview takePicturePreview = new ActivityResultContracts.TakePicturePreview();
            ComposerKt.sourceInformationMarkerStart($composer2, -1335637159, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            boolean zChangedInstance = $composer2.changedInstance(context) | (($dirty2 & 112) == 32);
            Object objRememberedValue3 = $composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                $dirty = $dirty2;
                Object obj3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$22$lambda$21(context, onPhotoUpload, (Bitmap) obj4);
                    }
                };
                $composer2.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            } else {
                $dirty = $dirty2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ManagedActivityResultLauncher cameraLauncher = ActivityResultRegistryKt.rememberLauncherForActivityResult(takePicturePreview, (Function1) objRememberedValue3, $composer2, 0);
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ScrollKt.rememberScrollState(0, $composer2, 0, 1), false, null, false, 14, null), Dp.m7505constructorimpl(16));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i3 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((i3 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function0 = constructor;
                $composer2.createNode(function0);
            } else {
                function0 = constructor;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -776155028, "C187@7036L38,189@7169L11,188@7110L92,191@7213L2584,182@6840L2957,259@9980L38,261@10113L11,260@10054L92,263@10157L1974,256@9842L2289,321@12141L41,324@12221L873:PsicologoProfileScreen.kt#p875pu");
            CardKt.Card(PaddingKt.m822paddingqDBjuR0$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(24), 7, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface(), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer2, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(1558551515, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj4, Object obj5, Object obj6) {
                    return PsicologoProfileScreenKt.ProfileContent$lambda$35$lambda$27(perfil, showOptions$delegate, (ColumnScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer2, 54), $composer2, 196614, 16);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface(), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer2, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(177721106, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj4, Object obj5, Object obj6) {
                    return PsicologoProfileScreenKt.ProfileContent$lambda$35$lambda$29(perfil, (ColumnScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer2, 54), $composer2, 196614, 16);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer2, 6);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer2, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i7 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function02 = constructor2;
                $composer2.createNode(function02);
            } else {
                function02 = constructor2;
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i8 = (i7 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i9 = ((54 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer2, 320814020, "C329@12404L23,328@12362L356,339@12766L23,338@12732L352:PsicologoProfileScreen.kt#p875pu");
            ComposerKt.sourceInformationMarkerStart($composer2, -266745180, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            Object objRememberedValue4 = $composer2.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object obj4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer2.updateRememberedValue(obj4);
                objRememberedValue4 = obj4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ButtonKt.OutlinedButton((Function0) objRememberedValue4, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), null, null, null, null, null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.m10401getLambda$369453889$app(), $composer2, 805306374, LogSeverity.ERROR_VALUE);
            ComposerKt.sourceInformationMarkerStart($composer2, -266733596, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            Object objRememberedValue5 = $composer2.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                Object obj5 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer2.updateRememberedValue(obj5);
                obj = obj5;
            } else {
                obj = objRememberedValue5;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ButtonKt.Button((Function0) obj, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), null, null, null, null, null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$356996797$app(), $composer2, 805306374, LogSeverity.ERROR_VALUE);
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
            if (ProfileContent$lambda$14(showOptions$delegate)) {
                $composer2.startReplaceGroup(1551853067);
                ComposerKt.sourceInformation($composer2, "353@13217L23,356@13414L273,366@13717L266,352@13173L820");
                ComposerKt.sourceInformationMarkerStart($composer2, -1335412630, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
                Object objRememberedValue6 = $composer2.rememberedValue();
                if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                    Object obj6 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoProfileScreenKt.ProfileContent$lambda$37$lambda$36(showOptions$delegate);
                        }
                    };
                    $composer2.updateRememberedValue(obj6);
                    objRememberedValue6 = obj6;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0((Function0) objRememberedValue6, ComposableLambdaKt.rememberComposableLambda(-109108218, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj7, Object obj8) {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$40(galleryLauncher, showOptions$delegate, (Composer) obj7, ((Integer) obj8).intValue());
                    }
                }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(-357076412, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj7, Object obj8) {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$43(cameraLauncher, showOptions$delegate, (Composer) obj7, ((Integer) obj8).intValue());
                    }
                }, $composer2, 54), null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.m10402getLambda$605044606$app(), ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$1418454945$app(), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer2, 1772598, 0, 16276);
                $composer2 = $composer2;
            } else {
                $composer2.startReplaceGroup(1538768463);
            }
            $composer2.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj7, Object obj8) {
                    return PsicologoProfileScreenKt.ProfileContent$lambda$44(perfil, onPhotoUpload, $changed, (Composer) obj7, ((Integer) obj8).intValue());
                }
            });
        }
    }

    private static final boolean ProfileContent$lambda$14(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void ProfileContent$lambda$15(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit ProfileContent$lambda$18$lambda$17(Function1 $onPhotoUpload, Uri uri) {
        if (uri != null) {
            $onPhotoUpload.invoke(uri);
        }
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$22$lambda$21(Context $context, Function1 $onPhotoUpload, Bitmap bitmap) {
        if (bitmap != null) {
            File file = new File($context.getCacheDir(), "profile_photo_" + System.currentTimeMillis() + ".jpg");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
                CloseableKt.closeFinally(fileOutputStream, null);
                Uri uriFromFile = Uri.fromFile(file);
                Intrinsics.checkNotNullExpressionValue(uriFromFile, "fromFile(...)");
                $onPhotoUpload.invoke(uriFromFile);
            } finally {
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$35$lambda$27(PsicologoProfileResponseDTO $perfil, final MutableState $showOptions$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        String email;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C192@7227L2560:PsicologoProfileScreen.kt#p875pu");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1558551515, $changed, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.ProfileContent.<anonymous>.<anonymous> (PsicologoProfileScreen.kt:192)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(20));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 54472824, "C202@7628L11,198@7443L287,207@7784L1522,240@9324L256,247@9598L175:PsicologoProfileScreen.kt#p875pu");
            TextKt.m2976Text4IGK_g("Foto de Perfil", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(16), 7, null), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199734, 0, 131024);
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(120));
            Alignment bottomEnd = Alignment.INSTANCE.getBottomEnd();
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(bottomEnd, false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierM864size3ABfNKs);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((54 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i6 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1727141002, "C212@8020L7,223@8612L11,211@7942L845,231@8911L22,233@9047L11,230@8855L433:PsicologoProfileScreen.kt#p875pu");
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ImageRequest.Builder builder = new ImageRequest.Builder((Context) objConsume);
            UsuarioProfileResponseDTO usuario = $perfil.getUsuario();
            SingletonAsyncImageKt.m8241AsyncImagegl8XCv8(builder.data(usuario != null ? usuario.getFotoPerfilUrl() : null).crossfade(true).error(R.drawable.ic_default_avatar).placeholder(R.drawable.ic_default_avatar).build(), "Foto de perfil", BorderKt.border(ClipKt.clip(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.getCircleShape()), BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(3), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary()), RoundedCornerShapeKt.getCircleShape()), null, null, null, ContentScale.INSTANCE.getCrop(), 0.0f, null, 0, false, null, $composer, 1572912, 0, 4024);
            ComposerKt.sourceInformationMarkerStart($composer, -775540083, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$35$lambda$27$lambda$26$lambda$25$lambda$24$lambda$23($showOptions$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            FloatingActionButtonKt.m2408FloatingActionButtonXz6DiA((Function0) objRememberedValue, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(40)), null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), Color.INSTANCE.m4734getWhite0d7_KjU(), null, null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.m10399getLambda$1136866855$app(), $composer, 12607542, 100);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            UsuarioProfileResponseDTO usuario2 = $perfil.getUsuario();
            String nombre = usuario2 != null ? usuario2.getNombre() : null;
            UsuarioProfileResponseDTO usuario3 = $perfil.getUsuario();
            TextKt.m2976Text4IGK_g(nombre + " " + (usuario3 != null ? usuario3.getApellido() : null), PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(12), 0.0f, 0.0f, 13, null), 0L, TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199728, 0, 131028);
            UsuarioProfileResponseDTO usuario4 = $perfil.getUsuario();
            if (usuario4 == null || (email = usuario4.getEmail()) == null) {
                email = "Email no disponible";
            }
            TextKt.m2976Text4IGK_g(email, (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 0, 131058);
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

    static final Unit ProfileContent$lambda$35$lambda$27$lambda$26$lambda$25$lambda$24$lambda$23(MutableState $showOptions$delegate) {
        ProfileContent$lambda$15($showOptions$delegate, true);
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$35$lambda$29(PsicologoProfileResponseDTO $perfil, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C264@10171L1950:PsicologoProfileScreen.kt#p875pu");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(177721106, $changed, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.ProfileContent.<anonymous>.<anonymous> (PsicologoProfileScreen.kt:264)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(20));
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
            ComposerKt.sourceInformationMarkerStart($composer, 69104063, "C273@10513L11,269@10319L296,278@10665L186,284@10869L41,287@10959L232,293@11209L41,296@11296L189,302@11503L41,309@11773L11,305@11593L217,311@11827L40,312@11884L223:PsicologoProfileScreen.kt#p875pu");
            TextKt.m2976Text4IGK_g("Información Profesional", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(16), 7, null), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199734, 0, 131024);
            ImageVector work = WorkKt.getWork(Icons.INSTANCE.getDefault());
            String especialidad = $perfil.getEspecialidad();
            if (especialidad == null) {
                especialidad = "No especificada";
            }
            InfoRow(work, "Especialidad", especialidad, $composer, 48);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            InfoRow(TimelineKt.getTimeline(Icons.INSTANCE.getDefault()), "Experiencia", $perfil.getExperiencia() != null ? $perfil.getExperiencia() + " años" : "No especificada", $composer, 48);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            ImageVector badge = BadgeKt.getBadge(Icons.INSTANCE.getDefault());
            String licencia = $perfil.getLicencia();
            if (licencia == null) {
                licencia = "No especificada";
            }
            InfoRow(badge, "Número de Licencia", licencia, $composer, 48);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            TextKt.m2976Text4IGK_g("Descripción", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131026);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            String descripcion = $perfil.getDescripcion();
            if (descripcion == null) {
                descripcion = "Sin descripción disponible";
            }
            TextKt.m2976Text4IGK_g(descripcion, (Modifier) null, Color.INSTANCE.m4726getDarkGray0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(20), 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 6, 130034);
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

    static final Unit ProfileContent$lambda$37$lambda$36(MutableState $showOptions$delegate) {
        ProfileContent$lambda$15($showOptions$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$40(final ManagedActivityResultLauncher $galleryLauncher, final MutableState $showOptions$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C358@13474L125,357@13432L241:PsicologoProfileScreen.kt#p875pu");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-109108218, $changed, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.ProfileContent.<anonymous> (PsicologoProfileScreen.kt:357)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -1773780349, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($galleryLauncher);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$40$lambda$39$lambda$38($galleryLauncher, $showOptions$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$579668777$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$40$lambda$39$lambda$38(ManagedActivityResultLauncher $galleryLauncher, MutableState $showOptions$delegate) {
        ProfileContent$lambda$15($showOptions$delegate, false);
        $galleryLauncher.launch("image/*");
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$43(final ManagedActivityResultLauncher $cameraLauncher, final MutableState $showOptions$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C368@13777L119,367@13735L234:PsicologoProfileScreen.kt#p875pu");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-357076412, $changed, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.ProfileContent.<anonymous> (PsicologoProfileScreen.kt:367)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 446953787, "CC(remember):PsicologoProfileScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($cameraLauncher);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoProfileScreenKt.ProfileContent$lambda$43$lambda$42$lambda$41($cameraLauncher, $showOptions$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.getLambda$331700583$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ProfileContent$lambda$43$lambda$42$lambda$41(ManagedActivityResultLauncher $cameraLauncher, MutableState $showOptions$delegate) {
        ProfileContent$lambda$15($showOptions$delegate, false);
        $cameraLauncher.launch(null);
        return Unit.INSTANCE;
    }

    public static final void InfoRow(final ImageVector icon, final String label, String value, Composer $composer, final int $changed) {
        final String str;
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(value, "value");
        Composer $composer3 = $composer.startRestartGroup(-2076531820);
        ComposerKt.sourceInformation($composer3, "C(InfoRow)N(icon,label,value)386@14132L660:PsicologoProfileScreen.kt#p875pu");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(icon) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(label) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(value) ? 256 : 128;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            str = value;
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2076531820, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.InfoRow (PsicologoProfileScreen.kt:385)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 179669437, "C393@14362L11,390@14252L184,396@14445L40,397@14494L292:PsicologoProfileScreen.kt#p875pu");
            IconKt.m2433Iconww6aTOc(icon, (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getPrimary(), $composer3, ($dirty2 & 14) | 432, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer3, 6);
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer3, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                $composer3.createNode(constructor2);
            } else {
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
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1074689060, "C398@14515L118,403@14646L130:PsicologoProfileScreen.kt#p875pu");
            $composer2 = $composer3;
            TextKt.m2976Text4IGK_g(label, (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 3) & 14) | 3456, 0, 131058);
            str = value;
            TextKt.m2976Text4IGK_g(str, (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 6) & 14) | 199680, 0, 131030);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoProfileScreenKt.InfoRow$lambda$47(icon, label, str, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void ErrorContent(String error, Function0<Unit> onRetry, Composer $composer, final int $changed) {
        final String str;
        final Function0<Unit> function0;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(onRetry, "onRetry");
        Composer $composer3 = $composer.startRestartGroup(553505474);
        ComposerKt.sourceInformation($composer3, "C(ErrorContent)N(error,onRetry)417@14877L1161:PsicologoProfileScreen.kt#p875pu");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(error) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(onRetry) ? 32 : 16;
        }
        if (!$composer3.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            str = error;
            function0 = onRetry;
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(553505474, $dirty, -1, "org.ies.tierno.applicationamani.presentation.screens.profile.ErrorContent (PsicologoProfileScreen.kt:416)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.Vertical center = Arrangement.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                $composer3.createNode(constructor);
            } else {
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
            int i3 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -2022294579, "C428@15264L11,424@15094L197,430@15300L41,431@15350L134,436@15493L40,437@15542L175,443@15726L41,444@15776L256:PsicologoProfileScreen.kt#p875pu");
            IconKt.m2433Iconww6aTOc(ErrorKt.getError(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(64)), MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getError(), $composer3, 432, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer3, 6);
            TextKt.m2976Text4IGK_g("Error al cargar el perfil", (Modifier) null, 0L, TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 199686, 0, 131030);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer3, 6);
            int $dirty2 = $dirty;
            $composer2 = $composer3;
            TextKt.m2976Text4IGK_g(error, (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, ($dirty2 & 14) | 3456, 0, 130546);
            str = error;
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer3, 6);
            function0 = onRetry;
            ButtonKt.Button(function0, null, false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), null, null, null, null, null, ComposableSingletons$PsicologoProfileScreenKt.INSTANCE.m10400getLambda$2067405028$app(), $composer3, (($dirty2 >> 3) & 14) | 805306368, 502);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoProfileScreenKt.ErrorContent$lambda$49(str, function0, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
