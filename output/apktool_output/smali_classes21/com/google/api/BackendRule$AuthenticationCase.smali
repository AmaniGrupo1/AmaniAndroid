.class public final enum Lcom/google/api/BackendRule$AuthenticationCase;
.super Ljava/lang/Enum;
.source "BackendRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/BackendRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthenticationCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/BackendRule$AuthenticationCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/BackendRule$AuthenticationCase;

.field public static final enum AUTHENTICATION_NOT_SET:Lcom/google/api/BackendRule$AuthenticationCase;

.field public static final enum DISABLE_AUTH:Lcom/google/api/BackendRule$AuthenticationCase;

.field public static final enum JWT_AUDIENCE:Lcom/google/api/BackendRule$AuthenticationCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 3

    .line 230
    sget-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->JWT_AUDIENCE:Lcom/google/api/BackendRule$AuthenticationCase;

    sget-object v1, Lcom/google/api/BackendRule$AuthenticationCase;->DISABLE_AUTH:Lcom/google/api/BackendRule$AuthenticationCase;

    sget-object v2, Lcom/google/api/BackendRule$AuthenticationCase;->AUTHENTICATION_NOT_SET:Lcom/google/api/BackendRule$AuthenticationCase;

    filled-new-array {v0, v1, v2}, [Lcom/google/api/BackendRule$AuthenticationCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 231
    new-instance v0, Lcom/google/api/BackendRule$AuthenticationCase;

    const/4 v1, 0x7

    const-string v2, "JWT_AUDIENCE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/api/BackendRule$AuthenticationCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->JWT_AUDIENCE:Lcom/google/api/BackendRule$AuthenticationCase;

    .line 232
    new-instance v0, Lcom/google/api/BackendRule$AuthenticationCase;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v4, "DISABLE_AUTH"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/api/BackendRule$AuthenticationCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->DISABLE_AUTH:Lcom/google/api/BackendRule$AuthenticationCase;

    .line 233
    new-instance v0, Lcom/google/api/BackendRule$AuthenticationCase;

    const-string v1, "AUTHENTICATION_NOT_SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/BackendRule$AuthenticationCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->AUTHENTICATION_NOT_SET:Lcom/google/api/BackendRule$AuthenticationCase;

    .line 230
    invoke-static {}, Lcom/google/api/BackendRule$AuthenticationCase;->$values()[Lcom/google/api/BackendRule$AuthenticationCase;

    move-result-object v0

    sput-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->$VALUES:[Lcom/google/api/BackendRule$AuthenticationCase;

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

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput p3, p0, Lcom/google/api/BackendRule$AuthenticationCase;->value:I

    .line 237
    return-void
.end method

.method public static forNumber(I)Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 1
    .param p0, "value"    # I

    .line 247
    sparse-switch p0, :sswitch_data_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 249
    :sswitch_0
    sget-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->DISABLE_AUTH:Lcom/google/api/BackendRule$AuthenticationCase;

    return-object v0

    .line 248
    :sswitch_1
    sget-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->JWT_AUDIENCE:Lcom/google/api/BackendRule$AuthenticationCase;

    return-object v0

    .line 250
    :sswitch_2
    sget-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->AUTHENTICATION_NOT_SET:Lcom/google/api/BackendRule$AuthenticationCase;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(I)Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/google/api/BackendRule$AuthenticationCase;->forNumber(I)Lcom/google/api/BackendRule$AuthenticationCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 230
    const-class v0, Lcom/google/api/BackendRule$AuthenticationCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule$AuthenticationCase;

    return-object v0
.end method

.method public static values()[Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 1

    .line 230
    sget-object v0, Lcom/google/api/BackendRule$AuthenticationCase;->$VALUES:[Lcom/google/api/BackendRule$AuthenticationCase;

    invoke-virtual {v0}, [Lcom/google/api/BackendRule$AuthenticationCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/BackendRule$AuthenticationCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/google/api/BackendRule$AuthenticationCase;->value:I

    return v0
.end method
