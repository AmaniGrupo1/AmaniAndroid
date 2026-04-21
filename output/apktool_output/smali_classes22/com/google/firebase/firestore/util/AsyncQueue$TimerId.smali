.class public final enum Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
.super Ljava/lang/Enum;
.source "AsyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/AsyncQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum ALL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum CONNECTIVITY_ATTEMPT_TIMER:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum GARBAGE_COLLECTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum HEALTH_CHECK_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum INDEX_BACKFILL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum LISTEN_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum LISTEN_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum ONLINE_STATE_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum RETRY_TRANSACTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum WRITE_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

.field public static final enum WRITE_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .locals 11

    .line 53
    sget-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->ALL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v1, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->LISTEN_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v2, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->LISTEN_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v3, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->WRITE_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v4, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->WRITE_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v5, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->HEALTH_CHECK_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v6, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->ONLINE_STATE_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v7, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->GARBAGE_COLLECTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v8, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->RETRY_TRANSACTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v9, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->CONNECTIVITY_ATTEMPT_TIMER:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v10, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->INDEX_BACKFILL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    filled-new-array/range {v0 .. v10}, [Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->ALL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 63
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "LISTEN_STREAM_IDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->LISTEN_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 64
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "LISTEN_STREAM_CONNECTION_BACKOFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->LISTEN_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 65
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "WRITE_STREAM_IDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->WRITE_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 66
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "WRITE_STREAM_CONNECTION_BACKOFF"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->WRITE_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 67
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "HEALTH_CHECK_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->HEALTH_CHECK_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 73
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "ONLINE_STATE_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->ONLINE_STATE_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 75
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "GARBAGE_COLLECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->GARBAGE_COLLECTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 80
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "RETRY_TRANSACTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->RETRY_TRANSACTION:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 85
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "CONNECTIVITY_ATTEMPT_TIMER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->CONNECTIVITY_ATTEMPT_TIMER:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 88
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    const-string v1, "INDEX_BACKFILL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->INDEX_BACKFILL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 53
    invoke-static {}, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->$values()[Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->$VALUES:[Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->$VALUES:[Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    return-object v0
.end method
