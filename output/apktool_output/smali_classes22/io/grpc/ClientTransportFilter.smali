.class public abstract Lio/grpc/ClientTransportFilter;
.super Ljava/lang/Object;
.source "ClientTransportFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;

    .line 38
    return-object p1
.end method

.method public transportTerminated(Lio/grpc/Attributes;)V
    .locals 0
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;

    .line 50
    return-void
.end method
