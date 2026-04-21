.class public abstract Lio/grpc/CallCredentials;
.super Ljava/lang/Object;
.source "CallCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/CallCredentials$RequestInfo;,
        Lio/grpc/CallCredentials$MetadataApplier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
.end method

.method public thisUsesUnstableApi()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    return-void
.end method
