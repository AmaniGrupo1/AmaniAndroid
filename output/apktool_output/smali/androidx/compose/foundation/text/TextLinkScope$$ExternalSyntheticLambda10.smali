.class public final synthetic Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/TextLinkScope;"
    method = "LinksComposables$lambda$1"
    proto = "(Landroidx/compose/foundation/text/TextLinkScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/TextLinkScope;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/foundation/text/TextLinkScope;

    iput p2, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda10;->f$0:Landroidx/compose/foundation/text/TextLinkScope;

    iget v1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda10;->f$1:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables$lambda$1(Landroidx/compose/foundation/text/TextLinkScope;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
