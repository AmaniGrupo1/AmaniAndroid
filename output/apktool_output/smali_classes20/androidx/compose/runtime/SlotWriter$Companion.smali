.class public final Landroidx/compose/runtime/SlotWriter$Companion;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SlotWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,4112:1\n27#2,2:4113\n3901#3,2:4115\n3898#3:4118\n3901#3,2:4119\n3932#3,2:4121\n3818#3:4132\n3884#3:4133\n1#4:4117\n35#5,5:4123\n1475#6,4:4128\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2335#1:4113,2\n2345#1:4115,2\n2355#1:4118\n2356#1:4119,2\n2375#1:4121,2\n2478#1:4132\n2478#1:4133\n2414#1:4123,5\n2474#1:4128,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J@\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\rH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter$Companion;",
        "",
        "<init>",
        "()V",
        "moveGroup",
        "",
        "Landroidx/compose/runtime/Anchor;",
        "fromWriter",
        "Landroidx/compose/runtime/SlotWriter;",
        "fromIndex",
        "",
        "toWriter",
        "updateFromCursor",
        "",
        "updateToCursor",
        "removeSourceGroup",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter$Companion;
    .param p1, "fromWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "fromIndex"    # I
    .param p3, "toWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "updateFromCursor"    # Z
    .param p5, "updateToCursor"    # Z
    .param p6, "removeSourceGroup"    # Z

    .line 2295
    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 36
    .param p1, "fromWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "fromIndex"    # I
    .param p3, "toWriter"    # Landroidx/compose/runtime/SlotWriter;
    .param p4, "updateFromCursor"    # Z
    .param p5, "updateToCursor"    # Z
    .param p6, "removeSourceGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            "ZZZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 2304
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    .line 2305
    .local v3, "groupsToMove":I
    add-int v4, v1, v3

    .line 2306
    .local v4, "sourceGroupsEnd":I
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v5

    .line 2307
    .local v5, "sourceSlotsStart":I
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v6

    .line 2308
    .local v6, "sourceSlotsEnd":I
    sub-int v7, v6, v5

    .line 2309
    .local v7, "slotsToMove":I
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result v8

    .line 2312
    .local v8, "hasMarks":Z
    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotWriter;->access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2313
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v9

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/SlotWriter;->access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V

    .line 2317
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v4, :cond_0

    .line 2318
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2320
    :cond_0
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    if-ge v9, v6, :cond_1

    .line 2321
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V

    .line 2325
    :cond_1
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v9

    .line 2326
    .local v9, "groups":[I
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v10

    .line 2327
    .local v10, "currentGroup":I
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v11

    .line 2328
    nop

    .line 2329
    mul-int/lit8 v12, v10, 0x5

    .line 2330
    mul-int/lit8 v13, v1, 0x5

    .line 2331
    mul-int/lit8 v14, v4, 0x5

    .line 2327
    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 2333
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v11

    .line 2334
    .local v11, "slots":[Ljava/lang/Object;
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v12

    .line 2335
    .local v12, "currentSlot":I
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v13

    .line 2336
    nop

    .line 2337
    nop

    .line 2338
    nop

    .line 2339
    nop

    .line 2335
    nop

    .local v13, "$this$fastCopyInto$iv":[Ljava/lang/Object;
    move v14, v12

    .local v14, "destinationOffset$iv":I
    move-object v15, v11

    .local v15, "destination$iv":[Ljava/lang/Object;
    move/from16 v16, v6

    .local v16, "endIndex$iv":I
    move/from16 v17, v5

    .local v17, "startIndex$iv":I
    const/16 v18, 0x0

    .line 4113
    .local v18, "$i$f$fastCopyInto":I
    move/from16 v19, v6

    .end local v6    # "sourceSlotsEnd":I
    .local v19, "sourceSlotsEnd":I
    sub-int v6, v16, v17

    move/from16 v20, v8

    move/from16 v8, v17

    .end local v17    # "startIndex$iv":I
    .local v8, "startIndex$iv":I
    .local v20, "hasMarks":Z
    invoke-static {v13, v8, v15, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4114
    nop

    .line 2344
    .end local v8    # "startIndex$iv":I
    .end local v13    # "$this$fastCopyInto$iv":[Ljava/lang/Object;
    .end local v14    # "destinationOffset$iv":I
    .end local v15    # "destination$iv":[Ljava/lang/Object;
    .end local v16    # "endIndex$iv":I
    .end local v18    # "$i$f$fastCopyInto":I
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v6

    .line 2345
    .local v6, "parent":I
    move v8, v6

    .local v8, "value$iv":I
    move v13, v10

    .local v13, "address$iv":I
    move-object v14, v9

    .local v14, "$this$updateParentAnchor$iv":[I
    const/4 v15, 0x0

    .line 4115
    .local v15, "$i$f$updateParentAnchor":I
    mul-int/lit8 v16, v13, 0x5

    add-int/lit8 v16, v16, 0x2

    aput v8, v14, v16

    .line 4116
    nop

    .line 2346
    .end local v8    # "value$iv":I
    .end local v13    # "address$iv":I
    .end local v14    # "$this$updateParentAnchor$iv":[I
    .end local v15    # "$i$f$updateParentAnchor":I
    sub-int v8, v10, v1

    .line 2347
    .local v8, "parentDelta":I
    add-int v13, v10, v3

    .line 2348
    .local v13, "moveEnd":I
    nop

    .line 4117
    move-object/from16 v14, p3

    .local v14, "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    const/4 v15, 0x0

    .line 2348
    .local v15, "$i$a$-with-SlotWriter$Companion$moveGroup$dataIndexDelta$1":I
    invoke-static {v14, v9, v10}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v14

    .end local v14    # "$this$moveGroup_u24lambda_u240":Landroidx/compose/runtime/SlotWriter;
    .end local v15    # "$i$a$-with-SlotWriter$Companion$moveGroup$dataIndexDelta$1":I
    sub-int v14, v12, v14

    .line 2349
    .local v14, "dataIndexDelta":I
    const/4 v15, 0x0

    .local v15, "slotsGapOwner":I
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v15

    .line 2350
    move/from16 v16, v8

    .end local v8    # "parentDelta":I
    .local v16, "parentDelta":I
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v8

    .line 2351
    .local v8, "slotsGapLen":I
    move/from16 v17, v12

    .end local v12    # "currentSlot":I
    .local v17, "currentSlot":I
    array-length v12, v11

    .line 2352
    .local v12, "slotsCapacity":I
    move/from16 v18, v10

    move/from16 v35, v18

    move-object/from16 v18, v11

    move/from16 v11, v35

    .local v11, "groupAddress":I
    .local v18, "slots":[Ljava/lang/Object;
    :goto_0
    const/16 v21, 0x0

    if-ge v11, v13, :cond_5

    .line 2354
    if-eq v11, v10, :cond_2

    .line 2355
    move/from16 v22, v11

    .local v22, "address$iv":I
    move-object/from16 v23, v9

    .local v23, "$this$parentAnchor$iv":[I
    const/16 v24, 0x0

    .line 4118
    .local v24, "$i$f$parentAnchor":I
    mul-int/lit8 v25, v22, 0x5

    add-int/lit8 v25, v25, 0x2

    aget v22, v23, v25

    .line 2355
    .end local v22    # "address$iv":I
    .end local v23    # "$this$parentAnchor$iv":[I
    .end local v24    # "$i$f$parentAnchor":I
    nop

    .line 2356
    .local v22, "previousParent":I
    add-int v23, v22, v16

    .local v23, "value$iv":I
    move-object/from16 v24, v9

    .local v24, "$this$updateParentAnchor$iv":[I
    move/from16 v25, v11

    .local v25, "address$iv":I
    const/16 v26, 0x0

    .line 4119
    .local v26, "$i$f$updateParentAnchor":I
    mul-int/lit8 v27, v25, 0x5

    add-int/lit8 v27, v27, 0x2

    aput v23, v24, v27

    .line 4120
    nop

    .line 2360
    .end local v22    # "previousParent":I
    .end local v23    # "value$iv":I
    .end local v24    # "$this$updateParentAnchor$iv":[I
    .end local v25    # "address$iv":I
    .end local v26    # "$i$f$updateParentAnchor":I
    :cond_2
    move-object/from16 v22, p3

    .line 4117
    .local v22, "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    const/16 v23, 0x0

    .line 2360
    .local v23, "$i$a$-with-SlotWriter$Companion$moveGroup$newDataIndex$1":I
    move/from16 v24, v10

    move-object/from16 v10, v22

    .end local v22    # "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    .local v10, "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    .local v24, "currentGroup":I
    invoke-static {v10, v9, v11}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v22

    add-int v22, v22, v14

    .line 2359
    .end local v10    # "$this$moveGroup_u24lambda_u241":Landroidx/compose/runtime/SlotWriter;
    .end local v23    # "$i$a$-with-SlotWriter$Companion$moveGroup$newDataIndex$1":I
    move/from16 v10, v22

    .line 2362
    .local v10, "newDataIndex":I
    move-object/from16 v22, p3

    .local v22, "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    const/16 v23, 0x0

    .line 2363
    .local v23, "$i$a$-with-SlotWriter$Companion$moveGroup$newDataAnchor$1":I
    nop

    .line 2364
    nop

    .line 2368
    if-ge v15, v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v21

    :goto_1
    move-object/from16 v25, v9

    move/from16 v9, v21

    .line 2369
    .end local v9    # "groups":[I
    .local v25, "groups":[I
    nop

    .line 2370
    nop

    .line 2363
    move/from16 v26, v13

    move-object/from16 v13, v22

    .end local v22    # "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .local v13, "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .local v26, "moveEnd":I
    invoke-static {v13, v10, v9, v8, v12}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I

    move-result v9

    .line 2371
    nop

    .line 2362
    .end local v13    # "$this$moveGroup_u24lambda_u242":Landroidx/compose/runtime/SlotWriter;
    .end local v23    # "$i$a$-with-SlotWriter$Companion$moveGroup$newDataAnchor$1":I
    nop

    .line 2361
    nop

    .line 2375
    .local v9, "newDataAnchor":I
    move v13, v9

    .local v13, "anchor$iv":I
    move/from16 v21, v11

    .local v21, "address$iv":I
    move-object/from16 v22, v25

    .local v22, "$this$updateDataAnchor$iv":[I
    const/16 v23, 0x0

    .line 4121
    .local v23, "$i$f$updateDataAnchor":I
    mul-int/lit8 v27, v21, 0x5

    add-int/lit8 v27, v27, 0x4

    aput v13, v22, v27

    .line 4122
    nop

    .line 2378
    .end local v13    # "anchor$iv":I
    .end local v21    # "address$iv":I
    .end local v22    # "$this$updateDataAnchor$iv":[I
    .end local v23    # "$i$f$updateDataAnchor":I
    if-ne v11, v15, :cond_4

    add-int/lit8 v15, v15, 0x1

    .line 2352
    .end local v9    # "newDataAnchor":I
    .end local v10    # "newDataIndex":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v24

    move-object/from16 v9, v25

    move/from16 v13, v26

    goto :goto_0

    .end local v24    # "currentGroup":I
    .end local v25    # "groups":[I
    .end local v26    # "moveEnd":I
    .local v9, "groups":[I
    .local v10, "currentGroup":I
    .local v13, "moveEnd":I
    :cond_5
    move-object/from16 v25, v9

    move/from16 v24, v10

    move/from16 v26, v13

    .line 2380
    .end local v9    # "groups":[I
    .end local v10    # "currentGroup":I
    .end local v11    # "groupAddress":I
    .end local v13    # "moveEnd":I
    .restart local v24    # "currentGroup":I
    .restart local v25    # "groups":[I
    .restart local v26    # "moveEnd":I
    invoke-static {v2, v15}, Landroidx/compose/runtime/SlotWriter;->access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2383
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime()I

    move-result v10

    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v9

    .line 2384
    .local v9, "startAnchors":I
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime()I

    move-result v11

    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v10

    .line 2386
    .local v10, "endAnchors":I
    if-ge v9, v10, :cond_7

    .line 2387
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v11

    .line 2388
    .local v11, "sourceAnchors":Ljava/util/ArrayList;
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v22, v4

    .end local v4    # "sourceGroupsEnd":I
    .local v22, "sourceGroupsEnd":I
    sub-int v4, v10, v9

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2391
    .local v13, "anchors":Ljava/util/ArrayList;
    sub-int v4, v24, v1

    .line 2392
    .local v4, "anchorDelta":I
    move/from16 v23, v9

    move/from16 v27, v4

    move/from16 v4, v23

    .local v4, "anchorIndex":I
    .local v27, "anchorDelta":I
    :goto_2
    if-ge v4, v10, :cond_6

    .line 2393
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v28, v4

    .end local v4    # "anchorIndex":I
    .local v28, "anchorIndex":I
    move-object/from16 v4, v23

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 2394
    .local v4, "sourceAnchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v4}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    move-result v23

    move/from16 v29, v8

    .end local v8    # "slotsGapLen":I
    .local v29, "slotsGapLen":I
    add-int v8, v23, v27

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/Anchor;->setLocation$runtime(I)V

    .line 2395
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    .end local v4    # "sourceAnchor":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v4, v28, 0x1

    move/from16 v8, v29

    .end local v28    # "anchorIndex":I
    .local v4, "anchorIndex":I
    goto :goto_2

    .end local v29    # "slotsGapLen":I
    .restart local v8    # "slotsGapLen":I
    :cond_6
    move/from16 v28, v4

    move/from16 v29, v8

    .line 2400
    .end local v4    # "anchorIndex":I
    .end local v8    # "slotsGapLen":I
    .restart local v29    # "slotsGapLen":I
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v8

    move/from16 v23, v12

    .end local v12    # "slotsCapacity":I
    .local v23, "slotsCapacity":I
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime()I

    move-result v12

    invoke-static {v4, v8, v12}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v4

    .line 2399
    nop

    .line 2401
    .local v4, "insertLocation":I
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v12, v13

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v8, v4, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2404
    invoke-virtual {v11, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2406
    nop

    .end local v4    # "insertLocation":I
    .end local v11    # "sourceAnchors":Ljava/util/ArrayList;
    .end local v13    # "anchors":Ljava/util/ArrayList;
    .end local v27    # "anchorDelta":I
    move-object v4, v13

    check-cast v4, Ljava/util/List;

    goto :goto_3

    .line 2407
    .end local v22    # "sourceGroupsEnd":I
    .end local v23    # "slotsCapacity":I
    .end local v29    # "slotsGapLen":I
    .local v4, "sourceGroupsEnd":I
    .restart local v8    # "slotsGapLen":I
    .restart local v12    # "slotsCapacity":I
    :cond_7
    move/from16 v22, v4

    move/from16 v29, v8

    move/from16 v23, v12

    .end local v4    # "sourceGroupsEnd":I
    .end local v8    # "slotsGapLen":I
    .end local v12    # "slotsCapacity":I
    .restart local v22    # "sourceGroupsEnd":I
    .restart local v23    # "slotsCapacity":I
    .restart local v29    # "slotsGapLen":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 2386
    :goto_3
    nop

    .line 2385
    nop

    .line 2410
    .local v4, "anchors":Ljava/util/List;
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2411
    invoke-static {v0}, Landroidx/compose/runtime/SlotWriter;->access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;

    move-result-object v8

    .line 2412
    .local v8, "sourceSourceInformationMap":Ljava/util/HashMap;
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;

    move-result-object v11

    .line 2413
    .local v11, "destinationSourceInformation":Ljava/util/HashMap;
    if-eqz v8, :cond_a

    if-eqz v11, :cond_a

    .line 2414
    move-object v12, v4

    .local v12, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 4123
    .local v13, "$i$f$fastForEach":I
    const/16 v27, 0x0

    .local v27, "index$iv":I
    move-object/from16 v28, v12

    check-cast v28, Ljava/util/Collection;

    move-object/from16 v30, v4

    .end local v4    # "anchors":Ljava/util/List;
    .local v30, "anchors":Ljava/util/List;
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v28, v9

    move/from16 v9, v27

    .end local v27    # "index$iv":I
    .local v9, "index$iv":I
    .local v28, "startAnchors":I
    :goto_4
    if-ge v9, v4, :cond_9

    .line 4124
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .line 4125
    .local v27, "item$iv":Ljava/lang/Object;
    move/from16 v31, v4

    move-object/from16 v4, v27

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .local v4, "anchor":Landroidx/compose/runtime/Anchor;
    const/16 v32, 0x0

    .line 2415
    .local v32, "$i$a$-fastForEach-SlotWriter$Companion$moveGroup$1":I
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move/from16 v34, v9

    .end local v9    # "index$iv":I
    .local v34, "index$iv":I
    move-object/from16 v9, v33

    check-cast v9, Landroidx/compose/runtime/GroupSourceInformation;

    .line 2416
    .local v9, "information":Landroidx/compose/runtime/GroupSourceInformation;
    if-eqz v9, :cond_8

    .line 2417
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    move-object/from16 v33, v8

    .end local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .local v33, "sourceSourceInformationMap":Ljava/util/HashMap;
    move-object v8, v11

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2416
    .end local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .restart local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    :cond_8
    move-object/from16 v33, v8

    .line 2420
    .end local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .restart local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    :goto_5
    nop

    .line 4125
    .end local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v9    # "information":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v32    # "$i$a$-fastForEach-SlotWriter$Companion$moveGroup$1":I
    nop

    .line 4123
    .end local v27    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v34, 0x1

    move/from16 v4, v31

    move-object/from16 v8, v33

    .end local v34    # "index$iv":I
    .local v9, "index$iv":I
    goto :goto_4

    .end local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .restart local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    :cond_9
    move-object/from16 v33, v8

    move/from16 v34, v9

    .line 4127
    .end local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .end local v9    # "index$iv":I
    .restart local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    goto :goto_6

    .line 2413
    .end local v12    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    .end local v28    # "startAnchors":I
    .end local v30    # "anchors":Ljava/util/List;
    .end local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .local v4, "anchors":Ljava/util/List;
    .restart local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .local v9, "startAnchors":I
    :cond_a
    move-object/from16 v30, v4

    move-object/from16 v33, v8

    move/from16 v28, v9

    .end local v4    # "anchors":Ljava/util/List;
    .end local v8    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .end local v9    # "startAnchors":I
    .restart local v28    # "startAnchors":I
    .restart local v30    # "anchors":Ljava/util/List;
    .restart local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    goto :goto_6

    .line 2410
    .end local v11    # "destinationSourceInformation":Ljava/util/HashMap;
    .end local v28    # "startAnchors":I
    .end local v30    # "anchors":Ljava/util/List;
    .end local v33    # "sourceSourceInformationMap":Ljava/util/HashMap;
    .restart local v4    # "anchors":Ljava/util/List;
    .restart local v9    # "startAnchors":I
    :cond_b
    move-object/from16 v30, v4

    move/from16 v28, v9

    .line 2425
    .end local v4    # "anchors":Ljava/util/List;
    .end local v9    # "startAnchors":I
    .restart local v28    # "startAnchors":I
    .restart local v30    # "anchors":Ljava/util/List;
    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v4

    .line 2426
    .local v4, "toWriterParent":I
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v8

    if-eqz v8, :cond_d

    .local v8, "it":Landroidx/compose/runtime/GroupSourceInformation;
    const/4 v9, 0x0

    .line 2427
    .local v9, "$i$a$-let-SlotWriter$Companion$moveGroup$2":I
    const/4 v11, -0x1

    .line 2428
    .local v11, "predecessor":I
    add-int/lit8 v12, v4, 0x1

    .line 2429
    .local v12, "child":I
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v13

    .line 2430
    .local v13, "endGroup":I
    :goto_7
    if-ge v12, v13, :cond_c

    .line 2431
    move v11, v12

    .line 2432
    move/from16 v27, v4

    .end local v4    # "toWriterParent":I
    .local v27, "toWriterParent":I
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v4

    invoke-static {v4, v12}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    add-int/2addr v12, v4

    move/from16 v4, v27

    goto :goto_7

    .line 2434
    .end local v27    # "toWriterParent":I
    .restart local v4    # "toWriterParent":I
    :cond_c
    move/from16 v27, v4

    .end local v4    # "toWriterParent":I
    .restart local v27    # "toWriterParent":I
    invoke-virtual {v8, v2, v11, v13}, Landroidx/compose/runtime/GroupSourceInformation;->addGroupAfter(Landroidx/compose/runtime/SlotWriter;II)V

    .line 2435
    nop

    .end local v8    # "it":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v9    # "$i$a$-let-SlotWriter$Companion$moveGroup$2":I
    .end local v11    # "predecessor":I
    .end local v12    # "child":I
    .end local v13    # "endGroup":I
    goto :goto_8

    .line 2426
    .end local v27    # "toWriterParent":I
    .restart local v4    # "toWriterParent":I
    :cond_d
    move/from16 v27, v4

    .end local v4    # "toWriterParent":I
    .restart local v27    # "toWriterParent":I
    :goto_8
    nop

    .line 2436
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v4

    .line 2438
    .local v4, "parentGroup":I
    const/4 v8, 0x1

    if-nez p6, :cond_e

    .line 2441
    move/from16 v11, v21

    goto :goto_a

    .line 2442
    :cond_e
    if-eqz p4, :cond_12

    .line 2448
    if-ltz v4, :cond_f

    move v9, v8

    goto :goto_9

    :cond_f
    move/from16 v9, v21

    .line 2449
    .local v9, "needsStartGroups":Z
    :goto_9
    if-eqz v9, :cond_10

    .line 2453
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2454
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2455
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2457
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    sub-int v11, v1, v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2458
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    move-result v11

    .line 2459
    .local v11, "anchorsRemoved":Z
    if-eqz v9, :cond_11

    .line 2460
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2461
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2462
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2463
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2465
    :cond_11
    nop

    .end local v9    # "needsStartGroups":Z
    .end local v11    # "anchorsRemoved":Z
    goto :goto_a

    .line 2468
    :cond_12
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z

    move-result v11

    .line 2469
    .restart local v11    # "anchorsRemoved":Z
    add-int/lit8 v9, v1, -0x1

    invoke-static {v0, v5, v7, v9}, Landroidx/compose/runtime/SlotWriter;->access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V

    .line 2470
    nop

    .line 2438
    .end local v11    # "anchorsRemoved":Z
    :goto_a
    nop

    .line 2437
    nop

    .line 2474
    .restart local v11    # "anchorsRemoved":Z
    if-nez v11, :cond_13

    move v9, v8

    goto :goto_b

    :cond_13
    move/from16 v9, v21

    .local v9, "value$iv":Z
    :goto_b
    const/4 v12, 0x0

    .line 4128
    .local v12, "$i$f$runtimeCheck":I
    if-nez v9, :cond_14

    .line 4129
    const/4 v13, 0x0

    .line 2474
    .local v13, "$i$a$-runtimeCheck-SlotWriter$Companion$moveGroup$3":I
    nop

    .line 4129
    .end local v13    # "$i$a$-runtimeCheck-SlotWriter$Companion$moveGroup$3":I
    const-string v13, "Unexpectedly removed anchors"

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4131
    :cond_14
    nop

    .line 2477
    .end local v9    # "value$iv":Z
    .end local v12    # "$i$f$runtimeCheck":I
    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I

    move-result v9

    .line 2478
    move/from16 v12, v24

    .local v12, "address$iv":I
    move-object/from16 v13, v25

    .local v13, "$this$isNode$iv":[I
    const/16 v31, 0x0

    .line 4132
    .local v31, "$i$f$isNode":I
    mul-int/lit8 v32, v12, 0x5

    add-int/lit8 v32, v32, 0x1

    aget v32, v13, v32

    const/high16 v33, 0x40000000    # 2.0f

    and-int v32, v32, v33

    if-eqz v32, :cond_15

    move/from16 v21, v8

    .line 2478
    .end local v12    # "address$iv":I
    .end local v13    # "$this$isNode$iv":[I
    .end local v31    # "$i$f$isNode":I
    :cond_15
    if-eqz v21, :cond_16

    goto :goto_c

    :cond_16
    move/from16 v12, v24

    .restart local v12    # "address$iv":I
    move-object/from16 v13, v25

    .local v13, "$this$nodeCount$iv":[I
    const/16 v21, 0x0

    .line 4133
    .local v21, "$i$f$nodeCount":I
    mul-int/lit8 v31, v12, 0x5

    add-int/lit8 v31, v31, 0x1

    aget v8, v13, v31

    const v31, 0x3ffffff

    and-int v8, v8, v31

    .line 2477
    .end local v12    # "address$iv":I
    .end local v13    # "$this$nodeCount$iv":[I
    .end local v21    # "$i$f$nodeCount":I
    :goto_c
    add-int/2addr v9, v8

    invoke-static {v2, v9}, Landroidx/compose/runtime/SlotWriter;->access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2481
    if-eqz p5, :cond_17

    .line 2482
    add-int v8, v24, v3

    invoke-static {v2, v8}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2483
    add-int v12, v17, v7

    invoke-static {v2, v12}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2487
    :cond_17
    if-eqz v20, :cond_18

    .line 2488
    invoke-static {v2, v6}, Landroidx/compose/runtime/SlotWriter;->access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2491
    :cond_18
    return-object v30
.end method

.method static synthetic moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    .line 2296
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 2302
    const/4 p6, 0x1

    move v6, p6

    goto :goto_0

    .line 2296
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
