.class public final Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$FieldFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilter;",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2964
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3000()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2965
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredQuery$1;

    .line 2957
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearField()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1

    .line 3034
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3035
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3300(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 3036
    return-object p0
.end method

.method public clearOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1

    .line 3100
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3101
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3600(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 3102
    return-object p0
.end method

.method public clearValue()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1

    .line 3171
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3172
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3900(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    .line 3173
    return-object p0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 2988
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 1

    .line 3075
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public getOpValue()I
    .locals 1

    .line 3049
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getOpValue()I

    move-result v0

    return v0
.end method

.method public getValue()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 3125
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public hasField()Z
    .locals 1

    .line 2977
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->hasField()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 3114
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->hasValue()Z

    move-result v0

    return v0
.end method

.method public mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 3023
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3024
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3200(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 3025
    return-object p0
.end method

.method public mergeValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 3160
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3161
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3800(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/Value;)V

    .line 3162
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    .line 3011
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3012
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3100(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 3013
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 2998
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 2999
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3100(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 3000
    return-object p0
.end method

.method public setOp(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 3087
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3088
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3500(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)V

    .line 3089
    return-object p0
.end method

.method public setOpValue(I)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 3061
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3062
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3400(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;I)V

    .line 3063
    return-object p0
.end method

.method public setValue(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 3148
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3149
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3700(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/Value;)V

    .line 3150
    return-object p0
.end method

.method public setValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 3135
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->copyOnWrite()V

    .line 3136
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->access$3700(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;Lcom/google/firestore/v1/Value;)V

    .line 3137
    return-object p0
.end method
