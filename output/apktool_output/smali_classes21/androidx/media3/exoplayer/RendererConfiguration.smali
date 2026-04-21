.class public final Landroidx/media3/exoplayer/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;


# instance fields
.field public final offloadModePreferred:I

.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    sput-object v0, Landroidx/media3/exoplayer/RendererConfiguration;->DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "offloadModePreferred"    # I
    .param p2, "tunneling"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    .line 58
    iput-boolean p2, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "tunneling"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    .line 47
    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/RendererConfiguration;

    .line 70
    .local v2, "other":Landroidx/media3/exoplayer/RendererConfiguration;
    iget v3, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    iget v4, v2, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 67
    .end local v2    # "other":Landroidx/media3/exoplayer/RendererConfiguration;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 75
    iget v0, p0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    shl-int/lit8 v0, v0, 0x1

    .line 76
    .local v0, "hashCode":I
    iget-boolean v1, p0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    add-int/2addr v0, v1

    .line 77
    return v0
.end method
