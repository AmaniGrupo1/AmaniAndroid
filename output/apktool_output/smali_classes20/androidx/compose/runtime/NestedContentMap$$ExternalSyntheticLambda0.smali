.class public final synthetic Landroidx/compose/runtime/NestedContentMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/runtime/NestedContentMap;"
    method = "usedContainer$lambda$0$0"
    proto = "(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/NestedMovableContent;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MovableContentStateReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/NestedContentMap$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MovableContentStateReference;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/NestedContentMap$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MovableContentStateReference;

    check-cast p1, Landroidx/compose/runtime/NestedMovableContent;

    invoke-static {v0, p1}, Landroidx/compose/runtime/NestedContentMap;->$r8$lambda$dwRlJ15WVvl1vLlSebcqVsocoZY(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/NestedMovableContent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
