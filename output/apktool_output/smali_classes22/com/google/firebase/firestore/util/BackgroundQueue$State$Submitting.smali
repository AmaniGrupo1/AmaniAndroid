.class public final Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;
.super Ljava/lang/Object;
.source "BackgroundQueue.kt"

# interfaces
.implements Lcom/google/firebase/firestore/util/BackgroundQueue$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/BackgroundQueue$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Submitting"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;",
        "Lcom/google/firebase/firestore/util/BackgroundQueue$State;",
        "<init>",
        "()V",
        "completedTasks",
        "Ljava/util/concurrent/Semaphore;",
        "getCompletedTasks",
        "()Ljava/util/concurrent/Semaphore;",
        "taskCount",
        "",
        "getTaskCount",
        "()I",
        "setTaskCount",
        "(I)V",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final completedTasks:Ljava/util/concurrent/Semaphore;

.field private taskCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->completedTasks:Ljava/util/concurrent/Semaphore;

    .line 67
    return-void
.end method


# virtual methods
.method public final getCompletedTasks()Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->completedTasks:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public final getTaskCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->taskCount:I

    return v0
.end method

.method public final setTaskCount(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 69
    iput p1, p0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->taskCount:I

    return-void
.end method
