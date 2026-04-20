.class public final Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;
.super Ljava/lang/Object;
.source "AgendaPacienteResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0003J4\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;",
        "",
        "idPaciente",
        "",
        "idPsicologoAsignado",
        "citas",
        "",
        "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
        "<init>",
        "(JLjava/lang/Long;Ljava/util/List;)V",
        "getIdPaciente",
        "()J",
        "getIdPsicologoAsignado",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getCitas",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(JLjava/lang/Long;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final citas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final idPaciente:J

.field private final idPsicologoAsignado:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->$stable:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/Long;Ljava/util/List;)V
    .locals 1
    .param p1, "idPaciente"    # J
    .param p3, "idPsicologoAsignado"    # Ljava/lang/Long;
    .param p4, "citas"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "citas"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    .line 5
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Long;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 3
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;-><init>(JLjava/lang/Long;Ljava/util/List;)V

    .line 7
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;JLjava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->copy(JLjava/lang/Long;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    return-object v0
.end method

.method public final copy(JLjava/lang/Long;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;"
        }
    .end annotation

    const-string v0, "citas"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;-><init>(JLjava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCitas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    return-object v0
.end method

.method public final getIdPaciente()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    return-wide v0
.end method

.method public final getIdPsicologoAsignado()Ljava/lang/Long;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPaciente:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->idPsicologoAsignado:Ljava/lang/Long;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPacienteResponse;->citas:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AgendaPacienteResponse(idPaciente="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idPsicologoAsignado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", citas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
