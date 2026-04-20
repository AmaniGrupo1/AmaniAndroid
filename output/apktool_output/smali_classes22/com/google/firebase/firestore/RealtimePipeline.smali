.class public final Lcom/google/firebase/firestore/RealtimePipeline;
.super Ljava/lang/Object;
.source "RealtimePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;,
        Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealtimePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealtimePipeline.kt\ncom/google/firebase/firestore/RealtimePipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,694:1\n1797#2,3:695\n1557#2:698\n1628#2,3:699\n1#3:702\n*S KotlinDebug\n*F\n+ 1 RealtimePipeline.kt\ncom/google/firebase/firestore/RealtimePipeline\n*L\n547#1:695,3\n604#1:698\n604#1:699,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0002XYBA\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eB-\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\n\u00a2\u0006\u0004\u0008\r\u0010\u0010J\u001a\u0010\u001b\u001a\u00020\u00002\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u0002J\u0014\u0010\u001c\u001a\u00020\u00002\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0002J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ\'\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0012\u0010\"\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020!0#\"\u00020!\u00a2\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\'J\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)J\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)2\u0006\u0010+\u001a\u00020,J\u0014\u0010-\u001a\u00020.2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020*00J\u001c\u0010-\u001a\u00020.2\u0006\u0010+\u001a\u00020,2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020*00J\u001c\u0010-\u001a\u00020.2\u0006\u00101\u001a\u0002022\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020*00J$\u0010-\u001a\u00020.2\u0006\u00101\u001a\u0002022\u0006\u0010+\u001a\u00020,2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020*00J\u0015\u00103\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u00084J\r\u00109\u001a\u00020:H\u0000\u00a2\u0006\u0002\u0008;J\u0008\u0010<\u001a\u00020:H\u0016J\u0013\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010@\u001a\u00020\u001eH\u0016J!\u0010A\u001a\u0008\u0012\u0004\u0012\u00020B0\t2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020B0\tH\u0000\u00a2\u0006\u0002\u0008DJ\r\u0010E\u001a\u00020>H\u0000\u00a2\u0006\u0002\u0008FJ\r\u0010G\u001a\u00020>H\u0000\u00a2\u0006\u0002\u0008HJ\u0015\u0010I\u001a\u00020>2\u0006\u0010J\u001a\u00020KH\u0000\u00a2\u0006\u0002\u0008LJ\u0008\u0010M\u001a\u00020NH\u0002J\u001d\u0010O\u001a\u0012\u0012\u0004\u0012\u00020K0Pj\u0008\u0012\u0004\u0012\u00020K`QH\u0000\u00a2\u0006\u0002\u0008RJ\r\u0010S\u001a\u00020TH\u0000\u00a2\u0006\u0002\u0008UJ\u0008\u0010V\u001a\u00020WH\u0002R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR%\u00105\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\t8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00086\u0010\u0018\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipeline;",
        "",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "serializer",
        "Lcom/google/firebase/firestore/remote/RemoteSerializer;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "stages",
        "",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "internalOptions",
        "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)V",
        "stage",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V",
        "getFirestore$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/FirebaseFirestore;",
        "getSerializer$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/remote/RemoteSerializer;",
        "getUserDataReader$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/UserDataReader;",
        "getStages$com_google_firebase_firebase_firestore",
        "()Ljava/util/List;",
        "getInternalOptions$com_google_firebase_firebase_firestore",
        "()Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
        "with",
        "append",
        "limit",
        "",
        "sort",
        "order",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "additionalOrders",
        "",
        "(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/RealtimePipeline;",
        "where",
        "condition",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "snapshots",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
        "options",
        "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
        "addSnapshotListener",
        "Lcom/google/firebase/firestore/ListenerRegistration;",
        "listener",
        "Lcom/google/firebase/firestore/EventListener;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "withListenOptions",
        "withListenOptions$com_google_firebase_firebase_firestore",
        "rewrittenStages",
        "getRewrittenStages$com_google_firebase_firebase_firestore",
        "rewrittenStages$delegate",
        "Lkotlin/Lazy;",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "toString",
        "equals",
        "",
        "other",
        "hashCode",
        "evaluate",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "inputs",
        "evaluate$com_google_firebase_firebase_firestore",
        "matchesAllDocuments",
        "matchesAllDocuments$com_google_firebase_firebase_firestore",
        "hasLimit",
        "hasLimit$com_google_firebase_firebase_firestore",
        "matches",
        "doc",
        "Lcom/google/firebase/firestore/model/Document;",
        "matches$com_google_firebase_firebase_firestore",
        "evaluateContext",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "comparator$com_google_firebase_firebase_firestore",
        "toStructurePipelineProto",
        "Lcom/google/firestore/v1/StructuredPipeline;",
        "toStructurePipelineProto$com_google_firebase_firebase_firestore",
        "getLastEffectiveSortStage",
        "Lcom/google/firebase/firestore/pipeline/SortStage;",
        "ListenOptions",
        "Snapshot",
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
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final internalOptions:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

