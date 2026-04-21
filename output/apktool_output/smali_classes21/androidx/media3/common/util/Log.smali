.class public final Landroidx/media3/common/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/Log$Logger;,
        Landroidx/media3/common/util/Log$LogLevel;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_INFO:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x7fffffff

.field public static final LOG_LEVEL_WARNING:I = 0x2

.field private static final lock:Ljava/lang/Object;

.field private static logLevel:I

.field private static logStackTraces:Z

.field private static logger:Landroidx/media3/common/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    sput v0, Landroidx/media3/common/util/Log;->logLevel:I

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/media3/common/util/Log;->logStackTraces:Z

    .line 141
    sget-object v0, Landroidx/media3/common/util/Log$Logger;->DEFAULT:Landroidx/media3/common/util/Log$Logger;

    sput-object v0, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 352
    invoke-static {p1}, Landroidx/media3/common/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "throwableString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 195
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    if-nez v1, :cond_0

    .line 197
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 211
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    if-nez v1, :cond_0

    .line 213
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Landroidx/media3/common/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :cond_0
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 288
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 290
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :cond_0
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 304
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 306
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Landroidx/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    :cond_0
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLogLevel()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 148
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    monitor-exit v0

    return v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 326
    if-nez p0, :cond_0

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_0
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    invoke-static {p0}, Landroidx/media3/common/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string v1, "UnknownHostException (no network)"

    monitor-exit v0

    return-object v1

    .line 339
    :cond_1
    sget-boolean v1, Landroidx/media3/common/util/Log;->logStackTraces:Z

    if-nez v1, :cond_2

    .line 340
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 342
    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, "    "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 226
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 228
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :cond_0
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 242
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 244
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Landroidx/media3/common/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :cond_0
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 361
    nop

    :goto_0
    if-eqz p0, :cond_1

    .line 362
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    return v0

    .line 365
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setLogLevel(I)V
    .locals 2
    .param p0, "logLevel"    # I

    .line 159
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    sput p0, Landroidx/media3/common/util/Log;->logLevel:I

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogStackTraces(Z)V
    .locals 2
    .param p0, "logStackTraces"    # Z

    .line 171
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    sput-boolean p0, Landroidx/media3/common/util/Log;->logStackTraces:Z

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogger(Landroidx/media3/common/util/Log$Logger;)V
    .locals 2
    .param p0, "logger"    # Landroidx/media3/common/util/Log$Logger;

    .line 182
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sput-object p0, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    .line 184
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 257
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 259
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    :cond_0
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 273
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 275
    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Landroidx/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    :cond_0
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
