.class public final Lcom/google/firestore/admin/v1/Index$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Index.java"

# interfaces
.implements Lcom/google/firestore/admin/v1/IndexOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/admin/v1/Index;",
        "Lcom/google/firestore/admin/v1/Index$Builder;",
        ">;",
        "Lcom/google/firestore/admin/v1/IndexOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1975
    invoke-static {}, Lcom/google/firestore/admin/v1/Index;->access$1200()Lcom/google/firestore/admin/v1/Index;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1976
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/admin/v1/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/admin/v1/Index$1;

    .line 1968
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFields(Ljava/lang/Iterable;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;)",
            "Lcom/google/firestore/admin/v1/Index$Builder;"
        }
    .end annotation

    .line 2380
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/admin/v1/Index$IndexField;>;"
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2381
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2200(Lcom/google/firestore/admin/v1/Index;Ljava/lang/Iterable;)V

    .line 2382
    return-object p0
.end method

.method public addFields(ILcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 2356
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2357
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    .line 2358
    invoke-virtual {p2}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2357
    invoke-static {v0, p1, v1}, Lcom/google/firestore/admin/v1/Index;->access$2100(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2359
    return-object p0
.end method

.method public addFields(ILcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2310
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2311
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/admin/v1/Index;->access$2100(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2312
    return-object p0
.end method

.method public addFields(Lcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 2333
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2334
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, v1}, Lcom/google/firestore/admin/v1/Index;->access$2000(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2335
    return-object p0
.end method

.method public addFields(Lcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2287
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2288
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2000(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2289
    return-object p0
.end method

.method public clearFields()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2402
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2403
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$2300(Lcom/google/firestore/admin/v1/Index;)V

    .line 2404
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2040
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2041
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$1400(Lcom/google/firestore/admin/v1/Index;)V

    .line 2042
    return-object p0
.end method

.method public clearQueryScope()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2154
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2155
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$1800(Lcom/google/firestore/admin/v1/Index;)V

    .line 2156
    return-object p0
.end method

.method public clearState()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2491
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index;->access$2700(Lcom/google/firestore/admin/v1/Index;)V

    .line 2492
    return-object p0
.end method

.method public getFields(I)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p1, "index"    # I

    .line 2220
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0, p1}, Lcom/google/firestore/admin/v1/Index;->getFields(I)Lcom/google/firestore/admin/v1/Index$IndexField;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 2200
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getFieldsCount()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;"
        }
    .end annotation

    .line 2178
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    .line 2179
    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getFieldsList()Ljava/util/List;

    move-result-object v0

    .line 2178
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryScope()Lcom/google/firestore/admin/v1/Index$QueryScope;
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getQueryScope()Lcom/google/firestore/admin/v1/Index$QueryScope;

    move-result-object v0

    return-object v0
.end method

.method public getQueryScopeValue()I
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getQueryScopeValue()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/google/firestore/admin/v1/Index$State;
    .locals 1

    .line 2465
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getState()Lcom/google/firestore/admin/v1/Index$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 2439
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getStateValue()I

    move-result v0

    return v0
.end method

.method public removeFields(I)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2424
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2425
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2400(Lcom/google/firestore/admin/v1/Index;I)V

    .line 2426
    return-object p0
.end method

.method public setFields(ILcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 2264
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2265
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    .line 2266
    invoke-virtual {p2}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2265
    invoke-static {v0, p1, v1}, Lcom/google/firestore/admin/v1/Index;->access$1900(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2267
    return-object p0
.end method

.method public setFields(ILcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 2241
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2242
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/admin/v1/Index;->access$1900(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V

    .line 2243
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2024
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2025
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1300(Lcom/google/firestore/admin/v1/Index;Ljava/lang/String;)V

    .line 2026
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2058
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2059
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1500(Lcom/google/firestore/admin/v1/Index;Lcom/google/protobuf/ByteString;)V

    .line 2060
    return-object p0
.end method

.method public setQueryScope(Lcom/google/firestore/admin/v1/Index$QueryScope;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$QueryScope;

    .line 2135
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2136
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1700(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$QueryScope;)V

    .line 2137
    return-object p0
.end method

.method public setQueryScopeValue(I)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2097
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2098
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$1600(Lcom/google/firestore/admin/v1/Index;I)V

    .line 2099
    return-object p0
.end method

.method public setState(Lcom/google/firestore/admin/v1/Index$State;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$State;

    .line 2477
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2478
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2600(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$State;)V

    .line 2479
    return-object p0
.end method

.method public setStateValue(I)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2451
    invoke-virtual {p0}, Lcom/google/firestore/admin/v1/Index$Builder;->copyOnWrite()V

    .line 2452
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p1}, Lcom/google/firestore/admin/v1/Index;->access$2500(Lcom/google/firestore/admin/v1/Index;I)V

    .line 2453
    return-object p0
.end method
