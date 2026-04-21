.class public final Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCacheKt;
.super Ljava/lang/Object;
.source "MultiParagraphLayoutCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraphLayoutCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraphLayoutCache.kt\nandroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCacheKt\n+ 2 TextUnit.kt\nandroidx/compose/ui/unit/TextUnitKt\n+ 3 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,532:1\n252#2:533\n147#3,2:534\n147#3,2:536\n*S KotlinDebug\n*F\n+ 1 MultiParagraphLayoutCache.kt\nandroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCacheKt\n*L\n520#1:533\n523#1:534,2\n525#1:536,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0082\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "times",
        "Landroidx/compose/ui/unit/TextUnit;",
        "other",
        "times-NB67dxo",
        "(JJ)J",
        "DefaultFontSize",
        "J",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DefaultFontSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 531
    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCacheKt;->DefaultFontSize:J

    return-void
.end method

.method public static final synthetic access$times-NB67dxo(JJ)J
    .locals 2
    .param p0, "$receiver"    # J
    .param p2, "$v$c$androidx-compose-ui-unit-TextUnit$-other$0"    # J

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCacheKt;->times-NB67dxo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final times-NB67dxo(JJ)J
    .locals 7
    .param p0, "$v$c$androidx-compose-ui-unit-TextUnit$-$this$times$0"    # J
    .param p2, "$v$c$androidx-compose-ui-unit-TextUnit$-other$0"    # J

    .line 512
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->isEm-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->isEm-impl(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 520
    move-wide v0, p0

    .local v0, "$v$c$androidx-compose-ui-unit-TextUnit$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 533
    .local v2, "$i$f$isUnspecified--R2X_6o":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 520
    .end local v0    # "$v$c$androidx-compose-ui-unit-TextUnit$-$this$isUnspecified$0$iv":J
    .end local v2    # "$i$f$isUnspecified--R2X_6o":I
    :goto_0
    if-eqz v3, :cond_1

    .line 523
    sget-wide v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCacheKt;->DefaultFontSize:J

    .local v0, "$v$c$androidx-compose-ui-unit-TextUnit$-this$0$iv":J
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    .local v2, "other$iv":F
    const/4 v3, 0x0

    .line 534
    .local v3, "$i$f$times-kPz2Gy4":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->checkArithmetic--R2X_6o(J)V

    .line 535
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v6

    mul-float/2addr v6, v2

    invoke-static {v4, v5, v6}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide v0

    .line 523
    .end local v0    # "$v$c$androidx-compose-ui-unit-TextUnit$-this$0$iv":J
    .end local v2    # "other$iv":F
    .end local v3    # "$i$f$times-kPz2Gy4":I
    return-wide v0

    .line 525
    :cond_1
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v0

    .local v0, "other$iv":F
    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-unit-TextUnit$-this$0$iv":J
    const/4 v3, 0x0

    .line 536
    .restart local v3    # "$i$f$times-kPz2Gy4":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->checkArithmetic--R2X_6o(J)V

    .line 537
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v6

    mul-float/2addr v6, v0

    invoke-static {v4, v5, v6}, Landroidx/compose/ui/unit/TextUnitKt;->pack(JF)J

    move-result-wide v0

    .line 525
    .end local v0    # "other$iv":F
    .end local v1    # "$v$c$androidx-compose-ui-unit-TextUnit$-this$0$iv":J
    .end local v3    # "$i$f$times-kPz2Gy4":I
    return-wide v0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert Em to Px when style.fontSize is Em ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    nop

    .line 515
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    nop

    .line 515
    const-string v2, "). Please declare the style.fontSize with Sp units instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The multiplier must be in em, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
