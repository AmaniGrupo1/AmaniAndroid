.class final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Landroidx/media3/common/VideoGraph$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectiveSingleInputVideoGraphFactory"
.end annotation


# instance fields
.field private final videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enableReplayableCache"    # Z

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;-><init>(Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 1259
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;JZ)Landroidx/media3/common/VideoGraph;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outputColorInfo"    # Landroidx/media3/common/ColorInfo;
    .param p3, "debugViewProvider"    # Landroidx/media3/common/DebugViewProvider;
    .param p4, "listener"    # Landroidx/media3/common/VideoGraph$Listener;
    .param p5, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "initialTimestampOffsetUs"    # J
    .param p8, "renderFramesAutomatically"    # Z

    .line 1275
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidx.media3.effect."

    .line 1277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SingleInputVideoGraph"

    .line 1278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Factory"

    .line 1279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1282
    .local v1, "singleInputVideoGraphFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroidx/media3/common/VideoFrameProcessor$Factory;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1285
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1286
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/VideoGraph$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1292
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "singleInputVideoGraphFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "factory":Landroidx/media3/common/VideoGraph$Factory;
    nop

    .line 1293
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Landroidx/media3/common/VideoGraph$Factory;->create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;JZ)Landroidx/media3/common/VideoGraph;

    move-result-object v0

    return-object v0

    .line 1290
    .end local v3    # "factory":Landroidx/media3/common/VideoGraph$Factory;
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public supportsMultipleInputs()Z
    .locals 1

    .line 1305
    const/4 v0, 0x0

    return v0
.end method
