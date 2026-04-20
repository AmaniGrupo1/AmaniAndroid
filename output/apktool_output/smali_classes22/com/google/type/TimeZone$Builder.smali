.class public final Lcom/google/type/TimeZone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TimeZone.java"

# interfaces
.implements Lcom/google/type/TimeZoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/TimeZone;",
        "Lcom/google/type/TimeZone$Builder;",
        ">;",
        "Lcom/google/type/TimeZoneOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 256
    invoke-static {}, Lcom/google/type/TimeZone;->access$000()Lcom/google/type/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/TimeZone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/type/TimeZone$1;

    .line 249
    invoke-direct {p0}, Lcom/google/type/TimeZone$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearId()Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 310
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0}, Lcom/google/type/TimeZone;->access$200(Lcom/google/type/TimeZone;)V

    .line 311
    return-object p0
.end method

.method public clearVersion()Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0}, Lcom/google/type/TimeZone;->access$500(Lcom/google/type/TimeZone;)V

    .line 380
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/type/TimeZone$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 297
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$100(Lcom/google/type/TimeZone;Ljava/lang/String;)V

    .line 298
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/TimeZone$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 324
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 325
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$300(Lcom/google/type/TimeZone;Lcom/google/protobuf/ByteString;)V

    .line 326
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/type/TimeZone$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$400(Lcom/google/type/TimeZone;Ljava/lang/String;)V

    .line 367
    return-object p0
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/TimeZone$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 393
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$600(Lcom/google/type/TimeZone;Lcom/google/protobuf/ByteString;)V

    .line 395
    return-object p0
.end method
