.class public final Lcom/google/firestore/v1/Pipeline$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Pipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/PipelineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Pipeline;",
        "Lcom/google/firestore/v1/Pipeline$Builder;",
        ">;",
        "Lcom/google/firestore/v1/PipelineOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1310
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->access$1200()Lcom/google/firestore/v1/Pipeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1311
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Pipeline$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Pipeline$1;

    .line 1303
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllStages(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;)",
            "Lcom/google/firestore/v1/Pipeline$Builder;"
        }
    .end annotation

    .line 1435
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Pipeline$Stage;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1436
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline;->access$1600(Lcom/google/firestore/v1/Pipeline;Ljava/lang/Iterable;)V

    .line 1437
    return-object p0
.end method

.method public addStages(ILcom/google/firestore/v1/Pipeline$Stage$Builder;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Pipeline$Stage$Builder;

    .line 1421
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1422
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    .line 1423
    invoke-virtual {p2}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1422
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Pipeline;->access$1500(Lcom/google/firestore/v1/Pipeline;ILcom/google/firestore/v1/Pipeline$Stage;)V

    .line 1424
    return-object p0
.end method

.method public addStages(ILcom/google/firestore/v1/Pipeline$Stage;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1395
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1396
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline;->access$1500(Lcom/google/firestore/v1/Pipeline;ILcom/google/firestore/v1/Pipeline$Stage;)V

    .line 1397
    return-object p0
.end method

.method public addStages(Lcom/google/firestore/v1/Pipeline$Stage$Builder;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Pipeline$Stage$Builder;

    .line 1408
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1409
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Pipeline;->access$1400(Lcom/google/firestore/v1/Pipeline;Lcom/google/firestore/v1/Pipeline$Stage;)V

    .line 1410
    return-object p0
.end method

.method public addStages(Lcom/google/firestore/v1/Pipeline$Stage;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1382
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1383
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline;->access$1400(Lcom/google/firestore/v1/Pipeline;Lcom/google/firestore/v1/Pipeline$Stage;)V

    .line 1384
    return-object p0
.end method

.method public clearStages()Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1448
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/Pipeline;->access$1700(Lcom/google/firestore/v1/Pipeline;)V

    .line 1449
    return-object p0
.end method

.method public getStages(I)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p1, "index"    # I

    .line 1345
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Pipeline;->getStages(I)Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v0

    return-object v0
.end method

.method public getStagesCount()I
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline;->getStagesCount()I

    move-result v0

    return v0
.end method

.method public getStagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    .line 1324
    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline;->getStagesList()Ljava/util/List;

    move-result-object v0

    .line 1323
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeStages(I)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1459
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1460
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Pipeline;->access$1800(Lcom/google/firestore/v1/Pipeline;I)V

    .line 1461
    return-object p0
.end method

.method public setStages(ILcom/google/firestore/v1/Pipeline$Stage$Builder;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Pipeline$Stage$Builder;

    .line 1369
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1370
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    .line 1371
    invoke-virtual {p2}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1370
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Pipeline;->access$1300(Lcom/google/firestore/v1/Pipeline;ILcom/google/firestore/v1/Pipeline$Stage;)V

    .line 1372
    return-object p0
.end method

.method public setStages(ILcom/google/firestore/v1/Pipeline$Stage;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1356
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Pipeline;->access$1300(Lcom/google/firestore/v1/Pipeline;ILcom/google/firestore/v1/Pipeline$Stage;)V

    .line 1358
    return-object p0
.end method
