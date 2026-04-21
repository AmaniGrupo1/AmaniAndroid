.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/model/WorkSpecDao_Impl;"
    method = "getAllEligibleWorkSpecsForScheduling$lambda$29"
    proto = "(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iput p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda16;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iget v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda16;->f$1:I

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getAllEligibleWorkSpecsForScheduling$lambda$29(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
