.class public abstract Lcom/google/firebase/firestore/core/QueryOrPipeline;
.super Ljava/lang/Object;
.source "PipelineUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;,
        Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\r\u0010\n\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0018j\u0008\u0012\u0004\u0012\u00020\u0016`\u0019R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0006\u0082\u0001\u0002\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
        "",
        "<init>",
        "()V",
        "isQuery",
        "",
        "()Z",
        "isPipeline",
        "query",
        "Lcom/google/firebase/firestore/core/Query;",
        "pipeline",
        "Lcom/google/firebase/firestore/RealtimePipeline;",
        "pipeline$com_google_firebase_firebase_firestore",
        "canonicalId",
        "",
        "toString",
        "toTargetOrPipeline",
        "Lcom/google/firebase/firestore/core/TargetOrPipeline;",
        "matchesAllDocuments",
        "hasLimit",
        "matches",
        "doc",
        "Lcom/google/firebase/firestore/model/Document;",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "QueryWrapper",
        "PipelineWrapper",
        "Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;",
        "Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;-><init>()V

    return-void
.end method


# virtual methods
.method public final canonicalId()Ljava/lang/String;
    .locals 2

    .line 53
    nop

    .line 54
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCanonicalId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 95
    nop

    .line 96
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->comparator$com_google_firebase_firebase_firestore()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const-string v1, "comparator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final hasLimit()Z
    .locals 1

    .line 81
    nop

    .line 82
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->hasLimit$com_google_firebase_firebase_firestore()Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->hasLimit()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final isPipeline()Z
    .locals 1

    .line 42
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    return v0
.end method

.method public final isQuery()Z
    .locals 1

    .line 39
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    return v0
.end method

.method public final matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 1
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    nop

    .line 89
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/RealtimePipeline;->matches$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final matchesAllDocuments()Z
    .locals 1

    .line 74
    nop

    .line 75
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->matchesAllDocuments$com_google_firebase_firebase_firestore()Z

    move-result v0

    goto :goto_0

    .line 76
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->matchesAllDocuments()Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final pipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 1

    .line 49
    const-string v0, "null cannot be cast to non-null type com.google.firebase.firestore.core.QueryOrPipeline.PipelineWrapper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final query()Lcom/google/firebase/firestore/core/Query;
    .locals 1

    .line 45
    const-string v0, "null cannot be cast to non-null type com.google.firebase.firestore.core.QueryOrPipeline.QueryWrapper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    nop

    .line 61
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/RealtimePipeline;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final toTargetOrPipeline()Lcom/google/firebase/firestore/core/TargetOrPipeline;
    .locals 3

    .line 67
    nop

    .line 68
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;->getPipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/TargetOrPipeline$PipelineWrapper;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;)V

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline;

    goto :goto_0

    .line 69
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    const-string v2, "toTarget(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/TargetOrPipeline$TargetWrapper;-><init>(Lcom/google/firebase/firestore/core/Target;)V

    check-cast v0, Lcom/google/firebase/firestore/core/TargetOrPipeline;

    .line 67
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
