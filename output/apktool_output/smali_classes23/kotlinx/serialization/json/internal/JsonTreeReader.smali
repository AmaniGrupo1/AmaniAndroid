.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "JsonTreeReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonTreeReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,121:1\n27#1,25:122\n27#1,25:147\n513#2,3:172\n*S KotlinDebug\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n*L\n19#1:122,25\n24#1:147,25\n64#1:172,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u001e\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0015H\u0082\u0008J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0008\u0010\u001b\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeReader;",
        "",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "lexer",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "<init>",
        "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V",
        "isLenient",
        "",
        "trailingCommaAllowed",
        "stackDepth",
        "",
        "readObject",
        "Lkotlinx/serialization/json/JsonElement;",
        "Lkotlin/DeepRecursiveScope;",
        "",
        "(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readObjectImpl",
        "Lkotlinx/serialization/json/JsonObject;",
        "reader",
        "Lkotlin/Function0;",
        "readArray",
        "readValue",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "isString",
        "read",
        "readDeepRecursive",
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


# instance fields
.field private final isLenient:Z

.field private final lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field private stackDepth:I

.field private final trailingCommaAllowed:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V
    .locals 1
    .param p1, "configuration"    # Lkotlinx/serialization/json/JsonConfiguration;
    .param p2, "lexer"    # Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 15
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    .line 16
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowTrailingComma()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->trailingCommaAllowed:Z

    .line 11
    return-void
.end method

.method public static final synthetic access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    return-object v0
.end method

