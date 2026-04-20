.class public final Landroidx/media3/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GAPLESS_DESCRIPTION:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_DOMAIN:Ljava/lang/String; = "com.apple.iTunes"


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    nop

    .line 35
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 52
    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 53
    return-void
.end method

.method static synthetic lambda$setFromMetadata$0(Landroidx/media3/extractor/metadata/id3/CommentFrame;)Z
    .locals 2
    .param p0, "commentFrame"    # Landroidx/media3/extractor/metadata/id3/CommentFrame;

    .line 65
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    const-string v1, "iTunSMPB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setFromMetadata$1(Landroidx/media3/extractor/metadata/id3/InternalFrame;)Z
    .locals 2
    .param p0, "internalFrame"    # Landroidx/media3/extractor/metadata/id3/InternalFrame;

    .line 74
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    const-string v1, "com.apple.iTunes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 75
    const-string v1, "iTunSMPB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 91
    sget-object v0, Landroidx/media3/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 92
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, "encoderDelay":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 96
    .local v3, "encoderPadding":I
    if-gtz v2, :cond_1

    if-lez v3, :cond_0

    goto :goto_0

    .line 103
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_0
    goto :goto_1

    .line 97
    .restart local v2    # "encoderDelay":I
    .restart local v3    # "encoderPadding":I
    :cond_1
    :goto_0
    iput v2, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 98
    iput v3, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return v1

    .line 101
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :catch_0
    move-exception v1

    .line 105
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .locals 2

    .line 110
    iget v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFromMetadata(Landroidx/media3/common/Metadata;)Z
    .locals 4
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 63
    const-class v0, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    new-instance v1, Landroidx/media3/extractor/GaplessInfoHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/extractor/GaplessInfoHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Metadata;->getMatchingEntries(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    .line 66
    .local v1, "gaplessCommentFrame":Landroidx/media3/extractor/metadata/id3/CommentFrame;
    iget-object v3, v1, Landroidx/media3/extractor/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    return v2

    .line 69
    .end local v1    # "gaplessCommentFrame":Landroidx/media3/extractor/metadata/id3/CommentFrame;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    const-class v0, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    new-instance v1, Landroidx/media3/extractor/GaplessInfoHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/extractor/GaplessInfoHolder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Metadata;->getMatchingEntries(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    .line 76
    .local v1, "gaplessInternalFrame":Landroidx/media3/extractor/metadata/id3/InternalFrame;
    iget-object v3, v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    return v2

    .line 79
    .end local v1    # "gaplessInternalFrame":Landroidx/media3/extractor/metadata/id3/InternalFrame;
    :cond_2
    goto :goto_1

    .line 80
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
