.class public final Landroidx/datastore/core/util/DirectBootUtil_androidKt;
.super Ljava/lang/Object;
.source "DirectBootUtil.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "requireDeviceProtectedStorageContext",
        "Landroid/content/Context;",
        "datastore-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final requireDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "$this$requireDeviceProtectedStorageContext"    # Landroid/content/Context;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_0
    move-object v0, p0

    .line 25
    :goto_0
    return-object v0
.end method
