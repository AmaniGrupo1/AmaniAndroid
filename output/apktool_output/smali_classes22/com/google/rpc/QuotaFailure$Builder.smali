.class public final Lcom/google/rpc/QuotaFailure$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "QuotaFailure.java"

# interfaces
.implements Lcom/google/rpc/QuotaFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/QuotaFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/QuotaFailure;",
        "Lcom/google/rpc/QuotaFailure$Builder;",
        ">;",
        "Lcom/google/rpc/QuotaFailureOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 884
    invoke-static {}, Lcom/google/rpc/QuotaFailure;->access$800()Lcom/google/rpc/QuotaFailure;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 885
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/QuotaFailure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/QuotaFailure$1;

    .line 877
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllViolations(Ljava/lang/Iterable;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;)",
            "Lcom/google/rpc/QuotaFailure$Builder;"
        }
    .end annotation

    .line 1009
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/rpc/QuotaFailure$Violation;>;"
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 1010
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1200(Lcom/google/rpc/QuotaFailure;Ljava/lang/Iterable;)V

    .line 1011
    return-object p0
.end method

.method public addViolations(ILcom/google/rpc/QuotaFailure$Violation$Builder;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/rpc/QuotaFailure$Violation$Builder;

    .line 995
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 996
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    .line 997
    invoke-virtual {p2}, Lcom/google/rpc/QuotaFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/QuotaFailure$Violation;

    .line 996
    invoke-static {v0, p1, v1}, Lcom/google/rpc/QuotaFailure;->access$1100(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    .line 998
    return-object p0
.end method

.method public addViolations(ILcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/QuotaFailure$Violation;

    .line 969
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 970
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/QuotaFailure;->access$1100(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    .line 971
    return-object p0
.end method

.method public addViolations(Lcom/google/rpc/QuotaFailure$Violation$Builder;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/QuotaFailure$Violation$Builder;

    .line 982
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 983
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-virtual {p1}, Lcom/google/rpc/QuotaFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, v1}, Lcom/google/rpc/QuotaFailure;->access$1000(Lcom/google/rpc/QuotaFailure;Lcom/google/rpc/QuotaFailure$Violation;)V

    .line 984
    return-object p0
.end method

.method public addViolations(Lcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/QuotaFailure$Violation;

    .line 956
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1000(Lcom/google/rpc/QuotaFailure;Lcom/google/rpc/QuotaFailure$Violation;)V

    .line 958
    return-object p0
.end method

.method public clearViolations()Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 1021
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 1022
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0}, Lcom/google/rpc/QuotaFailure;->access$1300(Lcom/google/rpc/QuotaFailure;)V

    .line 1023
    return-object p0
.end method

.method public getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p1, "index"    # I

    .line 919
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0, p1}, Lcom/google/rpc/QuotaFailure;->getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public getViolationsCount()I
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure;->getViolationsCount()I

    move-result v0

    return v0
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    .line 898
    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure;->getViolationsList()Ljava/util/List;

    move-result-object v0

    .line 897
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeViolations(I)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1033
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 1034
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1400(Lcom/google/rpc/QuotaFailure;I)V

    .line 1035
    return-object p0
.end method

.method public setViolations(ILcom/google/rpc/QuotaFailure$Violation$Builder;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/rpc/QuotaFailure$Violation$Builder;

    .line 943
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    .line 945
    invoke-virtual {p2}, Lcom/google/rpc/QuotaFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/QuotaFailure$Violation;

    .line 944
    invoke-static {v0, p1, v1}, Lcom/google/rpc/QuotaFailure;->access$900(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    .line 946
    return-object p0
.end method

.method public setViolations(ILcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/QuotaFailure$Violation;

    .line 930
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 931
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/QuotaFailure;->access$900(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    .line 932
    return-object p0
.end method
