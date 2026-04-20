.class public final Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$PipelineQueryTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target$PipelineQueryTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Target$PipelineQueryTarget;",
        "Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$PipelineQueryTargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1456
    invoke-static {}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->access$1600()Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1457
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Target$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Target$1;

    .line 1449
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPipelineType()Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 1

    .line 1466
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->copyOnWrite()V

    .line 1467
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->access$1700(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    .line 1468
    return-object p0
.end method

.method public clearStructuredPipeline()Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 1

    .line 1539
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->copyOnWrite()V

    .line 1540
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->access$2000(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    .line 1541
    return-object p0
.end method

.method public getPipelineTypeCase()Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getPipelineTypeCase()Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredPipeline()Z
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->hasStructuredPipeline()Z

    move-result v0

    return v0
.end method

.method public mergeStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 1527
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->copyOnWrite()V

    .line 1528
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->access$1900(Lcom/google/firestore/v1/Target$PipelineQueryTarget;Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 1529
    return-object p0
.end method

.method public setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline$Builder;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredPipeline$Builder;

    .line 1515
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->copyOnWrite()V

    .line 1516
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->access$1800(Lcom/google/firestore/v1/Target$PipelineQueryTarget;Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 1517
    return-object p0
.end method

.method public setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 1502
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->copyOnWrite()V

    .line 1503
    iget-object v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->access$1800(Lcom/google/firestore/v1/Target$PipelineQueryTarget;Lcom/google/firestore/v1/StructuredPipeline;)V

    .line 1504
    return-object p0
.end method
