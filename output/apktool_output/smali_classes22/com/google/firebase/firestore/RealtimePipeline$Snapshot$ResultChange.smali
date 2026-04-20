.class public final Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
.super Ljava/lang/Object;
.source "RealtimePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;,
        Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 (2\u00020\u0001:\u0002\'(B-\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0011\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\u0012J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J:\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u0007H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;",
        "",
        "result",
        "Lcom/google/firebase/firestore/PipelineResult;",
        "type",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;",
        "oldIndex",
        "",
        "newIndex",
        "<init>",
        "(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "doc",
        "Lcom/google/firebase/firestore/model/Document;",
        "serverTimestampBehavior",
        "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
        "Lcom/google/firebase/firestore/DocumentChange$Type;",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/DocumentChange$Type;II)V",
        "getResult",
        "()Lcom/google/firebase/firestore/PipelineResult;",
        "getType",
        "()Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;",
        "getOldIndex",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getNewIndex",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "ChangeType",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;


# instance fields
.field private final newIndex:Ljava/lang/Integer;

.field private final oldIndex:Ljava/lang/Integer;

.field private final result:Lcom/google/firebase/firestore/PipelineResult;

.field private final type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->Companion:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/DocumentChange$Type;II)V
    .locals 4
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "doc"    # Lcom/google/firebase/firestore/model/Document;
    .param p3, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .param p4, "type"    # Lcom/google/firebase/firestore/DocumentChange$Type;
    .param p5, "oldIndex"    # I
    .param p6, "newIndex"    # I

    const-string v0, "firestore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTimestampBehavior"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    nop

    .line 274
    new-instance v0, Lcom/google/firebase/firestore/PipelineResult;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/firebase/firestore/PipelineResult;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 275
    sget-object v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->Companion:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;

    invoke-static {v1, p4}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;->access$getChangeType(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;Lcom/google/firebase/firestore/DocumentChange$Type;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    move-result-object v1

    .line 276
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 277
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 273
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;-><init>(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Lcom/google/firebase/firestore/PipelineResult;
    .param p2, "type"    # Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .param p3, "oldIndex"    # Ljava/lang/Integer;
    .param p4, "newIndex"    # Ljava/lang/Integer;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    .line 255
    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    .line 256
    iput-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    .line 257
    iput-object p4, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    .line 253
    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->copy(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/firebase/firestore/PipelineResult;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    return-object v0
.end method

.method public final component2()Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;-><init>(Lcom/google/firebase/firestore/PipelineResult;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    iget-object v4, v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    iget-object v4, v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    iget-object v1, v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getNewIndex()Ljava/lang/Integer;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOldIndex()Ljava/lang/Integer;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResult()Lcom/google/firebase/firestore/PipelineResult;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    return-object v0
.end method

.method public final getType()Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/PipelineResult;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultChange(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->result:Lcom/google/firebase/firestore/PipelineResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->type:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->oldIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;->newIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
