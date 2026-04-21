package org.koin.androidx.viewmodel.ext.android;

import androidx.activity.ComponentActivity;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.AndroidKoinScopeExtKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: FragmentActivityVM.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ab\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\n\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0010\b\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b2\u0010\b\n\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\bH\u0087\bø\u0001\u0000\u001aa\u0010\u000e\u001a\u0002H\u0002\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\n\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0010\b\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b2\u0010\b\n\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\bH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u000f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"activityViewModel", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "Landroidx/fragment/app/Fragment;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "ownerProducer", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStoreOwner;", "extrasProducer", "Landroidx/lifecycle/viewmodel/CreationExtras;", "parameters", "Lorg/koin/core/parameter/ParametersHolder;", "getActivityViewModel", "(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FragmentActivityVMKt {
    public static /* synthetic */ Lazy activityViewModel$default(final Fragment $this$activityViewModel_u24default, Qualifier qualifier, Function0 ownerProducer, Function0 extrasProducer, Function0 parameters, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        Function0 ownerProducer2 = (i & 2) != 0 ? new Function0<ViewModelStoreOwner>() { // from class: org.koin.androidx.viewmodel.ext.android.FragmentActivityVMKt.activityViewModel.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                FragmentActivity fragmentActivityRequireActivity = $this$activityViewModel_u24default.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                return fragmentActivityRequireActivity;
            }
        } : ownerProducer;
        Function0 extrasProducer2 = (i & 4) != 0 ? null : extrasProducer;
        Function0 parameters2 = (i & 8) != 0 ? null : parameters;
        Intrinsics.checkNotNullParameter($this$activityViewModel_u24default, "<this>");
        Intrinsics.checkNotNullParameter(ownerProducer2, "ownerProducer");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new AnonymousClass2($this$activityViewModel_u24default, qualifier2, ownerProducer2, extrasProducer2, parameters2));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.androidx.viewmodel.ext.android.FragmentActivityVMKt$activityViewModel$2, reason: invalid class name */
    /* JADX INFO: compiled from: FragmentActivityVM.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass2<T> implements Function0<T> {
        final /* synthetic */ Function0<CreationExtras> $extrasProducer;
        final /* synthetic */ Function0<ViewModelStoreOwner> $ownerProducer;
        final /* synthetic */ Function0<ParametersHolder> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ Fragment $this_activityViewModel;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Fragment fragment, Qualifier qualifier, Function0<? extends ViewModelStoreOwner> function0, Function0<? extends CreationExtras> function02, Function0<? extends ParametersHolder> function03) {
            this.$this_activityViewModel = fragment;
            this.$qualifier = qualifier;
            this.$ownerProducer = function0;
            this.$extrasProducer = function02;
            this.$parameters = function03;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModel invoke() {
            CreationExtras defaultViewModelCreationExtras;
            Fragment $this$getActivityViewModel$iv = this.$this_activityViewModel;
            Qualifier qualifier$iv = this.$qualifier;
            Function0<ViewModelStoreOwner> function0 = this.$ownerProducer;
            Function0<CreationExtras> function02 = this.$extrasProducer;
            Function0<ParametersHolder> function03 = this.$parameters;
            ViewModelStoreOwner op$iv = function0.invoke();
            ViewModelStore viewModelStore = op$iv.getViewModelStore();
            if (function02 == null || (defaultViewModelCreationExtras = function02.invoke()) == null) {
                ComponentActivity componentActivity = op$iv instanceof ComponentActivity ? (ComponentActivity) op$iv : null;
                if (componentActivity != null) {
                    defaultViewModelCreationExtras = componentActivity.getDefaultViewModelCreationExtras();
                } else {
                    defaultViewModelCreationExtras = $this$getActivityViewModel$iv.getDefaultViewModelCreationExtras();
                    Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "<get-defaultViewModelCreationExtras>(...)");
                }
            }
            CreationExtras creationExtras = defaultViewModelCreationExtras;
            Scope koinScope = AndroidKoinScopeExtKt.getKoinScope($this$getActivityViewModel$iv);
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return GetViewModelKt.resolveViewModel$default(Reflection.getOrCreateKotlinClass(ViewModel.class), viewModelStore, null, creationExtras, qualifier$iv, koinScope, function03, 4, null);
        }
    }

    public static final /* synthetic */ <T extends ViewModel> Lazy<T> activityViewModel(Fragment $this$activityViewModel, Qualifier qualifier, Function0<? extends ViewModelStoreOwner> ownerProducer, Function0<? extends CreationExtras> function0, Function0<? extends ParametersHolder> function02) {
        Intrinsics.checkNotNullParameter($this$activityViewModel, "<this>");
        Intrinsics.checkNotNullParameter(ownerProducer, "ownerProducer");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new AnonymousClass2($this$activityViewModel, qualifier, ownerProducer, function0, function02));
    }

    public static /* synthetic */ ViewModel getActivityViewModel$default(final Fragment $this$getActivityViewModel_u24default, Qualifier qualifier, Function0 ownerProducer, Function0 extrasProducer, Function0 parameters, int i, Object obj) {
        CreationExtras defaultViewModelCreationExtras;
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        if ((i & 2) != 0) {
            Function0 ownerProducer2 = new Function0<ViewModelStoreOwner>() { // from class: org.koin.androidx.viewmodel.ext.android.FragmentActivityVMKt.getActivityViewModel.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final ViewModelStoreOwner invoke() {
                    FragmentActivity fragmentActivityRequireActivity = $this$getActivityViewModel_u24default.requireActivity();
                    Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                    return fragmentActivityRequireActivity;
                }
            };
            ownerProducer = ownerProducer2;
        }
        if ((i & 4) != 0) {
            extrasProducer = null;
        }
        Function0 parameters2 = (i & 8) != 0 ? null : parameters;
        Intrinsics.checkNotNullParameter($this$getActivityViewModel_u24default, "<this>");
        Intrinsics.checkNotNullParameter(ownerProducer, "ownerProducer");
        ViewModelStoreOwner op = (ViewModelStoreOwner) ownerProducer.invoke();
        ViewModelStore viewModelStore = op.getViewModelStore();
        if (extrasProducer == null || (defaultViewModelCreationExtras = (CreationExtras) extrasProducer.invoke()) == null) {
            ComponentActivity componentActivity = op instanceof ComponentActivity ? (ComponentActivity) op : null;
            if (componentActivity != null) {
                defaultViewModelCreationExtras = componentActivity.getDefaultViewModelCreationExtras();
            } else {
                defaultViewModelCreationExtras = $this$getActivityViewModel_u24default.getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "<get-defaultViewModelCreationExtras>(...)");
            }
        }
        CreationExtras creationExtras = defaultViewModelCreationExtras;
        Scope koinScope = AndroidKoinScopeExtKt.getKoinScope($this$getActivityViewModel_u24default);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return GetViewModelKt.resolveViewModel$default(Reflection.getOrCreateKotlinClass(ViewModel.class), viewModelStore, null, creationExtras, qualifier2, koinScope, parameters2, 4, null);
    }

    public static final /* synthetic */ <T extends ViewModel> T getActivityViewModel(Fragment fragment, Qualifier qualifier, Function0<? extends ViewModelStoreOwner> ownerProducer, Function0<? extends CreationExtras> function0, Function0<? extends ParametersHolder> function02) {
        CreationExtras defaultViewModelCreationExtras;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(ownerProducer, "ownerProducer");
        ViewModelStoreOwner viewModelStoreOwnerInvoke = ownerProducer.invoke();
        ViewModelStore viewModelStore = viewModelStoreOwnerInvoke.getViewModelStore();
        if (function0 == null || (defaultViewModelCreationExtras = function0.invoke()) == null) {
            ComponentActivity componentActivity = viewModelStoreOwnerInvoke instanceof ComponentActivity ? (ComponentActivity) viewModelStoreOwnerInvoke : null;
            if (componentActivity != null) {
                defaultViewModelCreationExtras = componentActivity.getDefaultViewModelCreationExtras();
            } else {
                defaultViewModelCreationExtras = fragment.getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "<get-defaultViewModelCreationExtras>(...)");
            }
        }
        CreationExtras creationExtras = defaultViewModelCreationExtras;
        Scope koinScope = AndroidKoinScopeExtKt.getKoinScope(fragment);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) GetViewModelKt.resolveViewModel$default(Reflection.getOrCreateKotlinClass(ViewModel.class), viewModelStore, null, creationExtras, qualifier, koinScope, function02, 4, null);
    }
}
