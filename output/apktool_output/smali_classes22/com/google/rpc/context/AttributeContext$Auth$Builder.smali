.class public final Lcom/google/rpc/context/AttributeContext$Auth$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$AuthOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Auth;",
        "Lcom/google/rpc/context/AttributeContext$Auth$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$AuthOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3166
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->access$2800()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3167
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 3159
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccessLevels(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3859
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3860
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4400(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V

    .line 3861
    return-object p0
.end method

.method public addAccessLevelsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3920
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3921
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4700(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V

    .line 3922
    return-object p0
.end method

.method public addAllAccessLevels(Ljava/lang/Iterable;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Auth$Builder;"
        }
    .end annotation

    .line 3880
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3881
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4500(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/Iterable;)V

    .line 3882
    return-object p0
.end method

.method public addAllAudiences(Ljava/lang/Iterable;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Auth$Builder;"
        }
    .end annotation

    .line 3445
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3446
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3400(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/Iterable;)V

    .line 3447
    return-object p0
.end method

.method public addAudiences(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3417
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3418
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3300(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V

    .line 3419
    return-object p0
.end method

.method public addAudiencesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3499
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3500
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3600(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V

    .line 3501
    return-object p0
.end method

.method public clearAccessLevels()Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3899
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3900
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4600(Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 3901
    return-object p0
.end method

.method public clearAudiences()Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3471
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3472
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3500(Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 3473
    return-object p0
.end method

.method public clearClaims()Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3738
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3739
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4200(Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 3740
    return-object p0
.end method

.method public clearPresenter()Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3565
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3566
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3800(Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 3567
    return-object p0
.end method

.method public clearPrincipal()Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3235
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3236
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3000(Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 3237
    return-object p0
.end method

.method public getAccessLevels(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 3798
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->getAccessLevels(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessLevelsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 3818
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->getAccessLevelsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAccessLevelsCount()I
    .locals 1

    .line 3779
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getAccessLevelsCount()I

    move-result v0

    return v0
.end method

.method public getAccessLevelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3760
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    .line 3761
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getAccessLevelsList()Ljava/util/List;

    move-result-object v0

    .line 3760
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudiences(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 3335
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->getAudiences(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudiencesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 3362
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->getAudiencesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAudiencesCount()I
    .locals 1

    .line 3309
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getAudiencesCount()I

    move-result v0

    return v0
.end method

.method public getAudiencesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3283
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    .line 3284
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getAudiencesList()Ljava/util/List;

    move-result-object v0

    .line 3283
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaims()Lcom/google/protobuf/Struct;
    .locals 1

    .line 3636
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getClaims()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getPresenter()Ljava/lang/String;
    .locals 1

    .line 3517
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getPresenter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresenterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3533
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getPresenterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .line 3184
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getPrincipal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipalBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3201
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getPrincipalBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasClaims()Z
    .locals 1

    .line 3611
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->hasClaims()Z

    move-result v0

    return v0
.end method

.method public mergeClaims(Lcom/google/protobuf/Struct;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 3713
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3714
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4100(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/Struct;)V

    .line 3715
    return-object p0
.end method

.method public setAccessLevels(ILjava/lang/String;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 3838
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3839
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4300(Lcom/google/rpc/context/AttributeContext$Auth;ILjava/lang/String;)V

    .line 3840
    return-object p0
.end method

.method public setAudiences(ILjava/lang/String;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 3389
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3390
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3200(Lcom/google/rpc/context/AttributeContext$Auth;ILjava/lang/String;)V

    .line 3391
    return-object p0
.end method

.method public setClaims(Lcom/google/protobuf/Struct$Builder;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Struct$Builder;

    .line 3687
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3688
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4000(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/Struct;)V

    .line 3689
    return-object p0
.end method

.method public setClaims(Lcom/google/protobuf/Struct;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 3660
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3661
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$4000(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/Struct;)V

    .line 3662
    return-object p0
.end method

.method public setPresenter(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3549
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3550
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3700(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V

    .line 3551
    return-object p0
.end method

.method public setPresenterBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3583
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3584
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3900(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V

    .line 3585
    return-object p0
.end method

.method public setPrincipal(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3218
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3219
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$2900(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V

    .line 3220
    return-object p0
.end method

.method public setPrincipalBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3254
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->copyOnWrite()V

    .line 3255
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->access$3100(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V

    .line 3256
    return-object p0
.end method
