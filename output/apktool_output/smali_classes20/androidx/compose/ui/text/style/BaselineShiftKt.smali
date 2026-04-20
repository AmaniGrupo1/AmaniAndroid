.class public final Landroidx/compose/ui/text/style/BaselineShiftKt;
.super Ljava/lang/Object;
.source "BaselineShift.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u001a\"\u0010\u0005\u001a\u00020\u0002*\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0086\u0008\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\'\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "isSpecified",
        "",
        "Landroidx/compose/ui/text/style/BaselineShift;",
        "isSpecified-4Dl_Bck",
        "(F)Z",
        "takeOrElse",
        "block",
        "Lkotlin/Function0;",
        "takeOrElse-JpAxnlU",
        "(FLkotlin/jvm/functions/Function0;)F",
        "lerp",
        "start",
        "stop",
        "fraction",
        "",
        "lerp-jWV1Mfo",
        "(FFF)F",
        "ui-text"
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
.method public static final isSpecified-4Dl_Bck(F)Z
    .locals 2
    .param p0, "$v$c$androidx-compose-ui-text-style-BaselineShift$-$this$isSpecified$0"    # F

    const/4 v0, 0x0

    .line 56
    .local v0, "$i$f$isSpecified-4Dl_Bck":I
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final lerp-jWV1Mfo(FFF)F
    .locals 1
    .param p0, "$v$c$androidx-compose-ui-text-style-BaselineShift$-start$0"    # F
    .param p1, "$v$c$androidx-compose-ui-text-style-BaselineShift$-stop$0"    # F
    .param p2, "fraction"    # F

    .line 69
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    move-result v0

    return v0
.end method

.method public static final takeOrElse-JpAxnlU(FLkotlin/jvm/functions/Function0;)F
    .locals 2
    .param p0, "$v$c$androidx-compose-ui-text-style-BaselineShift$-$this$takeOrElse$0"    # F
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/style/BaselineShift;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$takeOrElse-JpAxnlU":I
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    return v1
.end method
