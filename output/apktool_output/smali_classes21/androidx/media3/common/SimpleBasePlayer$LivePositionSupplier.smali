.class public final Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LivePositionSupplier"
.end annotation


# instance fields
.field private finalValue:J

.field private final livePosition:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# direct methods
.method public constructor <init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V
    .locals 2
    .param p1, "livePosition"    # Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2189
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->livePosition:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2190
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->finalValue:J

    .line 2191
    return-void
.end method


# virtual methods
.method public disconnect(J)V
    .locals 0
    .param p1, "finalValue"    # J

    .line 2201
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->finalValue:J

    .line 2202
    return-void
.end method

.method public get()J
    .locals 4

    .line 2206
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->finalValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->finalValue:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->livePosition:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
