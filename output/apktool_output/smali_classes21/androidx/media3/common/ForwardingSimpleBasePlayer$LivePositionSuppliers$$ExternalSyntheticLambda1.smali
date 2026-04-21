.class public final synthetic Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/Player;"
    method = "getBufferedPosition"
    proto = "()J"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/Player;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/Player;

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method
