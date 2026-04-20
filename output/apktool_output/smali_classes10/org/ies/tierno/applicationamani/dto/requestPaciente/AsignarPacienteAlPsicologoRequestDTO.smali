.class public final Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
.super Ljava/lang/Object;
.source "AsignarPacienteAlPsicologoRequestDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;",
        "",
        "idPaciente",
        "",
        "idPsicologo",
        "<init>",
        "(JJ)V",
        "getIdPaciente",
        "()J",
        "getIdPsicologo",
        "component1",
        "component2",
        "copy",
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
.field private final idPaciente:J

.field private final idPsicologo:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "idPaciente"    # J
    .param p3, "idPsicologo"    # J

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    .line 6
    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    .line 4
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;JJILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->copy(JJ)Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    return-wide v0
.end method

.method public final copy(JJ)Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIdPaciente()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    return-wide v0
.end method

.method public final getIdPsicologo()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPaciente:J

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;->idPsicologo:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsignarPacienteAlPsicologoRequestDTO(idPaciente="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
