.class public final synthetic Landroidx/media3/datasource/PlaceholderDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/datasource/PlaceholderDataSource;"
    method = "<init>"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/media3/datasource/PlaceholderDataSource;->$r8$lambda$HDM3559DY8vWpsat317RpDbLVt0()Landroidx/media3/datasource/PlaceholderDataSource;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSource;

    return-object v0
.end method
