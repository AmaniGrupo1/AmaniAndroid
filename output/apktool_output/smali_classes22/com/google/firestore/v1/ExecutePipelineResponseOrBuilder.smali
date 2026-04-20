.class public interface abstract Lcom/google/firestore/v1/ExecutePipelineResponseOrBuilder;
.super Ljava/lang/Object;
.source "ExecutePipelineResponseOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getExecutionTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getResults(I)Lcom/google/firestore/v1/Document;
.end method

.method public abstract getResultsCount()I
.end method

.method public abstract getResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransaction()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasExecutionTime()Z
.end method
