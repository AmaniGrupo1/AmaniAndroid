.class public final Lcom/google/firebase/firestore/SnapshotListenOptions;
.super Ljava/lang/Object;
.source "SnapshotListenOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

.field private final source:Lcom/google/firebase/firestore/ListenSource;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->access$000(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Lcom/google/firebase/firestore/MetadataChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    .line 45
    invoke-static {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->access$100(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Lcom/google/firebase/firestore/ListenSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    .line 46
    invoke-static {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->access$200(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->executor:Ljava/util/concurrent/Executor;

    .line 47
    invoke-static {p1}, Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;->access$300(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;Lcom/google/firebase/firestore/SnapshotListenOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;
    .param p2, "x1"    # Lcom/google/firebase/firestore/SnapshotListenOptions$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/SnapshotListenOptions;-><init>(Lcom/google/firebase/firestore/SnapshotListenOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 168
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/SnapshotListenOptions;

    .line 170
    .local v2, "that":Lcom/google/firebase/firestore/SnapshotListenOptions;
    iget-object v3, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    iget-object v4, v2, Lcom/google/firebase/firestore/SnapshotListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    iget-object v4, v2, Lcom/google/firebase/firestore/SnapshotListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->executor:Ljava/util/concurrent/Executor;

    iget-object v4, v2, Lcom/google/firebase/firestore/SnapshotListenOptions;->executor:Ljava/util/concurrent/Executor;

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    iget-object v4, v2, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 168
    .end local v2    # "that":Lcom/google/firebase/firestore/SnapshotListenOptions;
    :cond_3
    :goto_1
    return v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getMetadataChanges()Lcom/google/firebase/firestore/MetadataChanges;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    return-object v0
.end method

.method public getSource()Lcom/google/firebase/firestore/ListenSource;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/MetadataChanges;->hashCode()I

    move-result v0

    .line 179
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/ListenSource;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 180
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 182
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapshotListenOptions{metadataChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->source:Lcom/google/firebase/firestore/ListenSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/SnapshotListenOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
