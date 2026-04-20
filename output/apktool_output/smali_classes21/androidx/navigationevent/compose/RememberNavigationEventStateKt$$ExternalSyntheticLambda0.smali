.class public final synthetic Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/navigationevent/compose/RememberNavigationEventStateKt;"
    method = "rememberNavigationEventState$lambda$2$lambda$1"
    proto = "(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/navigationevent/compose/NavigationEventState;

.field public final synthetic f$1:Landroidx/navigationevent/NavigationEventInfo;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    iput-object p2, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$1:Landroidx/navigationevent/NavigationEventInfo;

    iput-object p3, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    iget-object v1, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$1:Landroidx/navigationevent/NavigationEventInfo;

    iget-object v2, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Landroidx/navigationevent/compose/RememberNavigationEventStateKt$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Landroidx/navigationevent/compose/RememberNavigationEventStateKt;->rememberNavigationEventState$lambda$2$lambda$1(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
