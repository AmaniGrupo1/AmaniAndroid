.class public final Lcom/google/api/Distribution$Exemplar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$ExemplarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$Exemplar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$Exemplar;",
        "Lcom/google/api/Distribution$Exemplar$Builder;",
        ">;",
        "Lcom/google/api/Distribution$ExemplarOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3132
    invoke-static {}, Lcom/google/api/Distribution$Exemplar;->access$4000()Lcom/google/api/Distribution$Exemplar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3133
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Distribution$1;

    .line 3125
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAttachments(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/Distribution$Exemplar$Builder;"
        }
    .end annotation

    .line 3471
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3472
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4900(Lcom/google/api/Distribution$Exemplar;Ljava/lang/Iterable;)V

    .line 3473
    return-object p0
.end method

.method public addAttachments(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 3447
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3448
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    .line 3449
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 3448
    invoke-static {v0, p1, v1}, Lcom/google/api/Distribution$Exemplar;->access$4800(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3450
    return-object p0
.end method

.method public addAttachments(ILcom/google/protobuf/Any;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 3401
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3402
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->access$4800(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3403
    return-object p0
.end method

.method public addAttachments(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 3424
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3425
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$Exemplar;->access$4700(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Any;)V

    .line 3426
    return-object p0
.end method

.method public addAttachments(Lcom/google/protobuf/Any;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 3378
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3379
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4700(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Any;)V

    .line 3380
    return-object p0
.end method

.method public clearAttachments()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3493
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3494
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0}, Lcom/google/api/Distribution$Exemplar;->access$5000(Lcom/google/api/Distribution$Exemplar;)V

    .line 3495
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3245
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3246
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0}, Lcom/google/api/Distribution$Exemplar;->access$4500(Lcom/google/api/Distribution$Exemplar;)V

    .line 3247
    return-object p0
.end method

.method public clearValue()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3174
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3175
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0}, Lcom/google/api/Distribution$Exemplar;->access$4200(Lcom/google/api/Distribution$Exemplar;)V

    .line 3176
    return-object p0
.end method

.method public getAttachments(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 3311
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$Exemplar;->getAttachments(I)Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentsCount()I
    .locals 1

    .line 3291
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getAttachmentsCount()I

    move-result v0

    return v0
.end method

.method public getAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 3269
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    .line 3270
    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getAttachmentsList()Ljava/util/List;

    move-result-object v0

    .line 3269
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 3147
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 3188
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public mergeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 3234
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3235
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4400(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V

    .line 3236
    return-object p0
.end method

.method public removeAttachments(I)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3515
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3516
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$5100(Lcom/google/api/Distribution$Exemplar;I)V

    .line 3517
    return-object p0
.end method

.method public setAttachments(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 3355
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3356
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    .line 3357
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 3356
    invoke-static {v0, p1, v1}, Lcom/google/api/Distribution$Exemplar;->access$4600(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3358
    return-object p0
.end method

.method public setAttachments(ILcom/google/protobuf/Any;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 3332
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3333
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->access$4600(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3334
    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 3222
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3223
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$Exemplar;->access$4300(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V

    .line 3224
    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 3209
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3210
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4300(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V

    .line 3211
    return-object p0
.end method

.method public setValue(D)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 3160
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3161
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->access$4100(Lcom/google/api/Distribution$Exemplar;D)V

    .line 3162
    return-object p0
.end method
