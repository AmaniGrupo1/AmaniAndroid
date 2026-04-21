.class public final Landroidx/compose/runtime/ReusableRememberObserverHolder;
.super Landroidx/compose/runtime/RememberObserverHolder;
.source "Composer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/runtime/ReusableRememberObserverHolder;",
        "Landroidx/compose/runtime/RememberObserverHolder;",
        "wrapped",
        "Landroidx/compose/runtime/RememberObserver;",
        "afterGroupIndex",
        "",
        "<init>",
        "(Landroidx/compose/runtime/RememberObserver;I)V",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/RememberObserver;I)V
    .locals 0
    .param p1, "wrapped"    # Landroidx/compose/runtime/RememberObserver;
    .param p2, "afterGroupIndex"    # I

    .line 1433
    nop

    .line 1434
    nop

    .line 1433
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/RememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    return-void
.end method
