.class public final Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

.field public static final TYPE_NO_TIMESTAMP:I = -0x3

.field public static final TYPE_POSITION_OVERESTIMATED:I = -0x1

.field public static final TYPE_POSITION_UNDERESTIMATED:I = -0x2

.field public static final TYPE_TARGET_TIMESTAMP_FOUND:I


# instance fields
.field private final bytePositionToUpdate:J

.field private final timestampToUpdate:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 424
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "timestampToUpdate"    # J
    .param p4, "bytePositionToUpdate"    # J

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput p1, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    .line 449
    iput-wide p2, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 450
    iput-wide p4, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    .line 451
    return-void
.end method

.method static synthetic access$500(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 399
    iget v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 399
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 399
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-wide v0
.end method

.method public static overestimatedResult(JJ)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 6
    .param p0, "newCeilingTimestamp"    # J
    .param p2, "newCeilingBytePosition"    # J

    .line 460
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-wide v2, p0

    move-wide v4, p2

    .end local p0    # "newCeilingTimestamp":J
    .end local p2    # "newCeilingBytePosition":J
    .local v2, "newCeilingTimestamp":J
    .local v4, "newCeilingBytePosition":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

.method public static targetFoundResult(J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 6
    .param p0, "resultBytePosition"    # J

    .line 480
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    .end local p0    # "resultBytePosition":J
    .local v4, "resultBytePosition":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

.method public static underestimatedResult(JJ)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 6
    .param p0, "newFloorTimestamp"    # J
    .param p2, "newCeilingBytePosition"    # J

    .line 471
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x2

    move-wide v2, p0

    move-wide v4, p2

    .end local p0    # "newFloorTimestamp":J
    .end local p2    # "newCeilingBytePosition":J
    .local v2, "newFloorTimestamp":J
    .local v4, "newCeilingBytePosition":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method
