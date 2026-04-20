.class public final Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt;
.super Ljava/lang/Object;
.source "PopulateViewStructure.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPopulateViewStructure.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PopulateViewStructure.android.kt\nandroidx/compose/ui/autofill/PopulateViewStructure_androidKt\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,202:1\n357#2,4:203\n329#2,6:207\n339#2,3:214\n342#2,9:218\n361#2:227\n357#2,4:228\n329#2,6:232\n339#2,3:239\n342#2,9:243\n361#2:252\n1399#3:213\n1270#3:217\n1399#3:238\n1270#3:242\n1#4:253\n35#5,5:254\n*S KotlinDebug\n*F\n+ 1 PopulateViewStructure.android.kt\nandroidx/compose/ui/autofill/PopulateViewStructure_androidKt\n*L\n76#1:203,4\n76#1:207,6\n76#1:214,3\n76#1:218,9\n76#1:227\n101#1:228,4\n101#1:232,6\n101#1:239,3\n101#1:243,9\n101#1:252\n76#1:213\n76#1:217\n101#1:238\n101#1:242\n175#1:254,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "populate",
        "",
        "Landroid/view/ViewStructure;",
        "semanticsInfo",
        "Landroidx/compose/ui/semantics/SemanticsInfo;",
        "rootAutofillId",
        "Landroid/view/autofill/AutofillId;",
        "packageName",
        "",
        "rectManager",
        "Landroidx/compose/ui/spatial/RectManager;",
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final populate(Landroid/view/ViewStructure;Landroidx/compose/ui/semantics/SemanticsInfo;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V
    .locals 50
    .param p0, "$this$populate"    # Landroid/view/ViewStructure;
    .param p1, "semanticsInfo"    # Landroidx/compose/ui/semantics/SemanticsInfo;
    .param p2, "rootAutofillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "rectManager"    # Landroidx/compose/ui/spatial/RectManager;

    .line 50
    move-object/from16 v1, p0

    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    .line 51
    .local v0, "autofillApi":Landroidx/compose/ui/autofill/AutofillApi26Helper;
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 52
    .local v6, "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 55
    .local v7, "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    const/4 v2, 0x0

    .line 56
    .local v2, "contentDataTypeProp":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 57
    .local v3, "contentTypeProp":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 58
    .local v4, "editableTextProp":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 59
    .local v5, "isPasswordProp":Z
    const/4 v8, 0x0

    .line 64
    .local v8, "fillableDataProp":Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "isSensitiveDataProp":Z
    const/4 v9, 0x1

    .line 65
    const/4 v10, 0x0

    .line 66
    .local v10, "maxTextLengthProp":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 67
    .local v11, "roleProp":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 68
    .local v12, "selectedProp":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 71
    .local v13, "toggleableStateProp":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 74
    .local v14, "textMergedProp":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 76
    .local v15, "hasSetTextAction":Z
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v16

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const/16 v21, 0x7

    const/16 v22, 0x2

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v25, v2

    .end local v2    # "contentDataTypeProp":Ljava/lang/Object;
    .local v25, "contentDataTypeProp":Ljava/lang/Object;
    move-object/from16 v26, v4

    .end local v4    # "editableTextProp":Ljava/lang/Object;
    .local v26, "editableTextProp":Ljava/lang/Object;
    move/from16 v27, v5

    .end local v5    # "isPasswordProp":Z
    .local v27, "isPasswordProp":Z
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getProps$ui()Landroidx/collection/MutableScatterMap;

    move-result-object v16

    if-eqz v16, :cond_18

    move-object/from16 v4, v16

    check-cast v4, Landroidx/collection/ScatterMap;

    .local v4, "this_$iv":Landroidx/collection/ScatterMap;
    const/16 v16, 0x0

    .line 203
    .local v16, "$i$f$forEach":I
    const/16 v29, 0x8

    iget-object v2, v4, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 204
    .local v2, "k$iv":[Ljava/lang/Object;
    iget-object v5, v4, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 206
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object/from16 v31, v4

    .local v31, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/16 v32, 0x0

    .line 207
    .local v32, "$i$f$forEachIndexed":I
    move-object/from16 v33, v2

    move-object/from16 v2, v31

    move-object/from16 v31, v3

    .end local v3    # "contentTypeProp":Ljava/lang/Object;
    .local v2, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v31, "contentTypeProp":Ljava/lang/Object;
    .local v33, "k$iv":[Ljava/lang/Object;
    iget-object v3, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 208
    .local v3, "m$iv$iv":[J
    move-object/from16 v34, v2

    .end local v2    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v34, "this_$iv$iv":Landroidx/collection/ScatterMap;
    array-length v2, v3

    add-int/lit8 v2, v2, -0x2

    .line 210
    .local v2, "lastIndex$iv$iv":I
    move-object/from16 v35, v3

    .end local v3    # "m$iv$iv":[J
    .local v35, "m$iv$iv":[J
    const/4 v3, 0x0

    .local v3, "i$iv$iv":I
    if-gt v3, v2, :cond_16

    .line 211
    :goto_0
    aget-wide v36, v35, v3

    .line 212
    .local v36, "slot$iv$iv":J
    move-wide/from16 v38, v36

    .local v38, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v40, 0x0

    .line 213
    .local v40, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v41, v4

    move-object/from16 v42, v5

    move-wide/from16 v4, v38

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .end local v7    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v38, "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .local v39, "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .local v41, "this_$iv":Landroidx/collection/ScatterMap;
    .local v42, "v$iv":[Ljava/lang/Object;
    not-long v6, v4

    shl-long v6, v6, v21

    and-long/2addr v6, v4

    and-long v4, v6, v23

    .line 212
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v40    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v23

    if-eqz v4, :cond_15

    .line 214
    sub-int v4, v3, v2

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    .line 215
    .local v4, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_1
    if-ge v5, v4, :cond_13

    .line 216
    and-long v6, v36, v19

    .local v6, "value$iv$iv$iv":J
    const/16 v40, 0x0

    .line 217
    .local v40, "$i$f$isFull":I
    cmp-long v43, v6, v17

    if-gez v43, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    .line 216
    .end local v6    # "value$iv$iv$iv":J
    .end local v40    # "$i$f$isFull":I
    :goto_2
    if-eqz v6, :cond_12

    .line 218
    shl-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v5

    .line 219
    .local v6, "index$iv$iv":I
    move v7, v6

    .local v7, "index$iv":I
    const/16 v40, 0x0

    .line 206
    .local v40, "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    aget-object v43, v33, v7

    move/from16 v44, v5

    .end local v5    # "j$iv$iv":I
    .local v44, "j$iv$iv":I
    aget-object v5, v42, v7

    move/from16 v45, v6

    .end local v6    # "index$iv$iv":I
    .local v5, "value":Ljava/lang/Object;
    .local v45, "index$iv$iv":I
    move-object/from16 v6, v43

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .local v6, "property":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/16 v43, 0x0

    .line 78
    .local v43, "$i$a$-forEach-PopulateViewStructure_androidKt$populate$1":I
    nop

    .line 79
    move/from16 v46, v7

    .end local v7    # "index$iv":I
    .local v46, "index$iv":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.autofill.ContentDataType"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v5

    check-cast v25, Landroidx/compose/ui/autofill/ContentDataType;

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 80
    :cond_1
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    const-string/jumbo v7, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .local v7, "it":Ljava/lang/String;
    const/16 v47, 0x0

    .line 82
    .local v47, "$i$a$-let-PopulateViewStructure_androidKt$populate$1$1":I
    move-object/from16 v48, v7

    .end local v7    # "it":Ljava/lang/String;
    .local v48, "it":Ljava/lang/String;
    move-object/from16 v7, v48

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 83
    nop

    .line 81
    .end local v47    # "$i$a$-let-PopulateViewStructure_androidKt$populate$1$1":I
    .end local v48    # "it":Ljava/lang/String;
    nop

    :cond_2
    move-object/from16 v47, v8

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 84
    :cond_3
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentType()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.autofill.ContentType"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v5

    check-cast v31, Landroidx/compose/ui/autofill/ContentType;

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 85
    :cond_4
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFillableData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.autofill.AndroidFillableData"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/autofill/AndroidFillableData;

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 86
    :cond_5
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.text.AnnotatedString"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v5

    check-cast v26, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 87
    :cond_6
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    move/from16 v47, v7

    const-string/jumbo v7, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v47, :cond_7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setFocused(Landroid/view/ViewStructure;Z)V

    move-object/from16 v47, v8

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 88
    :cond_7
    move-object/from16 v47, v8

    .end local v8    # "fillableDataProp":Ljava/lang/Object;
    .local v47, "fillableDataProp":Ljava/lang/Object;
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getMaxTextLength()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v7, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v5

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v8, v47

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 89
    :cond_8
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v27, 0x1

    move-object/from16 v8, v47

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 90
    :cond_9
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsSensitiveData()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v8, v47

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 91
    :cond_a
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.semantics.Role"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/semantics/Role;

    move-object/from16 v8, v47

    const/4 v7, 0x1

    goto :goto_4

    .line 92
    :cond_b
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v5

    check-cast v12, Ljava/lang/Boolean;

    move-object/from16 v8, v47

    const/4 v7, 0x1

    goto :goto_4

    .line 93
    :cond_c
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "null cannot be cast to non-null type androidx.compose.ui.state.ToggleableState"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/state/ToggleableState;

    move-object/from16 v8, v47

    const/4 v7, 0x1

    goto :goto_4

    .line 94
    :cond_d
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClickable(Landroid/view/ViewStructure;Z)V

    goto :goto_3

    .line 95
    :cond_e
    const/4 v7, 0x1

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setLongClickable(Landroid/view/ViewStructure;Z)V

    goto :goto_3

    .line 96
    :cond_f
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/semantics/SemanticsActions;->getRequestFocus()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setFocusable(Landroid/view/ViewStructure;Z)V

    goto :goto_3

    .line 97
    :cond_10
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v15, 0x1

    move-object/from16 v8, v47

    goto :goto_4

    .line 99
    .end local v47    # "fillableDataProp":Ljava/lang/Object;
    .restart local v8    # "fillableDataProp":Ljava/lang/Object;
    :cond_11
    :goto_3
    move-object/from16 v8, v47

    :goto_4
    nop

    .line 206
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "property":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v43    # "$i$a$-forEach-PopulateViewStructure_androidKt$populate$1":I
    nop

    .line 219
    .end local v40    # "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    .end local v46    # "index$iv":I
    goto :goto_5

    .line 216
    .end local v44    # "j$iv$iv":I
    .end local v45    # "index$iv$iv":I
    .local v5, "j$iv$iv":I
    :cond_12
    move/from16 v44, v5

    move-object/from16 v47, v8

    const/4 v7, 0x1

    .line 221
    .end local v5    # "j$iv$iv":I
    .restart local v44    # "j$iv$iv":I
    :goto_5
    shr-long v36, v36, v29

    .line 215
    add-int/lit8 v5, v44, 0x1

    .end local v44    # "j$iv$iv":I
    .restart local v5    # "j$iv$iv":I
    goto/16 :goto_1

    :cond_13
    move/from16 v44, v5

    move-object/from16 v47, v8

    const/4 v7, 0x1

    .line 223
    .end local v5    # "j$iv$iv":I
    .end local v8    # "fillableDataProp":Ljava/lang/Object;
    .restart local v47    # "fillableDataProp":Ljava/lang/Object;
    move/from16 v5, v29

    if-ne v4, v5, :cond_14

    move-object/from16 v8, v47

    goto :goto_6

    :cond_14
    move-object/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v3, v31

    move-object/from16 v8, v47

    move-object/from16 v2, v25

    goto :goto_7

    .line 212
    .end local v4    # "bitCount$iv$iv":I
    .end local v47    # "fillableDataProp":Ljava/lang/Object;
    .restart local v8    # "fillableDataProp":Ljava/lang/Object;
    :cond_15
    const/4 v7, 0x1

    .line 210
    .end local v36    # "slot$iv$iv":J
    :goto_6
    if-eq v3, v2, :cond_17

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    const/16 v29, 0x8

    goto/16 :goto_0

    .end local v38    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .end local v39    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .end local v41    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "v$iv":[Ljava/lang/Object;
    .local v4, "this_$iv":Landroidx/collection/ScatterMap;
    .local v5, "v$iv":[Ljava/lang/Object;
    .local v6, "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .local v7, "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    :cond_16
    move-object/from16 v41, v4

    move-object/from16 v42, v5

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    const/4 v7, 0x1

    .end local v4    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .end local v7    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .restart local v38    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .restart local v39    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .restart local v41    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v42    # "v$iv":[Ljava/lang/Object;
    :cond_17
    move-object/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v3, v31

    .line 226
    .end local v26    # "editableTextProp":Ljava/lang/Object;
    .end local v27    # "isPasswordProp":Z
    .end local v31    # "contentTypeProp":Ljava/lang/Object;
    .local v3, "contentTypeProp":Ljava/lang/Object;
    .local v4, "editableTextProp":Ljava/lang/Object;
    .local v5, "isPasswordProp":Z
    move-object/from16 v2, v25

    .line 227
    .end local v25    # "contentDataTypeProp":Ljava/lang/Object;
    .end local v32    # "$i$f$forEachIndexed":I
    .end local v34    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v35    # "m$iv$iv":[J
    .local v2, "contentDataTypeProp":Ljava/lang/Object;
    :goto_7
    move-object/from16 v25, v2

    move-object/from16 v31, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    .end local v16    # "$i$f$forEach":I
    .end local v33    # "k$iv":[Ljava/lang/Object;
    .end local v41    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "v$iv":[Ljava/lang/Object;
    goto :goto_8

    .line 76
    .end local v2    # "contentDataTypeProp":Ljava/lang/Object;
    .end local v4    # "editableTextProp":Ljava/lang/Object;
    .end local v5    # "isPasswordProp":Z
    .end local v38    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .end local v39    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .restart local v6    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .restart local v7    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .restart local v25    # "contentDataTypeProp":Ljava/lang/Object;
    .restart local v26    # "editableTextProp":Ljava/lang/Object;
    .restart local v27    # "isPasswordProp":Z
    :cond_18
    move-object/from16 v31, v3

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    const/4 v7, 0x1

    .line 101
    .end local v3    # "contentTypeProp":Ljava/lang/Object;
    .end local v6    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .end local v7    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    .restart local v31    # "contentTypeProp":Ljava/lang/Object;
    .restart local v38    # "properties":Landroidx/compose/ui/semantics/SemanticsProperties;
    .restart local v39    # "actions":Landroidx/compose/ui/semantics/SemanticsActions;
    :goto_8
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfoKt;->mergedSemanticsConfiguration(Landroidx/compose/ui/semantics/SemanticsInfo;)Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getProps$ui()Landroidx/collection/MutableScatterMap;

    move-result-object v2

    if-eqz v2, :cond_22

    check-cast v2, Landroidx/collection/ScatterMap;

    .local v2, "this_$iv":Landroidx/collection/ScatterMap;
    const/4 v3, 0x0

    .line 228
    .local v3, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 229
    .local v4, "k$iv":[Ljava/lang/Object;
    iget-object v5, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 231
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/16 v16, 0x0

    .line 232
    .local v16, "$i$f$forEachIndexed":I
    iget-object v7, v6, Landroidx/collection/ScatterMap;->metadata:[J

    .line 233
    .local v7, "m$iv$iv":[J
    move-object/from16 v32, v2

    .end local v2    # "this_$iv":Landroidx/collection/ScatterMap;
    .local v32, "this_$iv":Landroidx/collection/ScatterMap;
    array-length v2, v7

    add-int/lit8 v2, v2, -0x2

    .line 235
    .local v2, "lastIndex$iv$iv":I
    move/from16 v33, v3

    .end local v3    # "$i$f$forEach":I
    .local v33, "$i$f$forEach":I
    const/4 v3, 0x0

    .local v3, "i$iv$iv":I
    if-gt v3, v2, :cond_1f

    .line 236
    :goto_9
    aget-wide v34, v7, v3

    .line 237
    .local v34, "slot$iv$iv":J
    move-wide/from16 v36, v34

    .local v36, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v40, 0x0

    .line 238
    .local v40, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v41, v4

    move-object/from16 v42, v5

    move-wide/from16 v4, v36

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v7    # "m$iv$iv":[J
    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v36, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v37, "m$iv$iv":[J
    .local v41, "k$iv":[Ljava/lang/Object;
    .restart local v42    # "v$iv":[Ljava/lang/Object;
    not-long v6, v4

    shl-long v6, v6, v21

    and-long/2addr v6, v4

    and-long v4, v6, v23

    .line 237
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v40    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v23

    if-eqz v4, :cond_1e

    .line 239
    sub-int v4, v3, v2

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v29, 0x8

    rsub-int/lit8 v4, v4, 0x8

    .line 240
    .local v4, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_a
    if-ge v5, v4, :cond_1d

    .line 241
    and-long v6, v34, v19

    .local v6, "value$iv$iv$iv":J
    const/16 v40, 0x0

    .line 242
    .local v40, "$i$f$isFull":I
    cmp-long v43, v6, v17

    if-gez v43, :cond_19

    const/4 v6, 0x1

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    .line 241
    .end local v6    # "value$iv$iv$iv":J
    .end local v40    # "$i$f$isFull":I
    :goto_b
    if-eqz v6, :cond_1c

    .line 243
    shl-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v5

    .line 244
    .local v6, "index$iv$iv":I
    move v7, v6

    .local v7, "index$iv":I
    const/16 v40, 0x0

    .line 231
    .local v40, "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    aget-object v43, v41, v7

    move/from16 v44, v5

    .end local v5    # "j$iv$iv":I
    .restart local v44    # "j$iv$iv":I
    aget-object v5, v42, v7

    move/from16 v45, v6

    .end local v6    # "index$iv$iv":I
    .local v5, "value":Ljava/lang/Object;
    .restart local v45    # "index$iv$iv":I
    move-object/from16 v6, v43

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .local v6, "property":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    const/16 v43, 0x0

    .line 103
    .local v43, "$i$a$-forEach-PopulateViewStructure_androidKt$populate$2":I
    nop

    .line 104
    move/from16 v46, v7

    .end local v7    # "index$iv":I
    .restart local v46    # "index$iv":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getDisabled()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setEnabled(Landroid/view/ViewStructure;Z)V

    goto :goto_c

    .line 105
    :cond_1a
    const/4 v7, 0x0

    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string/jumbo v7, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString>"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v5

    check-cast v14, Ljava/util/List;

    .line 107
    :cond_1b
    :goto_c
    nop

    .line 231
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "property":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .end local v43    # "$i$a$-forEach-PopulateViewStructure_androidKt$populate$2":I
    nop

    .line 244
    .end local v40    # "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    .end local v46    # "index$iv":I
    goto :goto_d

    .line 241
    .end local v44    # "j$iv$iv":I
    .end local v45    # "index$iv$iv":I
    .local v5, "j$iv$iv":I
    :cond_1c
    move/from16 v44, v5

    .line 246
    .end local v5    # "j$iv$iv":I
    .restart local v44    # "j$iv$iv":I
    :goto_d
    const/16 v5, 0x8

    shr-long v34, v34, v5

    .line 240
    add-int/lit8 v6, v44, 0x1

    move v5, v6

    .end local v44    # "j$iv$iv":I
    .local v6, "j$iv$iv":I
    goto :goto_a

    .end local v6    # "j$iv$iv":I
    .restart local v5    # "j$iv$iv":I
    :cond_1d
    move/from16 v44, v5

    const/16 v5, 0x8

    .line 248
    .end local v5    # "j$iv$iv":I
    if-ne v4, v5, :cond_21

    goto :goto_e

    .line 237
    .end local v4    # "bitCount$iv$iv":I
    :cond_1e
    const/16 v5, 0x8

    .line 235
    .end local v34    # "slot$iv$iv":J
    :goto_e
    if-eq v3, v2, :cond_20

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v36

    move-object/from16 v7, v37

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    goto/16 :goto_9

    .end local v36    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "m$iv$iv":[J
    .end local v41    # "k$iv":[Ljava/lang/Object;
    .end local v42    # "v$iv":[Ljava/lang/Object;
    .local v4, "k$iv":[Ljava/lang/Object;
    .local v5, "v$iv":[Ljava/lang/Object;
    .local v6, "this_$iv$iv":Landroidx/collection/ScatterMap;
    .local v7, "m$iv$iv":[J
    :cond_1f
    move-object/from16 v41, v4

    move-object/from16 v42, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    .line 251
    .end local v3    # "i$iv$iv":I
    .end local v4    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v7    # "m$iv$iv":[J
    .restart local v36    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v37    # "m$iv$iv":[J
    .restart local v41    # "k$iv":[Ljava/lang/Object;
    .restart local v42    # "v$iv":[Ljava/lang/Object;
    :cond_20
    nop

    .line 252
    .end local v2    # "lastIndex$iv$iv":I
    .end local v16    # "$i$f$forEachIndexed":I
    .end local v36    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "m$iv$iv":[J
    :cond_21
    nop

    .line 111
    .end local v32    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v33    # "$i$f$forEach":I
    .end local v41    # "k$iv":[Ljava/lang/Object;
    .end local v42    # "v$iv":[Ljava/lang/Object;
    :cond_22
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 253
    .local v3, "it":I
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-takeUnless-PopulateViewStructure_androidKt$populate$semanticsId$1":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getParentInfo()Landroidx/compose/ui/semantics/SemanticsInfo;

    move-result-object v5

    if-nez v5, :cond_23

    const/4 v3, 0x1

    goto :goto_f

    :cond_23
    const/4 v3, 0x0

    .end local v3    # "it":I
    .end local v4    # "$i$a$-takeUnless-PopulateViewStructure_androidKt$populate$semanticsId$1":I
    :goto_f
    const/4 v6, 0x0

    if-nez v3, :cond_24

    goto :goto_10

    :cond_24
    move-object v2, v6

    :goto_10
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_11

    .line 112
    :cond_25
    const/4 v2, -0x1

    .line 111
    :goto_11
    nop

    .line 110
    nop

    .line 113
    .local v2, "semanticsId":I
    move-object/from16 v7, p2

    invoke-virtual {v0, v1, v7, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillId(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 114
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p3

    const/16 v28, 0x0

    const/16 v30, 0x1

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setId(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz v25, :cond_26

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/autofill/ContentDataType_androidKt;->getDataType(Landroidx/compose/ui/autofill/ContentDataType;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_12

    .line 119
    :cond_26
    nop

    .line 120
    if-eqz v15, :cond_27

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_12

    .line 121
    :cond_27
    if-eqz v13, :cond_28

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_12

    .line 122
    :cond_28
    nop

    .line 118
    :goto_12
    nop

    .line 117
    nop

    .line 124
    .local v6, "autofillType":Ljava/lang/Integer;
    if-eqz v6, :cond_29

    move-object v3, v6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 253
    .restart local v3    # "it":I
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$a$-let-PopulateViewStructure_androidKt$populate$3":I
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillType(Landroid/view/ViewStructure;I)V

    .line 127
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-PopulateViewStructure_androidKt$populate$3":I
    :cond_29
    if-eqz v26, :cond_2a

    move-object/from16 v3, v26

    .local v3, "textProp":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$a$-let-PopulateViewStructure_androidKt$populate$4":I
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 129
    nop

    .line 127
    .end local v3    # "textProp":Landroidx/compose/ui/text/AnnotatedString;
    .end local v4    # "$i$a$-let-PopulateViewStructure_androidKt$populate$4":I
    nop

    .line 130
    :cond_2a
    if-eqz v8, :cond_2b

    move-object v3, v8

    .local v3, "fillableData":Landroidx/compose/ui/autofill/AndroidFillableData;
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$a$-let-PopulateViewStructure_androidKt$populate$5":I
    invoke-virtual {v3}, Landroidx/compose/ui/autofill/AndroidFillableData;->getAutofillValue$ui()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 253
    .local v5, "it":Landroid/view/autofill/AutofillValue;
    const/16 v16, 0x0

    .line 131
    .local v16, "$i$a$-let-PopulateViewStructure_androidKt$populate$5$1":I
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 132
    .end local v5    # "it":Landroid/view/autofill/AutofillValue;
    .end local v16    # "$i$a$-let-PopulateViewStructure_androidKt$populate$5$1":I
    nop

    .line 130
    .end local v3    # "fillableData":Landroidx/compose/ui/autofill/AndroidFillableData;
    .end local v4    # "$i$a$-let-PopulateViewStructure_androidKt$populate$5":I
    nop

    .line 135
    :cond_2b
    if-eqz v31, :cond_2c

    invoke-static/range {v31 .. v31}, Landroidx/compose/ui/autofill/ContentType_androidKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 253
    .local v3, "it":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 135
    .local v4, "$i$a$-let-PopulateViewStructure_androidKt$populate$6":I
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillHints(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    .line 138
    .end local v3    # "it":[Ljava/lang/String;
    .end local v4    # "$i$a$-let-PopulateViewStructure_androidKt$populate$6":I
    :cond_2c
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/spatial/RectManager;->getRects()Landroidx/compose/ui/spatial/RectList;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getSemanticsId()I

    move-result v4

    new-instance v5, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$7;

    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$7;-><init>(Landroidx/compose/ui/autofill/AutofillApi26Helper;Landroid/view/ViewStructure;)V

    check-cast v5, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/spatial/RectList;->withRect(ILkotlin/jvm/functions/Function4;)Z

    .line 143
    if-eqz v12, :cond_2d

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 253
    .local v3, "it":Z
    const/4 v4, 0x0

    .line 143
    .local v4, "$i$a$-let-PopulateViewStructure_androidKt$populate$8":I
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setSelected(Landroid/view/ViewStructure;Z)V

    .line 146
    .end local v3    # "it":Z
    .end local v4    # "$i$a$-let-PopulateViewStructure_androidKt$populate$8":I
    :cond_2d
    move-object v3, v13

    .line 147
    .local v3, "toggleableState":Landroidx/compose/ui/state/ToggleableState;
    move-object v4, v12

    .line 148
    .local v4, "selected":Ljava/lang/Boolean;
    if-eqz v3, :cond_2f

    .line 149
    move/from16 v5, v30

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setCheckable(Landroid/view/ViewStructure;Z)V

    .line 150
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v3, v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_13

    :cond_2e
    move/from16 v5, v28

    :goto_13
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setChecked(Landroid/view/ViewStructure;Z)V

    move/from16 v16, v2

    goto :goto_15

    .line 151
    :cond_2f
    if-eqz v4, :cond_31

    sget-object v5, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v5

    move/from16 v16, v2

    if-nez v11, :cond_30

    move/from16 v2, v28

    goto :goto_14

    .end local v2    # "semanticsId":I
    .local v16, "semanticsId":I
    :cond_30
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v2

    invoke-static {v2, v5}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v2

    :goto_14
    if-nez v2, :cond_32

    .line 152
    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setCheckable(Landroid/view/ViewStructure;Z)V

    .line 153
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setChecked(Landroid/view/ViewStructure;Z)V

    goto :goto_15

    .line 151
    .end local v16    # "semanticsId":I
    .restart local v2    # "semanticsId":I
    :cond_31
    move/from16 v16, v2

    .line 157
    .end local v2    # "semanticsId":I
    .restart local v16    # "semanticsId":I
    :cond_32
    :goto_15
    sget-object v2, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/autofill/ContentType$Companion;->getPassword()Landroidx/compose/ui/autofill/ContentType;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/autofill/ContentType_androidKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "passwordHint":Ljava/lang/String;
    if-eqz v31, :cond_33

    invoke-static/range {v31 .. v31}, Landroidx/compose/ui/autofill/ContentType_androidKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-static {v5, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "passwordHint":Ljava/lang/String;
    .local v17, "passwordHint":Ljava/lang/String;
    if-ne v5, v2, :cond_34

    move v5, v2

    goto :goto_16

    .end local v17    # "passwordHint":Ljava/lang/String;
    .restart local v2    # "passwordHint":Ljava/lang/String;
    :cond_33
    move-object/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "passwordHint":Ljava/lang/String;
    .restart local v17    # "passwordHint":Ljava/lang/String;
    :cond_34
    move/from16 v5, v28

    .line 159
    .local v5, "contentTypePassword":Z
    :goto_16
    if-nez v27, :cond_36

    if-eqz v5, :cond_35

    goto :goto_17

    :cond_35
    move/from16 v18, v28

    goto :goto_18

    :cond_36
    :goto_17
    move/from16 v18, v2

    .line 160
    .local v18, "isPassword":Z
    :goto_18
    if-nez v18, :cond_38

    if-eqz v9, :cond_37

    goto :goto_19

    :cond_37
    move/from16 v2, v28

    .line 161
    .local v2, "isSensitive":Z
    :cond_38
    :goto_19
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setDataIsSensitive(Landroid/view/ViewStructure;Z)V

    .line 166
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->isTransparent()Z

    move-result v19

    if-eqz v19, :cond_39

    const/16 v19, 0x4

    move/from16 v49, v19

    move/from16 v19, v2

    move/from16 v2, v49

    goto :goto_1a

    :cond_39
    move/from16 v19, v2

    move/from16 v2, v28

    .end local v2    # "isSensitive":Z
    .local v19, "isSensitive":Z
    :goto_1a
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setVisibility(Landroid/view/ViewStructure;I)V

    .line 173
    if-eqz v14, :cond_3b

    move-object v2, v14

    .local v2, "it":Ljava/util/List;
    const/16 v20, 0x0

    .line 174
    .local v20, "$i$a$-let-PopulateViewStructure_androidKt$populate$9":I
    const/16 v21, 0x0

    .local v21, "concatenatedText":Ljava/lang/Object;
    const-string v21, ""

    .line 175
    move-object/from16 v22, v2

    .local v22, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 254
    .local v23, "$i$f$fastForEach":I
    const/16 v24, 0x0

    .local v24, "index$iv":I
    move-object/from16 v28, v22

    check-cast v28, Ljava/util/Collection;

    move-object/from16 v29, v2

    .end local v2    # "it":Ljava/util/List;
    .local v29, "it":Ljava/util/List;
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v2

    move-object/from16 v28, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v4

    move/from16 v4, v24

    .end local v24    # "index$iv":I
    .local v3, "concatenatedText":Ljava/lang/Object;
    .local v4, "index$iv":I
    .local v21, "selected":Ljava/lang/Boolean;
    .local v28, "toggleableState":Landroidx/compose/ui/state/ToggleableState;
    :goto_1b
    if-ge v4, v2, :cond_3a

    .line 255
    move/from16 v24, v2

    move-object/from16 v2, v22

    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 256
    .local v22, "item$iv":Ljava/lang/Object;
    move-object/from16 v30, v22

    check-cast v30, Landroidx/compose/ui/text/AnnotatedString;

    .local v30, "text":Landroidx/compose/ui/text/AnnotatedString;
    const/16 v32, 0x0

    .line 175
    .local v32, "$i$a$-fastForEach-PopulateViewStructure_androidKt$populate$9$1":I
    move-object/from16 v33, v2

    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .local v33, "$this$fastForEach$iv":Ljava/util/List;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v34, v3

    .end local v3    # "concatenatedText":Ljava/lang/Object;
    .local v34, "concatenatedText":Ljava/lang/Object;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .end local v30    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v32    # "$i$a$-fastForEach-PopulateViewStructure_androidKt$populate$9$1":I
    .end local v34    # "concatenatedText":Ljava/lang/Object;
    .restart local v3    # "concatenatedText":Ljava/lang/Object;
    nop

    .line 254
    .end local v22    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v24

    move-object/from16 v22, v33

    goto :goto_1b

    .end local v33    # "$this$fastForEach$iv":Ljava/util/List;
    .local v22, "$this$fastForEach$iv":Ljava/util/List;
    :cond_3a
    move-object/from16 v34, v3

    move-object/from16 v33, v22

    .line 258
    .end local v3    # "concatenatedText":Ljava/lang/Object;
    .end local v4    # "index$iv":I
    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v33    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v34    # "concatenatedText":Ljava/lang/Object;
    nop

    .line 176
    .end local v23    # "$i$f$fastForEach":I
    .end local v33    # "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v2, v34

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 177
    const-string v2, "android.widget.TextView"

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 178
    nop

    .end local v20    # "$i$a$-let-PopulateViewStructure_androidKt$populate$9":I
    .end local v29    # "it":Ljava/util/List;
    .end local v34    # "concatenatedText":Ljava/lang/Object;
    goto :goto_1c

    .line 173
    .end local v21    # "selected":Ljava/lang/Boolean;
    .end local v28    # "toggleableState":Landroidx/compose/ui/state/ToggleableState;
    .local v3, "toggleableState":Landroidx/compose/ui/state/ToggleableState;
    .local v4, "selected":Ljava/lang/Boolean;
    :cond_3b
    move-object/from16 v28, v3

    move-object/from16 v21, v4

    .end local v3    # "toggleableState":Landroidx/compose/ui/state/ToggleableState;
    .end local v4    # "selected":Ljava/lang/Boolean;
    .restart local v21    # "selected":Ljava/lang/Boolean;
    .restart local v28    # "toggleableState":Landroidx/compose/ui/state/ToggleableState;
    :goto_1c
    nop

    .line 181
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsInfo;->getChildrenInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 182
    if-eqz v11, :cond_3c

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 253
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 182
    .local v3, "$i$a$-let-PopulateViewStructure_androidKt$populate$10":I
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 186
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-PopulateViewStructure_androidKt$populate$10":I
    :cond_3c
    if-eqz v15, :cond_3e

    .line 187
    const-string v2, "android.widget.EditText"

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3d

    .line 190
    if-eqz v10, :cond_3d

    move-object v2, v10

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 253
    .local v2, "it":I
    const/4 v3, 0x0

    .line 190
    .local v3, "$i$a$-let-PopulateViewStructure_androidKt$populate$11":I
    sget-object v4, Landroidx/compose/ui/autofill/AutofillApi28Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi28Helper;

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi28Helper;->setMaxTextLength(Landroid/view/ViewStructure;I)V

    .line 194
    .end local v2    # "it":I
    .end local v3    # "$i$a$-let-PopulateViewStructure_androidKt$populate$11":I
    :cond_3d
    if-eqz v18, :cond_3e

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 195
    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setInputType(Landroid/view/ViewStructure;I)V

    .line 201
    :cond_3e
    return-void
.end method
