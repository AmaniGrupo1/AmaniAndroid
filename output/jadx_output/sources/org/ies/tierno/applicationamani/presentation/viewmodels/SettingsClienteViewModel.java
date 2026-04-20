package org.ies.tierno.applicationamani.presentation.viewmodels;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.User;

/* JADX INFO: compiled from: SettingsClienteViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\"R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR+\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u000e\u0010\b\"\u0004\b\u000f\u0010\nR+\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0014\u0010\f\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR+\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0018\u0010\f\u001a\u0004\b\u0016\u0010\b\"\u0004\b\u0017\u0010\nR+\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\f\u001a\u0004\b\u001a\u0010\b\"\u0004\b\u001b\u0010\nR+\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b \u0010\f\u001a\u0004\b\u001e\u0010\b\"\u0004\b\u001f\u0010\n¨\u0006%"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "<set-?>", "", "nombre", "getNombre", "()Ljava/lang/String;", "setNombre", "(Ljava/lang/String;)V", "nombre$delegate", "Landroidx/compose/runtime/MutableState;", "apellidos", "getApellidos", "setApellidos", "apellidos$delegate", "genero", "getGenero", "setGenero", "genero$delegate", "direccion", "getDireccion", "setDireccion", "direccion$delegate", "telefono", "getTelefono", "setTelefono", "telefono$delegate", "codigoPostal", "getCodigoPostal", "setCodigoPostal", "codigoPostal$delegate", "cargarUsuario", "", "guardarUsuario", "borrarCuenta", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SettingsClienteViewModel extends ViewModel {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: nombre$delegate, reason: from kotlin metadata */
    private final MutableState nombre = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);

    /* JADX INFO: renamed from: apellidos$delegate, reason: from kotlin metadata */
    private final MutableState apellidos = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);

    /* JADX INFO: renamed from: genero$delegate, reason: from kotlin metadata */
    private final MutableState genero = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);

    /* JADX INFO: renamed from: direccion$delegate, reason: from kotlin metadata */
    private final MutableState direccion = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);

    /* JADX INFO: renamed from: telefono$delegate, reason: from kotlin metadata */
    private final MutableState telefono = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);

    /* JADX INFO: renamed from: codigoPostal$delegate, reason: from kotlin metadata */
    private final MutableState codigoPostal = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);

    public final String getNombre() {
        return (String) this.nombre.getValue();
    }

    public final void setNombre(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nombre.setValue(str);
    }

    public final String getApellidos() {
        return (String) this.apellidos.getValue();
    }

    public final void setApellidos(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.apellidos.setValue(str);
    }

    public final String getGenero() {
        return (String) this.genero.getValue();
    }

    public final void setGenero(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.genero.setValue(str);
    }

    public final String getDireccion() {
        return (String) this.direccion.getValue();
    }

    public final void setDireccion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.direccion.setValue(str);
    }

    public final String getTelefono() {
        return (String) this.telefono.getValue();
    }

    public final void setTelefono(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.telefono.setValue(str);
    }

    public final String getCodigoPostal() {
        return (String) this.codigoPostal.getValue();
    }

    public final void setCodigoPostal(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.codigoPostal.setValue(str);
    }

    public final void cargarUsuario() {
        User usuario = new User("Nombre", "Apellidos", "No se", "Calle Falsa 123", "123456789", "28001");
        setNombre(usuario.getNombre());
        setApellidos(usuario.getApellidos());
        setGenero(usuario.getGenero());
        setDireccion(usuario.getDireccion());
        setTelefono(usuario.getTelefono());
        setCodigoPostal(usuario.getCodigoPostal());
    }

    public final void guardarUsuario() {
        new User(getNombre(), getApellidos(), getGenero(), getDireccion(), getTelefono(), getCodigoPostal());
    }

    public final void borrarCuenta() {
    }
}