.field private final rewrittenStages$delegate:Lkotlin/Lazy;

.field private final serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

.field private final stages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final userDataReader:Lcom/google/firebase/firestore/UserDataReader;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V
    .locals 9
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .param p3, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .param p4, "stage"    # Lcom/google/firebase/firestore/pipeline/Stage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/remote/RemoteSerializer;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "firestore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDataReader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    .end local p2    # "serializer":Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .end local p3    # "userDataReader":Lcom/google/firebase/firestore/UserDataReader;
    .local v2, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    .local v3, "serializer":Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .local v4, "userDataReader":Lcom/google/firebase/firestore/UserDataReader;
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .param p3, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .param p4, "stages"    # Ljava/util/List;
    .param p5, "internalOptions"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/remote/RemoteSerializer;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDataReader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 139
    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 140
    iput-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    .line 141
    iput-object p4, p0, Lcom/google/firebase/firestore/RealtimePipeline;->stages:Ljava/util/List;

    .line 142
    iput-object p5, p0, Lcom/google/firebase/firestore/RealtimePipeline;->internalOptions:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    .line 503
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->rewrittenStages$delegate:Lkotlin/Lazy;

    .line 134
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 134
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 142
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_0

    .line 134
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)V

    .line 143
    return-void
.end method

.method static final addSnapshotListener$lambda$1(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 4
    .param p0, "$listener"    # Lcom/google/firebase/firestore/EventListener;
    .param p1, "this$0"    # Lcom/google/firebase/firestore/RealtimePipeline;
    .param p2, "$options"    # Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .param p3, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .param p4, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 480
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 702
    .local v0, "it":Lcom/google/firebase/firestore/core/ViewSnapshot;
    const/4 v1, 0x0

    .line 480
    .local v1, "$i$a$-let-RealtimePipeline$addSnapshotListener$userListener$1$realtimeSnapshot$1":I
    new-instance v2, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;

    iget-object v3, p1, Lcom/google/firebase/firestore/RealtimePipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3, p2}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;-><init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)V

    .end local v0    # "it":Lcom/google/firebase/firestore/core/ViewSnapshot;
    .end local v1    # "$i$a$-let-RealtimePipeline$addSnapshotListener$userListener$1$realtimeSnapshot$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 481
    .local v2, "realtimeSnapshot":Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;
    :goto_0
    invoke-interface {p0, v2, p4}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 482
    return-void
.end method

.method static final addSnapshotListener$lambda$3(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 3
    .param p0, "this$0"    # Lcom/google/firebase/firestore/RealtimePipeline;
    .param p1, "$options"    # Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .param p2, "$asyncListener"    # Lcom/google/firebase/firestore/core/AsyncEventListener;
    .param p3, "client"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 488
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 489
    new-instance v0, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline$PipelineWrapper;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;)V

    check-cast v0, Lcom/google/firebase/firestore/core/QueryOrPipeline;

    .line 490
    invoke-virtual {p1}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->toListenOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v1

    .line 491
    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/EventListener;

    .line 488
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/firebase/firestore/core/FirestoreClient;->listen(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/core/QueryListener;

    move-result-object v0

    const-string v1, "listen(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    nop

    .line 493
    .local v0, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    new-instance v1, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3, v0}, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V

    .line 496
    return-object v1
