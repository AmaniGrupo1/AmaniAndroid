.class public final Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;
.super Ljava/lang/Object;
.source "CitaDetalleResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0015J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0082\u0001\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0010\u0010$\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u001a\u0010(\u001a\u00020\'2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010*\u001a\u0004\u0008+\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010,\u001a\u0004\u0008-\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010.\u001a\u0004\u0008/\u0010\u0017R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u00100\u001a\u0004\u00081\u0010\u0019R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010,\u001a\u0004\u00082\u0010\u0015R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u00100\u001a\u0004\u00083\u0010\u0019R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010,\u001a\u0004\u00084\u0010\u0015R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010,\u001a\u0004\u00085\u0010\u0015R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010,\u001a\u0004\u00086\u0010\u0015R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u00107\u001a\u0004\u00088\u0010 \u00a8\u00069"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
        "",
        "",
        "id",
        "",
        "fecha",
        "j$/time/LocalTime",
        "hora",
        "pacienteId",
        "pacienteNombre",
        "psicologoId",
        "psicologoNombre",
        "motivo",
        "estado",
        "",
        "durationMinutes",
        "<init>",
        "(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "component1",
        "()J",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "()Lj$/time/LocalTime;",
        "component4",
        "()Ljava/lang/Long;",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "()Ljava/lang/Integer;",
        "copy",
        "(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
        "toString",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getId",
        "Ljava/lang/String;",
        "getFecha",
        "Lj$/time/LocalTime;",
        "getHora",
        "Ljava/lang/Long;",
        "getPacienteId",
        "getPacienteNombre",
        "getPsicologoId",
        "getPsicologoNombre",
        "getMotivo",
        "getEstado",
        "Ljava/lang/Integer;",
        "getDurationMinutes",
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

.field private final fecha:Ljava/lang/String;

.field private final hora:Lj$/time/LocalTime;

.field private final id:J

.field private final motivo:Ljava/lang/String;

.field private final pacienteId:Ljava/lang/Long;

.field private final pacienteNombre:Ljava/lang/String;

.field private final psicologoId:Ljava/lang/Long;

.field private final psicologoNombre:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->$stable:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "fecha"    # Ljava/lang/String;
    .param p4, "hora"    # Lj$/time/LocalTime;
    .param p5, "pacienteId"    # Ljava/lang/Long;
    .param p6, "pacienteNombre"    # Ljava/lang/String;
    .param p7, "psicologoId"    # Ljava/lang/Long;
    .param p8, "psicologoNombre"    # Ljava/lang/String;
    .param p9, "motivo"    # Ljava/lang/String;
    .param p10, "estado"    # Ljava/lang/String;
    .param p11, "durationMinutes"    # Ljava/lang/Integer;

    const-string v0, "fecha"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hora"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    .line 7
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    .line 9
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    .line 10
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    .line 12
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    .line 14
    iput-object p10, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    .line 15
    iput-object p11, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    .line 5
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 5
    and-int/lit8 p13, p12, 0x8

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    .line 9
    move-object p5, v0

    .line 5
    :cond_0
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_1

    .line 10
    move-object p6, v0

    .line 5
    :cond_1
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_2

    .line 11
    move-object p7, v0

    .line 5
    :cond_2
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_3

    .line 12
    move-object p8, v0

    .line 5
    :cond_3
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_4

    .line 13
    move-object p9, v0

    .line 5
    :cond_4
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_5

    .line 14
    move-object p10, v0

    .line 5
    :cond_5
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_6

    .line 15
    move-object p12, v0

    goto :goto_0

    .line 5
    :cond_6
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

    move-wide p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p12}, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;-><init>(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    move-object v4, p1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p4

    :goto_0
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    move-object v5, p1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p5

    :goto_1
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    move-object v6, p1

    goto :goto_2

    :cond_4
    move-object/from16 v6, p6

    :goto_2
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    move-object v7, p1

    goto :goto_3

    :cond_5
    move-object/from16 v7, p7

    :goto_3
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    move-object v8, p1

    goto :goto_4

    :cond_6
    move-object/from16 v8, p8

    :goto_4
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    move-object v9, p1

    goto :goto_5

    :cond_7
    move-object/from16 v9, p9

    :goto_5
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    move-object v10, p1

    goto :goto_6

    :cond_8
    move-object/from16 v10, p10

    :goto_6
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    move-object v11, p1

    goto :goto_7

    :cond_9
    move-object/from16 v11, p11

    :goto_7
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->copy(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;
    .locals 13

    const-string v0, "fecha"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hora"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;

    move-wide v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;-><init>(JLjava/lang/String;Lj$/time/LocalTime;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getDurationMinutes()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEstado()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    return-object v0
.end method

.method public final getFecha()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public final getHora()Lj$/time/LocalTime;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    return-wide v0
.end method

.method public final getMotivo()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPacienteId()Ljava/lang/Long;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPacienteNombre()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    return-object v0
.end method

.method public final getPsicologoId()Ljava/lang/Long;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPsicologoNombre()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    invoke-virtual {v2}, Lj$/time/LocalTime;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->id:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->fecha:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->hora:Lj$/time/LocalTime;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteId:Ljava/lang/Long;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->pacienteNombre:Ljava/lang/String;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoId:Ljava/lang/Long;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->psicologoNombre:Ljava/lang/String;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->motivo:Ljava/lang/String;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->estado:Ljava/lang/String;

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;->durationMinutes:Ljava/lang/Integer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CitaDetalleResponse(id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fecha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hora="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacienteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacienteNombre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psicologoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psicologoNombre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motivo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMinutes="

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
