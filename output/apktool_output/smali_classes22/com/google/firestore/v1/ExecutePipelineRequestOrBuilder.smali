.class public interface abstract Lcom/google/firestore/v1/ExecutePipelineRequestOrBuilder;
.super Ljava/lang/Object;
.source "ExecutePipelineRequestOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getConsistencySelectorCase()Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;
.end method

.method public abstract getDatabase()Ljava/lang/String;
.end method

.method public abstract getDatabaseBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
.end method

.method public abstract getPipelineTypeCase()Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;
.end method

.method public abstract getReadTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;
.end method

.method public abstract getTransaction()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasNewTransaction()Z
.end method

.method public abstract hasReadTime()Z
.end method

.method public abstract hasStructuredPipeline()Z
.end method

.method public abstract hasTransaction()Z
.end method
