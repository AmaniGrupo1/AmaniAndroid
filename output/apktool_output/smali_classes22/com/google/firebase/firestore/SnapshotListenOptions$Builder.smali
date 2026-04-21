.class public Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
.super Ljava/lang/Object;
.source "SnapshotListenOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/SnapshotListenOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private executor:Ljava/util/concurrent/Executor;

.field private metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

.field private source:Lcom/google/firebase/firestore/ListenSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    .line 94
    sget-object v0, Lcom/google/firebase/firestore/ListenSource;->DEFAULT:Lcom/google/firebase/firestore/ListenSource;

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->source:Lcom/google/firebase/firestore/ListenSource;

    .line 95
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->activity:Landroid/app/Activity;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Lcom/google/firebase/firestore/MetadataChanges;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Lcom/google/firebase/firestore/ListenSource;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->source:Lcom/google/firebase/firestore/ListenSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/firebase/firestore/SnapshotListenOptions;
    .locals 2

    .line 161
    new-instance v0, Lcom/google/firebase/firestore/SnapshotListenOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/SnapshotListenOptions;-><init>(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;Lcom/google/firebase/firestore/SnapshotListenOptions$1;)V

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 148
    const-string v0, "activity must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->activity:Landroid/app/Activity;

    .line 150
    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 134
    const-string v0, "executor must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 136
    return-object p0
.end method

.method public setMetadataChanges(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
    .locals 1
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;

    .line 108
    const-string v0, "metadataChanges must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    .line 110
    return-object p0
.end method

.method public setSource(Lcom/google/firebase/firestore/ListenSource;)Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
    .locals 1
    .param p1, "source"    # Lcom/google/firebase/firestore/ListenSource;

    .line 121
    const-string v0, "listen source must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->source:Lcom/google/firebase/firestore/ListenSource;

    .line 123
    return-object p0
.end method
