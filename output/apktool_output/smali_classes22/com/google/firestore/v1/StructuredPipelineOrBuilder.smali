.class public interface abstract Lcom/google/firestore/v1/StructuredPipelineOrBuilder;
.super Ljava/lang/Object;
.source "StructuredPipelineOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsOptions(Ljava/lang/String;)Z
.end method

.method public abstract getOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getOptionsCount()I
.end method

.method public abstract getOptionsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
.end method

.method public abstract getOptionsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
.end method

.method public abstract getPipeline()Lcom/google/firestore/v1/Pipeline;
.end method

.method public abstract hasPipeline()Z
.end method
