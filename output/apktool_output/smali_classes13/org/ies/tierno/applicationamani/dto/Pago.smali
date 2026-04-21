.class public final Lorg/ies/tierno/applicationamani/dto/Pago;
.super Ljava/lang/Object;
.source "Pago.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/Pago;",
        "",
        "idCita",
        "",
        "metodoPago",
        "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;",
        "monto",
        "Ljava/math/BigDecimal;",
        "<init>",
        "(JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V",
        "getIdCita",
        "()J",
        "getMetodoPago",
        "()Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;",
        "getMonto",
        "()Ljava/math/BigDecimal;",
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
.field private final idCita:J

.field private final metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

.field private final monto:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/Pago;->$stable:I

    return-void
.end method

.method public constructor <init>(JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "idCita"    # J
    .param p3, "metodoPago"    # Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;
    .param p4, "monto"    # Ljava/math/BigDecimal;

    const-string v0, "metodoPago"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monto"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    .line 8
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    .line 9
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    .line 6
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/Pago;JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/Pago;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/Pago;->copy(JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)Lorg/ies/tierno/applicationamani/dto/Pago;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    return-wide v0
.end method

.method public final component2()Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    return-object v0
.end method

.method public final component3()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final copy(JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)Lorg/ies/tierno/applicationamani/dto/Pago;
    .locals 1

    const-string v0, "metodoPago"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monto"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/Pago;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/dto/Pago;-><init>(JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/Pago;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/Pago;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIdCita()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    return-wide v0
.end method

.method public final getMetodoPago()Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    return-object v0
.end method

.method public final getMonto()Ljava/math/BigDecimal;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->idCita:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/Pago;->monto:Ljava/math/BigDecimal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pago(idCita="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metodoPago="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monto="

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
