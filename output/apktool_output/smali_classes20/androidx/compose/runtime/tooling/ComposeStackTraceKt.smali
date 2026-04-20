.class public final Landroidx/compose/runtime/tooling/ComposeStackTraceKt;
.super Ljava/lang/Object;
.source "ComposeStackTrace.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeStackTrace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeStackTrace.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceKt\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,282:1\n114#2:283\n35#2,5:284\n115#2:289\n35#2,3:290\n39#2:294\n35#2,5:295\n35#2,5:300\n1#3:293\n*S KotlinDebug\n*F\n+ 1 ComposeStackTrace.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceKt\n*L\n125#1:283\n125#1:284,5\n125#1:289\n160#1:290,3\n160#1:294\n225#1:295,5\n270#1:300,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u0008*\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0005H\u0000\u001a\u0018\u0010\u000b\u001a\u00020\u0008*\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0005H\u0000\u001a\u0012\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r*\u00020\u0005H\u0000\u001a\u0018\u0010\u000f\u001a\u00020\u0008*\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0005H\u0000\"\u000e\u0010\u0010\u001a\u00020\u0011X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "tryAttachComposeStackTrace",
        "",
        "",
        "trace",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/tooling/ComposeStackTrace;",
        "attachComposeStackTrace",
        "appendStackTrace",
        "",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "appendSourceInformationStackTrace",
        "filterInternalFramesByGroupKey",
        "",
        "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
        "appendGroupKeyStackTrace",
        "RuntimePackageHash",
        "",
        "IncludeDebugInfo",
        "runtime"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final IncludeDebugInfo:Z = false

.field private static final RuntimePackageHash:Ljava/lang/String; = "9igjgp"


