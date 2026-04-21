.class public final Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;
.super Ljava/lang/Object;
.source "RespuestasRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;",
        "",
        "idPregunta",
        "",
        "idOpcion",
        "texto",
        "",
        "<init>",
        "(JJLjava/lang/String;)V",
        "getIdPregunta",
        "()J",
        "getIdOpcion",
        "getTexto",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
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
.field private final idOpcion:J

.field private final idPregunta:J

.field private final texto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0
    .param p1, "idPregunta"    # J
    .param p3, "idOpcion"    # J
    .param p5, "texto"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    .line 15
    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    .line 16
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 13
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 16
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_0

    .line 13
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;-><init>(JJLjava/lang/String;)V

    .line 17
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    :cond_2
    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->copy(JJLjava/lang/String;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJLjava/lang/String;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;
    .locals 6

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;-><init>(JJLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIdOpcion()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    return-wide v0
.end method

.method public final getIdPregunta()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    return-wide v0
.end method

.method public final getTexto()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idPregunta:J

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->idOpcion:J

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/RespuestasRequest;->texto:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RespuestasRequest(idPregunta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idOpcion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", texto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
