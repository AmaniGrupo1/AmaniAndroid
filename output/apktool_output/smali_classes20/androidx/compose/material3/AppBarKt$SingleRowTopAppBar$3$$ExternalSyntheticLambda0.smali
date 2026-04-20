.class public final synthetic Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/compose/material3/ScrolledOffset;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3;"
    method = "invoke$lambda$1$lambda$0"
    proto = "(Landroidx/compose/material3/TopAppBarScrollBehavior;)F"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/TopAppBarScrollBehavior;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/TopAppBarScrollBehavior;

    return-void
.end method


# virtual methods
.method public final offset()F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-static {v0}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3;->invoke$lambda$1$lambda$0(Landroidx/compose/material3/TopAppBarScrollBehavior;)F

    move-result v0

    return v0
.end method
