.class public final enum Lcom/google/firestore/bundle/BundledQuery$LimitType;
.super Ljava/lang/Enum;
.source "BundledQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundledQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/BundledQuery$LimitType$LimitTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/bundle/BundledQuery$LimitType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/bundle/BundledQuery$LimitType;

.field public static final enum FIRST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

.field public static final FIRST_VALUE:I = 0x0

.field public static final enum LAST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

.field public static final LAST_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/bundle/BundledQuery$LimitType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/bundle/BundledQuery$LimitType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 3

    .line 30
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->FIRST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    sget-object v1, Lcom/google/firestore/bundle/BundledQuery$LimitType;->LAST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    sget-object v2, Lcom/google/firestore/bundle/BundledQuery$LimitType;->UNRECOGNIZED:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    filled-new-array {v0, v1, v2}, [Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/bundle/BundledQuery$LimitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->FIRST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 39
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;

    const-string v1, "LAST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/bundle/BundledQuery$LimitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->LAST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 40
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firestore/bundle/BundledQuery$LimitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->UNRECOGNIZED:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 30
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery$LimitType;->$values()[Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->$VALUES:[Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 85
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery$LimitType$1;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledQuery$LimitType$1;-><init>()V

    sput-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->value:I

    .line 111
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 1
    .param p0, "value"    # I

    .line 73
    packed-switch p0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_0
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->LAST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    return-object v0

    .line 74
    :pswitch_1
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->FIRST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/bundle/BundledQuery$LimitType;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType$LimitTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/google/firestore/bundle/BundledQuery$LimitType;->forNumber(I)Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->$VALUES:[Lcom/google/firestore/bundle/BundledQuery$LimitType;

    invoke-virtual {v0}, [Lcom/google/firestore/bundle/BundledQuery$LimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/bundle/BundledQuery$LimitType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 55
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->UNRECOGNIZED:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    if-eq p0, v0, :cond_0

    .line 59
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery$LimitType;->value:I

    return v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
