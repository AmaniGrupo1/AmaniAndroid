.class public final Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;
.super Ljava/lang/Object;
.source "ListaPacientesAndPsicologo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bm\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0018\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJv\u0010\u001d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0014J\u0010\u0010!\u001a\u00020 H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u001a\u0010%\u001a\u00020$2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008%\u0010&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\'\u001a\u0004\u0008(\u0010\u0012R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010)\u001a\u0004\u0008*\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010)\u001a\u0004\u0008+\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010)\u001a\u0004\u0008,\u0010\u0014R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010)\u001a\u0004\u0008-\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010)\u001a\u0004\u0008.\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010/\u001a\u0004\u00080\u0010\u001aR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u00101\u001a\u0004\u00082\u0010\u001c\u00a8\u00063"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;",
        "",
        "",
        "idPsicologo",
        "",
        "nombrePsicologo",
        "apellidoPsicologo",
        "emailPsicologo",
        "especialidad",
        "licencia",
        "j$/time/LocalDateTime",
        "fechaDadoAlta",
        "",
        "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
        "pacientes",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)V",
        "component1",
        "()Ljava/lang/Long;",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "()Lj$/time/LocalDateTime;",
        "component8",
        "()Ljava/util/List;",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Long;",
        "getIdPsicologo",
        "Ljava/lang/String;",
        "getNombrePsicologo",
        "getApellidoPsicologo",
        "getEmailPsicologo",
        "getEspecialidad",
        "getLicencia",
        "Lj$/time/LocalDateTime;",
        "getFechaDadoAlta",
        "Ljava/util/List;",
        "getPacientes",
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
.field private final apellidoPsicologo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apellidoPsicologo"
    .end annotation
.end field

.field private final emailPsicologo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailPsicologo"
    .end annotation
.end field

.field private final especialidad:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "especialidad"
    .end annotation
.end field

.field private final fechaDadoAlta:Lj$/time/LocalDateTime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fechaDadoAlta"
    .end annotation
.end field

.field private final idPsicologo:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idPsicologo"
    .end annotation
.end field

.field private final licencia:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "licencia"
    .end annotation
.end field

.field private final nombrePsicologo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nombrePsicologo"
    .end annotation
.end field

.field private final pacientes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pacientes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)V
    .locals 0
    .param p1, "idPsicologo"    # Ljava/lang/Long;
    .param p2, "nombrePsicologo"    # Ljava/lang/String;
    .param p3, "apellidoPsicologo"    # Ljava/lang/String;
    .param p4, "emailPsicologo"    # Ljava/lang/String;
    .param p5, "especialidad"    # Ljava/lang/String;
    .param p6, "licencia"    # Ljava/lang/String;
    .param p7, "fechaDadoAlta"    # Lj$/time/LocalDateTime;
    .param p8, "pacientes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj$/time/LocalDateTime;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    .line 11
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    .line 29
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 7
    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    .line 9
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 12
    move-object p2, v0

    .line 7
    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    .line 15
    move-object p3, v0

    .line 7
    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    .line 18
    move-object p4, v0

    .line 7
    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    .line 21
    move-object p5, v0

    .line 7
    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    .line 24
    move-object p6, v0

    .line 7
    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    .line 27
    move-object p7, v0

    .line 7
    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    .line 30
    move-object p9, v0

    goto :goto_0

    .line 7
    :cond_7
    move-object p9, p8

    :goto_0
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-object p6, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

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

    invoke-virtual/range {p2 .. p10}, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj$/time/LocalDateTime;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getApellidoPsicologo()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailPsicologo()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getEspecialidad()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    return-object v0
.end method

.method public final getFechaDadoAlta()Lj$/time/LocalDateTime;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final getIdPsicologo()Ljava/lang/Long;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLicencia()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePsicologo()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPacientes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    invoke-virtual {v3}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->idPsicologo:Ljava/lang/Long;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->apellidoPsicologo:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->emailPsicologo:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->especialidad:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->licencia:Ljava/lang/String;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->fechaDadoAlta:Lj$/time/LocalDateTime;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/domain/models/admin/PsicologoConPacientesDTO;->pacientes:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PsicologoConPacientesDTO(idPsicologo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", nombrePsicologo="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apellidoPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", especialidad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", licencia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fechaDadoAlta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacientes="

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
