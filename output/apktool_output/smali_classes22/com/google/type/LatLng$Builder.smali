.class public final Lcom/google/type/LatLng$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatLng.java"

# interfaces
.implements Lcom/google/type/LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/LatLng;",
        "Lcom/google/type/LatLng$Builder;",
        ">;",
        "Lcom/google/type/LatLngOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 202
    invoke-static {}, Lcom/google/type/LatLng;->access$000()Lcom/google/type/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/LatLng$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/type/LatLng$1;

    .line 195
    invoke-direct {p0}, Lcom/google/type/LatLng$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLatitude()Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 242
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0}, Lcom/google/type/LatLng;->access$200(Lcom/google/type/LatLng;)V

    .line 243
    return-object p0
.end method

.method public clearLongitude()Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 282
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0}, Lcom/google/type/LatLng;->access$400(Lcom/google/type/LatLng;)V

    .line 283
    return-object p0
.end method

.method public getLatitude()D
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public setLatitude(D)Lcom/google/type/LatLng$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 228
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 229
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0, p1, p2}, Lcom/google/type/LatLng;->access$100(Lcom/google/type/LatLng;D)V

    .line 230
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/type/LatLng$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 268
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 269
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0, p1, p2}, Lcom/google/type/LatLng;->access$300(Lcom/google/type/LatLng;D)V

    .line 270
    return-object p0
.end method
