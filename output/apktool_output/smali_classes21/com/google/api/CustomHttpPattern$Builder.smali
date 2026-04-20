.class public final Lcom/google/api/CustomHttpPattern$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CustomHttpPattern.java"

# interfaces
.implements Lcom/google/api/CustomHttpPatternOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/CustomHttpPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/CustomHttpPattern;",
        "Lcom/google/api/CustomHttpPattern$Builder;",
        ">;",
        "Lcom/google/api/CustomHttpPatternOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 254
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->access$000()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/CustomHttpPattern$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/CustomHttpPattern$1;

    .line 247
    invoke-direct {p0}, Lcom/google/api/CustomHttpPattern$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKind()Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/google/api/CustomHttpPattern$Builder;->copyOnWrite()V

    .line 308
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0}, Lcom/google/api/CustomHttpPattern;->access$200(Lcom/google/api/CustomHttpPattern;)V

    .line 309
    return-object p0
.end method

.method public clearPath()Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/google/api/CustomHttpPattern$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0}, Lcom/google/api/CustomHttpPattern;->access$500(Lcom/google/api/CustomHttpPattern;)V

    .line 378
    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getKind()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKindBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getKindBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/google/api/CustomHttpPattern$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p1}, Lcom/google/api/CustomHttpPattern;->access$100(Lcom/google/api/CustomHttpPattern;Ljava/lang/String;)V

    .line 296
    return-object p0
.end method

.method public setKindBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 322
    invoke-virtual {p0}, Lcom/google/api/CustomHttpPattern$Builder;->copyOnWrite()V

    .line 323
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p1}, Lcom/google/api/CustomHttpPattern;->access$300(Lcom/google/api/CustomHttpPattern;Lcom/google/protobuf/ByteString;)V

    .line 324
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lcom/google/api/CustomHttpPattern$Builder;->copyOnWrite()V

    .line 364
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p1}, Lcom/google/api/CustomHttpPattern;->access$400(Lcom/google/api/CustomHttpPattern;Ljava/lang/String;)V

    .line 365
    return-object p0
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 391
    invoke-virtual {p0}, Lcom/google/api/CustomHttpPattern$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p1}, Lcom/google/api/CustomHttpPattern;->access$600(Lcom/google/api/CustomHttpPattern;Lcom/google/protobuf/ByteString;)V

    .line 393
    return-object p0
.end method
