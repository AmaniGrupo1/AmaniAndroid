.class public final Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
.super Ljava/lang/Object;
.source "CitaRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u0080\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010.J\u0013\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u00020\u0008H\u00d6\u0001J\t\u00103\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0016R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008 \u0010!\u00a8\u00064"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
        "",
        "idPaciente",
        "",
        "idPsicologo",
        "startDatetime",
        "",
        "durationMinutes",
        "",
        "metodoPago",
        "monto",
        "Ljava/math/BigDecimal;",
        "estadoPago",
        "estado",
        "motivo",
        "idTipoTerapia",
        "<init>",
        "(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V",
        "getIdPaciente",
        "()J",
        "getIdPsicologo",
        "getStartDatetime",
        "()Ljava/lang/String;",
        "getDurationMinutes",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMetodoPago",
        "getMonto",
        "()Ljava/math/BigDecimal;",
        "getEstadoPago",
        "getEstado",
        "getMotivo",
        "getIdTipoTerapia",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
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
        "copy",
        "(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final durationMinutes:Ljava/lang/Integer;

.field private final estado:Ljava/lang/String;

.field private final estadoPago:Ljava/lang/String;

.field private final idPaciente:J

.field private final idPsicologo:J

.field private final idTipoTerapia:Ljava/lang/Long;

.field private final metodoPago:Ljava/lang/String;

.field private final monto:Ljava/math/BigDecimal;

.field private final motivo:Ljava/lang/String;

.field private final startDatetime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->$stable:I

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "idPaciente"    # J
    .param p3, "idPsicologo"    # J
    .param p5, "startDatetime"    # Ljava/lang/String;
    .param p6, "durationMinutes"    # Ljava/lang/Integer;
    .param p7, "metodoPago"    # Ljava/lang/String;
    .param p8, "monto"    # Ljava/math/BigDecimal;
    .param p9, "estadoPago"    # Ljava/lang/String;
    .param p10, "estado"    # Ljava/lang/String;
    .param p11, "motivo"    # Ljava/lang/String;
    .param p12, "idTipoTerapia"    # Ljava/lang/Long;

    const-string v0, "startDatetime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    .line 20
    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    .line 21
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    .line 23
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    .line 25
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    .line 26
    iput-object p10, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    .line 27
    iput-object p11, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    .line 28
    iput-object p12, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    .line 18
    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 18
    and-int/lit8 p14, p13, 0x8

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    .line 22
    move-object p6, v0

    .line 18
    :cond_0
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1

    .line 23
    move-object p7, v0

    .line 18
    :cond_1
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_2

    .line 24
    move-object p8, v0

    .line 18
    :cond_2
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_3

    .line 25
    const-string p9, "PENDIENTE"

    .line 18
    :cond_3
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_4

    .line 26
    move-object p10, v0

    .line 18
    :cond_4
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_5

    .line 27
    move-object p11, v0

    .line 18
    :cond_5
    and-int/lit16 p13, p13, 0x200

    if-eqz p13, :cond_6

    .line 28
    move-object p13, v0

    goto :goto_0

    .line 18
    :cond_6
    move-object p13, p12

    :goto_0
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p13}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    move-wide v3, p1

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p3

    :goto_0
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    move-object v5, p1

    goto :goto_1

    :cond_2
    move-object/from16 v5, p5

    :goto_1
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    move-object v6, p1

    goto :goto_2

    :cond_3
    move-object/from16 v6, p6

    :goto_2
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    move-object v7, p1

    goto :goto_3

    :cond_4
    move-object/from16 v7, p7

    :goto_3
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    move-object v8, p1

    goto :goto_4

    :cond_5
    move-object/from16 v8, p8

    :goto_4
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    move-object v9, p1

    goto :goto_5

    :cond_6
    move-object/from16 v9, p9

    :goto_5
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    move-object v10, p1

    goto :goto_6

    :cond_7
    move-object/from16 v10, p10

    :goto_6
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    move-object v11, p1

    goto :goto_7

    :cond_8
    move-object/from16 v11, p11

    :goto_7
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    move-object v12, p1

    goto :goto_8

    :cond_9
    move-object/from16 v12, p12

    :goto_8
    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->copy(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .locals 14

    const-string v0, "startDatetime"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getDurationMinutes()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEstado()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    return-object v0
.end method

.method public final getEstadoPago()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdPaciente()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    return-wide v0
.end method

.method public final getIdPsicologo()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    return-wide v0
.end method

.method public final getIdTipoTerapia()Ljava/lang/Long;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    return-object v0
.end method

.method public final getMetodoPago()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonto()Ljava/math/BigDecimal;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getMotivo()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDatetime()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPaciente:J

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idPsicologo:J

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->startDatetime:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->durationMinutes:Ljava/lang/Integer;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->metodoPago:Ljava/lang/String;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->monto:Ljava/math/BigDecimal;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estadoPago:Ljava/lang/String;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->estado:Ljava/lang/String;

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->motivo:Ljava/lang/String;

    iget-object v11, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;->idTipoTerapia:Ljava/lang/Long;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CitaRequest(idPaciente="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metodoPago="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estadoPago="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motivo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idTipoTerapia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