.end method

.method static final addSnapshotListener$lambda$3$lambda$2(Lcom/google/firebase/firestore/core/AsyncEventListener;Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 0
    .param p0, "$asyncListener"    # Lcom/google/firebase/firestore/core/AsyncEventListener;
    .param p1, "$client"    # Lcom/google/firebase/firestore/core/FirestoreClient;
    .param p2, "$listener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 494
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/AsyncEventListener;->mute()V

    .line 495
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/core/FirestoreClient;->stopListening(Lcom/google/firebase/firestore/core/QueryListener;)V

    .line 496
    return-void
.end method

.method private final append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 1
    .param p1, "stage"    # Lcom/google/firebase/firestore/pipeline/Stage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;)",
            "Lcom/google/firebase/firestore/RealtimePipeline;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->stages:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/RealtimePipeline;->with(Ljava/util/List;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method static final canonicalId$lambda$6(Lcom/google/firebase/firestore/pipeline/Stage;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "stage"    # Lcom/google/firebase/firestore/pipeline/Stage;

    const-string v0, "stage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/Stage;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private final evaluateContext()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .locals 1

    .line 594
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;)V

    return-object v0
.end method

.method private final getLastEffectiveSortStage()Lcom/google/firebase/firestore/pipeline/SortStage;
    .locals 3

    .line 610
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 611
    .local v1, "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v2, v1, Lcom/google/firebase/firestore/pipeline/SortStage;

    if-eqz v2, :cond_0

    .line 612
    move-object v0, v1

    check-cast v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    return-object v0

    .line 617
    .end local v1    # "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RealtimePipeline must contain at least one Sort stage (ensured by RewriteStages)."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method static final rewrittenStages_delegate$lambda$5(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/util/List;
    .locals 7
    .param p0, "this$0"    # Lcom/google/firebase/firestore/RealtimePipeline;

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "hasOrder":Z
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$rewrittenStages_delegate_u24lambda_u245_u24lambda_u244":Ljava/util/List;
    const/4 v3, 0x0

    .line 506
    .local v3, "$i$a$-buildList-RealtimePipeline$rewrittenStages$2$1":I
    iget-object v4, p0, Lcom/google/firebase/firestore/RealtimePipeline;->stages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 508
    .local v5, "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v6, v5, Lcom/google/firebase/firestore/pipeline/LimitStage;

    if-nez v6, :cond_2

    .line 509
    instance-of v6, v5, Lcom/google/firebase/firestore/pipeline/OffsetStage;

    if-eqz v6, :cond_0

    goto :goto_1

    .line 516
    :cond_0
    instance-of v6, v5, Lcom/google/firebase/firestore/pipeline/SortStage;

    if-eqz v6, :cond_1

    .line 517
    const/4 v0, 0x1

    .line 518
    move-object v6, v5

    check-cast v6, Lcom/google/firebase/firestore/pipeline/SortStage;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/SortStage;->withStableOrdering$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/SortStage;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 520
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 510
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 511
    const/4 v0, 0x1

    .line 512
    sget-object v6, Lcom/google/firebase/firestore/pipeline/SortStage;->Companion:Lcom/google/firebase/firestore/pipeline/SortStage$Companion;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/SortStage$Companion;->getBY_DOCUMENT_ID$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/SortStage;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_2
    goto :goto_0

    .line 522
    .end local v5    # "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_4
    if-nez v0, :cond_5

    .line 523
    sget-object v4, Lcom/google/firebase/firestore/pipeline/SortStage;->Companion:Lcom/google/firebase/firestore/pipeline/SortStage$Companion;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/SortStage$Companion;->getBY_DOCUMENT_ID$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/SortStage;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_5
    nop

    .line 505
    .end local v2    # "$this$rewrittenStages_delegate_u24lambda_u245_u24lambda_u244":Ljava/util/List;
    .end local v3    # "$i$a$-buildList-RealtimePipeline$rewrittenStages$2$1":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 525
    return-object v1
.end method

