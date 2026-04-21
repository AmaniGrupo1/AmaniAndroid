.class public final Lcom/google/firestore/v1/RollbackRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RollbackRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RollbackRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RollbackRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RollbackRequest;",
        "Lcom/google/firestore/v1/RollbackRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RollbackRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 231
    invoke-static {}, Lcom/google/firestore/v1/RollbackRequest;->access$000()Lcom/google/firestore/v1/RollbackRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RollbackRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RollbackRequest$1;

    .line 224
    invoke-direct {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDatabase()Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 289
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RollbackRequest;->access$200(Lcom/google/firestore/v1/RollbackRequest;)V

    .line 290
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 345
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RollbackRequest;->access$500(Lcom/google/firestore/v1/RollbackRequest;)V

    .line 346
    return-object p0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 275
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RollbackRequest;->access$100(Lcom/google/firestore/v1/RollbackRequest;Ljava/lang/String;)V

    .line 276
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 304
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 305
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RollbackRequest;->access$300(Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/ByteString;)V

    .line 306
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 331
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 332
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RollbackRequest;->access$400(Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/ByteString;)V

    .line 333
    return-object p0
.end method
