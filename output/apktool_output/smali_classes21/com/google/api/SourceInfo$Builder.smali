.class public final Lcom/google/api/SourceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceInfo.java"

# interfaces
.implements Lcom/google/api/SourceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SourceInfo;",
        "Lcom/google/api/SourceInfo$Builder;",
        ">;",
        "Lcom/google/api/SourceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 257
    invoke-static {}, Lcom/google/api/SourceInfo;->access$000()Lcom/google/api/SourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SourceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/SourceInfo$1;

    .line 250
    invoke-direct {p0}, Lcom/google/api/SourceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSourceFiles(Ljava/lang/Iterable;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/SourceInfo$Builder;"
        }
    .end annotation

    .line 382
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$400(Lcom/google/api/SourceInfo;Ljava/lang/Iterable;)V

    .line 384
    return-object p0
.end method

.method public addSourceFiles(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 368
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 370
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 369
    invoke-static {v0, p1, v1}, Lcom/google/api/SourceInfo;->access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 371
    return-object p0
.end method

.method public addSourceFiles(ILcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 342
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 343
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 344
    return-object p0
.end method

.method public addSourceFiles(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 355
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/api/SourceInfo;->access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V

    .line 357
    return-object p0
.end method

.method public addSourceFiles(Lcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 329
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V

    .line 331
    return-object p0
.end method

.method public clearSourceFiles()Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 395
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0}, Lcom/google/api/SourceInfo;->access$500(Lcom/google/api/SourceInfo;)V

    .line 396
    return-object p0
.end method

.method public getSourceFiles(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 292
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {v0, p1}, Lcom/google/api/SourceInfo;->getSourceFiles(I)Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFilesCount()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getSourceFilesCount()I

    move-result v0

    return v0
.end method

.method public getSourceFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 271
    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getSourceFilesList()Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeSourceFiles(I)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 406
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$600(Lcom/google/api/SourceInfo;I)V

    .line 408
    return-object p0
.end method

.method public setSourceFiles(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 316
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 318
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 317
    invoke-static {v0, p1, v1}, Lcom/google/api/SourceInfo;->access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 319
    return-object p0
.end method

.method public setSourceFiles(ILcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 303
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 304
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 305
    return-object p0
.end method
