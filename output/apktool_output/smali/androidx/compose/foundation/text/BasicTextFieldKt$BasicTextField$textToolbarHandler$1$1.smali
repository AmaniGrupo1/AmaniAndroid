.class public final Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;
.super Ljava/lang/Object;
.source "BasicTextField.kt"

# interfaces
.implements Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTextField.kt\nandroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1\n+ 2 TextFieldSelectionState.kt\nandroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionStateKt\n*L\n1#1,1011:1\n1880#2,7:1012\n1880#2,7:1019\n1880#2,7:1026\n1880#2,7:1033\n1880#2,7:1040\n*S KotlinDebug\n*F\n+ 1 BasicTextField.kt\nandroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1\n*L\n337#1:1012,7\n343#1:1019,7\n349#1:1026,7\n355#1:1033,7\n359#1:1040,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "androidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1",
        "Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;",
        "showTextToolbar",
        "",
        "selectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hideTextToolbar",
        "foundation"
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $currentTextToolbar:Landroidx/compose/ui/platform/TextToolbar;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/TextToolbar;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .param p1, "$currentTextToolbar"    # Landroidx/compose/ui/platform/TextToolbar;
    .param p2, "$coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;->$currentTextToolbar:Landroidx/compose/ui/platform/TextToolbar;

    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideTextToolbar()V
    .locals 2

    .line 366
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;->$currentTextToolbar:Landroidx/compose/ui/platform/TextToolbar;

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;->$currentTextToolbar:Landroidx/compose/ui/platform/TextToolbar;

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    .line 369
    :cond_0
    return-void
.end method

.method public showTextToolbar(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;

    iget v2, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;-><init>(Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 328
    iget v5, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x0

    .local v4, "$i$a$-with-BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2":I
    iget-object v5, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$3:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    .local v5, "$this$showTextToolbar_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v6, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/platform/TextToolbar;

    iget-object v8, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    .local v8, "rect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v4    # "$i$a$-with-BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2":I
    .end local v5    # "$this$showTextToolbar_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v8    # "rect":Landroidx/compose/ui/geometry/Rect;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;
    move-object/from16 v8, p2

    .restart local v8    # "rect":Landroidx/compose/ui/geometry/Rect;
    move-object/from16 v6, p1

    .line 332
    .local v6, "selectionState":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    iget-object v7, v5, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;->$currentTextToolbar:Landroidx/compose/ui/platform/TextToolbar;

    iget-object v9, v5, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .end local v5    # "this":Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1;
    move-object v5, v6

    .local v5, "$this$showTextToolbar_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v10, 0x0

    .line 333
    .local v10, "$i$a$-with-BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2":I
    iput-object v8, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->L$3:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;->label:I

    invoke-virtual {v6, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->updateClipboardEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "selectionState":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    if-ne v6, v4, :cond_1

    .line 328
    return-object v4

    .line 333
    :cond_1
    move-object v6, v9

    move v4, v10

    .line 334
    .end local v10    # "$i$a$-with-BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2":I
    .restart local v4    # "$i$a$-with-BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2":I
    :goto_1
    nop

    .line 335
    nop

    .line 337
    .end local v8    # "rect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->canShowCopyMenuItem()Z

    move-result v9

    .local v9, "enabled$iv":Z
    sget-object v10, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .local v10, "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    move-object v11, v5

    .local v11, "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v12, 0x0

    .line 1012
    .local v12, "$i$f$menuItem":I
    const/4 v13, 0x0

    if-nez v9, :cond_2

    move-object v9, v13

    goto :goto_2

    .line 1014
    .end local v9    # "enabled$iv":Z
    :cond_2
    new-instance v9, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$1;

    invoke-direct {v9, v11, v10, v6, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1018
    .end local v10    # "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .end local v11    # "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_2
    nop

    .line 343
    .end local v12    # "$i$f$menuItem":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->canShowPasteMenuItem()Z

    move-result v10

    .local v10, "enabled$iv":Z
    sget-object v11, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .local v11, "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    move-object v12, v5

    .local v12, "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v14, 0x0

    .line 1019
    .local v14, "$i$f$menuItem":I
    if-nez v10, :cond_3

    move-object v10, v13

    goto :goto_3

    .line 1021
    .end local v10    # "enabled$iv":Z
    :cond_3
    new-instance v10, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$2;

    invoke-direct {v10, v12, v11, v6, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$2;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 1025
    .end local v11    # "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .end local v12    # "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_3
    nop

    .line 349
    .end local v14    # "$i$f$menuItem":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->canShowCutMenuItem()Z

    move-result v11

    .local v11, "enabled$iv":Z
    sget-object v12, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .local v12, "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    move-object v14, v5

    .local v14, "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v15, 0x0

    .line 1026
    .local v15, "$i$f$menuItem":I
    if-nez v11, :cond_4

    move-object v11, v13

    goto :goto_4

    .line 1028
    .end local v11    # "enabled$iv":Z
    :cond_4
    new-instance v11, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$3;

    invoke-direct {v11, v14, v12, v6, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$3;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 1032
    .end local v12    # "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .end local v14    # "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_4
    nop

    .line 355
    .end local v15    # "$i$f$menuItem":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->canShowSelectAllMenuItem()Z

    move-result v6

    .local v6, "enabled$iv":Z
    sget-object v12, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->Selection:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .restart local v12    # "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    move-object v14, v5

    .restart local v14    # "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/4 v15, 0x0

    .line 1033
    .restart local v15    # "$i$f$menuItem":I
    if-nez v6, :cond_5

    move-object v12, v13

    goto :goto_5

    .line 1035
    .end local v6    # "enabled$iv":Z
    :cond_5
    new-instance v6, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$4;

    invoke-direct {v6, v14, v12, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$4;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v12, v6

    .line 1039
    .end local v12    # "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .end local v14    # "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_5
    nop

    .line 359
    .end local v15    # "$i$f$menuItem":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->canShowAutofillMenuItem()Z

    move-result v6

    .restart local v6    # "enabled$iv":Z
    sget-object v14, Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;

    .local v14, "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    move-object v15, v5

    .local v15, "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    const/16 v16, 0x0

    .line 1040
    .local v16, "$i$f$menuItem":I
    if-nez v6, :cond_6

    goto :goto_6

    .line 1042
    .end local v6    # "enabled$iv":Z
    :cond_6
    new-instance v6, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$5;

    invoke-direct {v6, v15, v14, v5}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$5;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 1046
    .end local v5    # "$this$showTextToolbar_u24lambda_u240":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    .end local v14    # "desiredState$iv":Landroidx/compose/foundation/text/input/internal/selection/TextToolbarState;
    .end local v15    # "$this$menuItem$iv":Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;
    :goto_6
    nop

    .line 334
    .end local v16    # "$i$f$menuItem":I
    nop

    .restart local v8    # "rect":Landroidx/compose/ui/geometry/Rect;
    invoke-interface/range {v7 .. v13}, Landroidx/compose/ui/platform/TextToolbar;->showMenu(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 363
    .end local v8    # "rect":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 332
    .end local v4    # "$i$a$-with-BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 363
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
