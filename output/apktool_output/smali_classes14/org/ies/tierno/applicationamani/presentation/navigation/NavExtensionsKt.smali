.class public final Lorg/ies/tierno/applicationamani/presentation/navigation/NavExtensionsKt;
.super Ljava/lang/Object;
.source "NavExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "safePopBackStack",
        "",
        "Landroidx/navigation/NavController;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final safePopBackStack(Landroidx/navigation/NavController;)V
    .locals 1
    .param p0, "$this$safePopBackStack"    # Landroidx/navigation/NavController;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 11
    :cond_0
    return-void
.end method
