.class public final Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265RepFormatsAndIndices"
.end annotation


# instance fields
.field public final indices:[I

.field public final repFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/container/NalUnitUtil$H265RepFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[I)V
    .locals 1
    .param p2, "indices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/container/NalUnitUtil$H265RepFormat;",
            ">;[I)V"
        }
    .end annotation

    .line 328
    .local p1, "repFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/container/NalUnitUtil$H265RepFormat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    .line 330
    iput-object p2, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->indices:[I

    .line 331
    return-void
.end method
