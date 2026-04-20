.class public final Lcom/google/api/ProjectProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProjectProperties.java"

# interfaces
.implements Lcom/google/api/ProjectPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ProjectProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ProjectProperties;",
        "Lcom/google/api/ProjectProperties$Builder;",
        ">;",
        "Lcom/google/api/ProjectPropertiesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 287
    invoke-static {}, Lcom/google/api/ProjectProperties;->access$000()Lcom/google/api/ProjectProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ProjectProperties$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/ProjectProperties$1;

    .line 280
    invoke-direct {p0}, Lcom/google/api/ProjectProperties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllProperties(Ljava/lang/Iterable;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Property;",
            ">;)",
            "Lcom/google/api/ProjectProperties$Builder;"
        }
    .end annotation

    .line 412
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Property;>;"
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 413
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$400(Lcom/google/api/ProjectProperties;Ljava/lang/Iterable;)V

    .line 414
    return-object p0
.end method

.method public addProperties(ILcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Property$Builder;

    .line 398
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 400
    invoke-virtual {p2}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Property;

    .line 399
    invoke-static {v0, p1, v1}, Lcom/google/api/ProjectProperties;->access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    .line 401
    return-object p0
.end method

.method public addProperties(ILcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Property;

    .line 372
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 373
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    .line 374
    return-object p0
.end method

.method public addProperties(Lcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Property$Builder;

    .line 385
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {p1}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Property;

    invoke-static {v0, v1}, Lcom/google/api/ProjectProperties;->access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V

    .line 387
    return-object p0
.end method

.method public addProperties(Lcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Property;

    .line 359
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 360
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V

    .line 361
    return-object p0
.end method

.method public clearProperties()Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0}, Lcom/google/api/ProjectProperties;->access$500(Lcom/google/api/ProjectProperties;)V

    .line 426
    return-object p0
.end method

.method public getProperties(I)Lcom/google/api/Property;
    .locals 1
    .param p1, "index"    # I

    .line 322
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {v0, p1}, Lcom/google/api/ProjectProperties;->getProperties(I)Lcom/google/api/Property;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesCount()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getPropertiesCount()I

    move-result v0

    return v0
.end method

.method public getPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 301
    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getPropertiesList()Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeProperties(I)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 436
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 437
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$600(Lcom/google/api/ProjectProperties;I)V

    .line 438
    return-object p0
.end method

.method public setProperties(ILcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Property$Builder;

    .line 346
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 347
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 348
    invoke-virtual {p2}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Property;

    .line 347
    invoke-static {v0, p1, v1}, Lcom/google/api/ProjectProperties;->access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    .line 349
    return-object p0
.end method

.method public setProperties(ILcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Property;

    .line 333
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 334
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    .line 335
    return-object p0
.end method
