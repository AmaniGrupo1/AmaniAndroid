.class public final synthetic Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/tooling/ComposeViewAdapter;"
    method = "init$lambda$2$0"
    proto = "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroidx/compose/ui/tooling/ComposeViewAdapter;JLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Class;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroidx/compose/ui/tooling/ComposeViewAdapter;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroidx/compose/ui/tooling/ComposeViewAdapter;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Class;

    iput p4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$4:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    iput-wide p6, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$5:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Class;

    iget v3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$4:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    iget-wide v5, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$$ExternalSyntheticLambda8;->f$5:J

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->$r8$lambda$VfjzMxxWdeCeHqGyUS5g8vwfoY0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroidx/compose/ui/tooling/ComposeViewAdapter;JLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
