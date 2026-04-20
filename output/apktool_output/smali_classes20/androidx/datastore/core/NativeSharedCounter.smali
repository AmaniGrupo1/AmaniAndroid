.class public final Landroidx/datastore/core/NativeSharedCounter;
.super Ljava/lang/Object;
.source "SharedCounter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0086 J\u0011\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0086 J\u0011\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008H\u0086 J\u0011\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008H\u0086 \u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/datastore/core/NativeSharedCounter;",
        "",
        "<init>",
        "()V",
        "nativeTruncateFile",
        "",
        "fd",
        "nativeCreateSharedCounter",
        "",
        "nativeGetCounterValue",
        "address",
        "nativeIncrementAndGetCounterValue",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native nativeCreateSharedCounter(I)J
.end method

.method public final native nativeGetCounterValue(J)I
.end method

.method public final native nativeIncrementAndGetCounterValue(J)I
.end method

.method public final native nativeTruncateFile(I)I
.end method
