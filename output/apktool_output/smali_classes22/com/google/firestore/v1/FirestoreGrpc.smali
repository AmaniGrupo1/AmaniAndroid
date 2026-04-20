.class public final Lcom/google/firestore/v1/FirestoreGrpc;
.super Ljava/lang/Object;
.source "FirestoreGrpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;,
        Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;,
        Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreImplBase;
    }
.end annotation


# static fields
.field private static final METHODID_BATCH_GET_DOCUMENTS:I = 0x4

.field private static final METHODID_BEGIN_TRANSACTION:I = 0x5

.field private static final METHODID_COMMIT:I = 0x6

.field private static final METHODID_CREATE_DOCUMENT:I = 0xc

.field private static final METHODID_DELETE_DOCUMENT:I = 0x3

.field private static final METHODID_EXECUTE_PIPELINE:I = 0x9

.field private static final METHODID_GET_DOCUMENT:I = 0x0

.field private static final METHODID_LISTEN:I = 0xe

.field private static final METHODID_LIST_COLLECTION_IDS:I = 0xb

.field private static final METHODID_LIST_DOCUMENTS:I = 0x1

.field private static final METHODID_ROLLBACK:I = 0x7

.field private static final METHODID_RUN_AGGREGATION_QUERY:I = 0xa

.field private static final METHODID_RUN_QUERY:I = 0x8

.field private static final METHODID_UPDATE_DOCUMENT:I = 0x2

.field private static final METHODID_WRITE:I = 0xd

.field public static final SERVICE_NAME:Ljava/lang/String; = "google.firestore.v1.Firestore"

