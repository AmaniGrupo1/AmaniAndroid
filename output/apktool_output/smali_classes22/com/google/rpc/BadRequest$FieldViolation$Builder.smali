.class public final Lcom/google/rpc/BadRequest$FieldViolation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/BadRequest$FieldViolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/BadRequest$FieldViolation;",
        "Lcom/google/rpc/BadRequest$FieldViolation$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 328
    invoke-static {}, Lcom/google/rpc/BadRequest$FieldViolation;->access$000()Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/BadRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/BadRequest$1;

    .line 321
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 461
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->access$500(Lcom/google/rpc/BadRequest$FieldViolation;)V

    .line 462
    return-object p0
.end method

.method public clearField()Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 390
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->access$200(Lcom/google/rpc/BadRequest$FieldViolation;)V

    .line 391
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getFieldBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$400(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V

    .line 449
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 475
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 476
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$600(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V

    .line 477
    return-object p0
.end method

.method public setField(Ljava/lang/String;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 375
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$100(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V

    .line 376
    return-object p0
.end method

.method public setFieldBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 406
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$300(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V

    .line 408
    return-object p0
.end method
