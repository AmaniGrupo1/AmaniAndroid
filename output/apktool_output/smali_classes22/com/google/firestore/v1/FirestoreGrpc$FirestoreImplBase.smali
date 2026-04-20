.class public abstract Lcom/google/firestore/v1/FirestoreGrpc$FirestoreImplBase;
.super Ljava/lang/Object;
.source "FirestoreGrpc.java"

# interfaces
.implements Lio/grpc/BindableService;
.implements Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/FirestoreGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FirestoreImplBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindService()Lio/grpc/ServerServiceDefinition;
    .locals 1

    .line 714
    invoke-static {p0}, Lcom/google/firestore/v1/FirestoreGrpc;->bindService(Lcom/google/firestore/v1/FirestoreGrpc$AsyncService;)Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method
