.class final enum Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;
.super Ljava/lang/Enum;
.source "MutableDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/MutableDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DocumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

.field public static final enum FOUND_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

.field public static final enum INVALID:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

.field public static final enum NO_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

.field public static final enum UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;
    .locals 4

    .line 31
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->INVALID:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v2, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v3, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->INVALID:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 42
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    const-string v1, "FOUND_DOCUMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 44
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    const-string v1, "NO_DOCUMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 49
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    const-string v1, "UNKNOWN_DOCUMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 31
    invoke-static {}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->$values()[Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->$VALUES:[Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->$VALUES:[Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    return-object v0
.end method
