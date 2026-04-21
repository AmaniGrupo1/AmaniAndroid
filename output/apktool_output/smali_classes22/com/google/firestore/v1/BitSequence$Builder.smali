.class public final Lcom/google/firestore/v1/BitSequence$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BitSequence.java"

# interfaces
.implements Lcom/google/firestore/v1/BitSequenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BitSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/BitSequence;",
        "Lcom/google/firestore/v1/BitSequence$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BitSequenceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 233
    invoke-static {}, Lcom/google/firestore/v1/BitSequence;->access$000()Lcom/google/firestore/v1/BitSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/BitSequence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/BitSequence$1;

    .line 226
    invoke-direct {p0}, Lcom/google/firestore/v1/BitSequence$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBitmap()Lcom/google/firestore/v1/BitSequence$Builder;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/google/firestore/v1/BitSequence$Builder;->copyOnWrite()V

    .line 276
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0}, Lcom/google/firestore/v1/BitSequence;->access$200(Lcom/google/firestore/v1/BitSequence;)V

    .line 277
    return-object p0
.end method

.method public clearPadding()Lcom/google/firestore/v1/BitSequence$Builder;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/google/firestore/v1/BitSequence$Builder;->copyOnWrite()V

    .line 322
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0}, Lcom/google/firestore/v1/BitSequence;->access$400(Lcom/google/firestore/v1/BitSequence;)V

    .line 323
    return-object p0
.end method

.method public getBitmap()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BitSequence;->getBitmap()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BitSequence;->getPadding()I

    move-result v0

    return v0
.end method

.method public setBitmap(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BitSequence$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 261
    invoke-virtual {p0}, Lcom/google/firestore/v1/BitSequence$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BitSequence;->access$100(Lcom/google/firestore/v1/BitSequence;Lcom/google/protobuf/ByteString;)V

    .line 263
    return-object p0
.end method

.method public setPadding(I)Lcom/google/firestore/v1/BitSequence$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 306
    invoke-virtual {p0}, Lcom/google/firestore/v1/BitSequence$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BitSequence;->access$300(Lcom/google/firestore/v1/BitSequence;I)V

    .line 308
    return-object p0
.end method
