package org.koin.viewmodel;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BundleExt.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0014\u0010\u0006\u001a\u0010\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0007j\u0002`\b*\u001a\u0010\t\"\b\u0012\u0004\u0012\u0002`\u00030\u00072\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0007¨\u0006\n"}, d2 = {"toExtras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "emptyState", "Lkotlin/Function0;", "Lorg/koin/viewmodel/SavedStateDefinition;", "SavedStateDefinition", "koin-core-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class BundleExtKt {
    public static final CreationExtras toExtras(Bundle $this$toExtras, ViewModelStoreOwner viewModelStoreOwner) {
        Object objM8542constructorimpl;
        Intrinsics.checkNotNullParameter($this$toExtras, "<this>");
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "viewModelStoreOwner");
        Bundle $this$toExtras_u24lambda_u240 = SavedStateReader.m8071constructorimpl($this$toExtras);
        if (SavedStateReader.m8149isEmptyimpl($this$toExtras_u24lambda_u240)) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            MutableCreationExtras extras = new MutableCreationExtras(null, 1, null);
            extras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, $this$toExtras);
            extras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, viewModelStoreOwner);
            extras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, (SavedStateRegistryOwner) viewModelStoreOwner);
            objM8542constructorimpl = Result.m8542constructorimpl(extras);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
        return (CreationExtras) (Result.m8548isFailureimpl(objM8542constructorimpl) ? null : objM8542constructorimpl);
    }

    public static final Function0<Bundle> emptyState() {
        return new Function0() { // from class: org.koin.viewmodel.BundleExtKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BundleExtKt.emptyState$lambda$0();
            }
        };
    }

    static final Bundle emptyState$lambda$0() {
        Pair[] pairs$iv;
        Map initialState$iv = MapsKt.emptyMap();
        if (initialState$iv.isEmpty()) {
            pairs$iv = new Pair[0];
        } else {
            Collection destination$iv$iv$iv = new ArrayList(initialState$iv.size());
            for (Map.Entry item$iv$iv$iv : initialState$iv.entrySet()) {
                String key$iv = (String) item$iv$iv$iv.getKey();
                Object value$iv = item$iv$iv$iv.getValue();
                destination$iv$iv$iv.add(TuplesKt.to(key$iv, value$iv));
            }
            Collection $this$toTypedArray$iv$iv = (List) destination$iv$iv$iv;
            pairs$iv = (Pair[]) $this$toTypedArray$iv$iv.toArray(new Pair[0]);
        }
        Bundle $this$savedState_u24lambda_u241$iv = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairs$iv, pairs$iv.length));
        SavedStateWriter.m8157constructorimpl($this$savedState_u24lambda_u241$iv);
        return $this$savedState_u24lambda_u241$iv;
    }
}
