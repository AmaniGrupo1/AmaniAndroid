.class public final Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
.super Ljava/lang/Object;
.source "SituacionDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J5\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        "",
        "idSituacion",
        "",
        "nombre",
        "",
        "categoria",
        "descripcion",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getIdSituacion",
        "()J",
        "getNombre",
        "()Ljava/lang/String;",
        "getCategoria",
        "getDescripcion",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final categoria:Ljava/lang/String;

.field private final descripcion:Ljava/lang/String;

.field private final idSituacion:J

.field private final nombre:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "idSituacion"    # J
    .param p3, "nombre"    # Ljava/lang/String;
    .param p4, "categoria"    # Ljava/lang/String;
    .param p5, "descripcion"    # Ljava/lang/String;

    const-string v0, "nombre"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    .line 5
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 3
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 6
    move-object p4, v0

    .line 3
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 7
    move-object p6, v0

    goto :goto_0

    .line 3
    :cond_1
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-wide p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    :cond_3
    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
    .locals 7

    const-string v0, "nombre"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCategoria()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescripcion()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdSituacion()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    return-wide v0
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->idSituacion:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->nombre:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->categoria:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->descripcion:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SituacionDTO(idSituacion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nombre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoria="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descripcion="

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
