.class public final Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;
.super Ljava/lang/Object;
.source "CitaAdminResponseDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0014J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0014J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\u0014J\u0012\u0010 \u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008 \u0010\u001bJ\u0012\u0010!\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\u001bJ\u0094\u0001\u0010\"\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010\u0014J\u0010\u0010%\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008%\u0010&J\u001a\u0010)\u001a\u00020(2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008)\u0010*R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010+\u001a\u0004\u0008,\u0010\u0014R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010+\u001a\u0004\u0008-\u0010\u0014R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010.\u001a\u0004\u0008/\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010+\u001a\u0004\u00080\u0010\u0014R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010+\u001a\u0004\u00081\u0010\u0014R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u00102\u001a\u0004\u00083\u0010\u001bR\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u00104\u001a\u0004\u00085\u0010\u001dR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010+\u001a\u0004\u00086\u0010\u0014R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010+\u001a\u0004\u00087\u0010\u0014R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u00102\u001a\u0004\u00088\u0010\u001bR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u00102\u001a\u0004\u00089\u0010\u001b\u00a8\u0006:"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;",
        "",
        "",
        "nombrePaciente",
        "apellidoPaciente",
        "",
        "idPsicologo",
        "nombrePsicologo",
        "apellidoPsicologo",
        "j$/time/LocalDateTime",
        "startDatetime",
        "",
        "durationMinutes",
        "estadoCita",
        "motivo",
        "createdAt",
        "updatedAt",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "()Ljava/lang/Long;",
        "component4",
        "component5",
        "component6",
        "()Lj$/time/LocalDateTime;",
        "component7",
        "()Ljava/lang/Integer;",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;",
        "toString",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getNombrePaciente",
        "getApellidoPaciente",
        "Ljava/lang/Long;",
        "getIdPsicologo",
        "getNombrePsicologo",
        "getApellidoPsicologo",
        "Lj$/time/LocalDateTime;",
        "getStartDatetime",
        "Ljava/lang/Integer;",
        "getDurationMinutes",
        "getEstadoCita",
        "getMotivo",
        "getCreatedAt",
        "getUpdatedAt",
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
.field private final apellidoPaciente:Ljava/lang/String;

.field private final apellidoPsicologo:Ljava/lang/String;

.field private final createdAt:Lj$/time/LocalDateTime;

.field private final durationMinutes:Ljava/lang/Integer;

.field private final estadoCita:Ljava/lang/String;

.field private final idPsicologo:Ljava/lang/Long;

.field private final motivo:Ljava/lang/String;

.field private final nombrePaciente:Ljava/lang/String;

.field private final nombrePsicologo:Ljava/lang/String;

.field private final startDatetime:Lj$/time/LocalDateTime;

.field private final updatedAt:Lj$/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V
    .locals 0
    .param p1, "nombrePaciente"    # Ljava/lang/String;
    .param p2, "apellidoPaciente"    # Ljava/lang/String;
    .param p3, "idPsicologo"    # Ljava/lang/Long;
    .param p4, "nombrePsicologo"    # Ljava/lang/String;
    .param p5, "apellidoPsicologo"    # Ljava/lang/String;
    .param p6, "startDatetime"    # Lj$/time/LocalDateTime;
    .param p7, "durationMinutes"    # Ljava/lang/Integer;
    .param p8, "estadoCita"    # Ljava/lang/String;
    .param p9, "motivo"    # Ljava/lang/String;
    .param p10, "createdAt"    # Lj$/time/LocalDateTime;
    .param p11, "updatedAt"    # Lj$/time/LocalDateTime;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    .line 17
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    .line 20
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    .line 21
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    .line 22
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    .line 23
    iput-object p10, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    .line 24
    iput-object p11, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 13
    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    .line 14
    move-object p1, v0

    .line 13
    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 15
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 16
    move-object p3, v0

    .line 13
    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 17
    move-object p4, v0

    .line 13
    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 18
    move-object p5, v0

    .line 13
    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 19
    move-object p6, v0

    .line 13
    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 20
    move-object p7, v0

    .line 13
    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 21
    move-object p8, v0

    .line 13
    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 22
    move-object p9, v0

    .line 13
    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 23
    move-object p10, v0

    .line 13
    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 24
    move-object p12, v0

    goto :goto_0

    .line 13
    :cond_a
    move-object p12, p11

    :goto_0
    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p12}, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V

    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-object p8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-object p10, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-object p11, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    :cond_a
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final component11()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;
    .locals 12

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getApellidoPaciente()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    return-object v0
.end method

.method public final getApellidoPsicologo()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Lj$/time/LocalDateTime;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final getDurationMinutes()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEstadoCita()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdPsicologo()Ljava/lang/Long;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    return-object v0
.end method

.method public final getMotivo()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePaciente()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePsicologo()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDatetime()Lj$/time/LocalDateTime;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final getUpdatedAt()Lj$/time/LocalDateTime;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    invoke-virtual {v3}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    invoke-virtual {v3}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    if-nez v3, :cond_a

    goto :goto_a

    :cond_a
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePaciente:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPaciente:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->idPsicologo:Ljava/lang/Long;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->apellidoPsicologo:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->startDatetime:Lj$/time/LocalDateTime;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->durationMinutes:Ljava/lang/Integer;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->estadoCita:Ljava/lang/String;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->motivo:Ljava/lang/String;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->createdAt:Lj$/time/LocalDateTime;

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;->updatedAt:Lj$/time/LocalDateTime;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CitaAdminResponseDTO(nombrePaciente="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", apellidoPaciente="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nombrePsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apellidoPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estadoCita="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motivo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

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
