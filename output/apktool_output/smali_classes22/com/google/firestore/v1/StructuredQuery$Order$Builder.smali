.class public final Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$Order;",
        "Lcom/google/firestore/v1/StructuredQuery$Order$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4276
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5000()Lcom/google/firestore/v1/StructuredQuery$Order;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4277
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredQuery$1;

    .line 4269
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDirection()Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1

    .line 4412
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4413
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5600(Lcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 4414
    return-object p0
.end method

.method public clearField()Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1

    .line 4346
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4347
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5300(Lcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 4348
    return-object p0
.end method

.method public getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1

    .line 4387
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionValue()I
    .locals 1

    .line 4361
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->getDirectionValue()I

    move-result v0

    return v0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 4300
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public hasField()Z
    .locals 1

    .line 4289
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;->hasField()Z

    move-result v0

    return v0
.end method

.method public mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4335
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4336
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5200(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 4337
    return-object p0
.end method

.method public setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Direction;

    .line 4399
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4400
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5500(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$Direction;)V

    .line 4401
    return-object p0
.end method

.method public setDirectionValue(I)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 4373
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4374
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5400(Lcom/google/firestore/v1/StructuredQuery$Order;I)V

    .line 4375
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    .line 4323
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4324
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5100(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 4325
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4310
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->copyOnWrite()V

    .line 4311
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->access$5100(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 4312
    return-object p0
.end method
