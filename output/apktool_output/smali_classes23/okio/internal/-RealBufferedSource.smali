.class public final Lokio/internal/-RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,404:1\n1#2:405\n62#3:406\n62#3:407\n62#3:408\n62#3:409\n62#3:410\n62#3:411\n62#3:412\n62#3:413\n62#3:414\n62#3:415\n62#3:416\n62#3:417\n62#3:418\n62#3:419\n62#3:420\n62#3:421\n62#3:422\n62#3:423\n62#3:424\n62#3:425\n62#3:426\n62#3:427\n62#3:428\n62#3:430\n62#3:431\n62#3:432\n62#3:433\n62#3:434\n62#3:435\n62#3:436\n62#3:437\n62#3:438\n62#3:439\n62#3:440\n62#3:441\n62#3:442\n62#3:443\n62#3:444\n62#3:445\n62#3:446\n62#3:447\n62#3:448\n62#3:449\n62#3:451\n62#3:452\n62#3:453\n62#3:454\n62#3:455\n62#3:456\n62#3:457\n62#3:458\n62#3:459\n62#3:460\n62#3:461\n62#3:462\n62#3:463\n62#3:464\n62#3:465\n62#3:466\n62#3:467\n62#3:468\n62#3:469\n62#3:470\n62#3:471\n62#3:472\n62#3:473\n62#3:474\n62#3:475\n62#3:476\n62#3:477\n89#4:429\n89#4:450\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n*L\n41#1:406\n43#1:407\n47#1:408\n48#1:409\n53#1:410\n63#1:411\n64#1:412\n71#1:413\n75#1:414\n76#1:415\n81#1:416\n88#1:417\n95#1:418\n100#1:419\n108#1:420\n109#1:421\n114#1:422\n123#1:423\n124#1:424\n131#1:425\n137#1:426\n139#1:427\n143#1:428\n144#1:430\n152#1:431\n156#1:432\n161#1:433\n162#1:434\n165#1:435\n168#1:436\n169#1:437\n170#1:438\n176#1:439\n177#1:440\n182#1:441\n189#1:442\n190#1:443\n195#1:444\n203#1:445\n205#1:446\n206#1:447\n208#1:448\n211#1:449\n213#1:451\n221#1:452\n228#1:453\n233#1:454\n238#1:455\n243#1:456\n248#1:457\n253#1:458\n258#1:459\n266#1:460\n277#1:461\n285#1:462\n299#1:463\n306#1:464\n309#1:465\n310#1:466\n321#1:467\n326#1:468\n327#1:469\n340#1:470\n343#1:471\n344#1:472\n356#1:473\n359#1:474\n360#1:475\n385#1:476\n398#1:477\n143#1:429\n211#1:450\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\u0008\u001a%\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0080\u0008\u001a\u001d\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0006H\u0080\u0008\u001a\u001d\u0010\r\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0006H\u0080\u0008\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0002H\u0080\u0008\u001a-\u0010\u0011\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\u0008\u001a%\u0010\u0016\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\u0008\u001a\u001d\u0010\u0016\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\u0015\u0010\u001a\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u001bH\u0080\u0008\u001a\r\u0010\u001c\u001a\u00020\u0008*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u001d\u001a\u00020\u0018*\u00020\u0002H\u0080\u0008\u001a\u0015\u0010\u001d\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\r\u0010\u001e\u001a\u00020\u000c*\u00020\u0002H\u0080\u0008\u001a\u0015\u0010\u001e\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\r\u0010\u001f\u001a\u00020\u0006*\u00020\u0002H\u0080\u0008\u001a\u0015\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\u0008\u001a\u001d\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\r\u0010!\u001a\u00020\u0006*\u00020\u0002H\u0080\u0008\u001a\r\u0010\"\u001a\u00020\u0014*\u00020\u0002H\u0080\u0008\u001a\r\u0010#\u001a\u00020\u0014*\u00020\u0002H\u0080\u0008\u001a\r\u0010$\u001a\u00020\u0006*\u00020\u0002H\u0080\u0008\u001a\r\u0010%\u001a\u00020\u0006*\u00020\u0002H\u0080\u0008\u001a\r\u0010&\u001a\u00020\'*\u00020\u0002H\u0080\u0008\u001a\r\u0010(\u001a\u00020\'*\u00020\u0002H\u0080\u0008\u001a\r\u0010)\u001a\u00020**\u00020\u0002H\u0080\u0008\u001a\u0015\u0010)\u001a\u00020**\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\r\u0010+\u001a\u00020\u0014*\u00020\u0002H\u0080\u0008\u001a\u000f\u0010,\u001a\u0004\u0018\u00010**\u00020\u0002H\u0080\u0008\u001a\u0015\u0010-\u001a\u00020**\u00020\u00022\u0006\u0010.\u001a\u00020\u0006H\u0080\u0008\u001a\u0015\u0010/\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\u0015\u00100\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\u0015\u00101\u001a\u00020\u0014*\u00020\u00022\u0006\u00102\u001a\u000203H\u0080\u0008\u001a\u0015\u00104\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\u0008\u001a\r\u00105\u001a\u000206*\u00020\u0002H\u0080\u0008\u001a\r\u00107\u001a\u00020**\u00020\u0002H\u0080\u0008\u00a8\u00068"
    }
    d2 = {
        "commonClose",
        "",
        "Lokio/RealBufferedSource;",
        "commonExhausted",
        "",
        "commonIndexOf",
        "",
        "b",
        "",
        "fromIndex",
        "toIndex",
        "bytes",
        "Lokio/ByteString;",
        "commonIndexOfElement",
        "targetBytes",
        "commonPeek",
        "Lokio/BufferedSource;",
        "commonRangeEquals",
        "offset",
        "bytesOffset",
        "",
        "byteCount",
        "commonRead",
        "sink",
        "",
        "Lokio/Buffer;",
        "commonReadAll",
        "Lokio/Sink;",
        "commonReadByte",
        "commonReadByteArray",
        "commonReadByteString",
        "commonReadDecimalLong",
        "commonReadFully",
        "commonReadHexadecimalUnsignedLong",
        "commonReadInt",
        "commonReadIntLe",
        "commonReadLong",
        "commonReadLongLe",
        "commonReadShort",
        "",
        "commonReadShortLe",
        "commonReadUtf8",
        "",
        "commonReadUtf8CodePoint",
        "commonReadUtf8Line",
        "commonReadUtf8LineStrict",
        "limit",
        "commonRequest",
        "commonRequire",
        "commonSelect",
        "options",
        "Lokio/Options;",
        "commonSkip",
        "commonTimeout",
        "Lokio/Timeout;",
        "commonToString",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final commonClose(Lokio/RealBufferedSource;)V
    .locals 3
    .param p0, "$this$commonClose"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 395
    .local v0, "$i$f$commonClose":I
    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_0

    return-void

    .line 396
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    .line 397
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v1}, Lokio/Source;->close()V

    .line 398
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 477
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 398
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 399
    return-void