.field private static volatile getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getBeginTransactionMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BeginTransactionRequest;",
            "Lcom/google/firestore/v1/BeginTransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getCommitMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CommitRequest;",
            "Lcom/google/firestore/v1/CommitResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getCreateDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CreateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/DeleteDocumentRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getExecutePipelineMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ExecutePipelineRequest;",
            "Lcom/google/firestore/v1/ExecutePipelineResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getGetDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/GetDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
            "Lcom/google/firestore/v1/ListCollectionIdsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getListDocumentsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            "Lcom/google/firestore/v1/ListDocumentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getListenMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListenRequest;",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getRollbackMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RollbackRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getRunQueryMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunQueryRequest;",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getWriteMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/WriteRequest;",
            "Lcom/google/firestore/v1/WriteResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile serviceDescriptor:Lio/grpc/ServiceDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bindService(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;)Lio/grpc/ServerServiceDefinition;
    .locals 4
    .param p0, "service"    # Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;

    .line 1326
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/ServerServiceDefinition;->builder(Lio/grpc/ServiceDescriptor;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1328
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1329
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1327
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1335
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1336
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1334
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1342
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1343
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1341
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1349
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1350
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1348
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1356
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1357
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncServerStreamingCall(Lio/grpc/stub/ServerCalls$ServerStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1355
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1363
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1364
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1362
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1370
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1371
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1369
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1377
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1378
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1376
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1384
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1385
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncServerStreamingCall(Lio/grpc/stub/ServerCalls$ServerStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1383
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1391
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getExecutePipelineMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1392
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncServerStreamingCall(Lio/grpc/stub/ServerCalls$ServerStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1390
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1398
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1399
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncServerStreamingCall(Lio/grpc/stub/ServerCalls$ServerStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1397
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1405
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1406
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncBidiStreamingCall(Lio/grpc/stub/ServerCalls$BidiStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1404
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1412
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1413
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncBidiStreamingCall(Lio/grpc/stub/ServerCalls$BidiStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1411
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1419
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1420
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1418
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1426
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;-><init>(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;I)V

    .line 1427
    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    .line 1425
    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Lio/grpc/ServerServiceDefinition$Builder;->build()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    .line 1326
    return-object v0
.end method

.method public static getBatchGetDocumentsMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getBatchGetDocumentsMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/BatchGetDocumentsResponse;>;"
    if-nez v0, :cond_1

    .line 159
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 162
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 163
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "BatchGetDocuments"

    .line 164
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 165
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 167
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    move-result-object v3

    .line 166
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 169
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    move-result-object v3

    .line 168
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;

    .line 172
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 174
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getBeginTransactionMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BeginTransactionRequest;",
            "Lcom/google/firestore/v1/BeginTransactionResponse;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getBeginTransactionMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/BeginTransactionResponse;>;"
    if-nez v0, :cond_1

    .line 189
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 192
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 193
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "BeginTransaction"

    .line 194
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 195
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 197
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionRequest;->getDefaultInstance()Lcom/google/firestore/v1/BeginTransactionRequest;

    move-result-object v3

    .line 196
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 199
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionResponse;->getDefaultInstance()Lcom/google/firestore/v1/BeginTransactionResponse;

    move-result-object v3

    .line 198
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod:Lio/grpc/MethodDescriptor;

    .line 202
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 204
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getCommitMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CommitRequest;",
            "Lcom/google/firestore/v1/CommitResponse;",
            ">;"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getCommitMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/CommitRequest;Lcom/google/firestore/v1/CommitResponse;>;"
    if-nez v0, :cond_1

    .line 219
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 220
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 222
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 223
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Commit"

    .line 224
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 225
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 227
    invoke-static {}, Lcom/google/firestore/v1/CommitRequest;->getDefaultInstance()Lcom/google/firestore/v1/CommitRequest;

    move-result-object v3

    .line 226
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 229
    invoke-static {}, Lcom/google/firestore/v1/CommitResponse;->getDefaultInstance()Lcom/google/firestore/v1/CommitResponse;

    move-result-object v3

    .line 228
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod:Lio/grpc/MethodDescriptor;

    .line 232
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 234
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getCreateDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CreateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 458
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getCreateDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;>;"
    if-nez v0, :cond_1

    .line 459
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 460
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 462
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 463
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "CreateDocument"

    .line 464
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 465
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 467
    invoke-static {}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/CreateDocumentRequest;

    move-result-object v3

    .line 466
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 469
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v3

    .line 468
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 472
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 474
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getDeleteDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/DeleteDocumentRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getDeleteDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/DeleteDocumentRequest;Lcom/google/protobuf/Empty;>;"
    if-nez v0, :cond_1

    .line 129
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 132
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 133
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "DeleteDocument"

    .line 134
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 135
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 137
    invoke-static {}, Lcom/google/firestore/v1/DeleteDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/DeleteDocumentRequest;

    move-result-object v3

    .line 136
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 139
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v3

    .line 138
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 142
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 144
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getExecutePipelineMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ExecutePipelineRequest;",
            "Lcom/google/firestore/v1/ExecutePipelineResponse;",
            ">;"
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getExecutePipelineMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getExecutePipelineMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/ExecutePipelineResponse;>;"
    if-nez v0, :cond_1

    .line 309
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 310
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getExecutePipelineMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 312
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 313
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "ExecutePipeline"

    .line 314
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 315
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 317
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getDefaultInstance()Lcom/google/firestore/v1/ExecutePipelineRequest;

    move-result-object v3

    .line 316
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 319
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineResponse;->getDefaultInstance()Lcom/google/firestore/v1/ExecutePipelineResponse;

    move-result-object v3

    .line 318
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getExecutePipelineMethod:Lio/grpc/MethodDescriptor;

    .line 322
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 324
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getGetDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/GetDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getGetDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/Document;>;"
    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 42
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 43
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "GetDocument"

    .line 44
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 45
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 47
    invoke-static {}, Lcom/google/firestore/v1/GetDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/GetDocumentRequest;

    move-result-object v3

    .line 46
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 49
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v3

    .line 48
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 54
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getListCollectionIdsMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
            "Lcom/google/firestore/v1/ListCollectionIdsResponse;",
            ">;"
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getListCollectionIdsMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ListCollectionIdsRequest;Lcom/google/firestore/v1/ListCollectionIdsResponse;>;"
    if-nez v0, :cond_1

    .line 429
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 430
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 432
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 433
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "ListCollectionIds"

    .line 434
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 435
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 437
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsRequest;

    move-result-object v3

    .line 436
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 439
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsResponse;

    move-result-object v3

    .line 438
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 440
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;

    .line 442
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 444
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getListDocumentsMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            "Lcom/google/firestore/v1/ListDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getListDocumentsMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/ListDocumentsResponse;>;"
    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 73
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "ListDocuments"

    .line 74
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 77
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v3

    .line 76
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 79
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsResponse;

    move-result-object v3

    .line 78
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod:Lio/grpc/MethodDescriptor;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 84
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getListenMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListenRequest;",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getListenMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/ListenResponse;>;"
    if-nez v0, :cond_1

    .line 399
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 400
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 402
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 403
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Listen"

    .line 404
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 405
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 407
    invoke-static {}, Lcom/google/firestore/v1/ListenRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListenRequest;

    move-result-object v3

    .line 406
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 409
    invoke-static {}, Lcom/google/firestore/v1/ListenResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v3

    .line 408
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod:Lio/grpc/MethodDescriptor;

    .line 412
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 414
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getRollbackMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RollbackRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getRollbackMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/Empty;>;"
    if-nez v0, :cond_1

    .line 249
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 250
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 252
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 253
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Rollback"

    .line 254
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 255
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 257
    invoke-static {}, Lcom/google/firestore/v1/RollbackRequest;->getDefaultInstance()Lcom/google/firestore/v1/RollbackRequest;

    move-result-object v3

    .line 256
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 259
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v3

    .line 258
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod:Lio/grpc/MethodDescriptor;

    .line 262
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 264
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getRunAggregationQueryMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getRunAggregationQueryMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/RunAggregationQueryResponse;>;"
    if-nez v0, :cond_1

    .line 339
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 340
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 342
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 343
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "RunAggregationQuery"

    .line 344
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 345
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 347
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryRequest;

    move-result-object v3

    .line 346
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 349
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryResponse;

    move-result-object v3

    .line 348
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;

    .line 352
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 354
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getRunQueryMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunQueryRequest;",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getRunQueryMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/RunQueryResponse;>;"
    if-nez v0, :cond_1

    .line 279
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 282
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 283
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "RunQuery"

    .line 284
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 285
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 287
    invoke-static {}, Lcom/google/firestore/v1/RunQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryRequest;

    move-result-object v3

    .line 286
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 289
    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v3

    .line 288
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod:Lio/grpc/MethodDescriptor;

    .line 292
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 294
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 4

    .line 1438
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 1439
    .local v0, "result":Lio/grpc/ServiceDescriptor;
    if-nez v0, :cond_1

    .line 1440
    const-class v1, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v1

    .line 1441
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    move-object v0, v2

    .line 1442
    if-nez v0, :cond_0

    .line 1443
    const-string v2, "google.firestore.v1.Firestore"

    invoke-static {v2}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1444
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1445
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1446
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1447
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1448
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1449
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1450
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1451
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1452
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1453
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getExecutePipelineMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1454
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1455
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1456
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1457
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1458
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1459
    invoke-virtual {v2}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v2

    move-object v0, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 1461
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1463
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getUpdateDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getUpdateDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;>;"
    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 102
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 103
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "UpdateDocument"

    .line 104
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 105
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/UpdateDocumentRequest;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 109
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v3

    .line 108
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 112
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 114
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getWriteMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/WriteRequest;",
            "Lcom/google/firestore/v1/WriteResponse;",
            ">;"
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getWriteMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/WriteRequest;Lcom/google/firestore/v1/WriteResponse;>;"
    if-nez v0, :cond_1

    .line 369
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 370
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 372
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 373
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Write"

    .line 374
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 375
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 377
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->getDefaultInstance()Lcom/google/firestore/v1/WriteRequest;

    move-result-object v3

    .line 376
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 379
    invoke-static {}, Lcom/google/firestore/v1/WriteResponse;->getDefaultInstance()Lcom/google/firestore/v1/WriteResponse;

    move-result-object v3

    .line 378
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod:Lio/grpc/MethodDescriptor;

    .line 382
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 384
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;
    .locals 2
    .param p0, "channel"    # Lio/grpc/Channel;

    .line 496
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$2;

    invoke-direct {v0}, Lcom/google/firestore/v1/FirestoreGrpc$2;-><init>()V

    .line 503
    .local v0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;>;"
    invoke-static {v0, p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;

    return-object v1
.end method

.method public static newFutureStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;
    .locals 2
    .param p0, "channel"    # Lio/grpc/Channel;

    .line 511
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$3;

    invoke-direct {v0}, Lcom/google/firestore/v1/FirestoreGrpc$3;-><init>()V

    .line 518
    .local v0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;>;"
    invoke-static {v0, p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;

    return-object v1
.end method

.method public static newStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;
    .locals 2
    .param p0, "channel"    # Lio/grpc/Channel;

    .line 481
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/FirestoreGrpc$1;-><init>()V

    .line 488
    .local v0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;>;"
    invoke-static {v0, p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    return-object v1
.end method
