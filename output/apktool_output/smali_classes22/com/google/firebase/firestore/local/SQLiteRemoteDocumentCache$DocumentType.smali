.class final enum Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
.super Ljava/lang/Enum;
.source "SQLiteRemoteDocumentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DocumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

.field public static final enum FOUND_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

.field public static final enum INVALID_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

.field public static final enum NO_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

.field public static final enum UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;


# instance fields
.field final dbValue:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    .locals 4

    .line 73
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    sget-object v1, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    sget-object v2, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    sget-object v3, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->INVALID_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 74
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    const-string v1, "NO_DOCUMENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    .line 75
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    const-string v1, "FOUND_DOCUMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    .line 76
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    const-string v1, "UNKNOWN_DOCUMENT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    .line 77
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    const-string v1, "INVALID_DOCUMENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->INVALID_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    .line 73
    invoke-static {}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->$values()[Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->$VALUES:[Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "dbValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->dbValue:I

    .line 83
    return-void
.end method

.method static forMutableDocument(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    .locals 3
    .param p0, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 86
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->isNoDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->isUnknownDocument()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-object v0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MutableDocument has an unknown type"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->INVALID_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    .locals 1

    .line 73
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->$VALUES:[Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    return-object v0
.end method
