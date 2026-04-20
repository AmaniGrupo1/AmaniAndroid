.class public final synthetic Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;"
    method = "addAnimations$lambda$1$0$0"
    proto = "(Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;Landroidx/compose/ui/Modifier$Element;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;

    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    invoke-static {v0, p1}, Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;->$r8$lambda$eumubazLX3rPa32p-5PWb4lF8Js(Landroidx/compose/ui/tooling/animation/AnimationSearch$AnimateContentSizeSearch;Landroidx/compose/ui/Modifier$Element;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
