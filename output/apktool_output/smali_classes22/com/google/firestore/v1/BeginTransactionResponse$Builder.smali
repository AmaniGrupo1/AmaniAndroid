.class public final Lcom/google/firestore/v1/BeginTransactionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BeginTransactionResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/BeginTransactionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BeginTransactionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/BeginTransactionResponse;",
        "Lcom/google/firestore/v1/BeginTransactionResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BeginTransactionResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 160
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionResponse;->access$000()Lcom/google/firestore/v1/BeginTransactionResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/BeginTransactionResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/BeginTransactionResponse$1;

    .line 153
    invoke-direct {p0}, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTransaction()Lcom/google/firestore/v1/BeginTransactionResponse$Builder;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;->copyOnWrite()V

    .line 200
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/BeginTransactionResponse;->access$200(Lcom/google/firestore/v1/BeginTransactionResponse;)V

    .line 201
    return-object p0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BeginTransactionResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 186
    invoke-virtual {p0}, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;->copyOnWrite()V

    .line 187
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BeginTransactionResponse;->access$100(Lcom/google/firestore/v1/BeginTransactionResponse;Lcom/google/protobuf/ByteString;)V

    .line 188
    return-object p0
.end method
