.class public final Lcom/google/api/Control$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Control.java"

# interfaces
.implements Lcom/google/api/ControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Control;",
        "Lcom/google/api/Control$Builder;",
        ">;",
        "Lcom/google/api/ControlOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 195
    invoke-static {}, Lcom/google/api/Control;->access$000()Lcom/google/api/Control;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Control$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Control$1;

    .line 188
    invoke-direct {p0}, Lcom/google/api/Control$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnvironment()Lcom/google/api/Control$Builder;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/google/api/Control$Builder;->copyOnWrite()V

    .line 253
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-static {v0}, Lcom/google/api/Control;->access$200(Lcom/google/api/Control;)V

    .line 254
    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-virtual {v0}, Lcom/google/api/Control;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-virtual {v0}, Lcom/google/api/Control;->getEnvironmentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEnvironment(Ljava/lang/String;)Lcom/google/api/Control$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/google/api/Control$Builder;->copyOnWrite()V

    .line 239
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-static {v0, p1}, Lcom/google/api/Control;->access$100(Lcom/google/api/Control;Ljava/lang/String;)V

    .line 240
    return-object p0
.end method

.method public setEnvironmentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Control$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 268
    invoke-virtual {p0}, Lcom/google/api/Control$Builder;->copyOnWrite()V

    .line 269
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-static {v0, p1}, Lcom/google/api/Control;->access$300(Lcom/google/api/Control;Lcom/google/protobuf/ByteString;)V

    .line 270
    return-object p0
.end method
