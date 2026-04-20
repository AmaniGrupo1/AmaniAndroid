.class public final Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptions$LinearOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions$Linear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$BucketOptions$Linear;",
        "Lcom/google/api/Distribution$BucketOptions$Linear$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptions$LinearOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 773
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$600()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 774
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Distribution$1;

    .line 766
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNumFiniteBuckets()Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$800(Lcom/google/api/Distribution$BucketOptions$Linear;)V

    .line 814
    return-object p0
.end method

.method public clearOffset()Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
    .locals 1

    .line 892
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$1200(Lcom/google/api/Distribution$BucketOptions$Linear;)V

    .line 894
    return-object p0
.end method

.method public clearWidth()Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->copyOnWrite()V

    .line 853
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$1000(Lcom/google/api/Distribution$BucketOptions$Linear;)V

    .line 854
    return-object p0
.end method

.method public getNumFiniteBuckets()I
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->getNumFiniteBuckets()I

    move-result v0

    return v0
.end method

.method public getOffset()D
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->getOffset()D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Linear;->getWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public setNumFiniteBuckets(I)Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 799
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$700(Lcom/google/api/Distribution$BucketOptions$Linear;I)V

    .line 801
    return-object p0
.end method

.method public setOffset(D)Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 879
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->copyOnWrite()V

    .line 880
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$1100(Lcom/google/api/Distribution$BucketOptions$Linear;D)V

    .line 881
    return-object p0
.end method

.method public setWidth(D)Lcom/google/api/Distribution$BucketOptions$Linear$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 839
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Linear;->access$900(Lcom/google/api/Distribution$BucketOptions$Linear;D)V

    .line 841
    return-object p0
.end method
