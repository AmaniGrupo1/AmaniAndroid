.class public final Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
.super Ljava/lang/Object;
.source "CrearCitaRequestDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u0011JV\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0016J\u001a\u0010\"\u001a\u00020!2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\"\u0010#R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010$\u001a\u0004\u0008%\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010$\u001a\u0004\u0008&\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\'\u001a\u0004\u0008(\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010)\u001a\u0004\u0008*\u0010\u0016R\u001a\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010+\u001a\u0004\u0008,\u0010\u0018R\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010-\u001a\u0004\u0008.\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010$\u001a\u0004\u0008/\u0010\u0011\u00a8\u00060"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;",
        "",
        "",
        "idPaciente",
        "idPsicologo",
        "j$/time/LocalDateTime",
        "startDatetime",
        "",
        "durationMinutes",
        "",
        "motivo",
        "Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;",
        "estado",
        "idTipoTerapia",
        "<init>",
        "(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)V",
        "component1",
        "()J",
        "component2",
        "component3",
        "()Lj$/time/LocalDateTime;",
        "component4",
        "()I",
        "component5",
        "()Ljava/lang/String;",
        "component6",
        "()Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;",
        "component7",
        "copy",
        "(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getIdPaciente",
        "getIdPsicologo",
        "Lj$/time/LocalDateTime;",
        "getStartDatetime",
        "I",
        "getDurationMinutes",
        "Ljava/lang/String;",
        "getMotivo",
        "Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;",
        "getEstado",
        "getIdTipoTerapia",
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
.field private final durationMinutes:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "durationMinutes"
    .end annotation
.end field

.field private final estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

.field private final idPaciente:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idPaciente"
    .end annotation
.end field

.field private final idPsicologo:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idPsicologo"
    .end annotation
.end field

.field private final idTipoTerapia:J

.field private final motivo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motivo"
    .end annotation
.end field

.field private final startDatetime:Lj$/time/LocalDateTime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startDatetime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->$stable:I

    return-void
.end method

.method public constructor <init>(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)V
    .locals 1
    .param p1, "idPaciente"    # J
    .param p3, "idPsicologo"    # J
    .param p5, "startDatetime"    # Lj$/time/LocalDateTime;
    .param p6, "durationMinutes"    # I
    .param p7, "motivo"    # Ljava/lang/String;
    .param p8, "estado"    # Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;
    .param p9, "idTipoTerapia"    # J

    const-string v0, "startDatetime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motivo"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estado"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    .line 12
    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    .line 15
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    .line 18
    iput p6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    .line 21
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    .line 26
    iput-wide p9, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .line 7
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;->pendiente:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    move-object v9, v0

    goto :goto_0

    .line 7
    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;-><init>(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)V

    .line 27
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;JILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
    .locals 11

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p11, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p11, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    move-object v5, p1

    goto :goto_0

    :cond_2
    move-object/from16 v5, p5

    :goto_0
    and-int/lit8 p1, p11, 0x8

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    move v6, p1

    goto :goto_1

    :cond_3
    move/from16 v6, p6

    :goto_1
    and-int/lit8 p1, p11, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    move-object v7, p1

    goto :goto_2

    :cond_4
    move-object/from16 v7, p7

    :goto_2
    and-int/lit8 p1, p11, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    move-object v8, p1

    goto :goto_3

    :cond_5
    move-object/from16 v8, p8

    :goto_3
    and-int/lit8 p1, p11, 0x40

    if-eqz p1, :cond_6

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    move-wide v9, p1

    goto :goto_4

    :cond_6
    move-wide/from16 v9, p9

    :goto_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->copy(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    return-wide v0
.end method

.method public final component3()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    return-object v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    return-wide v0
.end method

.method public final copy(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
    .locals 12

    const-string v0, "startDatetime"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motivo"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estado"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p6

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;-><init>(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    iget v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDurationMinutes()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    return v0
.end method

.method public final getEstado()Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    return-object v0
.end method

.method public final getIdPaciente()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    return-wide v0
.end method

.method public final getIdPsicologo()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    return-wide v0
.end method

.method public final getIdTipoTerapia()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    return-wide v0
.end method

.method public final getMotivo()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDatetime()Lj$/time/LocalDateTime;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    invoke-virtual {v2}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPaciente:J

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idPsicologo:J

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->startDatetime:Lj$/time/LocalDateTime;

    iget v5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->durationMinutes:I

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->motivo:Ljava/lang/String;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->estado:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;

    iget-wide v8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;->idTipoTerapia:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CrearCitaRequestDTO(idPaciente="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motivo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idTipoTerapia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
