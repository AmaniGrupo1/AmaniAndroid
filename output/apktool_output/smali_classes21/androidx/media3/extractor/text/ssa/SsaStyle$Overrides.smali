.class final Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Overrides"
.end annotation


# static fields
.field private static final ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

.field private static final BRACES_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PADDED_DECIMAL_PATTERN:Ljava/lang/String; = "\\s*\\d+(?:\\.\\d+)?\\s*"

.field private static final POSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SsaStyle.Overrides"


# instance fields
.field public final alignment:I

.field public final position:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 437
    const-string v0, "\\{([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    .line 442
    const-string v0, "\\s*\\d+(?:\\.\\d+)?\\s*"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 443
    const-string v2, "\\\\pos\\((%1$s),(%1$s)\\)"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 446
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 448
    const-string v1, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    .line 452
    const-string v0, "\\\\an(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "alignment"    # I
    .param p2, "position"    # Landroid/graphics/PointF;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->alignment:I

    .line 459
    iput-object p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    .line 460
    return-void
.end method

.method private static parseAlignmentOverride(Ljava/lang/String;)I
    .locals 2
    .param p0, "braceContents"    # Ljava/lang/String;

    .line 532
    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 533
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/text/ssa/SsaStyle;->access$000(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 535
    :cond_0
    const/4 v1, -0x1

    .line 533
    :goto_0
    return v1
.end method

.method public static parseFromDialogue(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 463
    const/4 v0, -0x1

    .line 464
    .local v0, "alignment":I
    const/4 v1, 0x0

    .line 465
    .local v1, "position":Landroid/graphics/PointF;
    sget-object v2, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 466
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 469
    .local v3, "braceContents":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .local v4, "parsedPosition":Landroid/graphics/PointF;
    if-eqz v4, :cond_0

    .line 471
    move-object v1, v4

    .line 475
    .end local v4    # "parsedPosition":Landroid/graphics/PointF;
    :cond_0
    goto :goto_1

    .line 473
    :catch_0
    move-exception v4

    .line 477
    :goto_1
    :try_start_1
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->parseAlignmentOverride(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    .local v4, "parsedAlignment":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 479
    move v0, v4

    .line 483
    .end local v4    # "parsedAlignment":I
    :cond_1
    goto :goto_2

    .line 481
    :catch_1
    move-exception v4

    .line 484
    .end local v3    # "braceContents":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 485
    :cond_2
    new-instance v3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;

    invoke-direct {v3, v0, v1}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;-><init>(ILandroid/graphics/PointF;)V

    return-object v3
.end method

.method private static parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 9
    .param p0, "styleOverride"    # Ljava/lang/String;

    .line 504
    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->POSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 505
    .local v0, "positionMatcher":Ljava/util/regex/Matcher;
    sget-object v1, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->MOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 506
    .local v1, "moveMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 507
    .local v2, "hasPosition":Z
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 511
    .local v3, "hasMove":Z
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 512
    if-eqz v3, :cond_0

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SsaStyle.Overrides"

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, "x":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "y":Ljava/lang/String;
    goto :goto_0

    .line 521
    .end local v4    # "y":Ljava/lang/String;
    .end local v5    # "x":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 522
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "x":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 527
    .restart local v4    # "y":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/graphics/PointF;

    .line 528
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 527
    return-object v6

    .line 525
    .end local v4    # "y":Ljava/lang/String;
    .end local v5    # "x":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public static stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dialogueLine"    # Ljava/lang/String;

    .line 489
    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
