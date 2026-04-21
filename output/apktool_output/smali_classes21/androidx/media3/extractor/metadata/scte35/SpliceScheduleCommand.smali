.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;,
        Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    }
.end annotation


# instance fields
.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 180
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    .line 181
    return-void
.end method

.method static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
    .locals 4
    .param p0, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 184
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 185
    .local v0, "spliceCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->access$100(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object v2
.end method
