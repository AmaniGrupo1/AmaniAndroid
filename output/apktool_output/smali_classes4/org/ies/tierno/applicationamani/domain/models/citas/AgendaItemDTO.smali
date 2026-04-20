.class public final Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
.super Ljava/lang/Object;
.source "AgendaItemDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0002\u0008\u0019\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u0010\u0010 \u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008 \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010!J\u0012\u0010#\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008#\u0010!J\u0012\u0010$\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0004\u0008$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008&\u0010!J\u0012\u0010\'\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\'\u0010!J\u0010\u0010(\u001a\u00020\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008(\u0010)J\u0012\u0010*\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008*\u0010!J\u0012\u0010+\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0004\u0008+\u0010,J\u0012\u0010-\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008-\u0010.J\u00ac\u0001\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008/\u00100J\u0010\u00101\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u00081\u0010!J\u0010\u00102\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u00082\u00103J\u001a\u00106\u001a\u0002052\u0008\u00104\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u00086\u00107R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u00108\u001a\u0004\u00089\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010:\u001a\u0004\u0008;\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010<\u001a\u0004\u0008=\u0010\u001eR\u0017\u0010\u0008\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010<\u001a\u0004\u0008>\u0010\u001eR\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010?\u001a\u0004\u0008@\u0010!R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010?\u001a\u0004\u0008A\u0010!R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010?\u001a\u0004\u0008B\u0010!R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010C\u001a\u0004\u0008D\u0010%R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010?\u001a\u0004\u0008E\u0010!R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010?\u001a\u0004\u0008F\u0010!R\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010G\u001a\u0004\u0008H\u0010)R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010?\u001a\u0004\u0008I\u0010!R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010J\u001a\u0004\u0008K\u0010,R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010L\u001a\u0004\u0008M\u0010.\u00a8\u0006N"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
        "",
        "",
        "id",
        "j$/time/LocalDate",
        "fecha",
        "j$/time/LocalTime",
        "horaInicio",
        "horaFin",
        "",
        "tipo",
        "estado",
        "motivo",
        "",
        "duracionMinutos",
        "nombrePaciente",
        "nombrePsicologo",
        "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
        "terapiaResponseDTO",
        "metodoPago",
        "Ljava/math/BigDecimal;",
        "monto",
        "idTipoTerapia",
        "<init>",
        "(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)V",
        "component1",
        "()J",
        "component2",
        "()Lj$/time/LocalDate;",
        "component3",
        "()Lj$/time/LocalTime;",
        "component4",
        "component5",
        "()Ljava/lang/String;",
        "component6",
        "component7",
        "component8",
        "()Ljava/lang/Integer;",
        "component9",
        "component10",
        "component11",
        "()Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
        "component12",
        "component13",
        "()Ljava/math/BigDecimal;",
        "component14",
        "()Ljava/lang/Long;",
        "copy",
        "(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
        "toString",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getId",
        "Lj$/time/LocalDate;",
        "getFecha",
        "Lj$/time/LocalTime;",
        "getHoraInicio",
        "getHoraFin",
        "Ljava/lang/String;",
        "getTipo",
        "getEstado",
        "getMotivo",
        "Ljava/lang/Integer;",
        "getDuracionMinutos",
        "getNombrePaciente",
        "getNombrePsicologo",
        "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
        "getTerapiaResponseDTO",
        "getMetodoPago",
        "Ljava/math/BigDecimal;",
        "getMonto",
        "Ljava/lang/Long;",
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
.field private final duracionMinutos:Ljava/lang/Integer;

.field private final estado:Ljava/lang/String;

.field private final fecha:Lj$/time/LocalDate;

.field private final horaFin:Lj$/time/LocalTime;

.field private final horaInicio:Lj$/time/LocalTime;

.field private final id:J

.field private final idTipoTerapia:Ljava/lang/Long;

.field private final metodoPago:Ljava/lang/String;

.field private final monto:Ljava/math/BigDecimal;

.field private final motivo:Ljava/lang/String;

.field private final nombrePaciente:Ljava/lang/String;

.field private final nombrePsicologo:Ljava/lang/String;

.field private final terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

.field private final tipo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->$stable:I

    return-void
.end method

