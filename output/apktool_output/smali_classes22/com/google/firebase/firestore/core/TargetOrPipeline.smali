.class public abstract Lcom/google/firebase/firestore/core/TargetOrPipeline;
.super Ljava/lang/Object;
.source "PipelineUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;,
        Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\r\u0010\n\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000cJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0006R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0001\u0002\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/google/firebase/firestore/core/TargetOrPipeline;",
        "",
        "<init>",
        "()V",
        "isTarget",
        "",
        "()Z",
        "isPipeline",
        "target",
        "Lcom/google/firebase/firestore/core/Target;",
        "pipeline",
        "Lcom/google/firebase/firestore/RealtimePipeline;",
        "pipeline$com_google_firebase_firebase_firestore",
        "singleDocPath",
        "Lcom/google/firebase/firestore/model/ResourcePath;",
        "getSingleDocPath",
        "()Lcom/google/firebase/firestore/model/ResourcePath;",
        "canonicalId",
        "",
        "toString",
        "TargetWrapper",
        "PipelineWrapper",
        "Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;",
        "Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/core/TargetOrPipeline;-><init>()V

    return-void
.end method


# virtual methods
.method public final canonicalId()Ljava/lang/String;
    .locals 2

    .line 144
    nop

    .line 145
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;->getPipeline()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCanonicalId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getSingleDocPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 4

    .line 123
    nop

    .line 124
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    nop

    .line 126
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    .line 125
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;->getPipeline()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/core/PipelineSourceType;->DOCUMENTS:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v2, :cond_0

    .line 126
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;->getPipeline()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineDocuments(Lcom/google/firebase/firestore/RealtimePipeline;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "docs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 128
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "docs":[Ljava/lang/String;
    :cond_0
    return-object v1

    .line 133
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    if-eqz v0, :cond_3

    .line 134
    nop

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    .line 134
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->isDocumentQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    return-object v0

    .line 138
    :cond_2
    return-object v1

    .line 123
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final isPipeline()Z
    .locals 1

    .line 111
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    return v0
.end method

.method public final isTarget()Z
    .locals 1

    .line 108
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    return v0
.end method

.method public final pipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 1

    .line 118
    const-string v0, "null cannot be cast to non-null type com.google.firebase.firestore.core.TargetOrPipeline.PipelineWrapper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;->getPipeline()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final target()Lcom/google/firebase/firestore/core/Target;
    .locals 1

    .line 114
    const-string v0, "null cannot be cast to non-null type com.google.firebase.firestore.core.TargetOrPipeline.TargetWrapper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    nop

    .line 152
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;->getPipeline()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
