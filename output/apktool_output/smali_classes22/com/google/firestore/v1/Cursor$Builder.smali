.class public final Lcom/google/firestore/v1/Cursor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cursor.java"

# interfaces
.implements Lcom/google/firestore/v1/CursorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Cursor;",
        "Lcom/google/firestore/v1/Cursor$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CursorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 331
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->access$000()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 332
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Cursor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Cursor$1;

    .line 324
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Cursor$Builder;"
        }
    .end annotation

    .line 486
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 487
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$400(Lcom/google/firestore/v1/Cursor;Ljava/lang/Iterable;)V

    .line 488
    return-object p0
.end method

.method public addValues(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 469
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    .line 471
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 470
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Cursor;->access$300(Lcom/google/firestore/v1/Cursor;ILcom/google/firestore/v1/Value;)V

    .line 472
    return-object p0
.end method

.method public addValues(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 437
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 438
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Cursor;->access$300(Lcom/google/firestore/v1/Cursor;ILcom/google/firestore/v1/Value;)V

    .line 439
    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 453
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Cursor;->access$200(Lcom/google/firestore/v1/Cursor;Lcom/google/firestore/v1/Value;)V

    .line 455
    return-object p0
.end method

.method public addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 421
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 422
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$200(Lcom/google/firestore/v1/Cursor;Lcom/google/firestore/v1/Value;)V

    .line 423
    return-object p0
.end method

.method public clearBefore()Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0}, Lcom/google/firestore/v1/Cursor;->access$800(Lcom/google/firestore/v1/Cursor;)V

    .line 561
    return-object p0
.end method

.method public clearValues()Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0}, Lcom/google/firestore/v1/Cursor;->access$500(Lcom/google/firestore/v1/Cursor;)V

    .line 503
    return-object p0
.end method

.method public getBefore()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor;->getBefore()Z

    move-result v0

    return v0
.end method

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 375
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Cursor;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor;->getValuesCount()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    .line 348
    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor;->getValuesList()Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeValues(I)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 516
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$600(Lcom/google/firestore/v1/Cursor;I)V

    .line 518
    return-object p0
.end method

.method public setBefore(Z)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 545
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 546
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$700(Lcom/google/firestore/v1/Cursor;Z)V

    .line 547
    return-object p0
.end method

.method public setValues(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 405
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    .line 407
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 406
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Cursor;->access$100(Lcom/google/firestore/v1/Cursor;ILcom/google/firestore/v1/Value;)V

    .line 408
    return-object p0
.end method

.method public setValues(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 389
    invoke-virtual {p0}, Lcom/google/firestore/v1/Cursor$Builder;->copyOnWrite()V

    .line 390
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Cursor;->access$100(Lcom/google/firestore/v1/Cursor;ILcom/google/firestore/v1/Value;)V

    .line 391
    return-object p0
.end method