.end method

.method public static final commonExhausted(Lokio/RealBufferedSource;)Z
    .locals 5
    .param p0, "$this$commonExhausted"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$commonExhausted":I
    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_1

    .line 53
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 410
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 53
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 410
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 53
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    const-wide/16 v3, 0x2000

    invoke-interface {v1, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-check--RealBufferedSource$commonExhausted$1":I
    nop

    .end local v1    # "$i$a$-check--RealBufferedSource$commonExhausted$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;BJJ)J
    .locals 18
    .param p0, "$this$commonIndexOf"    # Lokio/RealBufferedSource;
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 316
    .local v9, "$i$f$commonIndexOf":I
    nop

    .line 317
    iget-boolean v3, v0, Lokio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_6

    .line 318
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    cmp-long v3, v1, p4

    if-gtz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_5

    move-wide v5, v1

    .line 320
    .local v5, "fromIndex":J
    :goto_0
    cmp-long v3, v5, p4

    const-wide/16 v10, -0x1

    if-gez v3, :cond_4

    .line 321
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 467
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 321
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    move/from16 v4, p1

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v12

    .line 322
    .local v12, "result":J
    cmp-long v3, v12, v10

    if-eqz v3, :cond_1

    return-wide v12

    .line 326
    :cond_1
    move-object/from16 v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 468
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 326
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 327
    .local v3, "lastBufferSize":J
    cmp-long v14, v3, v7

    if-gez v14, :cond_3

    iget-object v14, v0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object/from16 v15, p0

    .local v15, "this_$iv":Lokio/RealBufferedSource;
    const/16 v16, 0x0

    .line 469
    .local v16, "$i$f$getBuffer":I
    iget-object v15, v15, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 327
    .end local v15    # "this_$iv":Lokio/RealBufferedSource;
    .end local v16    # "$i$f$getBuffer":I
    move-wide/from16 v16, v10

    const-wide/16 v10, 0x2000

    invoke-interface {v14, v15, v10, v11}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    cmp-long v10, v10, v16

    if-nez v10, :cond_2

    goto :goto_1

    .line 330
    :cond_2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .end local v3    # "lastBufferSize":J
    .end local v12    # "result":J
    goto :goto_0

    .line 327
    .restart local v3    # "lastBufferSize":J
    .restart local v12    # "result":J
    :cond_3
    move-wide/from16 v16, v10

    :goto_1
    return-wide v16

    .line 332
    .end local v3    # "lastBufferSize":J
    .end local v12    # "result":J
    :cond_4
    move-wide/from16 v7, p4

    move-wide/from16 v16, v10

    return-wide v16

    .line 405
    .end local v5    # "fromIndex":J
    :cond_5
    move-wide/from16 v7, p4

    const/4 v3, 0x0

    .line 318
    .local v3, "$i$a$-require--RealBufferedSource$commonIndexOf$2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require--RealBufferedSource$commonIndexOf$2":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 405
    :cond_6
    move-wide/from16 v7, p4

    const/4 v3, 0x0

    .line 317
    .local v3, "$i$a$-check--RealBufferedSource$commonIndexOf$1":I
    nop

    .end local v3    # "$i$a$-check--RealBufferedSource$commonIndexOf$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 13
    .param p0, "$this$commonIndexOf"    # Lokio/RealBufferedSource;
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 336
    .local v0, "$i$f$commonIndexOf":I
    move-wide v1, p2

    .line 337
    .local v1, "fromIndex":J
    iget-boolean v3, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_2

    .line 339
    :goto_0
    nop

    .line 340
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 340
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v3

    .line 341
    .local v3, "result":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return-wide v3

    .line 343
    :cond_0
    move-object v7, p0

    .local v7, "this_$iv":Lokio/RealBufferedSource;
    const/4 v8, 0x0

    .line 471
    .local v8, "$i$f$getBuffer":I
    iget-object v7, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 343
    .end local v7    # "this_$iv":Lokio/RealBufferedSource;
    .end local v8    # "$i$f$getBuffer":I
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    .line 344
    .local v7, "lastBufferSize":J
    iget-object v9, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v10, p0

    .local v10, "this_$iv":Lokio/RealBufferedSource;
    const/4 v11, 0x0

    .line 472
    .local v11, "$i$f$getBuffer":I
    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 344
    .end local v10    # "this_$iv":Lokio/RealBufferedSource;
    .end local v11    # "$i$f$getBuffer":I
    const-wide/16 v11, 0x2000

    invoke-interface {v9, v10, v11, v12}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-nez v9, :cond_1

    return-wide v5

    .line 347
    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    int-to-long v5, v5

    sub-long v5, v7, v5

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .end local v3    # "result":J
    .end local v7    # "lastBufferSize":J
    goto :goto_0

    .line 405
    :cond_2
    const/4 v3, 0x0

    .line 337
    .local v3, "$i$a$-check--RealBufferedSource$commonIndexOf$3":I
    nop

    .end local v3    # "$i$a$-check--RealBufferedSource$commonIndexOf$3":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final commonIndexOfElement(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 13
    .param p0, "$this$commonIndexOfElement"    # Lokio/RealBufferedSource;
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    .local v0, "$i$f$commonIndexOfElement":I
    move-wide v1, p2

    .line 353
    .local v1, "fromIndex":J
    iget-boolean v3, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_2

    .line 355
    :goto_0
    nop

    .line 356
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 473
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 356
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v3

    .line 357
    .local v3, "result":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return-wide v3

    .line 359
    :cond_0
    move-object v7, p0

    .local v7, "this_$iv":Lokio/RealBufferedSource;
    const/4 v8, 0x0

    .line 474
    .local v8, "$i$f$getBuffer":I
    iget-object v7, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 359
    .end local v7    # "this_$iv":Lokio/RealBufferedSource;
    .end local v8    # "$i$f$getBuffer":I
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    .line 360
    .local v7, "lastBufferSize":J
    iget-object v9, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v10, p0

    .local v10, "this_$iv":Lokio/RealBufferedSource;
    const/4 v11, 0x0

    .line 475
    .local v11, "$i$f$getBuffer":I
    iget-object v10, v10, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 360
    .end local v10    # "this_$iv":Lokio/RealBufferedSource;
    .end local v11    # "$i$f$getBuffer":I
    const-wide/16 v11, 0x2000

    invoke-interface {v9, v10, v11, v12}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-nez v9, :cond_1

    return-wide v5

    .line 363
    :cond_1
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .end local v3    # "result":J
    .end local v7    # "lastBufferSize":J
    goto :goto_0

    .line 405
    :cond_2
    const/4 v3, 0x0

    .line 353
    .local v3, "$i$a$-check--RealBufferedSource$commonIndexOfElement$1":I
    nop

    .end local v3    # "$i$a$-check--RealBufferedSource$commonIndexOfElement$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final commonPeek(Lokio/RealBufferedSource;)Lokio/BufferedSource;
    .locals 3
    .param p0, "$this$commonPeek"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 391
    .local v0, "$i$f$commonPeek":I
    new-instance v1, Lokio/PeekSource;

    move-object v2, p0

    check-cast v2, Lokio/BufferedSource;

    invoke-direct {v1, v2}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    check-cast v1, Lokio/Source;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    return-object v1
.end method

.method public static final commonRangeEquals(Lokio/RealBufferedSource;JLokio/ByteString;II)Z
    .locals 7
    .param p0, "$this$commonRangeEquals"    # Lokio/RealBufferedSource;
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 373
    .local v0, "$i$f$commonRangeEquals":I
    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_5

    .line 375
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    .line 376
    if-ltz p4, :cond_4

    .line 377
    if-ltz p5, :cond_4

    .line 378
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_3

    .line 383
    int-to-long v3, v1

    add-long/2addr v3, p1

    .line 384
    .local v3, "bufferOffset":J
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    .line 385
    :cond_1
    move-object v5, p0

    .local v5, "this_$iv":Lokio/RealBufferedSource;
    const/4 v6, 0x0

    .line 476
    .local v6, "$i$f$getBuffer":I
    iget-object v5, v5, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 385
    .end local v5    # "this_$iv":Lokio/RealBufferedSource;
    .end local v6    # "$i$f$getBuffer":I
    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v5

    add-int v6, p4, v1

    invoke-virtual {p3, v6}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v5, v6, :cond_2

    return v2

    .line 382
    .end local v3    # "bufferOffset":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 380
    :cond_4
    :goto_1
    return v2

    .line 405
    :cond_5
    const/4 v1, 0x0

    .line 373
    .local v1, "$i$a$-check--RealBufferedSource$commonRangeEquals$1":I
    nop

    .end local v1    # "$i$a$-check--RealBufferedSource$commonRangeEquals$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonRead(Lokio/RealBufferedSource;[BII)I
    .locals 8
    .param p0, "$this$commonRead"    # Lokio/RealBufferedSource;
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    .local v0, "$i$f$commonRead":I
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 137
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 426
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 137
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 138
    if-nez p3, :cond_0

    const/4 v1, 0x0

    return v1

    .line 139
    :cond_0
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 427
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 139
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    const-wide/16 v3, 0x2000

    invoke-interface {v1, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    .line 140
    .local v1, "read":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    return v3

    .line 143
    .end local v1    # "read":J
    :cond_1
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 428
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 143
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    .local v1, "b$iv":J
    const/4 v3, 0x0

    .line 429
    .local v3, "$i$f$minOf":I
    int-to-long v4, p3

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 143
    .end local v1    # "b$iv":J
    .end local v3    # "$i$f$minOf":I
    long-to-int v1, v4

    .line 144
    .local v1, "toRead":I
    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 430
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 144
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2, v1}, Lokio/Buffer;->read([BII)I

    move-result v2

    return v2
.end method

.method public static final commonRead(Lokio/RealBufferedSource;Lokio/Buffer;J)J
    .locals 6
    .param p0, "$this$commonRead"    # Lokio/RealBufferedSource;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$commonRead":I
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 39
    iget-boolean v3, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_3

    .line 41
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 406
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 41
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_2

    .line 42
    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    return-wide v1

    .line 43
    :cond_1
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 407
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 43
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    const-wide/16 v3, 0x2000

    invoke-interface {v1, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    .line 44
    .local v1, "read":J
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    return-wide v3

    .line 47
    .end local v1    # "read":J
    :cond_2
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 408
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 47
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 48
    .local v1, "toRead":J
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 409
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 48
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v3

    return-wide v3

    .line 405
    .end local v1    # "toRead":J
    :cond_3
    const/4 v1, 0x0

    .line 39
    .local v1, "$i$a$-check--RealBufferedSource$commonRead$2":I
    nop

    .end local v1    # "$i$a$-check--RealBufferedSource$commonRead$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_4
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$a$-require--RealBufferedSource$commonRead$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--RealBufferedSource$commonRead$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadAll(Lokio/RealBufferedSource;Lokio/Sink;)J
    .locals 8
    .param p0, "$this$commonReadAll"    # Lokio/RealBufferedSource;
    .param p1, "sink"    # Lokio/Sink;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    .local v0, "$i$f$commonReadAll":I
    const-wide/16 v1, 0x0

    .line 161
    .local v1, "totalBytesWritten":J
    :cond_0
    :goto_0
    iget-object v3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v4, p0

    .local v4, "this_$iv":Lokio/RealBufferedSource;
    const/4 v5, 0x0

    .line 433
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 161
    .end local v4    # "this_$iv":Lokio/RealBufferedSource;
    .end local v5    # "$i$f$getBuffer":I
    const-wide/16 v5, 0x2000

    invoke-interface {v3, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    .line 162
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v6, 0x0

    .line 434
    .local v6, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 162
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v6    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v6

    .line 163
    .local v6, "emitByteCount":J
    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 164
    add-long/2addr v1, v6

    .line 165
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 435
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 165
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-interface {p1, v3, v6, v7}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .end local v6    # "emitByteCount":J
    goto :goto_0

    .line 168
    :cond_1
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v6, 0x0

    .line 436
    .local v6, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 168
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v6    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_2

    .line 169
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 437
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 169
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 170
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 438
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 170
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    move-object v4, p0

    .local v4, "this_$iv":Lokio/RealBufferedSource;
    const/4 v5, 0x0

    .line 438
    .restart local v5    # "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 170
    .end local v4    # "this_$iv":Lokio/RealBufferedSource;
    .end local v5    # "$i$f$getBuffer":I
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 172
    :cond_2
    return-wide v1
.end method

.method public static final commonReadByte(Lokio/RealBufferedSource;)B
    .locals 3
    .param p0, "$this$commonReadByte"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    .local v0, "$i$f$commonReadByte":I
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 71
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 413
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 71
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    move-result v1

    return v1
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;)[B
    .locals 3
    .param p0, "$this$commonReadByteArray"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    .local v0, "$i$f$commonReadByteArray":I
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 420
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 108
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 109
    move-object v1, p0

    .restart local v1    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 421
    .restart local v2    # "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 109
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;J)[B
    .locals 3
    .param p0, "$this$commonReadByteArray"    # Lokio/RealBufferedSource;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    .local v0, "$i$f$commonReadByteArray":I
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 114
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 422
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 114
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonReadByteString"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$commonReadByteString":I
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 75
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 76
    move-object v1, p0

    .restart local v1    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 415
    .restart local v2    # "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 76
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;J)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonReadByteString"    # Lokio/RealBufferedSource;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$f$commonReadByteString":I
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 81
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 416
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 81
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadDecimalLong(Lokio/RealBufferedSource;)J
    .locals 9
    .param p0, "$this$commonReadDecimalLong"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 262
    .local v0, "$i$f$commonReadDecimalLong":I
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 264
    const-wide/16 v3, 0x0

    .line 265
    .local v3, "pos":J
    :goto_0
    add-long v5, v3, v1

    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 266
    move-object v5, p0

    .local v5, "this_$iv":Lokio/RealBufferedSource;
    const/4 v6, 0x0

    .line 460
    .local v6, "$i$f$getBuffer":I
    iget-object v5, v5, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 266
    .end local v5    # "this_$iv":Lokio/RealBufferedSource;
    .end local v6    # "$i$f$getBuffer":I
    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v5

    .line 267
    .local v5, "b":B
    const/16 v6, 0x30

    if-lt v5, v6, :cond_0

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_2

    const/16 v8, 0x2d

    if-eq v5, v8, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    add-long/2addr v3, v1

    .end local v5    # "b":B
    goto :goto_0

    .line 269
    .restart local v5    # "b":B
    :cond_2
    :goto_1
    cmp-long v1, v3, v6

    if-eqz v1, :cond_3

    .line 272
    goto :goto_2

    .line 270
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x10

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "toString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v5    # "b":B
    :cond_4
    :goto_2
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 461
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 277
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;Lokio/Buffer;J)V
    .locals 4
    .param p0, "$this$commonReadFully"    # Lokio/RealBufferedSource;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    .local v0, "$i$f$commonReadFully":I
    nop

    .line 149
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 432
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 156
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    .line 157
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/EOFException;
    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 431
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    check-cast v2, Lokio/Source;

    .line 152
    invoke-virtual {p1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 153
    throw v1
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;[B)V
    .locals 7
    .param p0, "$this$commonReadFully"    # Lokio/RealBufferedSource;
    .param p1, "sink"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    .local v0, "$i$f$commonReadFully":I
    nop

    .line 119
    :try_start_0
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 425
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 131
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1, p1}, Lokio/Buffer;->readFully([B)V

    .line 132
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/EOFException;
    const/4 v2, 0x0

    .line 123
    .local v2, "offset":I
    :goto_0
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 423
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 123
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 124
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 424
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 124
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    move-object v4, p0

    .local v4, "this_$iv":Lokio/RealBufferedSource;
    const/4 v5, 0x0

    .line 424
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 124
    .end local v4    # "this_$iv":Lokio/RealBufferedSource;
    .end local v5    # "$i$f$getBuffer":I
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, p1, v2, v4}, Lokio/Buffer;->read([BII)I

    move-result v3

    .line 125
    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 126
    add-int/2addr v2, v3

    .end local v3    # "read":I
    goto :goto_0

    .line 125
    .restart local v3    # "read":I
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 128
    .end local v3    # "read":I
    :cond_1
    throw v1
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/RealBufferedSource;)J
    .locals 7
    .param p0, "$this$commonReadHexadecimalUnsignedLong"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    .local v0, "$i$f$commonReadHexadecimalUnsignedLong":I
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 462
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 285
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    .line 286
    .local v2, "b":B
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    .line 287
    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    .line 288
    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 296
    :cond_2
    nop

    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .restart local v2    # "b":B
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 294
    goto :goto_2

    .line 292
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v2    # "b":B
    :cond_5
    :goto_2
    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 463
    .restart local v3    # "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 299
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public static final commonReadInt(Lokio/RealBufferedSource;)I
    .locals 3
    .param p0, "$this$commonReadInt"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    .local v0, "$i$f$commonReadInt":I
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 243
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 456
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 243
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readInt()I

    move-result v1

    return v1
.end method

.method public static final commonReadIntLe(Lokio/RealBufferedSource;)I
    .locals 3
    .param p0, "$this$commonReadIntLe"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 247
    .local v0, "$i$f$commonReadIntLe":I
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 248
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 457
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 248
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readIntLe()I

    move-result v1

    return v1
.end method

.method public static final commonReadLong(Lokio/RealBufferedSource;)J
    .locals 3
    .param p0, "$this$commonReadLong"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 252
    .local v0, "$i$f$commonReadLong":I
    const-wide/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 253
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 458
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 253
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static final commonReadLongLe(Lokio/RealBufferedSource;)J
    .locals 3
    .param p0, "$this$commonReadLongLe"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 257
    .local v0, "$i$f$commonReadLongLe":I
    const-wide/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 258
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 459
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 258
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readLongLe()J

    move-result-wide v1

    return-wide v1
.end method

.method public static final commonReadShort(Lokio/RealBufferedSource;)S
    .locals 3
    .param p0, "$this$commonReadShort"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 232
    .local v0, "$i$f$commonReadShort":I
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 233
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 233
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result v1

    return v1
.end method

.method public static final commonReadShortLe(Lokio/RealBufferedSource;)S
    .locals 3
    .param p0, "$this$commonReadShortLe"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 237
    .local v0, "$i$f$commonReadShortLe":I
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 238
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 455
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 238
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readShortLe()S

    move-result v1

    return v1
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$commonReadUtf8"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 176
    .local v0, "$i$f$commonReadUtf8":I
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 439
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 176
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 177
    move-object v1, p0

    .restart local v1    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 440
    .restart local v2    # "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 177
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 3
    .param p0, "$this$commonReadUtf8"    # Lokio/RealBufferedSource;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    .local v0, "$i$f$commonReadUtf8":I
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 182
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 441
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 182
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadUtf8CodePoint(Lokio/RealBufferedSource;)I
    .locals 4
    .param p0, "$this$commonReadUtf8CodePoint"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    .local v0, "$i$f$commonReadUtf8CodePoint":I
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 221
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 452
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 221
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 222
    .local v1, "b0":I
    nop

    .line 223
    and-int/lit16 v2, v1, 0xe0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 224
    :cond_0
    and-int/lit16 v2, v1, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_1

    const-wide/16 v2, 0x3

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 225
    :cond_1
    and-int/lit16 v2, v1, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    .line 228
    :cond_2
    :goto_0
    move-object v2, p0

    .local v2, "this_$iv":Lokio/RealBufferedSource;
    const/4 v3, 0x0

    .line 453
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 228
    .end local v2    # "this_$iv":Lokio/RealBufferedSource;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v2

    return v2
.end method

.method public static final commonReadUtf8Line(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 7
    .param p0, "$this$commonReadUtf8Line"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 186
    .local v0, "$i$f$commonReadUtf8Line":I
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v1

    .line 188
    .local v1, "newline":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 189
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 442
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 189
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 190
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 443
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 190
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 192
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 195
    :cond_1
    move-object v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 444
    .restart local v4    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 195
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-static {v3, v1, v2}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_0
    return-object v3
.end method

.method public static final commonReadUtf8LineStrict(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 16
    .param p0, "$this$commonReadUtf8LineStrict"    # Lokio/RealBufferedSource;
    .param p1, "limit"    # J

    move-object/from16 v0, p0

    move-wide/from16 v6, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 200
    .local v8, "$i$f$commonReadUtf8LineStrict":I
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 201
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v1, v6, v9

    const-wide/16 v11, 0x1

    if-nez v1, :cond_1

    move-wide v4, v9

    goto :goto_1

    :cond_1
    add-long v1, v6, v11

    move-wide v4, v1

    .line 202
    .local v4, "scanLength":J
    :goto_1
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v1

    .line 203
    .local v1, "newline":J
    const-wide/16 v13, -0x1

    cmp-long v3, v1, v13

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v9, 0x0

    .line 445
    .local v9, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 203
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v9    # "$i$f$getBuffer":I
    invoke-static {v3, v1, v2}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 204
    :cond_2
    cmp-long v3, v4, v9

    if-gez v3, :cond_3

    .line 205
    invoke-virtual {v0, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v9, 0x0

    .line 446
    .restart local v9    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 205
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v9    # "$i$f$getBuffer":I
    sub-long v9, v4, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v9, 0xd

    if-ne v3, v9, :cond_3

    .line 206
    add-long v9, v4, v11

    invoke-virtual {v0, v9, v10}, Lokio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v9, 0x0

    .line 447
    .restart local v9    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 206
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v9    # "$i$f$getBuffer":I
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v9, 0xa

    if-ne v3, v9, :cond_3

    .line 208
    move-object/from16 v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v9, 0x0

    .line 448
    .restart local v9    # "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 208
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v9    # "$i$f$getBuffer":I
    invoke-static {v3, v4, v5}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 210
    :cond_3
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    move-object v10, v3

    .line 211
    .local v10, "data":Lokio/Buffer;
    move-object/from16 v3, p0

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v9, 0x0

    .line 449
    .restart local v9    # "$i$f$getBuffer":I
    iget-object v9, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 211
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v9    # "$i$f$getBuffer":I
    nop

    .restart local v3    # "this_$iv":Lokio/RealBufferedSource;
    const/4 v11, 0x0

    .line 449
    .local v11, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 211
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v11    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v11

    .local v11, "b$iv":J
    const/16 v3, 0x20

    .local v3, "a$iv":I
    const/4 v13, 0x0

    .line 450
    .local v13, "$i$f$minOf":I
    int-to-long v14, v3

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 211
    .end local v3    # "a$iv":I
    .end local v11    # "b$iv":J
    .end local v13    # "$i$f$minOf":I
    const-wide/16 v11, 0x0

    move-wide v13, v14

    invoke-virtual/range {v9 .. v14}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 212
    new-instance v3, Ljava/io/EOFException;

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\n not found: limit="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v11, p0

    .local v11, "this_$iv":Lokio/RealBufferedSource;
    const/4 v12, 0x0

    .line 451
    .local v12, "$i$f$getBuffer":I
    iget-object v11, v11, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 213
    .end local v11    # "this_$iv":Lokio/RealBufferedSource;
    .end local v12    # "$i$f$getBuffer":I
    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 214
    nop

    .line 213
    const-string v11, " content="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 214
    invoke-virtual {v10}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v11

    invoke-virtual {v11}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v11

    .line 213
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x2026

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 212
    invoke-direct {v3, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    .end local v1    # "newline":J
    .end local v4    # "scanLength":J
    .end local v10    # "data":Lokio/Buffer;
    :cond_4
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$a$-require--RealBufferedSource$commonReadUtf8LineStrict$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limit < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--RealBufferedSource$commonReadUtf8LineStrict$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonRequest(Lokio/RealBufferedSource;J)Z
    .locals 8
    .param p0, "$this$commonRequest"    # Lokio/RealBufferedSource;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$commonRequest":I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 62
    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_3

    .line 63
    :cond_1
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 411
    .local v4, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 63
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-gez v1, :cond_2

    .line 64
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v4, p0

    .local v4, "this_$iv":Lokio/RealBufferedSource;
    const/4 v5, 0x0

    .line 412
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 64
    .end local v4    # "this_$iv":Lokio/RealBufferedSource;
    .end local v5    # "$i$f$getBuffer":I
    const-wide/16 v5, 0x2000

    invoke-interface {v1, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    .line 66
    :cond_2
    return v2

    .line 405
    :cond_3
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-check--RealBufferedSource$commonRequest$2":I
    nop

    .end local v1    # "$i$a$-check--RealBufferedSource$commonRequest$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_4
    const/4 v1, 0x0

    .line 61
    .local v1, "$i$a$-require--RealBufferedSource$commonRequest$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--RealBufferedSource$commonRequest$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonRequire(Lokio/RealBufferedSource;J)V
    .locals 2
    .param p0, "$this$commonRequire"    # Lokio/RealBufferedSource;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$commonRequire":I
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    return-void

    .line 57
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonSelect(Lokio/RealBufferedSource;Lokio/Options;)I
    .locals 7
    .param p0, "$this$commonSelect"    # Lokio/RealBufferedSource;
    .param p1, "options"    # Lokio/Options;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    .local v0, "$i$f$commonSelect":I
    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_1

    .line 87
    :cond_0
    nop

    .line 88
    move-object v1, p0

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 417
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 88
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result v1

    .line 89
    .local v1, "index":I
    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    .line 99
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    .line 100
    .local v2, "selectedSize":I
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 419
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 100
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 101
    return v1

    .line 91
    .end local v2    # "selectedSize":I
    :pswitch_0
    return v2

    .line 95
    :pswitch_1
    iget-object v3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v4, p0

    .local v4, "this_$iv":Lokio/RealBufferedSource;
    const/4 v5, 0x0

    .line 418
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 95
    .end local v4    # "this_$iv":Lokio/RealBufferedSource;
    .end local v5    # "$i$f$getBuffer":I
    const-wide/16 v5, 0x2000

    invoke-interface {v3, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    return v2

    .line 405
    .end local v1    # "index":I
    :cond_1
    const/4 v1, 0x0

    .line 85
    .local v1, "$i$a$-check--RealBufferedSource$commonSelect$1":I
    nop

    .end local v1    # "$i$a$-check--RealBufferedSource$commonSelect$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final commonSkip(Lokio/RealBufferedSource;J)V
    .locals 7
    .param p0, "$this$commonSkip"    # Lokio/RealBufferedSource;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 303
    .local v0, "$i$f$commonSkip":I
    move-wide v1, p1

    .line 304
    .local v1, "byteCount":J
    iget-boolean v3, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_3

    .line 305
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 306
    move-object v5, p0

    .local v5, "this_$iv":Lokio/RealBufferedSource;
    const/4 v6, 0x0

    .line 464
    .local v6, "$i$f$getBuffer":I
    iget-object v5, v5, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 306
    .end local v5    # "this_$iv":Lokio/RealBufferedSource;
    .end local v6    # "$i$f$getBuffer":I
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    move-object v4, p0

    .local v4, "this_$iv":Lokio/RealBufferedSource;
    const/4 v5, 0x0

    .line 464
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 306
    .end local v4    # "this_$iv":Lokio/RealBufferedSource;
    .end local v5    # "$i$f$getBuffer":I
    const-wide/16 v5, 0x2000

    invoke-interface {v3, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 309
    :cond_1
    :goto_1
    move-object v3, p0

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 465
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 309
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 310
    .local v3, "toSkip":J
    move-object v5, p0

    .local v5, "this_$iv":Lokio/RealBufferedSource;
    const/4 v6, 0x0

    .line 466
    .restart local v6    # "$i$f$getBuffer":I
    iget-object v5, v5, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 310
    .end local v5    # "this_$iv":Lokio/RealBufferedSource;
    .end local v6    # "$i$f$getBuffer":I
    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 311
    sub-long/2addr v1, v3

    .end local v3    # "toSkip":J
    goto :goto_0

    .line 313
    :cond_2
    return-void

    .line 405
    :cond_3
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$a$-check--RealBufferedSource$commonSkip$1":I
    nop

    .end local v3    # "$i$a$-check--RealBufferedSource$commonSkip$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final commonTimeout(Lokio/RealBufferedSource;)Lokio/Timeout;
    .locals 2
    .param p0, "$this$commonTimeout"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 401
    .local v0, "$i$f$commonTimeout":I
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v1

    return-object v1
.end method

.method public static final commonToString(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$commonToString"    # Lokio/RealBufferedSource;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 403
    .local v0, "$i$f$commonToString":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
