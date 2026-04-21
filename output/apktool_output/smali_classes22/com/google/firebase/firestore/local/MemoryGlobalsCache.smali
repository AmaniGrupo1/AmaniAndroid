.class final Lcom/google/firebase/firestore/local/MemoryGlobalsCache;
.super Ljava/lang/Object;
.source "MemoryGlobalsCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/GlobalsCache;


# instance fields
.field private sessionToken:Lcom/google/protobuf/ByteString;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryGlobalsCache;->sessionToken:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public getSessionsToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryGlobalsCache;->sessionToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public setSessionToken(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 33
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryGlobalsCache;->sessionToken:Lcom/google/protobuf/ByteString;

    .line 34
    return-void
.end method
