.class public final Lcom/google/api/Advice$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Advice.java"

# interfaces
.implements Lcom/google/api/AdviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Advice;",
        "Lcom/google/api/Advice$Builder;",
        ">;",
        "Lcom/google/api/AdviceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 193
    invoke-static {}, Lcom/google/api/Advice;->access$000()Lcom/google/api/Advice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Advice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Advice$1;

    .line 186
    invoke-direct {p0}, Lcom/google/api/Advice$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDescription()Lcom/google/api/Advice$Builder;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/google/api/Advice$Builder;->copyOnWrite()V

    .line 251
    iget-object v0, p0, Lcom/google/api/Advice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Advice;

    invoke-static {v0}, Lcom/google/api/Advice;->access$200(Lcom/google/api/Advice;)V

    .line 252
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/api/Advice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Advice;

    invoke-virtual {v0}, Lcom/google/api/Advice;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/api/Advice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Advice;

    invoke-virtual {v0}, Lcom/google/api/Advice;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/Advice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/google/api/Advice$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/api/Advice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Advice;

    invoke-static {v0, p1}, Lcom/google/api/Advice;->access$100(Lcom/google/api/Advice;Ljava/lang/String;)V

    .line 238
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Advice$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 266
    invoke-virtual {p0}, Lcom/google/api/Advice$Builder;->copyOnWrite()V

    .line 267
    iget-object v0, p0, Lcom/google/api/Advice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Advice;

    invoke-static {v0, p1}, Lcom/google/api/Advice;->access$300(Lcom/google/api/Advice;Lcom/google/protobuf/ByteString;)V

    .line 268
    return-object p0
.end method
