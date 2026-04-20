.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 920
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1200()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 921
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 913
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValidateQueryIndexes()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1

    .line 1002
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 1003
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 1004
    return-object p0
.end method

.method public clearValidateQueryResultOrder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1

    .line 959
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 960
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V

    .line 961
    return-object p0
.end method

.method public getValidateQueryIndexes()Z
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getValidateQueryIndexes()Z

    move-result v0

    return v0
.end method

.method public getValidateQueryResultOrder()Z
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getValidateQueryResultOrder()Z

    move-result v0

    return v0
.end method

.method public setValidateQueryIndexes(Z)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 988
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 989
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;Z)V

    .line 990
    return-object p0
.end method

.method public setValidateQueryResultOrder(Z)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 946
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->copyOnWrite()V

    .line 947
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->access$1300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;Z)V

    .line 948
    return-object p0
.end method
