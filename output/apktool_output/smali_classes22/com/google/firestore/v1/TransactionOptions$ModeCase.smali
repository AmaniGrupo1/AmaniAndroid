.class public final enum Lcom/google/firestore/v1/TransactionOptions$ModeCase;
.super Ljava/lang/Enum;
.source "TransactionOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TransactionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/TransactionOptions$ModeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/TransactionOptions$ModeCase;

.field public static final enum MODE_NOT_SET:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

.field public static final enum READ_ONLY:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

.field public static final enum READ_WRITE:Lcom/google/firestore/v1/TransactionOptions$ModeCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 3

    .line 775
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->READ_ONLY:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    sget-object v1, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->READ_WRITE:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    sget-object v2, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->MODE_NOT_SET:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    filled-new-array {v0, v1, v2}, [Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 776
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/TransactionOptions$ModeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->READ_ONLY:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    .line 777
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    const/4 v1, 0x1

    const/4 v4, 0x3

    const-string v5, "READ_WRITE"

    invoke-direct {v0, v5, v1, v4}, Lcom/google/firestore/v1/TransactionOptions$ModeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->READ_WRITE:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    .line 778
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    const-string v1, "MODE_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firestore/v1/TransactionOptions$ModeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->MODE_NOT_SET:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    .line 775
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->$values()[Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->$VALUES:[Lcom/google/firestore/v1/TransactionOptions$ModeCase;

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

    .line 780
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 781
    iput p3, p0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->value:I

    .line 782
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 1
    .param p0, "value"    # I

    .line 792
    packed-switch p0, :pswitch_data_0

    .line 796
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 794
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->READ_WRITE:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    return-object v0

    .line 793
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->READ_ONLY:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    return-object v0

    .line 795
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->MODE_NOT_SET:Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    invoke-static {p0}, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->forNumber(I)Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 775
    const-class v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 1

    .line 775
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->$VALUES:[Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/TransactionOptions$ModeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 800
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->value:I

    return v0
.end method
