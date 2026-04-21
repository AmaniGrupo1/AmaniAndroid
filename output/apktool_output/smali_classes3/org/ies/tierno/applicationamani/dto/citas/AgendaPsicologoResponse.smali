.class public final Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;
.super Ljava/lang/Object;
.source "AgendaPsicologoResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\u000f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H\u00c6\u0003JG\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;",
        "",
        "horaInicio",
        "",
        "horaFin",
        "duracionSesion",
        "diasNoDisponibles",
        "",
        "",
        "citas",
        "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
        "<init>",
        "(IIILjava/util/List;Ljava/util/List;)V",
        "getHoraInicio",
        "()I",
        "getHoraFin",
        "getDuracionSesion",
        "getDiasNoDisponibles",
        "()Ljava/util/List;",
        "getCitas",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
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
.field private final citas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final diasNoDisponibles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final duracionSesion:I

.field private final horaFin:I

.field private final horaInicio:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;-><init>(IIILjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "horaInicio"    # I
    .param p2, "horaFin"    # I
    .param p3, "duracionSesion"    # I
    .param p4, "diasNoDisponibles"    # Ljava/util/List;
    .param p5, "citas"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "diasNoDisponibles"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "citas"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    .line 5
    iput p2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    .line 6
    iput p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    .line 7
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    .line 8
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 4
    const/16 p1, 0x8

    .line 3
    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 5
    const/16 p2, 0x14

    .line 3
    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 6
    const/16 p3, 0x3c

    .line 3
    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 3
    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    move-object p7, p5

    goto :goto_0

    .line 3
    :cond_4
    move-object p7, p5

    :goto_0
    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p7}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;-><init>(IIILjava/util/List;Ljava/util/List;)V

    .line 9
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;IIILjava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->copy(IIILjava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIILjava/util/List;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaDetalleResponse;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;"
        }
    .end annotation

    const-string v0, "diasNoDisponibles"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "citas"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;-><init>(IIILjava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;

    iget v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    iget v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    iget v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    iget v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
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

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    return-object v0
.end method

.method public final getDiasNoDisponibles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    return-object v0
.end method

.method public final getDuracionSesion()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    return v0
.end method

.method public final getHoraFin()I
    .locals 1

    .line 5
    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    return v0
.end method

.method public final getHoraInicio()I
    .locals 1

    .line 4
    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaInicio:I

    iget v1, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->horaFin:I

    iget v2, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->duracionSesion:I

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->diasNoDisponibles:Ljava/util/List;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/citas/AgendaPsicologoResponse;->citas:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AgendaPsicologoResponse(horaInicio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", horaFin="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duracionSesion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diasNoDisponibles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", citas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
