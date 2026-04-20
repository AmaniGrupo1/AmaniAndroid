.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SettingsClienteViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsClienteViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsClienteViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,85:1\n85#2:86\n117#2,2:87\n85#2:89\n117#2,2:90\n85#2:92\n117#2,2:93\n85#2:95\n117#2,2:96\n85#2:98\n117#2,2:99\n85#2:101\n117#2,2:102\n*S KotlinDebug\n*F\n+ 1 SettingsClienteViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel\n*L\n22#1:86\n22#1:87,2\n24#1:89\n24#1:90,2\n26#1:92\n26#1:93,2\n28#1:95\n28#1:96,2\n30#1:98\n30#1:99,2\n32#1:101\n32#1:102,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u001c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\"R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR+\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\nR+\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR+\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u0008\"\u0004\u0008\u0017\u0010\nR+\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u000c\u001a\u0004\u0008\u001a\u0010\u0008\"\u0004\u0008\u001b\u0010\nR+\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u000c\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\n\u00a8\u0006%"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "nombre",
        "getNombre",
        "()Ljava/lang/String;",
        "setNombre",
        "(Ljava/lang/String;)V",
        "nombre$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "apellidos",
        "getApellidos",
        "setApellidos",
        "apellidos$delegate",
        "genero",
        "getGenero",
        "setGenero",
        "genero$delegate",
        "direccion",
        "getDireccion",
        "setDireccion",
        "direccion$delegate",
        "telefono",
        "getTelefono",
        "setTelefono",
        "telefono$delegate",
        "codigoPostal",
        "getCodigoPostal",
        "setCodigoPostal",
        "codigoPostal$delegate",
        "cargarUsuario",
        "",
        "guardarUsuario",
        "borrarCuenta",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final apellidos$delegate:Landroidx/compose/runtime/MutableState;

.field private final codigoPostal$delegate:Landroidx/compose/runtime/MutableState;

.field private final direccion$delegate:Landroidx/compose/runtime/MutableState;

.field private final genero$delegate:Landroidx/compose/runtime/MutableState;

.field private final nombre$delegate:Landroidx/compose/runtime/MutableState;

.field private final telefono$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->nombre$delegate:Landroidx/compose/runtime/MutableState;

    .line 24
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->apellidos$delegate:Landroidx/compose/runtime/MutableState;

    .line 26
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->genero$delegate:Landroidx/compose/runtime/MutableState;

    .line 28
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->direccion$delegate:Landroidx/compose/runtime/MutableState;

    .line 30
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->telefono$delegate:Landroidx/compose/runtime/MutableState;

    .line 32
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->codigoPostal$delegate:Landroidx/compose/runtime/MutableState;

    .line 19
    return-void
.end method


# virtual methods
.method public final borrarCuenta()V
    .locals 0

    .line 84
    return-void
.end method

.method public final cargarUsuario()V
    .locals 7

    .line 42
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/models/User;

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 42
    const-string v1, "Nombre"

    const-string v2, "Apellidos"

    const-string v3, "No se"

    const-string v4, "Calle Falsa 123"

    const-string v5, "123456789"

    const-string v6, "28001"

    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/domain/models/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "usuario":Lorg/ies/tierno/applicationamani/domain/models/User;
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/User;->getNombre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->setNombre(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/User;->getApellidos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->setApellidos(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/User;->getGenero()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->setGenero(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/User;->getDireccion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->setDireccion(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/User;->getTelefono()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->setTelefono(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/models/User;->getCodigoPostal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->setCodigoPostal(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final getApellidos()Ljava/lang/String;
    .locals 4

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->apellidos$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$f$getValue\\1\\24":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\24":I
    check-cast v0, Ljava/lang/String;

    .line 24
    return-object v0
.end method

.method public final getCodigoPostal()Ljava/lang/String;
    .locals 4

    .line 32
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->codigoPostal$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 101
    .local v3, "$i$f$getValue\\1\\32":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\32":I
    check-cast v0, Ljava/lang/String;

    .line 32
    return-object v0
.end method

.method public final getDireccion()Ljava/lang/String;
    .locals 4

    .line 28
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->direccion$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 95
    .local v3, "$i$f$getValue\\1\\28":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\28":I
    check-cast v0, Ljava/lang/String;

    .line 28
    return-object v0
.end method

.method public final getGenero()Ljava/lang/String;
    .locals 4

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->genero$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$f$getValue\\1\\26":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\26":I
    check-cast v0, Ljava/lang/String;

    .line 26
    return-object v0
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 4

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->nombre$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 86
    .local v3, "$i$f$getValue\\1\\22":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\22":I
    check-cast v0, Ljava/lang/String;

    .line 22
    return-object v0
.end method

.method public final getTelefono()Ljava/lang/String;
    .locals 4

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->telefono$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$f$getValue\\1\\30":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\30":I
    check-cast v0, Ljava/lang/String;

    .line 30
    return-object v0
.end method

.method public final guardarUsuario()V
    .locals 7

    .line 66
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/models/User;

    .line 67
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->getNombre()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->getApellidos()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->getGenero()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->getDireccion()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->getTelefono()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->getCodigoPostal()Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/domain/models/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public final setApellidos(Ljava/lang/String;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->apellidos$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 90
    .local v4, "$i$f$setValue\\1\\24":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 91
    nop

    .line 24
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\24":I
    return-void
.end method

.method public final setCodigoPostal(Ljava/lang/String;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->codigoPostal$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 102
    .local v4, "$i$f$setValue\\1\\32":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 103
    nop

    .line 32
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\32":I
    return-void
.end method

.method public final setDireccion(Ljava/lang/String;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->direccion$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 96
    .local v4, "$i$f$setValue\\1\\28":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 97
    nop

    .line 28
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\28":I
    return-void
.end method

.method public final setGenero(Ljava/lang/String;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->genero$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 93
    .local v4, "$i$f$setValue\\1\\26":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 94
    nop

    .line 26
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\26":I
    return-void
.end method

.method public final setNombre(Ljava/lang/String;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->nombre$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 87
    .local v4, "$i$f$setValue\\1\\22":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 88
    nop

    .line 22
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\22":I
    return-void
.end method

.method public final setTelefono(Ljava/lang/String;)V
    .locals 5
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;->telefono$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 99
    .local v4, "$i$f$setValue\\1\\30":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 100
    nop

    .line 30
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\30":I
    return-void
.end method
