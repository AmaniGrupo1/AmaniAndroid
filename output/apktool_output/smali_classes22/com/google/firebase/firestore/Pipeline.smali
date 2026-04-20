.class public final Lcom/google/firebase/firestore/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;,
        Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;,
        Lcom/google/firebase/firestore/Pipeline$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\ncom/google/firebase/firestore/Pipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1173:1\n1557#2:1174\n1628#2,3:1175\n11165#3:1178\n11500#3,3:1179\n11165#3:1184\n11500#3,3:1185\n11165#3:1190\n11500#3,3:1191\n37#4,2:1182\n37#4,2:1188\n37#4,2:1194\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\ncom/google/firebase/firestore/Pipeline\n*L\n153#1:1174\n153#1:1175,3\n301#1:1178\n301#1:1179,3\n497#1:1184\n497#1:1185,3\n528#1:1190\n528#1:1191,3\n301#1:1182,2\n497#1:1188,2\n528#1:1194,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0003abcB+\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB%\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0008\u00a2\u0006\u0004\u0008\t\u0010\u000cJ\u0014\u0010\r\u001a\u00020\u00002\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\r\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u0010\u001a\u00020\u001aJ\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0015\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008 J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J\'\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020%2\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020%0\'\"\u00020%\u00a2\u0006\u0002\u0010(J\'\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020*2\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020*0\'\"\u00020*\u00a2\u0006\u0002\u0010+J\'\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020,2\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020,0\'\"\u00020,\u00a2\u0006\u0002\u0010-J\'\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u00020%2\u0012\u00100\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\'\"\u00020\u0001\u00a2\u0006\u0002\u00101J\'\u0010.\u001a\u00020\u00002\u0006\u00102\u001a\u00020,2\u0012\u00100\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\'\"\u00020\u0001\u00a2\u0006\u0002\u00103J\'\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0012\u00107\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002060\'\"\u000206\u00a2\u0006\u0002\u00108J\u000e\u00109\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020=J\'\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020%2\u0012\u0010A\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\'\"\u00020\u0001\u00a2\u0006\u0002\u00101J\'\u0010?\u001a\u00020\u00002\u0006\u0010B\u001a\u00020,2\u0012\u0010A\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\'\"\u00020\u0001\u00a2\u0006\u0002\u00103J\'\u0010C\u001a\u00020\u00002\u0006\u0010D\u001a\u00020E2\u0012\u0010F\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020E0\'\"\u00020E\u00a2\u0006\u0002\u0010GJ\u000e\u0010C\u001a\u00020\u00002\u0006\u0010H\u001a\u00020IJ\u0016\u0010C\u001a\u00020\u00002\u0006\u0010H\u001a\u00020I2\u0006\u0010\u0010\u001a\u00020JJ\u001e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020,2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PJ\u001e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020*2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PJ&\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020,2\u0006\u0010M\u001a\u00020Q2\u0006\u0010O\u001a\u00020P2\u0006\u0010\u0010\u001a\u00020RJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010$\u001a\u00020,J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010T\u001a\u00020QJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010V\u001a\u00020=J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020WJ\u000e\u0010X\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0000J\u0016\u0010Z\u001a\u00020\u00002\u0006\u0010[\u001a\u00020,2\u0006\u0010\\\u001a\u00020,J\u000e\u0010Z\u001a\u00020\u00002\u0006\u0010]\u001a\u00020%J\u0016\u0010Z\u001a\u00020\u00002\u0006\u0010]\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020^J\u000e\u0010Z\u001a\u00020\u00002\u0006\u0010_\u001a\u00020`R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006d"
    }
    d2 = {
        "Lcom/google/firebase/firestore/Pipeline;",
        "",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "stages",
        "",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "<init>",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V",
        "stage",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V",
        "append",
        "toStructuredPipelineProto",
        "Lcom/google/firestore/v1/StructuredPipeline;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "toPipelineProto",
        "Lcom/google/firestore/v1/Pipeline;",
        "toPipelineProto$com_google_firebase_firebase_firestore",
        "toExecutePipelineRequest",
        "Lcom/google/firestore/v1/ExecutePipelineRequest;",
        "execute",
        "Lcom/google/android/gms/tasks/Task;",
        "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
        "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;",
        "execute$com_google_firebase_firebase_firestore",
        "documentReference",
        "Lcom/google/firebase/firestore/DocumentReference;",
        "key",
        "Lcom/google/firebase/firestore/model/DocumentKey;",
        "documentReference$com_google_firebase_firebase_firestore",
        "rawStage",
        "Lcom/google/firebase/firestore/pipeline/RawStage;",
        "addFields",
        "field",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "additionalFields",
        "",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;",
        "removeFields",
        "Lcom/google/firebase/firestore/pipeline/Field;",
        "(Lcom/google/firebase/firestore/pipeline/Field;[Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/Pipeline;",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;",
        "select",
        "selection",
        "additionalSelections",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;",
        "fieldName",
        "(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;",
        "sort",
        "order",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "additionalOrders",
        "(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/Pipeline;",
        "where",
        "condition",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "offset",
        "",
        "limit",
        "distinct",
        "group",
        "additionalGroups",
        "groupField",
        "aggregate",
        "accumulator",
        "Lcom/google/firebase/firestore/pipeline/AliasedAggregate;",
        "additionalAccumulators",
        "(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/Pipeline;",
        "aggregateStage",
        "Lcom/google/firebase/firestore/pipeline/AggregateStage;",
        "Lcom/google/firebase/firestore/pipeline/AggregateOptions;",
        "findNearest",
        "vectorField",
        "vectorValue",
        "",
        "distanceMeasure",
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;",
        "replaceWith",
        "mapValue",
        "sample",
        "documents",
        "Lcom/google/firebase/firestore/pipeline/SampleStage;",
        "union",
        "other",
        "unnest",
        "arrayField",
        "alias",
        "arrayWithAlias",
        "Lcom/google/firebase/firestore/pipeline/UnnestOptions;",
        "unnestStage",
        "Lcom/google/firebase/firestore/pipeline/UnnestStage;",
        "ExecuteOptions",
        "Snapshot",
        "ObserverSnapshotTask",
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
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .param p3, "stage"    # Lcom/google/firebase/firestore/pipeline/Stage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "firestore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDataReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .param p3, "stages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "firestore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDataReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 88
    iput-object p2, p0, Lcom/google/firebase/firestore/Pipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    .line 89
    iput-object p3, p0, Lcom/google/firebase/firestore/Pipeline;->stages:Ljava/util/List;

    .line 86
    return-void
.end method

.method public static final synthetic access$getFirestore$p(Lcom/google/firebase/firestore/Pipeline;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1
    .param p0, "$this"    # Lcom/google/firebase/firestore/Pipeline;

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object v0
.end method

.method private final append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .param p1, "stage"    # Lcom/google/firebase/firestore/pipeline/Stage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;)",
            "Lcom/google/firebase/firestore/Pipeline;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/Pipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    iget-object v3, p0, Lcom/google/firebase/firestore/Pipeline;->stages:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V

    return-object v0
.end method

.method static final execute$lambda$1(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;Lcom/google/firebase/firestore/core/FirestoreClient;)Lkotlin/Unit;
    .locals 1
    .param p0, "$request"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "$observerTask"    # Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;
    .param p2, "call"    # Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 182
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/PipelineResultObserver;

    invoke-virtual {p2, p0, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->executePipeline(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/PipelineResultObserver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final toExecutePipelineRequest(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 4
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    const-string v1, "getDatabaseId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .local v0, "database":Lcom/google/firebase/firestore/model/DatabaseId;
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineRequest;->newBuilder()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    move-result-object v1

    .line 158
    .local v1, "builder":Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "projects/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    .line 159
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->toStructuredPipelineProto(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    .line 160
    invoke-virtual {v1}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v2
.end method

.method private final toStructuredPipelineProto(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 3
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 146
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->newBuilder()Lcom/google/firestore/v1/StructuredPipeline$Builder;

    move-result-object v0

    .line 147
    .local v0, "builder":Lcom/google/firestore/v1/StructuredPipeline$Builder;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/Pipeline;->toPipelineProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Pipeline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->setPipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;

    .line 148
    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/firebase/firestore/Pipeline$toStructuredPipelineProto$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/Pipeline$toStructuredPipelineProto$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->forEach$com_google_firebase_firebase_firestore(Lkotlin/jvm/functions/Function2;)V

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    return-object v1
.end method


# virtual methods
.method public final varargs addFields(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .param p1, "field"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "additionalFields"    # [Lcom/google/firebase/firestore/pipeline/Selectable;

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AddFieldsStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/firebase/firestore/pipeline/AddFieldsStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final aggregate(Lcom/google/firebase/firestore/pipeline/AggregateStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "aggregateStage"    # Lcom/google/firebase/firestore/pipeline/AggregateStage;

    const-string v0, "aggregateStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AggregateOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/AggregateOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/Pipeline;->aggregate(Lcom/google/firebase/firestore/pipeline/AggregateStage;Lcom/google/firebase/firestore/pipeline/AggregateOptions;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final aggregate(Lcom/google/firebase/firestore/pipeline/AggregateStage;Lcom/google/firebase/firestore/pipeline/AggregateOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "aggregateStage"    # Lcom/google/firebase/firestore/pipeline/AggregateStage;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/AggregateOptions;

    const-string v0, "aggregateStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/pipeline/AggregateStage;->withOptions$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/AggregateOptions;)Lcom/google/firebase/firestore/pipeline/AggregateStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs aggregate(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .param p1, "accumulator"    # Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .param p2, "additionalAccumulators"    # [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    const-string v0, "accumulator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAccumulators"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateStage;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;->withAccumulators(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/pipeline/AggregateStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs distinct(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 17
    .param p1, "group"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "additionalGroups"    # [Ljava/lang/Object;

    move-object/from16 v0, p1

    const-string v1, "group"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalGroups"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    nop

    .line 497
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/firebase/firestore/pipeline/Selectable;->Companion:Lcom/google/firebase/firestore/pipeline/Selectable$Companion;

    move-object/from16 v5, p2

    .local v5, "$this$map$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1184
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1185
    .local v9, "$i$f$mapTo":I
    array-length v10, v8

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_0

    aget-object v13, v8, v12

    .line 1186
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "p0":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$i$f$distinct$stub_for_inlining$2":I
    const/16 v16, 0x0

    .line 497
    .local v16, "$i$a$-map-Pipeline$distinct$1":I
    invoke-virtual {v4, v14}, Lcom/google/firebase/firestore/pipeline/Selectable$Companion;->toSelectable(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Selectable;

    move-result-object v14

    .line 1186
    .end local v14    # "p0":Ljava/lang/Object;
    .end local v15    # "$i$f$distinct$stub_for_inlining$2":I
    .end local v16    # "$i$a$-map-Pipeline$distinct$1":I
    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1185
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$mapTo":I
    move-object v4, v7

    check-cast v4, Ljava/util/List;

    .line 1184
    nop

    .end local v5    # "$this$map$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 497
    nop

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 1188
    .local v5, "$i$f$toTypedArray":I
    move-object v6, v4

    .line 1189
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v7, v11, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 497
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    new-instance v4, Lcom/google/firebase/firestore/pipeline/DistinctStage;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3, v5}, Lcom/google/firebase/firestore/pipeline/DistinctStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 496
    move-object/from16 v1, p0

    invoke-direct {v1, v4}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v3

    .line 498
    return-object v3
.end method

.method public final varargs distinct(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 17
    .param p1, "groupField"    # Ljava/lang/String;
    .param p2, "additionalGroups"    # [Ljava/lang/Object;

    move-object/from16 v0, p1

    const-string v1, "groupField"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalGroups"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    nop

    .line 527
    nop

    .line 528
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v4, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v4, v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/firebase/firestore/pipeline/Selectable;->Companion:Lcom/google/firebase/firestore/pipeline/Selectable$Companion;

    move-object/from16 v5, p2

    .local v5, "$this$map$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1190
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1191
    .local v9, "$i$f$mapTo":I
    array-length v10, v8

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_0

    aget-object v13, v8, v12

    .line 1192
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "p0":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$i$f$distinct$stub_for_inlining$3":I
    const/16 v16, 0x0

    .line 528
    .local v16, "$i$a$-map-Pipeline$distinct$2":I
    invoke-virtual {v4, v14}, Lcom/google/firebase/firestore/pipeline/Selectable$Companion;->toSelectable(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Selectable;

    move-result-object v14

    .line 1192
    .end local v14    # "p0":Ljava/lang/Object;
    .end local v15    # "$i$f$distinct$stub_for_inlining$3":I
    .end local v16    # "$i$a$-map-Pipeline$distinct$2":I
    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1191
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1193
    :cond_0
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$mapTo":I
    move-object v4, v7

    check-cast v4, Ljava/util/List;

    .line 1190
    nop

    .end local v5    # "$this$map$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 528
    nop

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 1194
    .local v5, "$i$f$toTypedArray":I
    move-object v6, v4

    .line 1195
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v7, v11, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 528
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 527
    new-instance v4, Lcom/google/firebase/firestore/pipeline/DistinctStage;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3, v5}, Lcom/google/firebase/firestore/pipeline/DistinctStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 526
    move-object/from16 v1, p0

    invoke-direct {v1, v4}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v3

    .line 530
    return-object v3
.end method

.method public final documentReference$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public final execute()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->execute$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->execute$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final execute$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->toExecutePipelineRequest(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firestore/v1/ExecutePipelineRequest;

    move-result-object v0

    .line 180
    .local v0, "request":Lcom/google/firestore/v1/ExecutePipelineRequest;
    new-instance v1, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;-><init>(Lcom/google/firebase/firestore/Pipeline;)V

    .line 181
    .local v1, "observerTask":Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing pipeline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Pipeline"

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;-><init>(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 183
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method public final findNearest(Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;)Lcom/google/firebase/firestore/Pipeline;
    .locals 8
    .param p1, "vectorField"    # Lcom/google/firebase/firestore/pipeline/Field;
    .param p2, "vectorValue"    # [D
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    sget-object v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "vectorField":Lcom/google/firebase/firestore/pipeline/Field;
    .end local p2    # "vectorValue":[D
    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v2, "vectorField":Lcom/google/firebase/firestore/pipeline/Field;
    .local v3, "vectorValue":[D
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final findNearest(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "vectorField"    # Ljava/lang/String;
    .param p2, "vectorValue"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    sget-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final findNearest(Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;)Lcom/google/firebase/firestore/Pipeline;
    .locals 8
    .param p1, "vectorField"    # Ljava/lang/String;
    .param p2, "vectorValue"    # [D
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    sget-object v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "vectorField":Ljava/lang/String;
    .end local p2    # "vectorValue":[D
    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v2, "vectorField":Ljava/lang/String;
    .local v3, "vectorValue":[D
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final limit(I)Lcom/google/firebase/firestore/Pipeline;
    .locals 3
    .param p1, "limit"    # I

    .line 466
    new-instance v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final offset(I)Lcom/google/firebase/firestore/Pipeline;
    .locals 3
    .param p1, "offset"    # I

    .line 443
    new-instance v0, Lcom/google/firebase/firestore/pipeline/OffsetStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/OffsetStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final rawStage(Lcom/google/firebase/firestore/pipeline/RawStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "rawStage"    # Lcom/google/firebase/firestore/pipeline/RawStage;

    const-string v0, "rawStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs removeFields(Lcom/google/firebase/firestore/pipeline/Field;[Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .param p1, "field"    # Lcom/google/firebase/firestore/pipeline/Field;
    .param p2, "additionalFields"    # [Lcom/google/firebase/firestore/pipeline/Field;

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Field;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;-><init>([Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs removeFields(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 17
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "additionalFields"    # [Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "field"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalFields"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    nop

    .line 300
    nop

    .line 301
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v4, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v4, v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    move-object/from16 v5, p2

    .local v5, "$this$map$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1178
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1179
    .local v9, "$i$f$mapTo":I
    array-length v10, v8

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_0

    aget-object v13, v8, v12

    .line 1180
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "p0":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "$i$f$removeFields$stub_for_inlining":I
    const/16 v16, 0x0

    .line 301
    .local v16, "$i$a$-map-Pipeline$removeFields$1":I
    invoke-virtual {v4, v14}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v14

    .line 1180
    .end local v14    # "p0":Ljava/lang/String;
    .end local v15    # "$i$f$removeFields$stub_for_inlining":I
    .end local v16    # "$i$a$-map-Pipeline$removeFields$1":I
    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1179
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$mapTo":I
    move-object v4, v7

    check-cast v4, Ljava/util/List;

    .line 1178
    nop

    .end local v5    # "$this$map$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 301
    nop

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 1182
    .local v5, "$i$f$toTypedArray":I
    move-object v6, v4

    .line 1183
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v7, v11, [Lcom/google/firebase/firestore/pipeline/Field;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 301
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Field;

    .line 300
    new-instance v4, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3, v5}, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;-><init>([Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 299
    move-object/from16 v1, p0

    invoke-direct {v1, v4}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v3

    .line 303
    return-object v3
.end method

.method public final replaceWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/Pipeline;
    .locals 7
    .param p1, "mapValue"    # Lcom/google/firebase/firestore/pipeline/Expression;

    const-string v0, "mapValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    new-instance v1, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->Companion:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;->getFULL_REPLACE()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "mapValue":Lcom/google/firebase/firestore/pipeline/Expression;
    .local v2, "mapValue":Lcom/google/firebase/firestore/pipeline/Expression;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final replaceWith(Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->replaceWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final sample(I)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "documents"    # I

    .line 762
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage;->Companion:Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;->withDocLimit(I)Lcom/google/firebase/firestore/pipeline/SampleStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final sample(Lcom/google/firebase/firestore/pipeline/SampleStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "sample"    # Lcom/google/firebase/firestore/pipeline/SampleStage;

    const-string v0, "sample"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs select(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .param p1, "selection"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "additionalSelections"    # [Ljava/lang/Object;

    const-string v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalSelections"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs select(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "additionalSelections"    # [Ljava/lang/Object;

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalSelections"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs sort(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .param p1, "order"    # Lcom/google/firebase/firestore/pipeline/Ordering;
    .param p2, "additionalOrders"    # [Lcom/google/firebase/firestore/pipeline/Ordering;

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalOrders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
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

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final toPipelineProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Pipeline;
    .locals 11

    .line 153
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->newBuilder()Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->stages:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1174
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1175
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1176
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/google/firebase/firestore/pipeline/Stage;

    .local v8, "it":Lcom/google/firebase/firestore/pipeline/Stage;
    const/4 v9, 0x0

    .line 153
    .local v9, "$i$a$-map-Pipeline$toPipelineProto$1":I
    iget-object v10, p0, Lcom/google/firebase/firestore/Pipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    invoke-virtual {v8, v10}, Lcom/google/firebase/firestore/pipeline/Stage;->toProtoStage$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v8

    .line 1176
    .end local v8    # "it":Lcom/google/firebase/firestore/pipeline/Stage;
    .end local v9    # "$i$a$-map-Pipeline$toPipelineProto$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1177
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 1174
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 153
    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/Pipeline$Builder;->addAllStages(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public final union(Lcom/google/firebase/firestore/Pipeline;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3
    .param p1, "other"    # Lcom/google/firebase/firestore/Pipeline;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnionStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/UnionStage;-><init>(Lcom/google/firebase/firestore/Pipeline;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final unnest(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "arrayWithAlias"    # Lcom/google/firebase/firestore/pipeline/Selectable;

    const-string v0, "arrayWithAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/UnnestOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/Pipeline;->unnest(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/UnnestOptions;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final unnest(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/UnnestOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .param p1, "arrayWithAlias"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/UnnestOptions;

    const-string v0, "arrayWithAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/pipeline/UnnestOptions;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/pipeline/UnnestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final unnest(Lcom/google/firebase/firestore/pipeline/UnnestStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "unnestStage"    # Lcom/google/firebase/firestore/pipeline/UnnestStage;

    const-string v0, "unnestStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final unnest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "arrayField"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    const-string v0, "arrayField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Field;->alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->unnest(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final where(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .param p1, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/google/firebase/firestore/pipeline/WhereStage;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Expression;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method