.method private final with(Ljava/util/List;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 8
    .param p1, "stages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;)",
            "Lcom/google/firebase/firestore/RealtimePipeline;"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    .end local p1    # "stages":Ljava/util/List;
    .local v4, "stages":Ljava/util/List;
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final addSnapshotListener(Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->DEFAULT:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/RealtimePipeline;->addSnapshotListener(Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public final addSnapshotListener(Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .param p2, "listener"    # Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v1, "DEFAULT_CALLBACK_EXECUTOR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/firestore/RealtimePipeline;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public final addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->DEFAULT:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/RealtimePipeline;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public final addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "options"    # Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .param p3, "listener"    # Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    nop

    .line 478
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p0, p2}, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)V

    .line 484
    .local v0, "userListener":Lcom/google/firebase/firestore/EventListener;
    new-instance v1, Lcom/google/firebase/firestore/core/AsyncEventListener;

    invoke-direct {v1, p1, v0}, Lcom/google/firebase/firestore/core/AsyncEventListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)V

    .line 486
    .local v1, "asyncListener":Lcom/google/firebase/firestore/core/AsyncEventListener;
    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2, v1}, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/AsyncEventListener;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "callClient(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/firebase/firestore/ListenerRegistration;

    return-object v2
.end method

.method public final canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 10

    .line 529
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "|"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda2;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final comparator$com_google_firebase_firebase_firestore()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 598
    invoke-direct {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getLastEffectiveSortStage()Lcom/google/firebase/firestore/pipeline/SortStage;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->evaluateContext()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/pipeline/SortStage;->comparator$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 535
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 536
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/RealtimePipeline;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v2, v2, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/RealtimePipeline;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final evaluate$com_google_firebase_firebase_firestore(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "inputs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;)V

    .line 547
    .local v0, "context":Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$fold$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 695
    .local v2, "$i$f$fold":I
    move-object v3, p1

    .line 696
    .local v3, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/google/firebase/firestore/pipeline/Stage;

    .local v6, "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    move-object v7, v3

    .local v7, "documents":Ljava/util/List;
    const/4 v8, 0x0

    .line 547
    .local v8, "$i$a$-fold-RealtimePipeline$evaluate$1":I
    invoke-virtual {v6, v0, v7}, Lcom/google/firebase/firestore/pipeline/Stage;->evaluate$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 696
    .end local v6    # "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    .end local v7    # "documents":Ljava/util/List;
    .end local v8    # "$i$a$-fold-RealtimePipeline$evaluate$1":I
    move-object v3, v6

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 697
    :cond_0
    nop

    .line 547
    .end local v1    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    return-object v3
.end method

.method public final getFirestore$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object v0
.end method

.method public final getInternalOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->internalOptions:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    return-object v0
.end method

.method public final getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->rewrittenStages$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getSerializer$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    return-object v0
.end method

.method public final getStages$com_google_firebase_firebase_firestore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->stages:Ljava/util/List;

    return-object v0
.end method

.method public final getUserDataReader$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/UserDataReader;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    return-object v0
.end method

.method public final hasLimit$com_google_firebase_firebase_firestore()Z
    .locals 4

    .line 578
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 579
    .local v1, "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/Stage;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v2

    const-string v3, "limit"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const/4 v0, 0x1

    return v0

    .line 585
    .end local v1    # "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline;->stages:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final limit(I)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 3
    .param p1, "limit"    # I

    .line 349
    new-instance v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/RealtimePipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final matches$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 2
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/RealtimePipeline;->evaluate$com_google_firebase_firebase_firestore(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 590
    .local v0, "result":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public final matchesAllDocuments$com_google_firebase_firebase_firestore()Z
    .locals 9

    .line 551
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 553
    .local v1, "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/Stage;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v3

    const-string v4, "limit"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 554
    return v4

    .line 558
    :cond_1
    instance-of v3, v1, Lcom/google/firebase/firestore/pipeline/WhereStage;

    if-eqz v3, :cond_0

    .line 560
    move-object v3, v1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/WhereStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/WhereStage;->getCondition$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v3

    instance-of v5, v3, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v3, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;

    goto :goto_1

    :cond_2
    move-object v3, v6

    .line 561
    .local v3, "booleanFunc":Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;->getExpr()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    instance-of v7, v5, Lcom/google/firebase/firestore/pipeline/FunctionExpression;

    if-eqz v7, :cond_4

    check-cast v5, Lcom/google/firebase/firestore/pipeline/FunctionExpression;

    goto :goto_3

    :cond_4
    move-object v5, v6

    .line 563
    .local v5, "funcExpr":Lcom/google/firebase/firestore/pipeline/FunctionExpression;
    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/FunctionExpression;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    move-object v7, v6

    :goto_4
    const-string v8, "exists"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/FunctionExpression;->getParams$com_google_firebase_firebase_firestore()[Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v2, :cond_9

    .line 564
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/firebase/firestore/pipeline/FunctionExpression;->getParams$com_google_firebase_firebase_firestore()[Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v7

    aget-object v7, v7, v4

    goto :goto_5

    :cond_6
    move-object v7, v6

    :goto_5
    instance-of v8, v7, Lcom/google/firebase/firestore/pipeline/Field;

    if-eqz v8, :cond_7

    move-object v6, v7

    check-cast v6, Lcom/google/firebase/firestore/pipeline/Field;

    .line 565
    .local v6, "fieldExpr":Lcom/google/firebase/firestore/pipeline/Field;
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/Field;->getFieldPath$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v7

    if-ne v7, v2, :cond_8

    goto :goto_6

    :cond_8
    move v2, v4

    :goto_6
    if-eqz v2, :cond_9

    .line 566
    goto :goto_0

    .line 569
    .end local v6    # "fieldExpr":Lcom/google/firebase/firestore/pipeline/Field;
    :cond_9
    return v4

    .line 574
    .end local v1    # "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    .end local v3    # "booleanFunc":Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;
    .end local v5    # "funcExpr":Lcom/google/firebase/firestore/pipeline/FunctionExpression;
    :cond_a
    return v2
.end method

.method public final snapshots()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;"
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->DEFAULT:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/RealtimePipeline;->snapshots(Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public final snapshots(Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 429
    return-object v0
.end method

.method public final varargs sort(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 4
    .param p1, "order"    # Lcom/google/firebase/firestore/pipeline/Ordering;
    .param p2, "additionalOrders"    # [Lcom/google/firebase/firestore/pipeline/Ordering;

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalOrders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Ordering;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/RealtimePipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStructurePipelineProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 12

    .line 601
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->newBuilder()Lcom/google/firestore/v1/StructuredPipeline$Builder;

    move-result-object v0

    .line 602
    .local v0, "builder":Lcom/google/firestore/v1/StructuredPipeline$Builder;
    nop

    .line 603
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->newBuilder()Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object v1

    .line 604
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 698
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 699
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 700
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/google/firebase/firestore/pipeline/Stage;

    .local v9, "it":Lcom/google/firebase/firestore/pipeline/Stage;
    const/4 v10, 0x0

    .line 604
    .local v10, "$i$a$-map-RealtimePipeline$toStructurePipelineProto$1":I
    iget-object v11, p0, Lcom/google/firebase/firestore/RealtimePipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    invoke-virtual {v9, v11}, Lcom/google/firebase/firestore/pipeline/Stage;->toProtoStage$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v9

    .line 700
    .end local v9    # "it":Lcom/google/firebase/firestore/pipeline/Stage;
    .end local v10    # "$i$a$-map-RealtimePipeline$toStructurePipelineProto$1":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 698
    nop

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/lang/Iterable;

    .line 604
    invoke-virtual {v1, v4}, Lcom/google/firestore/v1/Pipeline$Builder;->addAllStages(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Lcom/google/firestore/v1/Pipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Pipeline;

    .line 602
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->setPipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;

    .line 606
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    return-object v1
.end method

.method public final where(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 4
    .param p1, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v0, Lcom/google/firebase/firestore/pipeline/WhereStage;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Expression;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/RealtimePipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final withListenOptions$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 7
    .param p1, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    new-instance v1, Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    iget-object v4, p0, Lcom/google/firebase/firestore/RealtimePipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    iget-object v5, p0, Lcom/google/firebase/firestore/RealtimePipeline;->stages:Ljava/util/List;

    move-object v6, p1

    .end local p1    # "options":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .local v6, "options":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)V

    return-object v1
.end method
