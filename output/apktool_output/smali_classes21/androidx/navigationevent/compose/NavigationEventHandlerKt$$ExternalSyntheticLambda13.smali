.class public final synthetic Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/navigationevent/compose/NavigationEventHandlerKt;"
    method = "NavigationEventHandler$lambda$11$lambda$10"
    proto = "(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigationevent/compose/NavigationEventState;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/NavigationEventState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda13;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda13;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    check-cast p1, Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-static {v0, p1}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler$lambda$11$lambda$10(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventTransitionState;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