.method public static final synthetic access$readArray(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 10
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;
    .param p1, "$receiver"    # Lkotlin/DeepRecursiveScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 10
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/json/internal/JsonTreeReader;
    .param p1, "isString"    # Z

    .line 10
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 12

    .line 55
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    .line 57
    .local v0, "lastToken":B
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "result":Ljava/util/ArrayList;
    :cond_0
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v3

    const/16 v4, 0x9

    if-eqz v3, :cond_3

    .line 60
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    .line 61
    .local v3, "element":Lkotlinx/serialization/json/JsonElement;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    .line 63
    if-eq v0, v2, :cond_0

    .line 64
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .local v4, "condition$iv":Z
    :goto_1
    move-object v6, v5

    .line 172
    .local v6, "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    iget v8, v6, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .local v8, "position$iv":I
    const/4 v5, 0x0

    .line 173
    .local v5, "$i$f$require$kotlinx_serialization_json":I
    if-eqz v4, :cond_2

    .line 174
    nop

    .end local v3    # "element":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "condition$iv":Z
    .end local v5    # "$i$f$require$kotlinx_serialization_json":I
    .end local v6    # "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v8    # "position$iv":I
    goto :goto_0

    .line 173
    .restart local v3    # "element":Lkotlinx/serialization/json/JsonElement;
    .restart local v4    # "condition$iv":Z
    .restart local v5    # "$i$f$require$kotlinx_serialization_json":I
    .restart local v6    # "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v8    # "position$iv":I
    :cond_2
    const/4 v2, 0x0

    .line 64
    .local v2, "$i$a$-require$kotlinx_serialization_json$default-JsonTreeReader$readArray$1":I
    nop

    .line 173
    .end local v2    # "$i$a$-require$kotlinx_serialization_json$default-JsonTreeReader$readArray$1":I
    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "Expected end of the array or comma"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 68
    .end local v3    # "element":Lkotlinx/serialization/json/JsonElement;
    .end local v4    # "condition$iv":Z
    .end local v5    # "$i$f$require$kotlinx_serialization_json":I
    .end local v6    # "$this$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v8    # "position$iv":I
    :cond_3
    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    .line 69
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 70
    :cond_4
    if-ne v0, v2, :cond_6

    .line 71
    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->trailingCommaAllowed:Z

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz v2, :cond_5

    .line 72
    invoke-virtual {v3, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 71
    :cond_5
    const-string v2, "array"

    invoke-static {v3, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->invalidTrailingComma(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 74
    :cond_6
    :goto_2
    new-instance v2, Lkotlinx/serialization/json/JsonArray;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    return-object v2

    .line 57
    .end local v1    # "result":Ljava/util/ArrayList;
    :cond_7
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Unexpected leading comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method private final readDeepRecursive()Lkotlinx/serialization/json/JsonElement;
    .locals 3

    .line 111
    new-instance v0, Lkotlin/DeepRecursiveFunction;

    .line 119
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 111
    invoke-direct {v0, v1}, Lkotlin/DeepRecursiveFunction;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 119
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v1}, Lkotlin/DeepRecursiveKt;->invoke(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method private final readObject(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/DeepRecursiveScope<",
            "Lkotlin/Unit;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 23
    iget v5, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x7

    const/4 v9, 0x4

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v5, 0x0

    .local v5, "$i$f$readObjectImpl":I
    const/4 v10, 0x0

    .local v10, "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    iget-object v11, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "key$iv":Ljava/lang/String;
    iget-object v12, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/LinkedHashMap;

    .local v12, "result$iv":Ljava/util/LinkedHashMap;
    iget-object v13, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/serialization/json/internal/JsonTreeReader;

    .local v13, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    iget-object v14, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlin/DeepRecursiveScope;

    .local v14, "$this$readObject":Lkotlin/DeepRecursiveScope;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v14

    move-object v14, v12

    move v12, v10

    move v10, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_3

    .end local v5    # "$i$f$readObjectImpl":I
    .end local v10    # "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    .end local v11    # "key$iv":Ljava/lang/String;
    .end local v12    # "result$iv":Ljava/util/LinkedHashMap;
    .end local v13    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .end local v14    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Lkotlinx/serialization/json/internal/JsonTreeReader;
    move-object/from16 v10, p1

    .line 24
    .local v10, "$this$readObject":Lkotlin/DeepRecursiveScope;
    nop

    .local v5, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    const/4 v11, 0x0

    .line 147
    .local v11, "$i$f$readObjectImpl":I
    iget-object v12, v5, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v12, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v12

    .line 148
    .local v12, "lastToken$iv":B
    iget-object v13, v5, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v13}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v13

    if-eq v13, v9, :cond_9

    .line 149
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v14, v10

    move-object v10, v5

    move v5, v11

    .line 150
    .end local v11    # "$i$f$readObjectImpl":I
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v5, "$i$f$readObjectImpl":I
    .local v10, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v13, "result$iv":Ljava/util/LinkedHashMap;
    .restart local v14    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    :goto_1
    iget-object v11, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 152
    .end local v12    # "lastToken$iv":B
    iget-boolean v11, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v11, :cond_1

    iget-object v11, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_1
    iget-object v11, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "key$iv":Ljava/lang/String;
    :goto_2
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 154
    const/4 v12, 0x0

    .line 24
    .local v12, "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v14, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    iput v6, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    invoke-virtual {v14, v15, v1}, Lkotlin/DeepRecursiveScope;->callRecursive(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_2

    .line 23
    return-object v4

    .line 24
    :cond_2
    move-object/from16 v22, v4

    move-object v4, v3

    move-object v3, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v10

    move v10, v5

    move-object/from16 v5, v22

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$readObjectImpl":I
    .local v4, "$result":Ljava/lang/Object;
    .local v10, "$i$f$readObjectImpl":I
    .local v13, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v14, "result$iv":Ljava/util/LinkedHashMap;
    .local v15, "$this$readObject":Lkotlin/DeepRecursiveScope;
    :goto_3
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 154
    .end local v12    # "$i$a$-readObjectImpl-JsonTreeReader$readObject$3":I
    nop

    .line 155
    .local v3, "element$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v12, v14

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v12, v13, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v12

    .line 158
    .local v12, "lastToken$iv":B
    nop

    .line 159
    if-eq v12, v9, :cond_4

    .line 160
    .end local v15    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    if-ne v12, v8, :cond_3

    move-object v3, v4

    move v5, v10

    move-object v10, v13

    move-object v13, v14

    goto :goto_4

    .line 161
    .end local v12    # "lastToken$iv":B
    .end local v14    # "result$iv":Ljava/util/LinkedHashMap;
    :cond_3
    iget-object v5, v13, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/16 v20, 0x6

    const/16 v21, 0x0

    const-string v17, "Expected end of the object or comma"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v21}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 159
    .restart local v12    # "lastToken$iv":B
    .restart local v14    # "result$iv":Ljava/util/LinkedHashMap;
    .restart local v15    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    :cond_4
    move-object v3, v4

    move-object v4, v5

    move v5, v10

    move-object v10, v13

    move-object v13, v14

    move-object v14, v15

    goto :goto_1

    .line 165
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v11    # "key$iv":Ljava/lang/String;
    .end local v14    # "result$iv":Ljava/util/LinkedHashMap;
    .end local v15    # "$this$readObject":Lkotlin/DeepRecursiveScope;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v5    # "$i$f$readObjectImpl":I
    .local v10, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v13, "result$iv":Ljava/util/LinkedHashMap;
    :cond_5
    :goto_4
    if-ne v12, v7, :cond_6

    .line 166
    .end local v12    # "lastToken$iv":B
    iget-object v4, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v4, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_5

    .line 167
    .restart local v12    # "lastToken$iv":B
    :cond_6
    if-ne v12, v9, :cond_8

    .line 168
    .end local v12    # "lastToken$iv":B
    iget-boolean v4, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->trailingCommaAllowed:Z

    if-eqz v4, :cond_7

    .line 169
    iget-object v4, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v4, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_5

    .line 168
    :cond_7
    iget-object v4, v10, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->invalidTrailingComma$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 171
    .end local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    :cond_8
    :goto_5
    new-instance v4, Lkotlinx/serialization/json/JsonObject;

    move-object v6, v13

    check-cast v6, Ljava/util/Map;

    invoke-direct {v4, v6}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 24
    .end local v5    # "$i$f$readObjectImpl":I
    .end local v13    # "result$iv":Ljava/util/LinkedHashMap;
    return-object v4

    .line 148
    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local v5, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .local v10, "$this$readObject":Lkotlin/DeepRecursiveScope;
    .local v11, "$i$f$readObjectImpl":I
    .restart local v12    # "lastToken$iv":B
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_9
    iget-object v14, v5, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/16 v18, 0x6

    const/16 v19, 0x0

    const-string v15, "Unexpected leading comma"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readObject()Lkotlinx/serialization/json/JsonElement;
    .locals 15

    .line 19
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$f$readObjectImpl":I
    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v2

    .line 123
    .local v2, "lastToken$iv":B
    iget-object v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7

    .line 124
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    .local v4, "result$iv":Ljava/util/LinkedHashMap;
    :cond_0
    iget-object v6, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v6

    const/4 v7, 0x7

    if-eqz v6, :cond_3

    .line 127
    iget-boolean v6, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    iget-object v8, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz v6, :cond_1

    invoke-virtual {v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "key$iv":Ljava/lang/String;
    :goto_0
    iget-object v8, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 129
    const/4 v8, 0x0

    .line 20
    .local v8, "$i$a$-readObjectImpl-JsonTreeReader$readObject$1":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v8

    .line 129
    .end local v8    # "$i$a$-readObjectImpl-JsonTreeReader$readObject$1":I
    nop

    .line 130
    .local v8, "element$iv":Lkotlinx/serialization/json/JsonElement;
    move-object v9, v4

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v2

    .line 133
    nop

    .line 134
    if-eq v2, v5, :cond_0

    .line 135
    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 136
    :cond_2
    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v10, "Expected end of the object or comma"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 140
    .end local v6    # "key$iv":Ljava/lang/String;
    .end local v8    # "element$iv":Lkotlinx/serialization/json/JsonElement;
    :cond_3
    :goto_1
    if-ne v2, v3, :cond_4

    .line 141
    iget-object v3, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 142
    :cond_4
    if-ne v2, v5, :cond_6

    .line 143
    iget-boolean v3, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->trailingCommaAllowed:Z

    iget-object v5, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz v3, :cond_5

    .line 144
    invoke-virtual {v5, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 143
    :cond_5
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v6}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->invalidTrailingComma$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 146
    :cond_6
    :goto_2
    new-instance v3, Lkotlinx/serialization/json/JsonObject;

    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    invoke-direct {v3, v5}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .end local v0    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .end local v1    # "$i$f$readObjectImpl":I
    .end local v2    # "lastToken$iv":B
    .end local v4    # "result$iv":Ljava/util/LinkedHashMap;
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 21
    return-object v3

    .line 123
    .restart local v0    # "this_$iv":Lkotlinx/serialization/json/internal/JsonTreeReader;
    .restart local v1    # "$i$f$readObjectImpl":I
    .restart local v2    # "lastToken$iv":B
    :cond_7
    iget-object v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, "Unexpected leading comma"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final readObjectImpl(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/json/JsonObject;
    .locals 14
    .param p1, "reader"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Lkotlinx/serialization/json/JsonObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$readObjectImpl":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    move-result v1

    .line 28
    .local v1, "lastToken":B
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    .line 29
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .local v3, "result":Ljava/util/LinkedHashMap;
    :cond_0
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    .line 32
    iget-boolean v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz v5, :cond_1

    invoke-virtual {v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "key":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    .line 34
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 35
    .local v7, "element":Lkotlinx/serialization/json/JsonElement;
    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v1

    .line 38
    nop

    .line 39
    if-eq v1, v4, :cond_0

    .line 40
    if-ne v1, v6, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const-string v9, "Expected end of the object or comma"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 45
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "element":Lkotlinx/serialization/json/JsonElement;
    :cond_3
    :goto_1
    if-ne v1, v2, :cond_4

    .line 46
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 47
    :cond_4
    if-ne v1, v4, :cond_6

    .line 48
    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->trailingCommaAllowed:Z

    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz v2, :cond_5

    .line 49
    invoke-virtual {v4, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    .line 48
    :cond_5
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->invalidTrailingComma$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 51
    :cond_6
    :goto_2
    new-instance v2, Lkotlinx/serialization/json/JsonObject;

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-direct {v2, v4}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 28
    .end local v3    # "result":Ljava/util/LinkedHashMap;
    :cond_7
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Unexpected leading comma"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method private final readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 7
    .param p1, "isString"    # Z

    .line 78
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_1
    move-object v2, v0

    .line 83
    .local v2, "string":Ljava/lang/String;
    if-nez p1, :cond_2

    const-string v0, "null"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v0

    .line 84
    :cond_2
    new-instance v1, Lkotlinx/serialization/json/JsonLiteral;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, p1

    .end local p1    # "isString":Z
    .local v3, "isString":Z
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    return-object v1
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 8

    .line 88
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    .line 89
    .local v0, "token":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    goto :goto_1

    .line 90
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    goto :goto_1

    .line 91
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 98
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/2addr v2, v1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 99
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readDeepRecursive()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 98
    :goto_0
    nop

    .line 103
    .local v1, "result":Lkotlinx/serialization/json/JsonElement;
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    .line 104
    nop

    .end local v1    # "result":Lkotlinx/serialization/json/JsonElement;
    goto :goto_1

    .line 106
    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 88
    .end local v0    # "token":B
    :goto_1
    return-object v1

    .line 107
    .restart local v0    # "token":B
    :cond_4
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read Json element because of unexpected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method
