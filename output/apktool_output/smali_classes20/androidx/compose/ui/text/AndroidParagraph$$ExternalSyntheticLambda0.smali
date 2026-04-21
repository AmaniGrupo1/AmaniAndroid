.class public final synthetic Landroidx/compose/ui/text/AndroidParagraph$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/text/AndroidParagraph;"
    method = "getRangeForRect_8_6BmAI$lambda$0"
    proto = "(Landroidx/compose/ui/text/TextInclusionStrategy;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/TextInclusionStrategy;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextInclusionStrategy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/AndroidParagraph$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/TextInclusionStrategy;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/TextInclusionStrategy;

    check-cast p1, Landroid/graphics/RectF;

    check-cast p2, Landroid/graphics/RectF;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/text/AndroidParagraph;->getRangeForRect_8_6BmAI$lambda$0(Landroidx/compose/ui/text/TextInclusionStrategy;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
