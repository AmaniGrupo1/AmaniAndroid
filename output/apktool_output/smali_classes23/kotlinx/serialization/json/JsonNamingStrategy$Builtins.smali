.class public final Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;
.super Ljava/lang/Object;
.source "JsonNamingStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builtins"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonNamingStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonNamingStrategy.kt\nkotlinx/serialization/json/JsonNamingStrategy$Builtins\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1179#2:179\n1180#2:181\n1#3:180\n*S KotlinDebug\n*F\n+ 1 JsonNamingStrategy.kt\nkotlinx/serialization/json/JsonNamingStrategy$Builtins\n*L\n149#1:179\n149#1:181\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;",
        "",
        "<init>",
        "()V",
        "SnakeCase",
        "Lkotlinx/serialization/json/JsonNamingStrategy;",
        "getSnakeCase$annotations",
        "getSnakeCase",
        "()Lkotlinx/serialization/json/JsonNamingStrategy;",
        "KebabCase",
        "getKebabCase$annotations",
        "getKebabCase",
        "convertCamelCase",
        "",
        "serialName",
        "delimiter",
        "",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

.field private static final KebabCase:Lkotlinx/serialization/json/JsonNamingStrategy;

.field private static final SnakeCase:Lkotlinx/serialization/json/JsonNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->$$INSTANCE:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    .line 97
    new-instance v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1;-><init>()V

    check-cast v0, Lkotlinx/serialization/json/JsonNamingStrategy;

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->SnakeCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 132
    new-instance v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$KebabCase$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$KebabCase$1;-><init>()V

    check-cast v0, Lkotlinx/serialization/json/JsonNamingStrategy;

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->KebabCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$convertCamelCase(Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;
    .param p1, "serialName"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    .line 69
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->convertCamelCase(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final convertCamelCase(Ljava/lang/String;C)Ljava/lang/String;
    .locals 16
    .param p1, "serialName"    # Ljava/lang/String;
    .param p2, "delimiter"    # C

    .line 145
    move/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .local v1, "$this$convertCamelCase_u24lambda_u241":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 146
    .local v3, "$i$a$-buildString-JsonNamingStrategy$Builtins$convertCamelCase$1":I
    const/4 v4, 0x0

    .line 147
    .local v4, "bufferedChar":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 149
    .local v5, "previousUpperCharsCount":I
    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    .local v6, "$this$forEach$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 179
    .local v7, "$i$f$forEach":I
    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "element$iv":C
    move v11, v10

    .local v11, "c":C
    const/4 v12, 0x0

    .line 150
    .local v12, "$i$a$-forEach-JsonNamingStrategy$Builtins$convertCamelCase$1$1":I
    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    .line 151
    if-nez v5, :cond_1

    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_0

    goto :goto_1

    :cond_0
    move v14, v8

    :goto_1
    if-eqz v14, :cond_1

    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v13

    if-eq v13, v0, :cond_1

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v13

    .line 180
    .local v13, "p0":C
    const/4 v14, 0x0

    .local v14, "$i$a$-let-JsonNamingStrategy$Builtins$convertCamelCase$1$1$1":I
    const/4 v15, 0x0

    .line 154
    .local v15, "$i$f$convertCamelCase$lambda$1$lambda$0$stub_for_inlining":I
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .end local v13    # "p0":C
    .end local v14    # "$i$a$-let-JsonNamingStrategy$Builtins$convertCamelCase$1$1$1":I
    .end local v15    # "$i$f$convertCamelCase$lambda$1$lambda$0$stub_for_inlining":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 157
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_2

    .line 159
    :cond_3
    if-eqz v4, :cond_5

    .line 160
    if-le v5, v14, :cond_4

    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v4, 0x0

    .line 167
    :cond_5
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :goto_2
    nop

    .line 179
    .end local v11    # "c":C
    .end local v12    # "$i$a$-forEach-JsonNamingStrategy$Builtins$convertCamelCase$1$1":I
    nop

    .end local v10    # "element$iv":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 181
    :cond_6
    nop

    .line 171
    .end local v6    # "$this$forEach$iv":Ljava/lang/CharSequence;
    .end local v7    # "$i$f$forEach":I
    if-eqz v4, :cond_7

    .line 172
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_7
    nop

    .line 145
    .end local v1    # "$this$convertCamelCase_u24lambda_u241":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-JsonNamingStrategy$Builtins$convertCamelCase$1":I
    .end local v4    # "bufferedChar":Ljava/lang/Object;
    .end local v5    # "previousUpperCharsCount":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    return-object v1
.end method

.method public static synthetic getKebabCase$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getSnakeCase$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getKebabCase()Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 1

    .line 131
    sget-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->KebabCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-object v0
.end method

.method public final getSnakeCase()Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 1

    .line 96
    sget-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->SnakeCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-object v0
.end method
