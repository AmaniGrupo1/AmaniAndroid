.class public final enum Lcom/google/firebase/firestore/pipeline/Ordering$Direction;
.super Ljava/lang/Enum;
.source "expressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/pipeline/Ordering$Direction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/Ordering$Direction;",
        "",
        "proto",
        "Lcom/google/firestore/v1/Value;",
        "<init>",
        "(Ljava/lang/String;ILcom/google/firestore/v1/Value;)V",
        "getProto",
        "()Lcom/google/firestore/v1/Value;",
        "ASCENDING",
        "DESCENDING",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

.field public static final enum ASCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

.field public static final enum DESCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;


# instance fields
.field private final proto:Lcom/google/firestore/v1/Value;


# direct methods
.method private static final synthetic $values()[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;
    .locals 2

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->ASCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->DESCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7701
    new-instance v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    const-string v1, "ascending"

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const-string v2, "ASCENDING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;-><init>(Ljava/lang/String;ILcom/google/firestore/v1/Value;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->ASCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    .line 7702
    new-instance v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    const-string v1, "descending"

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const-string v2, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;-><init>(Ljava/lang/String;ILcom/google/firestore/v1/Value;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->DESCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->$values()[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->$VALUES:[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->$VALUES:[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "proto"    # Lcom/google/firestore/v1/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/Value;",
            ")V"
        }
    .end annotation

    .line 7700
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->proto:Lcom/google/firestore/v1/Value;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/google/firebase/firestore/pipeline/Ordering$Direction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 7703
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Ordering$Direction;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 7703
    check-cast v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->$VALUES:[Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 7703
    check-cast v0, [Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    return-object v0
.end method


# virtual methods
.method public final getProto()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 7700
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->proto:Lcom/google/firestore/v1/Value;

    return-object v0
.end method
