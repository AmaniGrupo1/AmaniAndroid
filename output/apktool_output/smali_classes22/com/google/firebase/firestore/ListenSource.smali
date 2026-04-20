.class public final enum Lcom/google/firebase/firestore/ListenSource;
.super Ljava/lang/Enum;
.source "ListenSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/ListenSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/ListenSource;

.field public static final enum CACHE:Lcom/google/firebase/firestore/ListenSource;

.field public static final enum DEFAULT:Lcom/google/firebase/firestore/ListenSource;


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/firestore/ListenSource;
    .locals 2

    .line 21
    sget-object v0, Lcom/google/firebase/firestore/ListenSource;->DEFAULT:Lcom/google/firebase/firestore/ListenSource;

    sget-object v1, Lcom/google/firebase/firestore/ListenSource;->CACHE:Lcom/google/firebase/firestore/ListenSource;

    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/ListenSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/google/firebase/firestore/ListenSource;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/ListenSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/ListenSource;->DEFAULT:Lcom/google/firebase/firestore/ListenSource;

    .line 37
    new-instance v0, Lcom/google/firebase/firestore/ListenSource;

    const-string v1, "CACHE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/ListenSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/ListenSource;->CACHE:Lcom/google/firebase/firestore/ListenSource;

    .line 21
    invoke-static {}, Lcom/google/firebase/firestore/ListenSource;->$values()[Lcom/google/firebase/firestore/ListenSource;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/ListenSource;->$VALUES:[Lcom/google/firebase/firestore/ListenSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/ListenSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/google/firebase/firestore/ListenSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/ListenSource;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/ListenSource;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/firebase/firestore/ListenSource;->$VALUES:[Lcom/google/firebase/firestore/ListenSource;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/ListenSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/ListenSource;

    return-object v0
.end method
