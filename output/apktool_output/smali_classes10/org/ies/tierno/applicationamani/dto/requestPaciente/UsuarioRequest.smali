.class public final Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;
.super Ljava/lang/Object;
.source "UsuarioRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u000bH\u00c6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJb\u0010&\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010\'J\u0013\u0010(\u001a\u00020\r2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020+H\u00d6\u0001J\t\u0010,\u001a\u00020\u0005H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006-"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;",
        "",
        "id",
        "",
        "nombre",
        "",
        "dni",
        "apellido",
        "email",
        "password",
        "rol",
        "Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;",
        "activo",
        "",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)V",
        "getId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getNombre",
        "()Ljava/lang/String;",
        "getDni",
        "getApellido",
        "getEmail",
        "getPassword",
        "getRol",
        "()Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;",
        "getActivo",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final activo:Ljava/lang/Boolean;

.field private final apellido:Ljava/lang/String;

.field private final dni:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final id:Ljava/lang/Long;

.field private final nombre:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "nombre"    # Ljava/lang/String;
    .param p3, "dni"    # Ljava/lang/String;
    .param p4, "apellido"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "rol"    # Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;
    .param p8, "activo"    # Ljava/lang/Boolean;

    const-string v0, "nombre"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dni"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellido"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rol"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    .line 8
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    .line 14
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_1

    .line 14
    const/4 p8, 0x1

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    move-object p10, p8

    goto :goto_0

    .line 6
    :cond_1
    move-object p10, p8

    :goto_0
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p10}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)V

    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-object p6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    return-object v0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;
    .locals 10

    const-string v0, "nombre"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dni"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellido"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rol"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getActivo()Ljava/lang/Boolean;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getApellido()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    return-object v0
.end method

.method public final getDni()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getRol()Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->id:Ljava/lang/Long;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->nombre:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->dni:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->apellido:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->email:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->password:Ljava/lang/String;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->rol:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->activo:Ljava/lang/Boolean;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UsuarioRequest(id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", nombre="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apellido="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
