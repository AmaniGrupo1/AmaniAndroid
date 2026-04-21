.class public final enum Lcom/google/type/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/DayOfWeek$DayOfWeekVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/type/DayOfWeek;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/type/DayOfWeek;

.field public static final enum DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

.field public static final DAY_OF_WEEK_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum FRIDAY:Lcom/google/type/DayOfWeek;

.field public static final FRIDAY_VALUE:I = 0x5

.field public static final enum MONDAY:Lcom/google/type/DayOfWeek;

.field public static final MONDAY_VALUE:I = 0x1

.field public static final enum SATURDAY:Lcom/google/type/DayOfWeek;

.field public static final SATURDAY_VALUE:I = 0x6

.field public static final enum SUNDAY:Lcom/google/type/DayOfWeek;

.field public static final SUNDAY_VALUE:I = 0x7

.field public static final enum THURSDAY:Lcom/google/type/DayOfWeek;

.field public static final THURSDAY_VALUE:I = 0x4

.field public static final enum TUESDAY:Lcom/google/type/DayOfWeek;

.field public static final TUESDAY_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/type/DayOfWeek;

.field public static final enum WEDNESDAY:Lcom/google/type/DayOfWeek;

.field public static final WEDNESDAY_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/type/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/type/DayOfWeek;
    .locals 9

    .line 14
    sget-object v0, Lcom/google/type/DayOfWeek;->DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

    sget-object v1, Lcom/google/type/DayOfWeek;->MONDAY:Lcom/google/type/DayOfWeek;

    sget-object v2, Lcom/google/type/DayOfWeek;->TUESDAY:Lcom/google/type/DayOfWeek;

    sget-object v3, Lcom/google/type/DayOfWeek;->WEDNESDAY:Lcom/google/type/DayOfWeek;

    sget-object v4, Lcom/google/type/DayOfWeek;->THURSDAY:Lcom/google/type/DayOfWeek;

    sget-object v5, Lcom/google/type/DayOfWeek;->FRIDAY:Lcom/google/type/DayOfWeek;

    sget-object v6, Lcom/google/type/DayOfWeek;->SATURDAY:Lcom/google/type/DayOfWeek;

    sget-object v7, Lcom/google/type/DayOfWeek;->SUNDAY:Lcom/google/type/DayOfWeek;

    sget-object v8, Lcom/google/type/DayOfWeek;->UNRECOGNIZED:Lcom/google/type/DayOfWeek;

    filled-new-array/range {v0 .. v8}, [Lcom/google/type/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "DAY_OF_WEEK_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

    .line 31
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "MONDAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->MONDAY:Lcom/google/type/DayOfWeek;

    .line 39
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "TUESDAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->TUESDAY:Lcom/google/type/DayOfWeek;

    .line 47
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "WEDNESDAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->WEDNESDAY:Lcom/google/type/DayOfWeek;

    .line 55
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "THURSDAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->THURSDAY:Lcom/google/type/DayOfWeek;

    .line 63
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "FRIDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->FRIDAY:Lcom/google/type/DayOfWeek;

    .line 71
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "SATURDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->SATURDAY:Lcom/google/type/DayOfWeek;

    .line 79
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "SUNDAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->SUNDAY:Lcom/google/type/DayOfWeek;

    .line 80
    new-instance v0, Lcom/google/type/DayOfWeek;

    const/16 v1, 0x8

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->UNRECOGNIZED:Lcom/google/type/DayOfWeek;

    .line 14
    invoke-static {}, Lcom/google/type/DayOfWeek;->$values()[Lcom/google/type/DayOfWeek;

    move-result-object v0

    sput-object v0, Lcom/google/type/DayOfWeek;->$VALUES:[Lcom/google/type/DayOfWeek;

    .line 187
    new-instance v0, Lcom/google/type/DayOfWeek$1;

    invoke-direct {v0}, Lcom/google/type/DayOfWeek$1;-><init>()V

    sput-object v0, Lcom/google/type/DayOfWeek;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput p3, p0, Lcom/google/type/DayOfWeek;->value:I

    .line 213
    return-void
.end method

.method public static forNumber(I)Lcom/google/type/DayOfWeek;
    .locals 1
    .param p0, "value"    # I

    .line 169
    packed-switch p0, :pswitch_data_0

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 177
    :pswitch_0
    sget-object v0, Lcom/google/type/DayOfWeek;->SUNDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 176
    :pswitch_1
    sget-object v0, Lcom/google/type/DayOfWeek;->SATURDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 175
    :pswitch_2
    sget-object v0, Lcom/google/type/DayOfWeek;->FRIDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 174
    :pswitch_3
    sget-object v0, Lcom/google/type/DayOfWeek;->THURSDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 173
    :pswitch_4
    sget-object v0, Lcom/google/type/DayOfWeek;->WEDNESDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 172
    :pswitch_5
    sget-object v0, Lcom/google/type/DayOfWeek;->TUESDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 171
    :pswitch_6
    sget-object v0, Lcom/google/type/DayOfWeek;->MONDAY:Lcom/google/type/DayOfWeek;

    return-object v0

    .line 170
    :pswitch_7
    sget-object v0, Lcom/google/type/DayOfWeek;->DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
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
            "Lcom/google/type/DayOfWeek;",
            ">;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/google/type/DayOfWeek;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 197
    sget-object v0, Lcom/google/type/DayOfWeek$DayOfWeekVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/type/DayOfWeek;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/google/type/DayOfWeek;->forNumber(I)Lcom/google/type/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/type/DayOfWeek;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/type/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/type/DayOfWeek;

    return-object v0
.end method

.method public static values()[Lcom/google/type/DayOfWeek;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/type/DayOfWeek;->$VALUES:[Lcom/google/type/DayOfWeek;

    invoke-virtual {v0}, [Lcom/google/type/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/type/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 151
    sget-object v0, Lcom/google/type/DayOfWeek;->UNRECOGNIZED:Lcom/google/type/DayOfWeek;

    if-eq p0, v0, :cond_0

    .line 155
    iget v0, p0, Lcom/google/type/DayOfWeek;->value:I

    return v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
