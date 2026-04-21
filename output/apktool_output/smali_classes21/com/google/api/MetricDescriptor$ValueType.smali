.class public final enum Lcom/google/api/MetricDescriptor$ValueType;
.super Ljava/lang/Enum;
.source "MetricDescriptor.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/MetricDescriptor$ValueType$ValueTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/MetricDescriptor$ValueType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/MetricDescriptor$ValueType;

.field public static final enum BOOL:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final BOOL_VALUE:I = 0x1

.field public static final enum DISTRIBUTION:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final DISTRIBUTION_VALUE:I = 0x5

.field public static final enum DOUBLE:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final DOUBLE_VALUE:I = 0x3

.field public static final enum INT64:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final INT64_VALUE:I = 0x2

.field public static final enum MONEY:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final MONEY_VALUE:I = 0x6

.field public static final enum STRING:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final STRING_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final enum VALUE_TYPE_UNSPECIFIED:Lcom/google/api/MetricDescriptor$ValueType;

.field public static final VALUE_TYPE_UNSPECIFIED_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/MetricDescriptor$ValueType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/api/MetricDescriptor$ValueType;
    .locals 8

    .line 187
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->VALUE_TYPE_UNSPECIFIED:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v1, Lcom/google/api/MetricDescriptor$ValueType;->BOOL:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v2, Lcom/google/api/MetricDescriptor$ValueType;->INT64:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v3, Lcom/google/api/MetricDescriptor$ValueType;->DOUBLE:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v4, Lcom/google/api/MetricDescriptor$ValueType;->STRING:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v5, Lcom/google/api/MetricDescriptor$ValueType;->DISTRIBUTION:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v6, Lcom/google/api/MetricDescriptor$ValueType;->MONEY:Lcom/google/api/MetricDescriptor$ValueType;

    sget-object v7, Lcom/google/api/MetricDescriptor$ValueType;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$ValueType;

    filled-new-array/range {v0 .. v7}, [Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 196
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "VALUE_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->VALUE_TYPE_UNSPECIFIED:Lcom/google/api/MetricDescriptor$ValueType;

    .line 205
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "BOOL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->BOOL:Lcom/google/api/MetricDescriptor$ValueType;

    .line 213
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "INT64"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->INT64:Lcom/google/api/MetricDescriptor$ValueType;

    .line 221
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->DOUBLE:Lcom/google/api/MetricDescriptor$ValueType;

    .line 230
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "STRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->STRING:Lcom/google/api/MetricDescriptor$ValueType;

    .line 238
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "DISTRIBUTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->DISTRIBUTION:Lcom/google/api/MetricDescriptor$ValueType;

    .line 246
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const-string v1, "MONEY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->MONEY:Lcom/google/api/MetricDescriptor$ValueType;

    .line 247
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/api/MetricDescriptor$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$ValueType;

    .line 187
    invoke-static {}, Lcom/google/api/MetricDescriptor$ValueType;->$values()[Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object v0

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->$VALUES:[Lcom/google/api/MetricDescriptor$ValueType;

    .line 347
    new-instance v0, Lcom/google/api/MetricDescriptor$ValueType$1;

    invoke-direct {v0}, Lcom/google/api/MetricDescriptor$ValueType$1;-><init>()V

    sput-object v0, Lcom/google/api/MetricDescriptor$ValueType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p3, p0, Lcom/google/api/MetricDescriptor$ValueType;->value:I

    .line 373
    return-void
.end method

.method public static forNumber(I)Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1
    .param p0, "value"    # I

    .line 330
    packed-switch p0, :pswitch_data_0

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 337
    :pswitch_0
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->MONEY:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    .line 336
    :pswitch_1
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->DISTRIBUTION:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    .line 335
    :pswitch_2
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->STRING:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    .line 334
    :pswitch_3
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->DOUBLE:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    .line 333
    :pswitch_4
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->INT64:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    .line 332
    :pswitch_5
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->BOOL:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    .line 331
    :pswitch_6
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->VALUE_TYPE_UNSPECIFIED:Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
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
            "Lcom/google/api/MetricDescriptor$ValueType;",
            ">;"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 357
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType$ValueTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-static {p0}, Lcom/google/api/MetricDescriptor$ValueType;->forNumber(I)Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 187
    const-class v0, Lcom/google/api/MetricDescriptor$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1

    .line 187
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->$VALUES:[Lcom/google/api/MetricDescriptor$ValueType;

    invoke-virtual {v0}, [Lcom/google/api/MetricDescriptor$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/MetricDescriptor$ValueType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 312
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$ValueType;

    if-eq p0, v0, :cond_0

    .line 316
    iget v0, p0, Lcom/google/api/MetricDescriptor$ValueType;->value:I

    return v0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
