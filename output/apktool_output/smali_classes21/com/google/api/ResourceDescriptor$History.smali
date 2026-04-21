.class public final enum Lcom/google/api/ResourceDescriptor$History;
.super Ljava/lang/Enum;
.source "ResourceDescriptor.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "History"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ResourceDescriptor$History$HistoryVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/ResourceDescriptor$History;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/ResourceDescriptor$History;

.field public static final enum FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

.field public static final FUTURE_MULTI_PATTERN_VALUE:I = 0x2

.field public static final enum HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

.field public static final HISTORY_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

.field public static final ORIGINALLY_SINGLE_PATTERN_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/ResourceDescriptor$History;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/api/ResourceDescriptor$History;
    .locals 4

    .line 141
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    sget-object v1, Lcom/google/api/ResourceDescriptor$History;->ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    sget-object v2, Lcom/google/api/ResourceDescriptor$History;->FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    sget-object v3, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 150
    new-instance v0, Lcom/google/api/ResourceDescriptor$History;

    const-string v1, "HISTORY_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    .line 159
    new-instance v0, Lcom/google/api/ResourceDescriptor$History;

    const-string v1, "ORIGINALLY_SINGLE_PATTERN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    .line 169
    new-instance v0, Lcom/google/api/ResourceDescriptor$History;

    const-string v1, "FUTURE_MULTI_PATTERN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    .line 170
    new-instance v0, Lcom/google/api/ResourceDescriptor$History;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/api/ResourceDescriptor$History;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    .line 141
    invoke-static {}, Lcom/google/api/ResourceDescriptor$History;->$values()[Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->$VALUES:[Lcom/google/api/ResourceDescriptor$History;

    .line 235
    new-instance v0, Lcom/google/api/ResourceDescriptor$History$1;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor$History$1;-><init>()V

    sput-object v0, Lcom/google/api/ResourceDescriptor$History;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    iput p3, p0, Lcom/google/api/ResourceDescriptor$History;->value:I

    .line 261
    return-void
.end method

.method public static forNumber(I)Lcom/google/api/ResourceDescriptor$History;
    .locals 1
    .param p0, "value"    # I

    .line 222
    packed-switch p0, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 225
    :pswitch_0
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->FUTURE_MULTI_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    return-object v0

    .line 224
    :pswitch_1
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->ORIGINALLY_SINGLE_PATTERN:Lcom/google/api/ResourceDescriptor$History;

    return-object v0

    .line 223
    :pswitch_2
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->HISTORY_UNSPECIFIED:Lcom/google/api/ResourceDescriptor$History;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/google/api/ResourceDescriptor$History;",
            ">;"
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 245
    sget-object v0, Lcom/google/api/ResourceDescriptor$History$HistoryVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/ResourceDescriptor$History;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    invoke-static {p0}, Lcom/google/api/ResourceDescriptor$History;->forNumber(I)Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$History;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 141
    const-class v0, Lcom/google/api/ResourceDescriptor$History;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor$History;

    return-object v0
.end method

.method public static values()[Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    .line 141
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->$VALUES:[Lcom/google/api/ResourceDescriptor$History;

    invoke-virtual {v0}, [Lcom/google/api/ResourceDescriptor$History;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/ResourceDescriptor$History;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 204
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    if-eq p0, v0, :cond_0

    .line 208
    iget v0, p0, Lcom/google/api/ResourceDescriptor$History;->value:I

    return v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
