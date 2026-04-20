.class public final Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BeginTransactionRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/BeginTransactionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BeginTransactionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/BeginTransactionRequest;",
        "Lcom/google/firestore/v1/BeginTransactionRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BeginTransactionRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$000()Lcom/google/firestore/v1/BeginTransactionRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/BeginTransactionRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest$1;

    .line 258
    invoke-direct {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDatabase()Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 323
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$200(Lcom/google/firestore/v1/BeginTransactionRequest;)V

    .line 324
    return-object p0
.end method

.method public clearOptions()Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 416
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$600(Lcom/google/firestore/v1/BeginTransactionRequest;)V

    .line 417
    return-object p0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->getOptions()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public mergeOptions(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 403
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$500(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 405
    return-object p0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$100(Lcom/google/firestore/v1/BeginTransactionRequest;Ljava/lang/String;)V

    .line 310
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 338
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 339
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$300(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/protobuf/ByteString;)V

    .line 340
    return-object p0
.end method

.method public setOptions(Lcom/google/firestore/v1/TransactionOptions$Builder;)Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$Builder;

    .line 390
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$400(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 392
    return-object p0
.end method

.method public setOptions(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 376
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->access$400(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 378
    return-object p0
.end method
