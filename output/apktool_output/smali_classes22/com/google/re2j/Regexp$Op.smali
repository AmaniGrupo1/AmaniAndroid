.class final enum Lcom/google/re2j/Regexp$Op;
.super Ljava/lang/Enum;
.source "Regexp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/Regexp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/re2j/Regexp$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/re2j/Regexp$Op;

.field public static final enum ALTERNATE:Lcom/google/re2j/Regexp$Op;

.field public static final enum ANY_CHAR:Lcom/google/re2j/Regexp$Op;

.field public static final enum ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

.field public static final enum BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

.field public static final enum BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

.field public static final enum CAPTURE:Lcom/google/re2j/Regexp$Op;

.field public static final enum CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

.field public static final enum CONCAT:Lcom/google/re2j/Regexp$Op;

.field public static final enum EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

.field public static final enum END_LINE:Lcom/google/re2j/Regexp$Op;

.field public static final enum END_TEXT:Lcom/google/re2j/Regexp$Op;

.field public static final enum LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

.field public static final enum LITERAL:Lcom/google/re2j/Regexp$Op;

.field public static final enum NO_MATCH:Lcom/google/re2j/Regexp$Op;

.field public static final enum NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

.field public static final enum PLUS:Lcom/google/re2j/Regexp$Op;

.field public static final enum QUEST:Lcom/google/re2j/Regexp$Op;

.field public static final enum REPEAT:Lcom/google/re2j/Regexp$Op;

.field public static final enum STAR:Lcom/google/re2j/Regexp$Op;

.field public static final enum VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

.field public static final enum WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 23
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    .line 24
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "EMPTY_MATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    .line 25
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "LITERAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    .line 26
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "CHAR_CLASS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    .line 27
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "ANY_CHAR_NOT_NL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    .line 28
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "ANY_CHAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    .line 29
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "BEGIN_LINE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

    .line 30
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "END_LINE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->END_LINE:Lcom/google/re2j/Regexp$Op;

    .line 31
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "BEGIN_TEXT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    .line 32
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "END_TEXT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    .line 33
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "WORD_BOUNDARY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    .line 34
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "NO_WORD_BOUNDARY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    .line 35
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "CAPTURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    .line 36
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "STAR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    .line 37
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "PLUS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    .line 38
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "QUEST"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    .line 39
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "REPEAT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    .line 40
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "CONCAT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    .line 41
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "ALTERNATE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    .line 44
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "LEFT_PAREN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    .line 45
    new-instance v0, Lcom/google/re2j/Regexp$Op;

    const-string v1, "VERTICAL_BAR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/Regexp$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    .line 22
    sget-object v3, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    sget-object v5, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    sget-object v6, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    sget-object v7, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    sget-object v8, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    sget-object v9, Lcom/google/re2j/Regexp$Op;->BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

    sget-object v10, Lcom/google/re2j/Regexp$Op;->END_LINE:Lcom/google/re2j/Regexp$Op;

    sget-object v11, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    sget-object v12, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    sget-object v13, Lcom/google/re2j/Regexp$Op;->WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    sget-object v14, Lcom/google/re2j/Regexp$Op;->NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    sget-object v15, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    sget-object v16, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    sget-object v17, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    sget-object v18, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    sget-object v19, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    sget-object v20, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    sget-object v21, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    sget-object v22, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    sget-object v23, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    filled-new-array/range {v3 .. v23}, [Lcom/google/re2j/Regexp$Op;

    move-result-object v0

    sput-object v0, Lcom/google/re2j/Regexp$Op;->$VALUES:[Lcom/google/re2j/Regexp$Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/re2j/Regexp$Op;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/re2j/Regexp$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp$Op;

    return-object v0
.end method

.method public static values()[Lcom/google/re2j/Regexp$Op;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/re2j/Regexp$Op;->$VALUES:[Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v0}, [Lcom/google/re2j/Regexp$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Regexp$Op;

    return-object v0
.end method


# virtual methods
.method isPseudo()Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
