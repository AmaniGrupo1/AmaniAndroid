.class final Landroidx/datastore/core/SharedCounter$RealSharedCounter;
.super Ljava/lang/Object;
.source "SharedCounter.android.kt"

# interfaces
.implements Landroidx/datastore/core/SharedCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/SharedCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RealSharedCounter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/datastore/core/SharedCounter$RealSharedCounter;",
        "Landroidx/datastore/core/SharedCounter;",
        "nativeSharedCounter",
        "Landroidx/datastore/core/NativeSharedCounter;",
        "mappedAddress",
        "",
        "<init>",
        "(Landroidx/datastore/core/NativeSharedCounter;J)V",
        "getValue",
        "",
        "incrementAndGetValue",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mappedAddress:J

.field private final nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/NativeSharedCounter;J)V
    .locals 1
    .param p1, "nativeSharedCounter"    # Landroidx/datastore/core/NativeSharedCounter;
    .param p2, "mappedAddress"    # J

    const-string/jumbo v0, "nativeSharedCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/datastore/core/SharedCounter$RealSharedCounter;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    .line 49
    iput-wide p2, p0, Landroidx/datastore/core/SharedCounter$RealSharedCounter;->mappedAddress:J

    .line 46
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .line 52
    iget-object v0, p0, Landroidx/datastore/core/SharedCounter$RealSharedCounter;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    iget-wide v1, p0, Landroidx/datastore/core/SharedCounter$RealSharedCounter;->mappedAddress:J

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/core/NativeSharedCounter;->nativeGetCounterValue(J)I

    move-result v0

    return v0
.end method

.method public incrementAndGetValue()I
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/datastore/core/SharedCounter$RealSharedCounter;->nativeSharedCounter:Landroidx/datastore/core/NativeSharedCounter;

    iget-wide v1, p0, Landroidx/datastore/core/SharedCounter$RealSharedCounter;->mappedAddress:J

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/core/NativeSharedCounter;->nativeIncrementAndGetCounterValue(J)I

    move-result v0

    return v0
.end method
