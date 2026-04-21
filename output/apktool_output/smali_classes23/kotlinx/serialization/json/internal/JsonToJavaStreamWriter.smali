.class public final Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
.super Ljava/lang/Object;
.source "JvmJsonStreams.kt"

# interfaces
.implements Lkotlinx/serialization/json/internal/InternalJsonWriter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmJsonStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmJsonStreams.kt\nkotlinx/serialization/json/internal/JsonToJavaStreamWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n130#1:269\n117#1:271\n130#1:272\n118#1,3:273\n125#1,2:276\n130#1:278\n125#1,2:279\n117#1:281\n130#1:282\n118#1,3:283\n125#1,2:286\n125#1,2:288\n117#1:290\n130#1:291\n118#1,3:292\n125#1,2:295\n125#1,2:297\n125#1,2:299\n117#1:301\n130#1:302\n118#1,3:303\n125#1,2:306\n117#1:308\n130#1:309\n118#1,3:310\n125#1,2:313\n125#1,2:315\n125#1,2:317\n125#1,2:319\n117#1:321\n130#1:322\n118#1,3:323\n125#1,2:326\n117#1:328\n130#1:329\n118#1,3:330\n125#1,2:333\n125#1,2:335\n117#1:337\n130#1:338\n118#1,3:339\n125#1,2:342\n117#1:344\n130#1:345\n118#1,3:346\n125#1,2:349\n125#1,2:351\n125#1,2:353\n117#1:355\n130#1:356\n118#1,3:357\n125#1,2:360\n125#1,2:362\n125#1,2:364\n125#1,2:366\n1#2:270\n*S KotlinDebug\n*F\n+ 1 JvmJsonStreams.kt\nkotlinx/serialization/json/internal/JsonToJavaStreamWriter\n*L\n117#1:269\n148#1:271\n148#1:272\n148#1:273,3\n149#1:276,2\n151#1:278\n158#1:279,2\n165#1:281\n165#1:282\n165#1:283,3\n166#1:286,2\n167#1:288,2\n173#1:290\n173#1:291\n173#1:292,3\n174#1:295,2\n175#1:297,2\n176#1:299,2\n186#1:301\n186#1:302\n186#1:303,3\n187#1:306,2\n196#1:308\n196#1:309\n196#1:310,3\n197#1:313,2\n198#1:315,2\n199#1:317,2\n200#1:319,2\n215#1:321\n215#1:322\n215#1:323,3\n216#1:326,2\n221#1:328\n221#1:329\n221#1:330,3\n222#1:333,2\n223#1:335,2\n228#1:337\n228#1:338\n228#1:339,3\n229#1:342,2\n234#1:344\n234#1:345\n234#1:346,3\n235#1:349,2\n236#1:351,2\n237#1:353,2\n242#1:355\n242#1:356\n242#1:357,3\n243#1:360,2\n244#1:362,2\n245#1:364,2\n246#1:366,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\u0008\u0010\u001d\u001a\u00020\rH\u0016J\u0008\u0010\u001e\u001a\u00020\rH\u0002J\u0011\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0082\u0008J\u0011\u0010\u0013\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000bH\u0082\u0008J\t\u0010\"\u001a\u00020\u000bH\u0082\u0008J\u0018\u0010#\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u000bH\u0002J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;",
        "Lkotlinx/serialization/json/internal/InternalJsonWriter;",
        "stream",
        "Ljava/io/OutputStream;",
        "<init>",
        "(Ljava/io/OutputStream;)V",
        "buffer",
        "",
        "charArray",
        "",
        "indexInBuffer",
        "",
        "writeLong",
        "",
        "value",
        "",
        "writeChar",
        "char",
        "",
        "write",
        "text",
        "",
        "writeQuoted",
        "appendStringSlowPath",
        "currentSize",
        "string",
        "ensureTotalCapacity",
        "oldSize",
        "additional",
        "release",
        "flush",
        "ensure",
        "bytesCount",
        "byte",
        "rest",
        "writeUtf8",
        "count",
        "writeUtf8CodePoint",
        "codePoint",
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
.field private final buffer:[B

.field private charArray:[C

.field private indexInBuffer:I

.field private final stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->stream:Ljava/io/OutputStream;

    .line 7
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ByteArrayPool;->take()[B

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 8
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPool;->take()[C

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 6
    return-void
.end method

.method private final appendStringSlowPath(ILjava/lang/String;)V
    .locals 9
    .param p1, "currentSize"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 50
    move v0, p1

    .line 51
    .local v0, "sz":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 56
    const/4 v4, 0x2

    invoke-direct {p0, v0, v4}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    move-result v0

    .line 57
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 59
    .local v4, "ch":I
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 66
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v5

    aget-byte v5, v5, v4

    .line 67
    .local v5, "marker":B
    if-nez v5, :cond_0

    .line 68
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "sz":I
    .local v6, "sz":I
    int-to-char v7, v4

    aput-char v7, v3, v0

    move v0, v6

    goto :goto_1

    .line 71
    .end local v6    # "sz":I
    .restart local v0    # "sz":I
    :cond_0
    if-ne v5, v3, :cond_1

    .line 72
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    .local v3, "escapedString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    move-result v0

    .line 74
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    .end local v3    # "escapedString":Ljava/lang/String;
    goto :goto_1

    .line 79
    :cond_1
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    const/16 v6, 0x5c

    aput-char v6, v3, v0

    .line 80
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v6, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v3, v6

    .line 81
    nop

    .end local v5    # "marker":B
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 85
    :cond_2
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "sz":I
    .local v5, "sz":I
    int-to-char v6, v4

    aput-char v6, v3, v0

    move v0, v5

    .line 51
    .end local v4    # "ch":I
    .end local v5    # "sz":I
    .restart local v0    # "sz":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 89
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "sz":I
    .local v2, "sz":I
    const/16 v3, 0x22

    aput-char v3, v1, v0

    .line 90
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 91
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 92
    return-void
.end method

.method private final ensure(I)V
    .locals 5
    .param p1, "bytesCount"    # I

    const/4 v0, 0x0

    .line 117
    .local v0, "$i$f$ensure":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 269
    .local v2, "$i$f$rest":I
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v3, v3

    iget v4, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v3, v4

    .line 117
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$rest":I
    if-ge v3, p1, :cond_0

    .line 118
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 120
    :cond_0
    return-void
.end method

.method private final ensureTotalCapacity(II)I
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "additional"    # I

    .line 95
    add-int v0, p1, p2

    .line 96
    .local v0, "newSize":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 97
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    mul-int/lit8 v2, p1, 0x2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 99
    :cond_0
    return p1
.end method

.method private final flush()V
    .locals 4

    .line 109
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->stream:Ljava/io/OutputStream;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 110
    iput v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 111
    return-void
.end method

.method private final rest()I
    .locals 3

    const/4 v0, 0x0

    .line 130
    .local v0, "$i$f$rest":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private final write(I)V
    .locals 4
    .param p1, "byte"    # I

    const/4 v0, 0x0

    .line 125
    .local v0, "$i$f$write":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 126
    return-void
.end method

.method private final writeUtf8([CI)V
    .locals 16
    .param p1, "string"    # [C
    .param p2, "count"    # I

    .line 137
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_12

    .line 138
    array-length v4, v0

    if-gt v1, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_11

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "i":I
    :cond_2
    :goto_2
    if-ge v4, v1, :cond_10

    .line 143
    aget-char v5, v0, v4

    .line 145
    .local v5, "c":I
    nop

    .line 146
    const/16 v6, 0x80

    if-ge v5, v6, :cond_4

    .line 148
    const/4 v7, 0x1

    .local v7, "bytesCount$iv":I
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 271
    .local v9, "$i$f$ensure":I
    move-object v10, v8

    .local v10, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 272
    .local v11, "$i$f$rest":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v12, v12

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v12, v13

    .line 271
    .end local v10    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$rest":I
    if-ge v12, v7, :cond_3

    .line 273
    invoke-direct {v8}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 275
    :cond_3
    nop

    .line 149
    .end local v7    # "bytesCount$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$ensure":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v8, 0x0

    .line 276
    .local v8, "$i$f$write":I
    iget-object v9, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v10, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v11, v5

    aput-byte v11, v9, v10

    .line 277
    nop

    .line 150
    .end local v7    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v8    # "$i$f$write":I
    add-int/lit8 v4, v4, 0x1

    .line 151
    nop

    .restart local v7    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v8, 0x0

    .line 278
    .local v8, "$i$f$rest":I
    iget-object v9, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v9, v9

    iget v10, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v9, v10

    .line 151
    .end local v7    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v8    # "$i$f$rest":I
    add-int/2addr v9, v4

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 155
    .local v7, "runLimit":I
    :goto_3
    if-ge v4, v7, :cond_2

    .line 156
    aget-char v5, v0, v4

    .line 157
    if-ge v5, v6, :cond_2

    .line 158
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 279
    .local v9, "$i$f$write":I
    iget-object v10, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v11, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v12, v5

    aput-byte v12, v10, v11

    .line 280
    nop

    .line 159
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$write":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 163
    .end local v7    # "runLimit":I
    :cond_4
    const/16 v7, 0x800

    if-ge v5, v7, :cond_6

    .line 165
    const/4 v7, 0x2

    .local v7, "bytesCount$iv":I
    move-object/from16 v8, p0

    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 281
    .local v9, "$i$f$ensure":I
    move-object v10, v8

    .restart local v10    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 282
    .restart local v11    # "$i$f$rest":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v12, v12

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v12, v13

    .line 281
    .end local v10    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$rest":I
    if-ge v12, v7, :cond_5

    .line 283
    invoke-direct {v8}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 285
    :cond_5
    nop

    .line 166
    .end local v7    # "bytesCount$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$ensure":I
    shr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0xc0

    .local v7, "byte$iv":I
    move-object/from16 v8, p0

    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 286
    .local v9, "$i$f$write":I
    iget-object v10, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v11, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v12, v7

    aput-byte v12, v10, v11

    .line 287
    nop

    .line 167
    .end local v7    # "byte$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$write":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v6, v7

    .local v6, "byte$iv":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v8, 0x0

    .line 288
    .local v8, "$i$f$write":I
    iget-object v9, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v10, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v11, v6

    aput-byte v11, v9, v10

    .line 289
    nop

    .line 168
    .end local v6    # "byte$iv":I
    .end local v7    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v8    # "$i$f$write":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 171
    :cond_6
    const v7, 0xd800

    if-lt v5, v7, :cond_e

    const v7, 0xdfff

    if-le v5, v7, :cond_7

    goto/16 :goto_7

    .line 184
    :cond_7
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v1, :cond_8

    add-int/lit8 v7, v4, 0x1

    aget-char v7, v0, v7

    goto :goto_4

    :cond_8
    move v7, v2

    .line 185
    .local v7, "low":I
    :goto_4
    const v8, 0xdbff

    if-gt v5, v8, :cond_c

    const v8, 0xdc00

    if-gt v8, v7, :cond_9

    const v8, 0xe000

    if-ge v7, v8, :cond_9

    move v8, v3

    goto :goto_5

    :cond_9
    move v8, v2

    :goto_5
    if-nez v8, :cond_a

    goto :goto_6

    .line 193
    :cond_a
    and-int/lit16 v8, v5, 0x3ff

    shl-int/lit8 v8, v8, 0xa

    and-int/lit16 v9, v7, 0x3ff

    or-int/2addr v8, v9

    const/high16 v9, 0x10000

    add-int/2addr v8, v9

    .line 196
    .local v8, "codePoint":I
    const/4 v9, 0x4

    .local v9, "bytesCount$iv":I
    move-object/from16 v10, p0

    .local v10, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 308
    .local v11, "$i$f$ensure":I
    move-object v12, v10

    .local v12, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v13, 0x0

    .line 309
    .local v13, "$i$f$rest":I
    iget-object v14, v12, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v14, v14

    iget v15, v12, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v14, v15

    .line 308
    .end local v12    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v13    # "$i$f$rest":I
    if-ge v14, v9, :cond_b

    .line 310
    invoke-direct {v10}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 312
    :cond_b
    nop

    .line 197
    .end local v9    # "bytesCount$iv":I
    .end local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$ensure":I
    shr-int/lit8 v9, v8, 0x12

    or-int/lit16 v9, v9, 0xf0

    .local v9, "byte$iv":I
    move-object/from16 v10, p0

    .restart local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 313
    .local v11, "$i$f$write":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v14, v9

    aput-byte v14, v12, v13

    .line 314
    nop

    .line 198
    .end local v9    # "byte$iv":I
    .end local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$write":I
    shr-int/lit8 v9, v8, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v6

    .restart local v9    # "byte$iv":I
    .restart local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 315
    .restart local v11    # "$i$f$write":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v14, v9

    aput-byte v14, v12, v13

    .line 316
    nop

    .line 199
    .end local v9    # "byte$iv":I
    .end local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$write":I
    shr-int/lit8 v9, v8, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v6

    .restart local v9    # "byte$iv":I
    .restart local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 317
    .restart local v11    # "$i$f$write":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v14, v9

    aput-byte v14, v12, v13

    .line 318
    nop

    .line 200
    .end local v9    # "byte$iv":I
    .end local v10    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$write":I
    and-int/lit8 v9, v8, 0x3f

    or-int/2addr v6, v9

    .restart local v6    # "byte$iv":I
    move-object/from16 v9, p0

    .local v9, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v10, 0x0

    .line 319
    .local v10, "$i$f$write":I
    iget-object v11, v9, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v12, v9, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v9, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v13, v6

    aput-byte v13, v11, v12

    .line 320
    nop

    .line 201
    .end local v6    # "byte$iv":I
    .end local v9    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v10    # "$i$f$write":I
    add-int/lit8 v4, v4, 0x2

    .end local v8    # "codePoint":I
    goto/16 :goto_2

    .line 186
    :cond_c
    :goto_6
    const/4 v6, 0x1

    .local v6, "bytesCount$iv":I
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 301
    .local v9, "$i$f$ensure":I
    move-object v10, v8

    .local v10, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 302
    .local v11, "$i$f$rest":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v12, v12

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v12, v13

    .line 301
    .end local v10    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$rest":I
    if-ge v12, v6, :cond_d

    .line 303
    invoke-direct {v8}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 305
    :cond_d
    nop

    .line 187
    .end local v6    # "bytesCount$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$ensure":I
    const/16 v6, 0x3f

    .local v6, "byte$iv":I
    move-object/from16 v8, p0

    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 306
    .local v9, "$i$f$write":I
    iget-object v10, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v11, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v12, v6

    aput-byte v12, v10, v11

    .line 307
    nop

    .line 188
    .end local v6    # "byte$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$write":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 173
    .end local v7    # "low":I
    :cond_e
    :goto_7
    const/4 v7, 0x3

    .local v7, "bytesCount$iv":I
    move-object/from16 v8, p0

    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 290
    .local v9, "$i$f$ensure":I
    move-object v10, v8

    .restart local v10    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v11, 0x0

    .line 291
    .restart local v11    # "$i$f$rest":I
    iget-object v12, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v12, v12

    iget v13, v10, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v12, v13

    .line 290
    .end local v10    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v11    # "$i$f$rest":I
    if-ge v12, v7, :cond_f

    .line 292
    invoke-direct {v8}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 294
    :cond_f
    nop

    .line 174
    .end local v7    # "bytesCount$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$ensure":I
    shr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0xe0

    .local v7, "byte$iv":I
    move-object/from16 v8, p0

    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 295
    .local v9, "$i$f$write":I
    iget-object v10, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v11, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v12, v7

    aput-byte v12, v10, v11

    .line 296
    nop

    .line 175
    .end local v7    # "byte$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$write":I
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    .restart local v7    # "byte$iv":I
    .restart local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v9, 0x0

    .line 297
    .restart local v9    # "$i$f$write":I
    iget-object v10, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v11, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v8, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v12, v7

    aput-byte v12, v10, v11

    .line 298
    nop

    .line 176
    .end local v7    # "byte$iv":I
    .end local v8    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v9    # "$i$f$write":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v6, v7

    .restart local v6    # "byte$iv":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v8, 0x0

    .line 299
    .local v8, "$i$f$write":I
    iget-object v9, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v10, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v7, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v11, v6

    aput-byte v11, v9, v10

    .line 300
    nop

    .line 177
    .end local v6    # "byte$iv":I
    .end local v7    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v8    # "$i$f$write":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 206
    .end local v5    # "c":I
    :cond_10
    return-void

    .line 270
    .end local v4    # "i":I
    :cond_11
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-require-JsonToJavaStreamWriter$writeUtf8$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count > string.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-JsonToJavaStreamWriter$writeUtf8$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 270
    :cond_12
    const/4 v2, 0x0

    .line 137
    .local v2, "$i$a$-require-JsonToJavaStreamWriter$writeUtf8$1":I
    nop

    .end local v2    # "$i$a$-require-JsonToJavaStreamWriter$writeUtf8$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "count < 0"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final writeUtf8CodePoint(I)V
    .locals 8
    .param p1, "codePoint"    # I

    .line 212
    nop

    .line 213
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 215
    const/4 v0, 0x1

    .local v0, "bytesCount$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 321
    .local v2, "$i$f$ensure":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v4, 0x0

    .line 322
    .local v4, "$i$f$rest":I
    iget-object v5, v3, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v5, v5

    iget v6, v3, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v5, v6

    .line 321
    .end local v3    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v4    # "$i$f$rest":I
    if-ge v5, v0, :cond_0

    .line 323
    invoke-direct {v1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 325
    :cond_0
    nop

    .line 216
    .end local v0    # "bytesCount$iv":I
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$ensure":I
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v1, 0x0

    .line 326
    .local v1, "$i$f$write":I
    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v3, v0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 327
    nop

    .end local v0    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v1    # "$i$f$write":I
    goto/16 :goto_0

    .line 219
    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_3

    .line 221
    const/4 v1, 0x2

    .local v1, "bytesCount$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 328
    .local v3, "$i$f$ensure":I
    move-object v4, v2

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v5, 0x0

    .line 329
    .local v5, "$i$f$rest":I
    iget-object v6, v4, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v6, v6

    iget v7, v4, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v6, v7

    .line 328
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v5    # "$i$f$rest":I
    if-ge v6, v1, :cond_2

    .line 330
    invoke-direct {v2}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 332
    :cond_2
    nop

    .line 222
    .end local v1    # "bytesCount$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$ensure":I
    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .local v1, "byte$iv":I
    move-object v2, p0

    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 333
    .local v3, "$i$f$write":I
    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 334
    nop

    .line 223
    .end local v1    # "byte$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$write":I
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    .local v0, "byte$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 335
    .local v2, "$i$f$write":I
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v4, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 336
    nop

    .end local v0    # "byte$iv":I
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$write":I
    goto/16 :goto_0

    .line 226
    :cond_3
    const v1, 0xd800

    const/4 v2, 0x0

    if-gt v1, p1, :cond_4

    const v1, 0xe000

    if-ge p1, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_6

    .line 228
    const/4 v0, 0x1

    .local v0, "bytesCount$iv":I
    move-object v1, p0

    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 337
    .local v2, "$i$f$ensure":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v4, 0x0

    .line 338
    .local v4, "$i$f$rest":I
    iget-object v5, v3, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v5, v5

    iget v6, v3, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v5, v6

    .line 337
    .end local v3    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v4    # "$i$f$rest":I
    if-ge v5, v0, :cond_5

    .line 339
    invoke-direct {v1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 341
    :cond_5
    nop

    .line 229
    .end local v0    # "bytesCount$iv":I
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$ensure":I
    const/16 v0, 0x3f

    .local v0, "byte$iv":I
    move-object v1, p0

    .restart local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 342
    .local v2, "$i$f$write":I
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v4, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 343
    nop

    .end local v0    # "byte$iv":I
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$write":I
    goto/16 :goto_0

    .line 232
    :cond_6
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_8

    .line 234
    const/4 v1, 0x3

    .local v1, "bytesCount$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 344
    .local v3, "$i$f$ensure":I
    move-object v4, v2

    .local v4, "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v5, 0x0

    .line 345
    .restart local v5    # "$i$f$rest":I
    iget-object v6, v4, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v6, v6

    iget v7, v4, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v6, v7

    .line 344
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v5    # "$i$f$rest":I
    if-ge v6, v1, :cond_7

    .line 346
    invoke-direct {v2}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 348
    :cond_7
    nop

    .line 235
    .end local v1    # "bytesCount$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$ensure":I
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .local v1, "byte$iv":I
    move-object v2, p0

    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 349
    .local v3, "$i$f$write":I
    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 350
    nop

    .line 236
    .end local v1    # "byte$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$write":I
    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .restart local v1    # "byte$iv":I
    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 351
    .restart local v3    # "$i$f$write":I
    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 352
    nop

    .line 237
    .end local v1    # "byte$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$write":I
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    .restart local v0    # "byte$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 353
    .local v2, "$i$f$write":I
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v4, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 354
    nop

    .end local v0    # "byte$iv":I
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$write":I
    goto :goto_0

    .line 240
    :cond_8
    const v1, 0x10ffff

    if-gt p1, v1, :cond_a

    .line 242
    const/4 v1, 0x4

    .local v1, "bytesCount$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 355
    .local v3, "$i$f$ensure":I
    move-object v4, v2

    .restart local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v5, 0x0

    .line 356
    .restart local v5    # "$i$f$rest":I
    iget-object v6, v4, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    array-length v6, v6

    iget v7, v4, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v6, v7

    .line 355
    .end local v4    # "this_$iv$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v5    # "$i$f$rest":I
    if-ge v6, v1, :cond_9

    .line 357
    invoke-direct {v2}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 359
    :cond_9
    nop

    .line 243
    .end local v1    # "bytesCount$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$ensure":I
    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .local v1, "byte$iv":I
    move-object v2, p0

    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 360
    .local v3, "$i$f$write":I
    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 361
    nop

    .line 244
    .end local v1    # "byte$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$write":I
    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .restart local v1    # "byte$iv":I
    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 362
    .restart local v3    # "$i$f$write":I
    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 363
    nop

    .line 245
    .end local v1    # "byte$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$write":I
    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .restart local v1    # "byte$iv":I
    .restart local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v3, 0x0

    .line 364
    .restart local v3    # "$i$f$write":I
    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 365
    nop

    .line 246
    .end local v1    # "byte$iv":I
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v3    # "$i$f$write":I
    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    .restart local v0    # "byte$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    const/4 v2, 0x0

    .line 366
    .local v2, "$i$f$write":I
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v4, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 367
    nop

    .line 253
    .end local v0    # "byte$iv":I
    .end local v1    # "this_$iv":Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
    .end local v2    # "$i$f$write":I
    :goto_0
    return-void

    .line 250
    :cond_a
    new-instance v0, Lkotlinx/serialization/json/internal/JsonEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/internal/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 104
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPool;->release([C)V

    .line 105
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ByteArrayPool;->release([B)V

    .line 106
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 21
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 22
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 24
    return-void
.end method

.method public writeChar(C)V
    .locals 0
    .param p1, "char"    # C

    .line 16
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8CodePoint(I)V

    .line 17
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->write(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 28
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 29
    .local v0, "arr":[C
    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 31
    .local v3, "length":I
    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 32
    const/4 v1, 0x1

    .local v1, "i":I
    add-int/lit8 v4, v3, 0x1

    :goto_0
    if-ge v1, v4, :cond_1

    .line 33
    aget-char v5, v0, v1

    .line 35
    .local v5, "ch":I
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    aget-byte v6, v6, v5

    if-eqz v6, :cond_0

    .line 37
    invoke-direct {p0, v1, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->appendStringSlowPath(ILjava/lang/String;)V

    return-void

    .line 32
    .end local v5    # "ch":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v3, 0x1

    aput-char v2, v0, v1

    .line 45
    add-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 46
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 47
    return-void
.end method
