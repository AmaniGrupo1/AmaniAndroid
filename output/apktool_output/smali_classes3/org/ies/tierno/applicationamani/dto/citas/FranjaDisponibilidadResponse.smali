.class public final Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;
.super Ljava/lang/Object;
.source "FranjaDisponibilidadResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J<\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\u0010\u0010\u0016\u001a\u00020\u0015H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u000cR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u001b\u001a\u0004\u0008\u001d\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u000fR\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010 \u001a\u0004\u0008!\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;",
        "",
        "j$/time/LocalTime",
        "hora",
        "horaFin",
        "",
        "ocupado",
        "",
        "descripcion",
        "<init>",
        "(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)V",
        "component1",
        "()Lj$/time/LocalTime;",
        "component2",
        "component3",
        "()Z",
        "component4",
        "()Ljava/lang/String;",
        "copy",
        "(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lj$/time/LocalTime;",
        "getHora",
        "getHoraFin",
        "Z",
        "getOcupado",
        "Ljava/lang/String;",
        "getDescripcion",
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
.field private final descripcion:Ljava/lang/String;

.field private final hora:Lj$/time/LocalTime;

.field private final horaFin:Lj$/time/LocalTime;

.field private final ocupado:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ocupado"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->$stable:I

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)V
    .locals 1
    .param p1, "hora"    # Lj$/time/LocalTime;
    .param p2, "horaFin"    # Lj$/time/LocalTime;
    .param p3, "ocupado"    # Z
    .param p4, "descripcion"    # Ljava/lang/String;

    const-string v0, "hora"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    .line 8
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    .line 9
    iput-boolean p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    .line 11
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 6
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 8
    move-object p2, v0

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 10
    const/4 p3, 0x0

    .line 6
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 11
    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;-><init>(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)V

    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->copy(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final component2()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;
    .locals 1

    const-string v0, "hora"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;-><init>(Lj$/time/LocalTime;Lj$/time/LocalTime;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDescripcion()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final getHora()Lj$/time/LocalTime;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final getHoraFin()Lj$/time/LocalTime;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final getOcupado()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    invoke-virtual {v2}, Lj$/time/LocalTime;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->hora:Lj$/time/LocalTime;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->horaFin:Lj$/time/LocalTime;

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->ocupado:Z

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;->descripcion:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FranjaDisponibilidadResponse(hora="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", horaFin="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ocupado="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descripcion="

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
