.class public final Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
.super Ljava/lang/Object;
.source "DatosPacienteAdminDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0012\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\u0005H\u00c6\u0003J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\u000eH\u00c6\u0003J\t\u00107\u001a\u00020\u0005H\u00c6\u0003J\t\u00108\u001a\u00020\u0005H\u00c6\u0003J\u000f\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u00c6\u0003J\u000f\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0012H\u00c6\u0003J\u000f\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0012H\u00c6\u0003J\u00b1\u0001\u0010<\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00122\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0012H\u00c6\u0001J\u0013\u0010=\u001a\u00020\u000e2\u0008\u0010>\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010?\u001a\u00020@H\u00d6\u0001J\t\u0010A\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001dR\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001dR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001dR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010*R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010*\u00a8\u0006B"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
        "",
        "idPaciente",
        "",
        "nombreUsuario",
        "",
        "apellidoUsuario",
        "emailUsuario",
        "fechaNacimiento",
        "genero",
        "telefono",
        "createdAt",
        "updatedAt",
        "activo",
        "",
        "metodoPago",
        "estadoPago",
        "situaciones",
        "",
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        "tutores",
        "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;",
        "direccion",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getIdPaciente",
        "()J",
        "getNombreUsuario",
        "()Ljava/lang/String;",
        "getApellidoUsuario",
        "getEmailUsuario",
        "getFechaNacimiento",
        "getGenero",
        "getTelefono",
        "getCreatedAt",
        "getUpdatedAt",
        "getActivo",
        "()Z",
        "getMetodoPago",
        "getEstadoPago",
        "getSituaciones",
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
        "component12",
        "component13",
        "component14",
        "component15",
        "copy",
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
.field private final activo:Z

.field private final apellidoUsuario:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final direccion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final emailUsuario:Ljava/lang/String;

.field private final estadoPago:Ljava/lang/String;

.field private final fechaNacimiento:Ljava/lang/String;

.field private final genero:Ljava/lang/String;

.field private final idPaciente:J

.field private final metodoPago:Ljava/lang/String;

.field private final nombreUsuario:Ljava/lang/String;

.field private final situaciones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final telefono:Ljava/lang/String;

.field private final tutores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedAt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->$stable:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "idPaciente"    # J
    .param p3, "nombreUsuario"    # Ljava/lang/String;
    .param p4, "apellidoUsuario"    # Ljava/lang/String;
    .param p5, "emailUsuario"    # Ljava/lang/String;
    .param p6, "fechaNacimiento"    # Ljava/lang/String;
    .param p7, "genero"    # Ljava/lang/String;
    .param p8, "telefono"    # Ljava/lang/String;
    .param p9, "createdAt"    # Ljava/lang/String;
    .param p10, "updatedAt"    # Ljava/lang/String;
    .param p11, "activo"    # Z
    .param p12, "metodoPago"    # Ljava/lang/String;
    .param p13, "estadoPago"    # Ljava/lang/String;
    .param p14, "situaciones"    # Ljava/util/List;
    .param p15, "tutores"    # Ljava/util/List;
    .param p16, "direccion"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    const-string v14, "nombreUsuario"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "apellidoUsuario"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "emailUsuario"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "fechaNacimiento"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "genero"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "telefono"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "createdAt"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "updatedAt"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "metodoPago"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "estadoPago"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "situaciones"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "tutores"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "direccion"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-wide/from16 v14, p1

    iput-wide v14, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    .line 25
    iput-object v1, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    .line 26
    iput-object v2, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    .line 27
    iput-object v3, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    .line 28
    iput-object v4, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    .line 29
    iput-object v5, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    .line 30
    iput-object v6, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    .line 31
    iput-object v7, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    .line 32
    iput-object v8, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    .line 33
    move/from16 v1, p11

    iput-boolean v1, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    .line 34
    iput-object v9, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    .line 35
    iput-object v10, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    .line 36
    iput-object v11, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    .line 37
    iput-object v12, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    .line 38
    iput-object v13, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    .line 23
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    move-object/from16 p17, v1

    goto :goto_e

    :cond_e
    move-object/from16 p17, p16

    :goto_e
    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-wide/from16 p2, v16

    invoke-virtual/range {p1 .. p17}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    return-wide v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    return-object v0
.end method

.method public final component15()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;"
        }
    .end annotation

    const-string v0, "nombreUsuario"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellidoUsuario"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailUsuario"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fechaNacimiento"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genero"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telefono"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metodoPago"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estadoPago"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "situaciones"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tutores"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direccion"

    move-object/from16 v2, p16

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    move/from16 v12, p11

    move-object/from16 v16, p15

    move-object/from16 v17, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getActivo()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    return v0
.end method

.method public final getApellidoUsuario()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDireccion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionResponseDTO;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    return-object v0
.end method

.method public final getEmailUsuario()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public final getEstadoPago()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final getFechaNacimiento()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenero()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdPaciente()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    return-wide v0
.end method

.method public final getMetodoPago()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombreUsuario()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public final getSituaciones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    return-object v0
.end method

.method public final getTelefono()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public final getTutores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/tutor/TutorResponseDTO;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    return-object v0
.end method

.method public final getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->idPaciente:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->nombreUsuario:Ljava/lang/String;

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->apellidoUsuario:Ljava/lang/String;

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->emailUsuario:Ljava/lang/String;

    iget-object v6, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->fechaNacimiento:Ljava/lang/String;

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->genero:Ljava/lang/String;

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->telefono:Ljava/lang/String;

    iget-object v9, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->createdAt:Ljava/lang/String;

    iget-object v10, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->updatedAt:Ljava/lang/String;

    iget-boolean v11, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->activo:Z

    iget-object v12, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->metodoPago:Ljava/lang/String;

    iget-object v13, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->estadoPago:Ljava/lang/String;

    iget-object v14, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->situaciones:Ljava/util/List;

    iget-object v15, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->tutores:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->direccion:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "DatosPacienteAdminDTO(idPaciente="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nombreUsuario="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apellidoUsuario="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailUsuario="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fechaNacimiento="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", genero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telefono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metodoPago="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estadoPago="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", situaciones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tutores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direccion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
