.class public final Lcom/google/type/TimeOfDay$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TimeOfDay.java"

# interfaces
.implements Lcom/google/type/TimeOfDayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/TimeOfDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/TimeOfDay;",
        "Lcom/google/type/TimeOfDay$Builder;",
        ">;",
        "Lcom/google/type/TimeOfDayOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 280
    invoke-static {}, Lcom/google/type/TimeOfDay;->access$000()Lcom/google/type/TimeOfDay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/TimeOfDay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/type/TimeOfDay$1;

    .line 273
    invoke-direct {p0}, Lcom/google/type/TimeOfDay$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHours()Lcom/google/type/TimeOfDay$Builder;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 323
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0}, Lcom/google/type/TimeOfDay;->access$200(Lcom/google/type/TimeOfDay;)V

    .line 324
    return-object p0
.end method

.method public clearMinutes()Lcom/google/type/TimeOfDay$Builder;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0}, Lcom/google/type/TimeOfDay;->access$400(Lcom/google/type/TimeOfDay;)V

    .line 364
    return-object p0
.end method

.method public clearNanos()Lcom/google/type/TimeOfDay$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0}, Lcom/google/type/TimeOfDay;->access$800(Lcom/google/type/TimeOfDay;)V

    .line 447
    return-object p0
.end method

.method public clearSeconds()Lcom/google/type/TimeOfDay$Builder;
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0}, Lcom/google/type/TimeOfDay;->access$600(Lcom/google/type/TimeOfDay;)V

    .line 407
    return-object p0
.end method

.method public getHours()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-virtual {v0}, Lcom/google/type/TimeOfDay;->getHours()I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-virtual {v0}, Lcom/google/type/TimeOfDay;->getMinutes()I

    move-result v0

    return v0
.end method

.method public getNanos()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-virtual {v0}, Lcom/google/type/TimeOfDay;->getNanos()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-virtual {v0}, Lcom/google/type/TimeOfDay;->getSeconds()I

    move-result v0

    return v0
.end method

.method public setHours(I)Lcom/google/type/TimeOfDay$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 308
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0, p1}, Lcom/google/type/TimeOfDay;->access$100(Lcom/google/type/TimeOfDay;I)V

    .line 310
    return-object p0
.end method

.method public setMinutes(I)Lcom/google/type/TimeOfDay$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 349
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 350
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0, p1}, Lcom/google/type/TimeOfDay;->access$300(Lcom/google/type/TimeOfDay;I)V

    .line 351
    return-object p0
.end method

.method public setNanos(I)Lcom/google/type/TimeOfDay$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 432
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0, p1}, Lcom/google/type/TimeOfDay;->access$700(Lcom/google/type/TimeOfDay;I)V

    .line 434
    return-object p0
.end method

.method public setSeconds(I)Lcom/google/type/TimeOfDay$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 391
    invoke-virtual {p0}, Lcom/google/type/TimeOfDay$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/type/TimeOfDay$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeOfDay;

    invoke-static {v0, p1}, Lcom/google/type/TimeOfDay;->access$500(Lcom/google/type/TimeOfDay;I)V

    .line 393
    return-object p0
.end method
