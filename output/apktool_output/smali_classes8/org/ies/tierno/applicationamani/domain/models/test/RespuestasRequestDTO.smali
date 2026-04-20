.class public final Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;
.super Ljava/lang/Object;
.source "RespuestasRequestDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J0\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
        "",
        "idPregunta",
        "",
        "idOpcion",
        "texto",
        "",
        "<init>",
        "(JLjava/lang/Long;Ljava/lang/String;)V",
        "getIdPregunta",
        "()J",
        "getIdOpcion",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getTexto",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(JLjava/lang/Long;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
        "equals",
        "",
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
.field private final idOpcion:Ljava/lang/Long;

.field private final idPregunta:J

.field private final texto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "idPregunta"    # J
    .param p3, "idOpcion"    # Ljava/lang/Long;
    .param p4, "texto"    # Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    .line 5
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;JLjava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->copy(JLjava/lang/Long;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/Long;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;
    .locals 1

    new-instance v0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;-><init>(JLjava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIdOpcion()Ljava/lang/Long;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIdPregunta()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    return-wide v0
.end method

.method public final getTexto()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idPregunta:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->idOpcion:Ljava/lang/Long;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;->texto:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RespuestasRequestDTO(idPregunta="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idOpcion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", texto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
