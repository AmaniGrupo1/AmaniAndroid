.class public final Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
.super Ljava/lang/Object;
.source "PacienteRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001By\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000f\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\t\u0010,\u001a\u00020\u0005H\u00c6\u0003J\t\u0010-\u001a\u00020\tH\u00c6\u0003J\t\u0010.\u001a\u00020\u000bH\u00c6\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\"J\u0010\u00100\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\"J\u000f\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000fH\u00c6\u0003J\u000f\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000fH\u00c6\u0003J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000fH\u00c6\u0003J\u0094\u0001\u00104\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000f2\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000fH\u00c6\u0001\u00a2\u0006\u0002\u00105J\u0013\u00106\u001a\u00020\u000b2\u0008\u00107\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00108\u001a\u000209H\u00d6\u0001J\t\u0010:\u001a\u00020\u0005H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010#\u001a\u0004\u0008!\u0010\"R\u0015\u0010\r\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010#\u001a\u0004\u0008$\u0010\"R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010&\u00a8\u0006;"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
        "",
        "idUsuario",
        "",
        "fechaNacimiento",
        "",
        "genero",
        "telefono",
        "usuario",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;",
        "aceptaTerminos",
        "",
        "aceptaVideoconferencia",
        "aceptaComunicacion",
        "idSituaciones",
        "",
        "tutores",
        "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;",
        "direccion",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getIdUsuario",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getFechaNacimiento",
        "()Ljava/lang/String;",
        "getGenero",
        "getTelefono",
        "getUsuario",
        "()Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;",
        "getAceptaTerminos",
        "()Z",
        "getAceptaVideoconferencia",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getAceptaComunicacion",
        "getIdSituaciones",
        "()Ljava/util/List;",
        "getTutores",
        "getDireccion",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
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
.field private final aceptaComunicacion:Ljava/lang/Boolean;

.field private final aceptaTerminos:Z

.field private final aceptaVideoconferencia:Ljava/lang/Boolean;

.field private final direccion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final fechaNacimiento:Ljava/lang/String;

.field private final genero:Ljava/lang/String;

.field private final idSituaciones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final idUsuario:Ljava/lang/Long;

.field private final telefono:Ljava/lang/String;

.field private final tutores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "idUsuario"    # Ljava/lang/Long;
    .param p2, "fechaNacimiento"    # Ljava/lang/String;
    .param p3, "genero"    # Ljava/lang/String;
    .param p4, "telefono"    # Ljava/lang/String;
    .param p5, "usuario"    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;
    .param p6, "aceptaTerminos"    # Z
    .param p7, "aceptaVideoconferencia"    # Ljava/lang/Boolean;
    .param p8, "aceptaComunicacion"    # Ljava/lang/Boolean;
    .param p9, "idSituaciones"    # Ljava/util/List;
    .param p10, "tutores"    # Ljava/util/List;
    .param p11, "direccion"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;",
            "Z",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fechaNacimiento"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genero"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telefono"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usuario"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idSituaciones"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tutores"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direccion"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    .line 7
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    .line 11
    iput-boolean p6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    .line 12
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    .line 13
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    .line 15
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    .line 16
    iput-object p10, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    .line 17
    iput-object p11, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    .line 5
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    and-int/lit8 p12, p12, 0x1

    if-eqz p12, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 5
    :cond_0
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p13}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-boolean p6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-object p8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-object p10, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-object p11, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    :cond_a
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    return v0
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;",
            "Z",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;"
        }
    .end annotation

    const-string v0, "fechaNacimiento"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genero"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telefono"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usuario"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idSituaciones"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tutores"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direccion"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v12}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAceptaComunicacion()Ljava/lang/Boolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getAceptaTerminos()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    return v0
.end method

.method public final getAceptaVideoconferencia()Ljava/lang/Boolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDireccion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    return-object v0
.end method

.method public final getFechaNacimiento()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenero()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdSituaciones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    return-object v0
.end method

.method public final getIdUsuario()Ljava/lang/Long;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTelefono()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public final getTutores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    return-object v0
.end method

.method public final getUsuario()Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idUsuario:Ljava/lang/Long;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->fechaNacimiento:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->genero:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->telefono:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->usuario:Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    iget-boolean v5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaTerminos:Z

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaVideoconferencia:Ljava/lang/Boolean;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->aceptaComunicacion:Ljava/lang/Boolean;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->idSituaciones:Ljava/util/List;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->tutores:Ljava/util/List;

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;->direccion:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PacienteRequest(idUsuario="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", fechaNacimiento="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", genero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telefono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usuario="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aceptaTerminos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aceptaVideoconferencia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aceptaComunicacion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idSituaciones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tutores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direccion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