# direct methods
.method public static final appendGroupKeyStackTrace(Ljava/lang/StringBuilder;Landroidx/compose/runtime/tooling/ComposeStackTrace;)V
    .locals 9
    .param p0, "$this$appendGroupKeyStackTrace"    # Ljava/lang/StringBuilder;
    .param p1, "trace"    # Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 270
    invoke-static {p1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->filterInternalFramesByGroupKey(Landroidx/compose/runtime/tooling/ComposeStackTrace;)Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 302
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .local v5, "it":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    const/4 v6, 0x0

    .line 272
    .local v6, "$i$a$-fastForEach-ComposeStackTraceKt$appendGroupKeyStackTrace$1":I
    const-string v7, "\tat $$compose.m$"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupKey()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v7, "(SourceFile:1)"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "append(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    nop

    .line 302
    .end local v5    # "it":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    .end local v6    # "$i$a$-fastForEach-ComposeStackTraceKt$appendGroupKeyStackTrace$1":I
    nop

    .line 300
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 277
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method

.method public static final appendSourceInformationStackTrace(Ljava/lang/StringBuilder;Landroidx/compose/runtime/tooling/ComposeStackTrace;)V
    .locals 22
    .param p0, "$this$appendSourceInformationStackTrace"    # Ljava/lang/StringBuilder;
    .param p1, "trace"    # Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 157
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 158
    .local v1, "currentFunction":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 159
    .local v2, "currentFile":Ljava/lang/Object;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$appendSourceInformationStackTrace_u24lambda_u240":Ljava/util/List;
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$a$-buildList-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;->getFrames()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 290
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_a

    .line 291
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 292
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .local v11, "frame":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    const/4 v12, 0x0

    .line 161
    .local v12, "$i$a$-fastForEach-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getSourceInfo()Landroidx/compose/runtime/tooling/SourceInformation;

    move-result-object v13

    .line 162
    .local v13, "sourceInfo":Landroidx/compose/runtime/tooling/SourceInformation;
    if-eqz v13, :cond_9

    .line 165
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->getFunctionName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    .line 166
    const-string v14, "<lambda>"

    move-object v15, v14

    .line 293
    .local v15, "it":Ljava/lang/String;
    const/16 v16, 0x0

    .line 166
    .local v16, "$i$a$-takeIf-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1$1$functionName$1":I
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->isCall()Z

    move-result v15

    .end local v15    # "it":Ljava/lang/String;
    .end local v16    # "$i$a$-takeIf-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1$1$functionName$1":I
    if-eqz v15, :cond_0

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 165
    :goto_1
    if-nez v14, :cond_2

    .line 167
    nop

    .line 165
    if-nez v1, :cond_1

    .line 168
    const-string v14, "<unknown function>"

    goto :goto_2

    .line 165
    :cond_1
    move-object v14, v1

    :cond_2
    :goto_2
    nop

    .line 164
    nop

    .line 170
    .local v14, "functionName":Ljava/lang/String;
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->getSourceFile()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_4

    if-nez v2, :cond_3

    const-string v15, "<unknown file>"

    goto :goto_3

    :cond_3
    move-object v15, v2

    .line 171
    .local v15, "fileName":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v16, v1

    .end local v1    # "currentFunction":Ljava/lang/Object;
    .local v16, "currentFunction":Ljava/lang/Object;
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->getLocations()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "lineNumbers":Ljava/util/List;
    invoke-virtual {v11}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupOffset()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual {v11}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupOffset()Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "currentFile":Ljava/lang/Object;
    .local v18, "currentFile":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v17, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 174
    invoke-virtual {v11}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupOffset()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/tooling/LocationSourceInformation;

    invoke-virtual {v2}, Landroidx/compose/runtime/tooling/LocationSourceInformation;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 173
    .end local v18    # "currentFile":Ljava/lang/Object;
    .restart local v2    # "currentFile":Ljava/lang/Object;
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 176
    .end local v2    # "currentFile":Ljava/lang/Object;
    .restart local v18    # "currentFile":Ljava/lang/Object;
    :cond_6
    nop

    .line 180
    const-string v2, "<unknown line>"

    .line 173
    :goto_4
    nop

    .line 172
    nop

    .line 184
    .local v2, "resolvedLine":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .local v19, "$this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .line 185
    .local v20, "$i$a$-buildString-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1$1$traceLine$1":I
    move-object/from16 v21, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242":Ljava/lang/StringBuilder;
    .local v1, "$this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242":Ljava/lang/StringBuilder;
    .local v21, "lineNumbers":Ljava/util/List;
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    nop

    .line 198
    nop

    .line 184
    .end local v1    # "$this$appendSourceInformationStackTrace_u24lambda_u240_u240_u242":Ljava/lang/StringBuilder;
    .end local v20    # "$i$a$-buildString-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1$1$traceLine$1":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .local v1, "traceLine":Ljava/lang/String;
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->isCall()Z

    move-result v3

    if-nez v3, :cond_7

    .line 203
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    .local v3, "line":Ljava/lang/String;
    nop

    .line 210
    .end local v3    # "line":Ljava/lang/String;
    :cond_7
    nop

    .line 211
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v2

    .end local v2    # "resolvedLine":Ljava/lang/String;
    .local v19, "resolvedLine":Ljava/lang/String;
    const-string/jumbo v2, "rememberCompositionContext"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 212
    invoke-virtual {v13}, Landroidx/compose/runtime/tooling/SourceInformation;->getPackageHash()Ljava/lang/String;

    move-result-object v2

    const-string v3, "9igjgp"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 214
    goto :goto_5

    .line 218
    :cond_8
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_5
    move-object v2, v14

    .line 222
    .end local v16    # "currentFunction":Ljava/lang/Object;
    .local v2, "currentFunction":Ljava/lang/Object;
    move-object v3, v15

    .line 223
    .end local v18    # "currentFile":Ljava/lang/Object;
    .local v3, "currentFile":Ljava/lang/Object;
    move-object v1, v2

    move-object v2, v3

    goto :goto_6

    .line 162
    .end local v3    # "currentFile":Ljava/lang/Object;
    .end local v14    # "functionName":Ljava/lang/String;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v19    # "resolvedLine":Ljava/lang/String;
    .end local v21    # "lineNumbers":Ljava/util/List;
    .local v1, "currentFunction":Ljava/lang/Object;
    .local v2, "currentFile":Ljava/lang/Object;
    :cond_9
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 292
    .end local v11    # "frame":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    .end local v12    # "$i$a$-fastForEach-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1$1":I
    .end local v13    # "sourceInfo":Landroidx/compose/runtime/tooling/SourceInformation;
    :goto_6
    nop

    .line 290
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_a
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 294
    .end local v1    # "currentFunction":Ljava/lang/Object;
    .end local v2    # "currentFile":Ljava/lang/Object;
    .end local v8    # "index$iv":I
    .restart local v16    # "currentFunction":Ljava/lang/Object;
    .restart local v18    # "currentFile":Ljava/lang/Object;
    nop

    .line 224
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    nop

    .line 159
    .end local v4    # "$this$appendSourceInformationStackTrace_u24lambda_u240":Ljava/util/List;
    .end local v5    # "$i$a$-buildList-ComposeStackTraceKt$appendSourceInformationStackTrace$lines$1":I
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, "lines":Ljava/util/List;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 295
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_7
    if-ge v4, v5, :cond_b

    .line 296
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 297
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 226
    .local v8, "$i$a$-fastForEach-ComposeStackTraceKt$appendSourceInformationStackTrace$1":I
    const-string v9, "\tat "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "append(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    nop

    .line 297
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-fastForEach-ComposeStackTraceKt$appendSourceInformationStackTrace$1":I
    nop

    .line 295
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 299
    .end local v4    # "index$iv":I
    :cond_b
    nop

    .line 229
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    return-void
.end method

.method public static final appendStackTrace(Ljava/lang/StringBuilder;Landroidx/compose/runtime/tooling/ComposeStackTrace;)V
    .locals 1
    .param p0, "$this$appendStackTrace"    # Ljava/lang/StringBuilder;
    .param p1, "trace"    # Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 148
    invoke-virtual {p1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;->getHasSourceInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0, p1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->appendSourceInformationStackTrace(Ljava/lang/StringBuilder;Landroidx/compose/runtime/tooling/ComposeStackTrace;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->appendGroupKeyStackTrace(Ljava/lang/StringBuilder;Landroidx/compose/runtime/tooling/ComposeStackTrace;)V

    .line 153
    :goto_0
    return-void
.end method

.method public static final attachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "$this$attachComposeStackTrace"    # Ljava/lang/Throwable;
    .param p1, "trace"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/runtime/tooling/ComposeStackTrace;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 143
    move-object v0, p0

    .local v0, "$this$attachComposeStackTrace_u24lambda_u240":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-apply-ComposeStackTraceKt$attachComposeStackTrace$1":I
    invoke-static {v0, p1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 145
    nop

    .line 143
    .end local v0    # "$this$attachComposeStackTrace_u24lambda_u240":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-apply-ComposeStackTraceKt$attachComposeStackTrace$1":I
    nop

    .line 145
    return-object p0
.end method

.method public static final filterInternalFramesByGroupKey(Landroidx/compose/runtime/tooling/ComposeStackTrace;)Ljava/util/List;
    .locals 7
    .param p0, "$this$filterInternalFramesByGroupKey"    # Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/tooling/ComposeStackTrace;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation

    .line 236
    nop

    .line 237
    nop

    .line 236
    nop

    .line 238
    nop

    .line 236
    nop

    .line 239
    nop

    .line 236
    nop

    .line 240
    nop

    .line 236
    nop

    .line 241
    nop

    .line 236
    nop

    .line 242
    nop

    .line 236
    nop

    .line 243
    nop

    .line 236
    nop

    .line 244
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 236
    nop

    .line 234
    nop

    .line 247
    .local v0, "knownKeys":[I
    const/4 v1, 0x0

    .line 248
    .local v1, "i":I
    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 249
    .local v2, "fCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 250
    .local v3, "filteredFrames":Ljava/util/List;
    :goto_0
    if-ge v1, v2, :cond_3

    .line 251
    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;->getFrames()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 252
    .local v1, "frame":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    invoke-virtual {v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupKey()I

    move-result v4

    invoke-static {v0, v4}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 253
    invoke-virtual {v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupKey()I

    move-result v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_1

    .line 254
    add-int/lit8 v4, v5, 0x1

    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;->getFrames()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-virtual {v4}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->getGroupKey()I

    move-result v4

    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_0

    .line 256
    move v1, v5

    goto :goto_2

    .line 260
    :cond_0
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 261
    goto :goto_1

    .line 264
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v1    # "frame":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    :cond_2
    :goto_1
    move v1, v5

    goto :goto_0

    .line 266
    .end local v5    # "i":I
    .local v1, "i":I
    :cond_3
    :goto_2
    return-object v3

    nop

    :array_0
    .array-data 4
        0xc9
        0xca
        0xcc
        0xce
        0xcf
        0x7d
        -0x7f
        0x78cc281
        0xc8
    .end array-data
.end method

.method public static final tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z
    .locals 14
    .param p0, "$this$tryAttachComposeStackTrace"    # Ljava/lang/Throwable;
    .param p1, "trace"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/runtime/tooling/ComposeStackTrace;",
            ">;)Z"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Z
    invoke-static {p0}, Lkotlin/ExceptionsKt;->getSuppressedExceptions(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastNone$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 283
    .local v2, "$i$f$fastNone":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 284
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    .line 285
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 286
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 283
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastNone$1$iv":I
    move-object v12, v10

    check-cast v12, Ljava/lang/Throwable;

    .local v12, "it":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 125
    .local v13, "$i$a$-fastNone-ComposeStackTraceKt$tryAttachComposeStackTrace$1":I
    instance-of v12, v12, Landroidx/compose/runtime/tooling/DiagnosticComposeException;

    .line 283
    .end local v12    # "it":Ljava/lang/Throwable;
    .end local v13    # "$i$a$-fastNone-ComposeStackTraceKt$tryAttachComposeStackTrace$1":I
    if-eqz v12, :cond_0

    move v1, v7

    goto :goto_1

    .line 286
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastNone$1$iv":I
    :cond_0
    nop

    .line 284
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .line 289
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v1, v8

    .line 125
    .end local v1    # "$this$fastNone$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastNone":I
    :goto_1
    if-eqz v1, :cond_4

    .line 127
    nop

    .line 128
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 129
    .local v1, "stackTrace":Landroidx/compose/runtime/tooling/ComposeStackTrace;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;->getFrames()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v7, v8

    :cond_2
    move v0, v7

    .line 130
    if-eqz v0, :cond_3

    new-instance v2, Landroidx/compose/runtime/tooling/DiagnosticComposeException;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Landroidx/compose/runtime/tooling/DiagnosticComposeException;-><init>(Landroidx/compose/runtime/tooling/ComposeStackTrace;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .end local v1    # "stackTrace":Landroidx/compose/runtime/tooling/ComposeStackTrace;
    :goto_2
    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 131
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 134
    .local v2, "e":Ljava/lang/Throwable;
    nop

    .line 127
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_3
    nop

    .line 126
    nop

    .line 136
    .local v2, "traceException":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 137
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 140
    .end local v2    # "traceException":Ljava/lang/Throwable;
    :cond_4
    return v0
.end method
