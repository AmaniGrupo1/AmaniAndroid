.class public final Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeleteDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/DeleteDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DeleteDocumentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DeleteDocumentRequest;",
        "Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DeleteDocumentRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$000()Lcom/google/firestore/v1/DeleteDocumentRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DeleteDocumentRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DeleteDocumentRequest$1;

    .line 258
    invoke-direct {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurrentDocument()Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 416
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$600(Lcom/google/firestore/v1/DeleteDocumentRequest;)V

    .line 417
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 323
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$200(Lcom/google/firestore/v1/DeleteDocumentRequest;)V

    .line 324
    return-object p0
.end method

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DeleteDocumentRequest;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DeleteDocumentRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DeleteDocumentRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DeleteDocumentRequest;->hasCurrentDocument()Z

    move-result v0

    return v0
.end method

.method public mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 403
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$500(Lcom/google/firestore/v1/DeleteDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    .line 405
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition$Builder;)Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Precondition$Builder;

    .line 390
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$400(Lcom/google/firestore/v1/DeleteDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    .line 392
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 376
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$400(Lcom/google/firestore/v1/DeleteDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    .line 378
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$100(Lcom/google/firestore/v1/DeleteDocumentRequest;Ljava/lang/String;)V

    .line 310
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 338
    invoke-virtual {p0}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->copyOnWrite()V

    .line 339
    iget-object v0, p0, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DeleteDocumentRequest;->access$300(Lcom/google/firestore/v1/DeleteDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 340
    return-object p0
.end method
