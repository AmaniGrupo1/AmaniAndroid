.class public Lcom/google/firebase/firestore/local/LruGarbageCollector;
.super Ljava/lang/Object;
.source "LruGarbageCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;,
        Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;,
        Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;,
        Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    }
.end annotation


# static fields
.field private static final INITIAL_GC_DELAY_MS:J

.field private static final REGULAR_GC_DELAY_MS:J


# instance fields
.field private final delegate:Lcom/google/firebase/firestore/local/LruDelegate;

.field private final params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->INITIAL_GC_DELAY_MS:J

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->REGULAR_GC_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/local/LruDelegate;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/firebase/firestore/local/LruDelegate;
    .param p2, "params"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    .line 162
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/local/LruGarbageCollector;

    .line 29
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 29
    sget-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->REGULAR_GC_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 29
    sget-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->INITIAL_GC_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic lambda$getNthSequenceNumber$0(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p0, "buffer"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 221
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->addElement(Ljava/lang/Long;)V

    return-void
.end method

.method private runGarbageCollection(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)",
            "Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;"
        }
    .end annotation

    .line 263
    .local p1, "liveTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 264
    .local v1, "startTs":J
    iget-object v3, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v3, v3, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->percentileToCollect:I

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->calculateQueryCount(I)I

    move-result v3

    .line 266
    .local v3, "sequenceNumbers":I
    iget-object v4, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v4, v4, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->maximumSequenceNumbersToCollect:I

    const/4 v5, 0x0

    const-string v6, "LruGarbageCollector"

    if-le v3, v4, :cond_0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capping sequence numbers to collect down to the maximum of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v7, v7, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->maximumSequenceNumbersToCollect:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v7}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v4, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v3, v4, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->maximumSequenceNumbersToCollect:I

    .line 275
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 277
    .local v7, "countedTargetsTs":J
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->getNthSequenceNumber(I)J

    move-result-wide v9

    .line 278
    .local v9, "upperBound":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 280
    .local v11, "foundUpperBoundTs":J
    move-object/from16 v4, p1

    invoke-virtual {v0, v9, v10, v4}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->removeTargets(JLandroid/util/SparseArray;)I

    move-result v13

    .line 281
    .local v13, "numTargetsRemoved":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 283
    .local v14, "removedTargetsTs":J
    invoke-virtual {v0, v9, v10}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->removeOrphanedDocuments(J)I

    move-result v5

    .line 284
    .local v5, "numDocumentsRemoved":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 286
    .local v16, "removedDocumentsTs":J
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 287
    const-string v0, "LRU Garbage Collection:\n"

    .line 288
    .local v0, "desc":Ljava/lang/String;
    move-wide/from16 v18, v1

    .end local v1    # "startTs":J
    .local v18, "startTs":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tCounted targets in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v20, v7

    .end local v7    # "countedTargetsTs":J
    .local v20, "countedTargetsTs":J
    sub-long v7, v20, v18

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-long v22, v11, v20

    .line 294
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 290
    const-string v8, "\tDetermined least recently used %d sequence numbers in %dms\n"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 299
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-long v22, v14, v11

    .line 300
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 296
    const-string v8, "\tRemoved %d targets in %dms\n"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-long v22, v16, v14

    .line 306
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 302
    const-string v8, "\tRemoved %d documents in %dms\n"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-long v7, v16, v18

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Total Duration: %dms"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    .end local v0    # "desc":Ljava/lang/String;
    .end local v18    # "startTs":J
    .end local v20    # "countedTargetsTs":J
    .restart local v1    # "startTs":J
    .restart local v7    # "countedTargetsTs":J
    :cond_1
    move-wide/from16 v18, v1

    move-wide/from16 v20, v7

    .line 310
    .end local v1    # "startTs":J
    .end local v7    # "countedTargetsTs":J
    .restart local v18    # "startTs":J
    .restart local v20    # "countedTargetsTs":J
    :goto_0
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v13, v5}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;-><init>(ZIII)V

    return-object v0
.end method


# virtual methods
.method calculateQueryCount(I)I
    .locals 4
    .param p1, "percentile"    # I

    .line 179
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/LruDelegate;->getSequenceNumberCount()J

    move-result-wide v0

    .line 180
    .local v0, "targetCount":J
    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    long-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method collect(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)",
            "Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;"
        }
    .end annotation

    .line 243
    .local p1, "activeTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget-wide v0, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "LruGarbageCollector"

    if-nez v0, :cond_0

    .line 244
    const-string v0, "Garbage collection skipped; disabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;->DidNotRun()Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->getByteSize()J

    move-result-wide v3

    .line 249
    .local v3, "cacheSize":J
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget-wide v5, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Garbage collection skipped; Cache size "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " is lower than threshold "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget-wide v5, v5, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;->DidNotRun()Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object v0

    return-object v0

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->runGarbageCollection(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object v0

    return-object v0
.end method

.method getByteSize()J
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/LruDelegate;->getByteSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getNthSequenceNumber(I)J
    .locals 3
    .param p1, "count"    # I

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-wide/16 v0, -0x1

    return-wide v0

    .line 220
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;-><init>(I)V

    .line 221
    .local v0, "buffer":Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    new-instance v2, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/firestore/local/LruDelegate;->forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 222
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/firestore/local/LruDelegate;->forEachOrphanedDocumentSequenceNumber(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 223
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->getMaxValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public newScheduler(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;
    .locals 1
    .param p1, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;

    .line 167
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V

    return-object v0
.end method

.method removeOrphanedDocuments(J)I
    .locals 1
    .param p1, "upperBound"    # J

    .line 239
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/firestore/local/LruDelegate;->removeOrphanedDocuments(J)I

    move-result v0

    return v0
.end method

.method removeTargets(JLandroid/util/SparseArray;)I
    .locals 1
    .param p1, "upperBound"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 231
    .local p3, "activeTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/firestore/local/LruDelegate;->removeTargets(JLandroid/util/SparseArray;)I

    move-result v0

    return v0
.end method

.method public withNewThreshold(J)Lcom/google/firebase/firestore/local/LruGarbageCollector;
    .locals 2
    .param p1, "cacheThreshold"    # J

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iput-wide p1, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    const/16 v1, 0x64

    iput v1, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->percentileToCollect:I

    .line 174
    return-object p0
.end method
