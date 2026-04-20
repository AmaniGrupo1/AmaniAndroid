.class public final Lorg/koin/core/time/DurationExtKt;
.super Ljava/lang/Object;
.source "DurationExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "inMs",
        "",
        "Lkotlin/time/Duration;",
        "getInMs-LRDsOJo",
        "(J)D",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getInMs-LRDsOJo(J)D
    .locals 4
    .param p0, "$this$inMs"    # J

    .line 5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMicroseconds-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method
