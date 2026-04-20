.class public final Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;
.super Lcom/google/firebase/firestore/core/QueryOrPipeline;
.source "PipelineUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/QueryOrPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008\tJ\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;",
        "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
        "query",
        "Lcom/google/firebase/firestore/core/Query;",
        "<init>",
        "(Lcom/google/firebase/firestore/core/Query;)V",
        "getQuery$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/core/Query;",
        "component1",
        "component1$com_google_firebase_firebase_firestore",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final query:Lcom/google/firebase/firestore/core/Query;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Query;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;Lcom/google/firebase/firestore/core/Query;ILjava/lang/Object;)Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->copy(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    return-object v0
.end method

.method public final copy(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;-><init>(Lcom/google/firebase/firestore/core/Query;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v1, v1, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getQuery$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/Query;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryWrapper(query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryOrPipeline$QueryWrapper;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
