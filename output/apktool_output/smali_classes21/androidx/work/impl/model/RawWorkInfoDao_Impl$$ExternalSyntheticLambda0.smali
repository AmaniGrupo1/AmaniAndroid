.class public final synthetic Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/model/RawWorkInfoDao_Impl;"
    method = "__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4"
    proto = "(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

.field public final synthetic f$1:Landroidx/sqlite/SQLiteConnection;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->f$1:Landroidx/sqlite/SQLiteConnection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iget-object v1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->f$1:Landroidx/sqlite/SQLiteConnection;

    check-cast p1, Landroidx/collection/ArrayMap;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData$lambda$4(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