.method public constructor <init>(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)V
    .locals 16
    .param p1, "id"    # J
    .param p3, "fecha"    # Lj$/time/LocalDate;
    .param p4, "horaInicio"    # Lj$/time/LocalTime;
    .param p5, "horaFin"    # Lj$/time/LocalTime;
    .param p6, "tipo"    # Ljava/lang/String;
    .param p7, "estado"    # Ljava/lang/String;
    .param p8, "motivo"    # Ljava/lang/String;
    .param p9, "duracionMinutos"    # Ljava/lang/Integer;
    .param p10, "nombrePaciente"    # Ljava/lang/String;
    .param p11, "nombrePsicologo"    # Ljava/lang/String;
    .param p12, "terapiaResponseDTO"    # Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;
    .param p13, "metodoPago"    # Ljava/lang/String;
    .param p14, "monto"    # Ljava/math/BigDecimal;
    .param p15, "idTipoTerapia"    # Ljava/lang/Long;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p12

    const-string v6, "fecha"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "horaInicio"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "horaFin"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tipo"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "terapiaResponseDTO"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    move-wide/from16 v6, p1

    iput-wide v6, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    .line 10
    iput-object v1, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    .line 11
    iput-object v2, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    .line 12
    iput-object v3, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    .line 13
    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    .line 14
    move-object/from16 v8, p7

    iput-object v8, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    .line 15
    move-object/from16 v9, p8

    iput-object v9, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    .line 16
    move-object/from16 v10, p9

    iput-object v10, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    .line 17
    move-object/from16 v11, p10

    iput-object v11, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    .line 18
    move-object/from16 v12, p11

    iput-object v12, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    .line 19
    iput-object v5, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    .line 20
    move-object/from16 v13, p13

    iput-object v13, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    .line 21
    move-object/from16 v14, p14

    iput-object v14, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    .line 22
    move-object/from16 v15, p15

    iput-object v15, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    .line 8
    return-void
.end method

.method public synthetic constructor <init>(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    .line 8
    move/from16 v0, p16

    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 20
    move-object/from16 v16, v2

    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v16, p13

    :goto_0
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_1

    .line 21
    move-object/from16 v17, v2

    goto :goto_1

    .line 8
    :cond_1
    move-object/from16 v17, p14

    :goto_1
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    .line 22
    move-object/from16 v18, v2

    goto :goto_2

    .line 8
    :cond_2
    move-object/from16 v18, p15

    :goto_2
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v18}, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;-><init>(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)V

    .line 23
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    move-object/from16 p16, v1

    goto :goto_d

    :cond_d
    move-object/from16 p16, p15

    :goto_d
    move-object/from16 p1, v0

    move-wide/from16 p2, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    invoke-virtual/range {p1 .. p16}, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->copy(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    return-object v0
.end method

.method public final component3()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final component4()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
    .locals 17

    const-string v0, "fecha"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horaInicio"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horaFin"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipo"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terapiaResponseDTO"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    move-wide/from16 v2, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;-><init>(JLj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/LocalTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getDuracionMinutos()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEstado()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    return-object v0
.end method

.method public final getFecha()Lj$/time/LocalDate;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    return-object v0
.end method

.method public final getHoraFin()Lj$/time/LocalTime;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final getHoraInicio()Lj$/time/LocalTime;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    return-wide v0
.end method

.method public final getIdTipoTerapia()Ljava/lang/Long;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    return-object v0
.end method

.method public final getMetodoPago()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonto()Ljava/math/BigDecimal;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getMotivo()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePaciente()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePsicologo()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerapiaResponseDTO()Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    return-object v0
.end method

.method public final getTipo()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    invoke-virtual {v2}, Lj$/time/LocalDate;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    invoke-virtual {v2}, Lj$/time/LocalTime;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    invoke-virtual {v2}, Lj$/time/LocalTime;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->id:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->fecha:Lj$/time/LocalDate;

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaInicio:Lj$/time/LocalTime;

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->horaFin:Lj$/time/LocalTime;

    iget-object v6, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->tipo:Ljava/lang/String;

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->estado:Ljava/lang/String;

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->motivo:Ljava/lang/String;

    iget-object v9, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->duracionMinutos:Ljava/lang/Integer;

    iget-object v10, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePaciente:Ljava/lang/String;

    iget-object v11, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v12, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->terapiaResponseDTO:Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;

    iget-object v13, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->metodoPago:Ljava/lang/String;

    iget-object v14, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->monto:Ljava/math/BigDecimal;

    iget-object v15, v0, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;->idTipoTerapia:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "AgendaItemDTO(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fecha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horaInicio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horaFin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motivo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duracionMinutos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nombrePaciente="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nombrePsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", terapiaResponseDTO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metodoPago="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idTipoTerapia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
