package org.ies.tierno.applicationamani.presentation.viewmodels;

import androidx.lifecycle.ViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: PrincipalClienteViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "especialidades", "", "", "getEspecialidades", "()Ljava/util/List;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class PrincipalClienteViewModel extends ViewModel {
    public static final int $stable = 8;
    private final List<String> especialidades = CollectionsKt.listOf((Object[]) new String[]{"Especialidad 1", "Especialidad 2", "Especialidad 3", "Especialidad 4"});

    public final List<String> getEspecialidades() {
        return this.especialidades;
    }
}
