.class public final Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes\n+ 2 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,391:1\n384#2,5:392\n384#2,5:397\n384#2,5:402\n384#2,5:407\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes\n*L\n377#1:392,5\n378#1:397,5\n379#1:402,5\n380#1:407,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
        "lexer",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "<init>",
        "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "decodeElementIndex",
        "",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "decodeInt",
        "decodeLong",
        "",
        "decodeByte",
        "",
        "decodeShort",
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


# instance fields
.field private final lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field private final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V
    .locals 1
    .param p1, "lexer"    # Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .param p2, "json"    # Lkotlinx/serialization/json/Json;

    const-string v0, "lexer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 371
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 374
    invoke-virtual {p2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 370
    return-void
.end method


# virtual methods
.method public decodeByte()B
    .locals 10

    .line 379
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v1, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "UByte"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 402
    .local v8, "$i$f$parseString":I
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 404
    move-object v0, v9

    .local v0, "$this$decodeByte_u24lambda_u242":Ljava/lang/String;
    const/4 v2, 0x0

    .line 379
    .local v2, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeByte$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUByte(Ljava/lang/String;)B

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "$this$decodeByte_u24lambda_u242":Ljava/lang/String;
    .end local v2    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeByte$1":I
    nop

    .line 379
    .end local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return v3

    .line 405
    .restart local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 2
    .param p1, "descriptor"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 375
    const-string v1, "unsupported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeInt()I
    .locals 10

    .line 377
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v1, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "UInt"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 392
    .local v8, "$i$f$parseString":I
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 394
    move-object v0, v9

    .local v0, "$this$decodeInt_u24lambda_u240":Ljava/lang/String;
    const/4 v2, 0x0

    .line 377
    .local v2, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeInt$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0    # "$this$decodeInt_u24lambda_u240":Ljava/lang/String;
    .end local v2    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeInt$1":I
    nop

    .line 377
    .end local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return v3

    .line 395
    .restart local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public decodeLong()J
    .locals 10

    .line 378
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v1, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "ULong"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 397
    .local v8, "$i$f$parseString":I
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 399
    move-object v0, v9

    .local v0, "$this$decodeLong_u24lambda_u241":Ljava/lang/String;
    const/4 v2, 0x0

    .line 378
    .local v2, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeLong$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toULong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "$this$decodeLong_u24lambda_u241":Ljava/lang/String;
    .end local v2    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeLong$1":I
    nop

    .line 378
    .end local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return-wide v3

    .line 400
    .restart local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public decodeShort()S
    .locals 10

    .line 380
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v1, "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    const-string v7, "UShort"

    .local v7, "expectedType$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 407
    .local v8, "$i$f$parseString":I
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, "input$iv":Ljava/lang/String;
    nop

    .line 409
    move-object v0, v9

    .local v0, "$this$decodeShort_u24lambda_u243":Ljava/lang/String;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeShort$1":I
    :try_start_0
    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUShort(Ljava/lang/String;)S

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "$this$decodeShort_u24lambda_u243":Ljava/lang/String;
    .end local v2    # "$i$a$-parseString-JsonDecoderForUnsignedTypes$decodeShort$1":I
    nop

    .line 380
    .end local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v7    # "expectedType$iv":Ljava/lang/String;
    .end local v8    # "$i$f$parseString":I
    .end local v9    # "input$iv":Ljava/lang/String;
    return v3

    .line 410
    .restart local v1    # "$this$parseString$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .restart local v7    # "expectedType$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$parseString":I
    .restart local v9    # "input$iv":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e$iv":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 374
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method
