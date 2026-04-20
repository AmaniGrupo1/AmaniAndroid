.class public final Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Strings.kt\ncom/google/firebase/firestore/pipeline/evaluation/Strings\n*L\n1#1,905:1\n31#2,2:906\n33#2,3:968\n181#3,60:908\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$ternaryLazyFunction$1$1\n*L\n550#1:906,2\n550#1:968,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;

.field final synthetic $p3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 23
    .param p1, "input"    # Lcom/google/firebase/firestore/model/MutableDocument;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iget-object v3, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iget-object v4, v1, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->$p3:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    .line 906
    .local v5, "$i$f$catch":I
    nop

    .line 907
    const/4 v6, 0x0

    .line 550
    .local v6, "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    :try_start_0
    new-instance v7, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1$1;

    invoke-direct {v7, v0, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1$2;

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1$3;

    invoke-direct {v3, v4, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/model/MutableDocument;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v0, "startFn":Lkotlin/jvm/functions/Function0;
    .local v3, "lengthFn":Lkotlin/jvm/functions/Function0;
    .local v7, "strFn":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 908
    .local v4, "$i$a$-ternaryLazyFunction-Strings$evaluateSubstring$1":I
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-static {v8}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->access$getIntegerOrElse(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 909
    .local v8, "start":J
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-static {v10}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings;->access$getIntegerOrElse(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 911
    .local v10, "length":J
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-gez v14, :cond_0

    .line 912
    sget-object v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_5

    .line 915
    :cond_0
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    invoke-virtual {v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v14

    .line 916
    .local v14, "str":Lcom/google/firestore/v1/Value;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v15

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_2

    const/4 v15, -0x1

    goto :goto_1

    :cond_2
    sget-object v16, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v15

    aget v15, v16, v15

    :goto_1
    const-wide/16 v16, 0x1

    move-wide/from16 v18, v12

    const/4 v12, 0x1

    packed-switch v15, :pswitch_data_0

    .line 967
    move-object/from16 v22, v0

    move-object/from16 v21, v3

    move-object/from16 v20, v14

    .end local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .end local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .end local v14    # "str":Lcom/google/firestore/v1/Value;
    .local v20, "str":Lcom/google/firestore/v1/Value;
    .local v21, "lengthFn":Lkotlin/jvm/functions/Function0;
    .local v22, "startFn":Lkotlin/jvm/functions/Function0;
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    goto/16 :goto_4

    .line 944
    .end local v20    # "str":Lcom/google/firestore/v1/Value;
    .end local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .end local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v14    # "str":Lcom/google/firestore/v1/Value;
    :pswitch_0
    invoke-virtual {v14}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v15

    .line 945
    .local v15, "bytes":Lcom/google/protobuf/ByteString;
    invoke-virtual {v15}, Lcom/google/protobuf/ByteString;->size()I

    move-result v20

    add-int/lit8 v12, v20, -0x1

    .line 946
    .local v12, "bytesCount":I
    cmp-long v20, v8, v18

    if-gez v20, :cond_3

    .line 948
    move-object/from16 v20, v14

    .end local v14    # "str":Lcom/google/firestore/v1/Value;
    .restart local v20    # "str":Lcom/google/firestore/v1/Value;
    int-to-long v13, v12

    add-long/2addr v13, v8

    add-long v13, v13, v16

    move-object/from16 v22, v0

    move-wide/from16 v0, v18

    .end local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_2

    .line 946
    .end local v20    # "str":Lcom/google/firestore/v1/Value;
    .end local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v14    # "str":Lcom/google/firestore/v1/Value;
    :cond_3
    move-object/from16 v22, v0

    move-object/from16 v20, v14

    .line 951
    .end local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .end local v14    # "str":Lcom/google/firestore/v1/Value;
    .restart local v20    # "str":Lcom/google/firestore/v1/Value;
    .restart local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    :goto_2
    int-to-long v0, v12

    cmp-long v0, v0, v8

    if-gez v0, :cond_4

    .line 952
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue([B)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v12, v0

    goto/16 :goto_5

    .line 956
    :cond_4
    nop

    .line 957
    nop

    .line 958
    nop

    .line 959
    invoke-static {v8, v9}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    invoke-static {v10, v11}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    .line 960
    add-int/lit8 v1, v12, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 956
    nop

    .line 955
    nop

    .line 963
    .local v0, "end":I
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    .line 964
    long-to-int v13, v8

    invoke-virtual {v15, v13, v0}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v13

    invoke-static {v13}, Lcom/google/firebase/firestore/Blob;->fromByteString(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/Blob;

    move-result-object v13

    const-string v14, "fromByteString(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/firestore/Blob;)Lcom/google/firestore/v1/Value;

    move-result-object v13

    .line 963
    invoke-virtual {v1, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->value(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-object v12, v1

    goto/16 :goto_5

    .line 918
    .end local v12    # "bytesCount":I
    .end local v15    # "bytes":Lcom/google/protobuf/ByteString;
    .end local v20    # "str":Lcom/google/firestore/v1/Value;
    .end local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    .local v0, "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v14    # "str":Lcom/google/firestore/v1/Value;
    :pswitch_1
    move-object/from16 v22, v0

    move-object/from16 v20, v14

    .end local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .end local v14    # "str":Lcom/google/firestore/v1/Value;
    .restart local v20    # "str":Lcom/google/firestore/v1/Value;
    .restart local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v20 .. v20}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "text":Ljava/lang/String;
    const-wide/16 v18, 0x0

    cmp-long v1, v8, v18

    if-gez v1, :cond_5

    .line 921
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    int-to-long v13, v1

    add-long/2addr v13, v8

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v8, v1

    .line 924
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 926
    .local v1, "codePointCount":I
    int-to-long v13, v1

    cmp-long v2, v8, v13

    if-ltz v2, :cond_6

    .line 927
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    const-string v12, ""

    invoke-virtual {v2, v12}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto/16 :goto_5

    .line 930
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .local v2, "substring":Ljava/lang/StringBuilder;
    const-wide/32 v13, 0x7fffffff

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .local v13, "curIndex":I
    const-wide/16 v14, 0x0

    .local v14, "i":J
    :goto_3
    cmp-long v18, v14, v10

    const-string v12, "toString(...)"

    if-gez v18, :cond_8

    .line 933
    move/from16 v18, v1

    .end local v1    # "codePointCount":I
    .local v18, "codePointCount":I
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v13, v1, :cond_7

    .line 934
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    move-object/from16 v21, v3

    .end local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 937
    .end local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    :cond_7
    move-object/from16 v21, v3

    .end local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    invoke-virtual {v0, v13}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 938
    const/4 v1, 0x1

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    move v13, v3

    .line 932
    add-long v14, v14, v16

    move v12, v1

    move/from16 v1, v18

    move-object/from16 v3, v21

    goto :goto_3

    .end local v18    # "codePointCount":I
    .end local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "codePointCount":I
    .restart local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    :cond_8
    move/from16 v18, v1

    move-object/from16 v21, v3

    .line 941
    .end local v1    # "codePointCount":I
    .end local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .end local v14    # "i":J
    .restart local v18    # "codePointCount":I
    .restart local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->string(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 967
    .end local v0    # "text":Ljava/lang/String;
    .end local v2    # "substring":Ljava/lang/StringBuilder;
    .end local v13    # "curIndex":I
    .end local v18    # "codePointCount":I
    :goto_4
    move-object v12, v0

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 909
    .end local v10    # "length":J
    .end local v20    # "str":Lcom/google/firestore/v1/Value;
    .end local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .end local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    .local v0, "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    :cond_9
    move-object/from16 v22, v0

    move-object/from16 v21, v3

    .end local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .end local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v12, v0

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    goto :goto_5

    .line 908
    .end local v8    # "start":J
    .end local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .end local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    :cond_a
    move-object/from16 v22, v0

    move-object/from16 v21, v3

    .end local v0    # "startFn":Lkotlin/jvm/functions/Function0;
    .end local v3    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v12, v0

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    .end local v4    # "$i$a$-ternaryLazyFunction-Strings$evaluateSubstring$1":I
    .end local v6    # "$i$a$-catch-UtilsKt$ternaryLazyFunction$1$1$1":I
    .end local v7    # "strFn":Lkotlin/jvm/functions/Function0;
    .end local v21    # "lengthFn":Lkotlin/jvm/functions/Function0;
    .end local v22    # "startFn":Lkotlin/jvm/functions/Function0;
    :goto_5
    nop

    .line 907
    goto :goto_6

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e$iv":Ljava/lang/Exception;
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    move-object v12, v1

    check-cast v12, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 970
    .end local v0    # "e$iv":Ljava/lang/Exception;
    :goto_6
    nop

    .line 550
    .end local v5    # "$i$f$catch":I
    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 550
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/Strings$special$$inlined$ternaryLazyFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object v0

    return-object v0
.end method
