.class public final enum Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
.super Ljava/lang/Enum;
.source "MaybeDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/MaybeDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

.field public static final enum DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

.field public static final enum DOCUMENTTYPE_NOT_SET:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

.field public static final enum NO_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

.field public static final enum UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 4

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->NO_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    sget-object v1, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    sget-object v2, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    sget-object v3, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENTTYPE_NOT_SET:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    const-string v1, "NO_DOCUMENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->NO_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    .line 27
    new-instance v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    const-string v1, "DOCUMENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    .line 28
    new-instance v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    const-string v1, "UNKNOWN_DOCUMENT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    .line 29
    new-instance v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    const-string v1, "DOCUMENTTYPE_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENTTYPE_NOT_SET:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    .line 25
    invoke-static {}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->$values()[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->$VALUES:[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->value:I

    .line 33
    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 43
    packed-switch p0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 46
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-object v0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-object v0

    .line 44
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->NO_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-object v0

    .line 47
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENTTYPE_NOT_SET:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->$VALUES:[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->value:I

    return v0
.end method
