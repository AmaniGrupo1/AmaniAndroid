.class public final Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;
.super Ljava/lang/Object;
.source "VistaDiariaHoras.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J=\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;",
        "",
        "diaSemana",
        "",
        "horaInicio",
        "",
        "horaFin",
        "activo",
        "",
        "motivo",
        "<init>",
        "(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "getDiaSemana",
        "()S",
        "getHoraInicio",
        "()Ljava/lang/String;",
        "getHoraFin",
        "getActivo",
        "()Z",
        "getMotivo",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field private final activo:Z

.field private final diaSemana:S

.field private final horaFin:Ljava/lang/String;

.field private final horaInicio:Ljava/lang/String;

.field private final motivo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "diaSemana"    # S
    .param p2, "horaInicio"    # Ljava/lang/String;
    .param p3, "horaFin"    # Ljava/lang/String;
    .param p4, "activo"    # Z
    .param p5, "motivo"    # Ljava/lang/String;

    const-string v0, "horaInicio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horaFin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-short p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    .line 58
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    .line 61
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public synthetic constructor <init>(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 56
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 60
    const/4 p4, 0x1

    move v4, p4

    goto :goto_0

    .line 56
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 61
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_1

    .line 56
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;-><init>(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-short p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->copy(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()S
    .locals 1

    iget-short v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;
    .locals 7

    const-string v0, "horaInicio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horaFin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;-><init>(SLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    iget-short v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    iget-short v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    iget-boolean v4, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getActivo()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    return v0
.end method

.method public final getDiaSemana()S
    .locals 1

    .line 57
    iget-short v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    return v0
.end method

.method public final getHoraFin()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    return-object v0
.end method

.method public final getHoraInicio()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    return-object v0
.end method

.method public final getMotivo()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-short v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    invoke-static {v0}, Ljava/lang/Short;->hashCode(S)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-short v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->diaSemana:S

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaInicio:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->horaFin:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->activo:Z

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->motivo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FranjaHoraria(diaSemana="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", horaInicio="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horaFin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motivo="

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
