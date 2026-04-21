.class public final synthetic Landroidx/compose/ui/tooling/PreviewActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/tooling/PreviewActivity;"
    method = "setParameterizedContent$lambda$0$1$0$0"
    proto = "(Landroidx/compose/runtime/MutableIntState;[Ljava/lang/Object;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableIntState;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/PreviewActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableIntState;

    iput-object p2, p0, Landroidx/compose/ui/tooling/PreviewActivity$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/tooling/PreviewActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableIntState;

    iget-object v1, p0, Landroidx/compose/ui/tooling/PreviewActivity$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/tooling/PreviewActivity;->$r8$lambda$O8CxgYAEJdv-f6QoO3mkJZSui8c(Landroidx/compose/runtime/MutableIntState;[Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
