.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;
.super Ljava/lang/Object;
.source "ChatListScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatListScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 9 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 10 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,211:1\n75#2:212\n1128#3,6:213\n1128#3,6:226\n1128#3,6:301\n122#4:219\n122#4:220\n122#4:232\n122#4:265\n122#4:266\n122#4:267\n122#4:268\n122#4:300\n122#4:315\n122#4:348\n122#4:384\n122#4:417\n85#5:221\n85#5:222\n85#5:223\n85#5:224\n85#5:225\n70#6:233\n67#6,9:234\n77#6:314\n70#6:349\n68#6,8:350\n77#6:383\n81#7,6:243\n88#7,6:258\n81#7,6:278\n88#7,6:293\n96#7:309\n96#7:313\n81#7,6:326\n88#7,6:341\n81#7,6:358\n88#7,6:373\n96#7:382\n81#7,6:395\n88#7,6:410\n96#7:420\n96#7:424\n391#8,9:249\n400#8:264\n391#8,9:284\n400#8:299\n401#8,2:307\n401#8,2:311\n391#8,9:332\n400#8:347\n391#8,9:364\n400#8,3:379\n391#8,9:401\n400#8:416\n401#8,2:418\n401#8,2:422\n87#9:269\n85#9,8:270\n94#9:310\n87#9:385\n84#9,9:386\n94#9:421\n99#10:316\n96#10,9:317\n106#10:425\n*S KotlinDebug\n*F\n+ 1 ChatListScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt\n*L\n55#1:212\n160#1:213,6\n69#1:226,6\n134#1:301,6\n161#1:219\n165#1:220\n112#1:232\n98#1:265\n101#1:266\n120#1:267\n121#1:268\n128#1:300\n170#1:315\n175#1:348\n187#1:384\n198#1:417\n56#1:221\n57#1:222\n59#1:223\n60#1:224\n61#1:225\n83#1:233\n83#1:234,9\n83#1:314\n173#1:349\n173#1:350,8\n173#1:383\n83#1:243,6\n83#1:258,6\n117#1:278,6\n117#1:293,6\n117#1:309\n83#1:313\n167#1:326,6\n167#1:341,6\n173#1:358,6\n173#1:373,6\n173#1:382\n189#1:395,6\n189#1:410,6\n189#1:420\n167#1:424\n83#1:249,9\n83#1:264\n117#1:284,9\n117#1:299\n117#1:307,2\n83#1:311,2\n167#1:332,9\n167#1:347\n173#1:364,9\n173#1:379,3\n189#1:401,9\n189#1:416\n189#1:418,2\n167#1:422,2\n117#1:269\n117#1:270,8\n117#1:310\n189#1:385\n189#1:386,9\n189#1:421\n167#1:316\n167#1:317,9\n167#1:425\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a+\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000cH\u0003\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e\u00b2\u0006\u000c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u008a\u0084\u0002\u00b2\u0006\n\u0010\n\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0011\u001a\u0004\u0018\u00010\u0010X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0012\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002"
    }
    d2 = {
        "ChatListScreen",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "viewModel",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;",
        "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Landroidx/compose/runtime/Composer;I)V",
        "ChatPartnerCard",
        "partnerName",
        "",
        "currentUserRol",
        "onClick",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "app",
        "currentUserId",
        "",
        "partnerId",
        "partnerNombre",
        "isLoading",
        ""
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ChatListScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 29
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "viewModel"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    const-string v0, "navController"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const v0, -0x5a5ad091

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ChatListScreen)N(navController,viewModel)52@2372L11,53@2419L10,54@2469L7,55@2526L16,56@2594L16,58@2746L16,59@2812L16,60@2870L16,64@2974L628,81@3609L2828,62@2892L3545:ChatListScreen.kt#5xjsc0"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_1

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_3

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    move v13, v1

    .end local v1    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit8 v1, v13, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-eq v1, v2, :cond_4

    move v1, v14

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    and-int/lit8 v2, v13, 0x1

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    const-string v2, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen (ChatListScreen.kt:51)"

    invoke-static {v0, v13, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 53
    :cond_5
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v12, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    .line 54
    .local v1, "colors":Landroidx/compose/material3/ColorScheme;
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v12, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v6

    .line 55
    .local v6, "typography":Landroidx/compose/material3/Typography;
    invoke-static {}, Lorg/ies/tierno/applicationamani/ui/theme/ThemeKt;->getLocalAmaniColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_\\1":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x6

    .local v2, "$changed\\1":I
    move-object v4, v12

    .local v4, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 212
    .local v5, "$i$f$getCurrent\\1\\55":I
    const v8, 0x789c5f52

    const-string v9, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 55
    .end local v0    # "this_\\1":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed\\1":I
    .end local v4    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$getCurrent\\1\\55":I
    move-object/from16 v27, v8

    check-cast v27, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;

    .line 56
    .local v27, "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->getCurrentUserId()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v12, v3, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 57
    .local v0, "currentUserId$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->getCurrentUserRol()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v2, v12, v3, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    .line 58
    .local v9, "currentUserRol$delegate":Landroidx/compose/runtime/State;
    invoke-static {v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toLowerCase(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "\u00f3"

    const-string v17, "o"

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v25, 0x4

    const/16 v26, 0x0

    const-string v22, "\u00e1"

    const-string v23, "a"

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "normalizedRol":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->getPartnerId()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v2, v12, v3, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 60
    .local v4, "partnerId$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->getPartnerNombre()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v2, v12, v3, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 61
    .local v8, "partnerNombre$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->isLoading()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v15

    invoke-static {v15, v2, v12, v3, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 64
    .local v2, "isLoading$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v27 .. v27}, Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;->getScreenBackground-0d7_KjU()J

    move-result-wide v18

    .line 65
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/navigation/NavController;)V

    const v15, -0x314e46d5    # -1.4908512E9f

    move/from16 p2, v13

    .end local v13    # "$dirty":I
    .local p2, "$dirty":I
    const/16 v13, 0x36

    invoke-static {v15, v14, v3, v12, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 64
    nop

    .line 82
    move-object v3, v0

    .end local v0    # "currentUserId$delegate":Landroidx/compose/runtime/State;
    .local v3, "currentUserId$delegate":Landroidx/compose/runtime/State;
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda8;

    invoke-direct/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    move-object/from16 v28, v1

    .end local v1    # "colors":Landroidx/compose/material3/ColorScheme;
    .local v28, "colors":Landroidx/compose/material3/ColorScheme;
    const v1, 0x6a1e7c40

    invoke-static {v1, v14, v0, v12, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/jvm/functions/Function3;

    .line 63
    move-object/from16 v24, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v13, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const v25, 0x30000030

    const/16 v26, 0x1bd

    move/from16 v1, p2

    .end local p2    # "$dirty":I
    .local v1, "$dirty":I
    invoke-static/range {v12 .. v26}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v2    # "isLoading$delegate":Landroidx/compose/runtime/State;
    .end local v3    # "currentUserId$delegate":Landroidx/compose/runtime/State;
    .end local v4    # "partnerId$delegate":Landroidx/compose/runtime/State;
    .end local v5    # "normalizedRol":Ljava/lang/String;
    .end local v6    # "typography":Landroidx/compose/material3/Typography;
    .end local v8    # "partnerNombre$delegate":Landroidx/compose/runtime/State;
    .end local v9    # "currentUserRol$delegate":Landroidx/compose/runtime/State;
    .end local v27    # "amaniColors":Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;
    .end local v28    # "colors":Landroidx/compose/material3/ColorScheme;
    goto :goto_3

    .line 47
    .end local v1    # "$dirty":I
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$dirty":I
    :cond_6
    move-object/from16 v24, v12

    move v1, v13

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "$dirty":I
    .restart local v1    # "$dirty":I
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 149
    :cond_7
    :goto_3
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda9;

    invoke-direct {v2, v7, v10, v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda9;-><init>(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method private static final ChatListScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/Long;
    .locals 4
    .param p0, "$currentUserId$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 221
    .local v3, "$i$f$getValue\\1\\56":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\56":I
    check-cast v0, Ljava/lang/Long;

    .line 56
    return-object v0
.end method

.method private static final ChatListScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$currentUserRol$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 222
    .local v3, "$i$f$getValue\\1\\57":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\57":I
    check-cast v0, Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method static final ChatListScreen$lambda$16(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/navigation/NavController;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 84
    .param p0, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p1, "$isLoading$delegate"    # Landroidx/compose/runtime/State;
    .param p2, "$currentUserId$delegate"    # Landroidx/compose/runtime/State;
    .param p3, "$partnerId$delegate"    # Landroidx/compose/runtime/State;
    .param p4, "$normalizedRol"    # Ljava/lang/String;
    .param p5, "$typography"    # Landroidx/compose/material3/Typography;
    .param p6, "$navController"    # Landroidx/navigation/NavController;
    .param p7, "$partnerNombre$delegate"    # Landroidx/compose/runtime/State;
    .param p8, "$currentUserRol$delegate"    # Landroidx/compose/runtime/State;
    .param p9, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    const-string v6, "paddingValues"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "CN(paddingValues)82@3636L2795:ChatListScreen.kt#5xjsc0"

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, p11

    .local v6, "$dirty":I
    and-int/lit8 v7, p11, 0x6

    if-nez v7, :cond_1

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v6, v7

    :cond_1
    and-int/lit8 v7, v6, 0x13

    const/16 v8, 0x12

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v7, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v10

    :goto_1
    and-int/lit8 v8, v6, 0x1

    invoke-interface {v5, v7, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen.<anonymous> (ChatListScreen.kt:82)"

    const v11, 0x6a1e7c40

    invoke-static {v11, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 84
    :cond_3
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 85
    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 86
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 83
    nop

    .local v7, "modifier\\1":Landroidx/compose/ui/Modifier;
    move-object/from16 v12, p10

    .local v12, "$composer\\1":Landroidx/compose/runtime/Composer;
    move v13, v10

    .local v13, "$changed\\1":I
    const/4 v14, 0x0

    .line 233
    .local v14, "$i$f$Box\\1\\83":I
    const v15, 0x3e277f0a

    const-string v8, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo"

    invoke-static {v12, v15, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 234
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    .line 235
    .local v8, "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    const/4 v15, 0x0

    .line 238
    .local v15, "propagateMinConstraints\\1":Z
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v17

    .line 242
    .local v17, "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 241
    shl-int/lit8 v18, v13, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 239
    nop

    .local v18, "$changed\\2":I
    move-object/from16 v19, v12

    .local v19, "$composer\\2":Landroidx/compose/runtime/Composer;
    move-object/from16 v20, v17

    .local v20, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v21, v7

    .local v21, "modifier\\2":Landroidx/compose/ui/Modifier;
    const/16 v22, 0x0

    .line 243
    .local v22, "$i$f$Layout\\2\\239":I
    const v11, -0x451e1427

    const-string v9, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v10, v19

    .end local v19    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .local v10, "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {v10, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 244
    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    .line 245
    .local v11, "compositeKeyHash\\2":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 246
    .local v4, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v5, v21

    move/from16 v21, v6

    .end local v6    # "$dirty":I
    .local v5, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v21, "$dirty":I
    invoke-static {v10, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 248
    .local v6, "materialized\\2":Landroidx/compose/ui/Modifier;
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v25

    move-object/from16 v26, v5

    .end local v5    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v26, "modifier\\2":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v5, v18, 0x6

    and-int/lit16 v5, v5, 0x380

    or-int/lit8 v5, v5, 0x6

    .line 247
    move-object/from16 v27, v10

    .local v5, "$changed\\3":I
    .local v27, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object/from16 v28, v25

    .local v28, "factory\\3":Lkotlin/jvm/functions/Function0;
    const/16 v25, 0x0

    .line 249
    .local v25, "$i$f$ReusableComposeNode\\3\\247":I
    move/from16 v29, v5

    .end local v5    # "$changed\\3":I
    .local v29, "$changed\\3":I
    const v5, -0x20f7d59c

    move-object/from16 v30, v7

    .end local v7    # "modifier\\1":Landroidx/compose/ui/Modifier;
    .local v30, "modifier\\1":Landroidx/compose/ui/Modifier;
    const-string v7, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v31, v8

    move-object/from16 v8, v27

    .end local v27    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v8, "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v31, "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    invoke-static {v8, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 250
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 251
    :cond_4
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 252
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 253
    move-object/from16 v5, v28

    .end local v28    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .local v5, "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 255
    .end local v5    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v28    # "factory\\3":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v5, v28

    .end local v28    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 257
    :goto_2
    move-object/from16 v28, v5

    .end local v5    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .restart local v28    # "factory\\3":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 258
    .local v32, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\257\\2":I
    sget-object v33, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v34, v8

    .end local v8    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .local v34, "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    move-object/from16 v33, v10

    move-object/from16 v10, v20

    .end local v20    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v10, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v33, "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 259
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v35, v4

    .end local v4    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    .local v35, "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v8, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 261
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 262
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    nop

    .line 257
    .end local v5    # "$this$Layout_u24lambda_u240\\4":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\4\\257\\2":I
    nop

    .line 264
    shr-int/lit8 v4, v29, 0x6

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed\\5":I
    move-object/from16 v5, v34

    .local v5, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 240
    .local v8, "$i$a$-Layout-BoxKt$Box$1\\5\\264\\1":I
    move/from16 v20, v4

    .end local v4    # "$changed\\5":I
    .local v20, "$changed\\5":I
    const v4, 0x6d423196

    move-object/from16 v32, v6

    .end local v6    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .local v32, "materialized\\2":Landroidx/compose/ui/Modifier;
    const-string v6, "C72@3469L9:Box.kt#2w3rfo"

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v13, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed\\6":I
    check-cast v4, Landroidx/compose/foundation/layout/BoxScope;

    .local v4, "$this$ChatListScreen_u24lambda_u2416_u24lambda_u2415\\6":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v46, v5

    .local v46, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 88
    .local v49, "$i$a$-Box-ChatListScreenKt$ChatListScreen$2$1\\6\\240\\0":I
    move-object/from16 v50, v5

    .end local v5    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v50, "$composer\\5":Landroidx/compose/runtime/Composer;
    const v5, -0x3bc48e80

    move/from16 v51, v6

    .end local v6    # "$changed\\6":I
    .local v51, "$changed\\6":I
    const-string v6, "C:ChatListScreen.kt#5xjsc0"

    move/from16 v52, v8

    move-object/from16 v8, v46

    .end local v46    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v8, "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v52, "$i$a$-Layout-BoxKt$Box$1\\5\\264\\1":I
    invoke-static {v8, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 89
    invoke-static/range {p1 .. p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_6

    move-object/from16 v16, v10

    move/from16 v23, v11

    goto/16 :goto_6

    .line 94
    :cond_6
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_7

    const v5, -0x3bc177c3

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "98@4242L6,101@4372L656,94@4045L983"

    invoke-static {v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 96
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 97
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 98
    const/16 v7, 0x18

    .local v7, "$this$dp\\7":I
    const/4 v9, 0x0

    .line 265
    .local v9, "$i$f$getDp\\7\\98":I
    int-to-float v6, v7

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 98
    .end local v7    # "$this$dp\\7":I
    .end local v9    # "$i$f$getDp\\7\\98":I
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 99
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v8, v7}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v6

    move-object/from16 v37, v6

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v38

    .line 101
    const/4 v6, 0x2

    .local v6, "$this$dp\\8":I
    const/4 v7, 0x0

    .line 266
    .local v7, "$i$f$getDp\\8\\101":I
    int-to-float v9, v6

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v42

    .line 102
    .end local v6    # "$this$dp\\8":I
    .end local v7    # "$i$f$getDp\\8\\101":I
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda3;

    move-object/from16 v7, p0

    move-object/from16 v9, p4

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    invoke-direct {v6, v9, v5, v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;)V

    const v5, -0x79e27efe

    const/16 v7, 0x36

    const/4 v9, 0x1

    invoke-static {v5, v9, v6, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v45, v5

    check-cast v45, Lkotlin/jvm/functions/Function2;

    .line 95
    const-wide/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v47, 0xc06000

    const/16 v48, 0x68

    move-object/from16 v46, v8

    move-object/from16 v36, v16

    .end local v8    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v46    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v36 .. v48}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 94
    .end local v46    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v16, v10

    move/from16 v23, v11

    goto/16 :goto_7

    .line 116
    :cond_7
    const v5, -0x3bb174dc

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "116@5093L1296"

    invoke-static {v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 118
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 119
    move-object/from16 v16, v10

    move/from16 v23, v11

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .end local v10    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "compositeKeyHash\\2":I
    .local v16, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v23, "compositeKeyHash\\2":I
    invoke-static {v5, v10, v11, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 120
    const/16 v6, 0x10

    .local v6, "$this$dp\\9":I
    const/4 v10, 0x0

    .line 267
    .local v10, "$i$f$getDp\\9\\120":I
    int-to-float v11, v6

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 120
    .end local v6    # "$this$dp\\9":I
    .end local v10    # "$i$f$getDp\\9\\120":I
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 121
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v10, 0xc

    .local v10, "$this$dp\\10":I
    const/4 v11, 0x0

    .line 268
    .local v11, "$i$f$getDp\\10\\121":I
    move-object/from16 v24, v5

    int-to-float v5, v10

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 121
    .end local v10    # "$this$dp\\10":I
    .end local v11    # "$i$f$getDp\\10\\121":I
    invoke-virtual {v6, v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 117
    nop

    .local v24, "modifier\\11":Landroidx/compose/ui/Modifier;
    const/16 v36, 0x36

    .local v5, "verticalArrangement\\11":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v36, "$changed\\11":I
    move-object v6, v8

    .local v6, "$composer\\11":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 269
    .local v10, "$i$f$Column\\11\\117":I
    const v11, 0x4ff7456f

    move/from16 v37, v10

    .end local v10    # "$i$f$Column\\11\\117":I
    .local v37, "$i$f$Column\\11\\117":I
    const-string v10, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v6, v11, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 270
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 273
    .local v10, "horizontalAlignment\\11":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v11, v36, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v38, v36, 0x3

    and-int/lit8 v38, v38, 0x70

    or-int v11, v11, v38

    invoke-static {v5, v10, v6, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 277
    .local v11, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 276
    shl-int/lit8 v38, v36, 0x3

    and-int/lit8 v38, v38, 0x70

    .line 274
    move-object/from16 v39, v6

    .local v39, "$composer\\12":Landroidx/compose/runtime/Composer;
    move-object/from16 v40, v11

    .local v38, "$changed\\12":I
    .local v40, "measurePolicy\\12":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v41, v24

    .local v41, "modifier\\12":Landroidx/compose/ui/Modifier;
    const/16 v42, 0x0

    .line 278
    .local v42, "$i$f$Layout\\12\\274":I
    move-object/from16 v43, v5

    move-object/from16 v19, v6

    move-object/from16 v5, v39

    const v6, -0x451e1427

    .end local v6    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v39    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v19, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v43, "verticalArrangement\\11":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v5, v6, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 279
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    .line 280
    .local v6, "compositeKeyHash\\12":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 281
    .local v9, "localMap\\12":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v39, v6

    move-object/from16 v6, v41

    move-object/from16 v41, v10

    .end local v10    # "horizontalAlignment\\11":Landroidx/compose/ui/Alignment$Horizontal;
    .local v6, "modifier\\12":Landroidx/compose/ui/Modifier;
    .local v39, "compositeKeyHash\\12":I
    .local v41, "horizontalAlignment\\11":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {v5, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 283
    .local v10, "materialized\\12":Landroidx/compose/ui/Modifier;
    sget-object v44, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v44

    move-object/from16 v45, v5

    .end local v5    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v45, "$composer\\12":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v5, v38, 0x6

    and-int/lit16 v5, v5, 0x380

    or-int/lit8 v5, v5, 0x6

    .line 282
    nop

    .local v5, "$changed\\13":I
    move-object/from16 v46, v45

    .local v46, "$composer\\13":Landroidx/compose/runtime/Composer;
    move-object/from16 v47, v44

    .local v47, "factory\\13":Lkotlin/jvm/functions/Function0;
    const/16 v44, 0x0

    .line 284
    .local v44, "$i$f$ReusableComposeNode\\13\\282":I
    move/from16 v48, v5

    move-object/from16 v27, v6

    move-object/from16 v5, v46

    const v6, -0x20f7d59c

    .end local v6    # "modifier\\12":Landroidx/compose/ui/Modifier;
    .end local v46    # "$composer\\13":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\13":Landroidx/compose/runtime/Composer;
    .local v27, "modifier\\12":Landroidx/compose/ui/Modifier;
    .local v48, "$changed\\13":I
    invoke-static {v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 285
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 286
    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 287
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 288
    move-object/from16 v6, v47

    .end local v47    # "factory\\13":Lkotlin/jvm/functions/Function0;
    .local v6, "factory\\13":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 290
    .end local v6    # "factory\\13":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory\\13":Lkotlin/jvm/functions/Function0;
    :cond_9
    move-object/from16 v6, v47

    .end local v47    # "factory\\13":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory\\13":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 292
    :goto_3
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .local v7, "$this$Layout_u24lambda_u240\\14":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 293
    .local v46, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\14\\292\\12":I
    sget-object v47, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v53, v5

    .end local v5    # "$composer\\13":Landroidx/compose/runtime/Composer;
    .local v53, "$composer\\13":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v47 .. v47}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    move-object/from16 v47, v6

    move-object/from16 v6, v40

    .end local v40    # "measurePolicy\\12":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "measurePolicy\\12":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v47    # "factory\\13":Lkotlin/jvm/functions/Function0;
    invoke-static {v7, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 294
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 295
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v40, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v54, v6

    .end local v6    # "measurePolicy\\12":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v54, "measurePolicy\\12":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 296
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 297
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v7, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 298
    nop

    .line 292
    .end local v7    # "$this$Layout_u24lambda_u240\\14":Landroidx/compose/runtime/Composer;
    .end local v46    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\14\\292\\12":I
    nop

    .line 299
    shr-int/lit8 v5, v48, 0x6

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed\\15":I
    move-object/from16 v6, v53

    .local v6, "$composer\\15":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 275
    .local v7, "$i$a$-Layout-ColumnKt$Column$1\\15\\299\\11":I
    move/from16 v40, v5

    .end local v5    # "$changed\\15":I
    .local v40, "$changed\\15":I
    const v5, 0x7cc0ae6e

    move/from16 v46, v7

    .end local v7    # "$i$a$-Layout-ColumnKt$Column$1\\15\\299\\11":I
    .local v46, "$i$a$-Layout-ColumnKt$Column$1\\15\\299\\11":I
    const-string v7, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v7, v36, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    .local v7, "$changed\\16":I
    check-cast v5, Landroidx/compose/foundation/layout/ColumnScope;

    .local v5, "$this$ChatListScreen_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\16":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v76, v6

    .local v76, "$composer\\16":Landroidx/compose/runtime/Composer;
    const/16 v80, 0x0

    .line 123
    .local v80, "$i$a$-Column-ChatListScreenKt$ChatListScreen$2$1$2\\16\\275\\6":I
    move-object/from16 v81, v5

    .end local v5    # "$this$ChatListScreen_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\16":Landroidx/compose/foundation/layout/ColumnScope;
    .local v81, "$this$ChatListScreen_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\16":Landroidx/compose/foundation/layout/ColumnScope;
    const v5, -0x19ea4e4e

    move-object/from16 v82, v6

    .end local v6    # "$composer\\15":Landroidx/compose/runtime/Composer;
    .local v82, "$composer\\15":Landroidx/compose/runtime/Composer;
    const-string v6, "C122@5355L328,133@5906L435,130@5733L634:ChatListScreen.kt#5xjsc0"

    move/from16 v83, v7

    move-object/from16 v7, v76

    .end local v76    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .local v7, "$composer\\16":Landroidx/compose/runtime/Composer;
    .local v83, "$changed\\16":I
    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 125
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v75

    .line 126
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v62

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v57

    .line 128
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v63, v5

    check-cast v63, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x4

    .local v5, "$this$dp\\17":I
    const/4 v6, 0x0

    .line 300
    .local v6, "$i$f$getDp\\17\\128":I
    move/from16 v55, v6

    .end local v6    # "$i$f$getDp\\17\\128":I
    .local v55, "$i$f$getDp\\17\\128":I
    int-to-float v6, v5

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v67

    .line 128
    .end local v5    # "$this$dp\\17":I
    .end local v55    # "$i$f$getDp\\17\\128":I
    const/16 v68, 0x7

    const/16 v69, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-static/range {v63 .. v69}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v56

    .line 124
    nop

    .line 128
    nop

    .line 127
    nop

    .line 126
    nop

    .line 125
    nop

    .line 123
    const-string v55, "Tu conversaci\u00f3n"

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v63, 0x0

    const-wide/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const-wide/16 v68, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const v77, 0x30036

    const/16 v78, 0x0

    const v79, 0xffd8

    .end local v7    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .restart local v76    # "$composer\\16":Landroidx/compose/runtime/Composer;
    invoke-static/range {v55 .. v79}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 132
    .end local v76    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$composer\\16":Landroidx/compose/runtime/Composer;
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static/range {p8 .. p8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v6

    .line 134
    move-object/from16 v55, v9

    .end local v9    # "localMap\\12":Landroidx/compose/runtime/CompositionLocalMap;
    .local v55, "localMap\\12":Landroidx/compose/runtime/CompositionLocalMap;
    const v9, -0x1159e0f0

    move-object/from16 v56, v10

    .end local v10    # "materialized\\12":Landroidx/compose/ui/Modifier;
    .local v56, "materialized\\12":Landroidx/compose/ui/Modifier;
    const-string v10, "CC(remember):ChatListScreen.kt#9igjgp"

    invoke-static {v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    .local v9, "invalid\\18":Z
    move-object v10, v7

    .local v10, "$this$cache\\18":Landroidx/compose/runtime/Composer;
    const/16 v57, 0x0

    .line 301
    .local v57, "$i$f$cache\\18\\134":I
    move/from16 v58, v9

    .end local v9    # "invalid\\18":Z
    .local v58, "invalid\\18":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it\\18":Ljava/lang/Object;
    const/16 v59, 0x0

    .line 302
    .local v59, "$i$a$-let-ComposerKt$cache$1\\19\\301\\18":I
    if-nez v58, :cond_b

    sget-object v60, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v61, v11

    .end local v11    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v61, "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v60 .. v60}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_a

    goto :goto_4

    .line 306
    :cond_a
    goto :goto_5

    .line 302
    .end local v61    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v11    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_b
    move-object/from16 v61, v11

    .line 303
    .end local v11    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v61    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_4
    const/4 v11, 0x0

    .line 134
    .local v11, "$i$a$-cache-ChatListScreenKt$ChatListScreen$2$1$2$1\\20\\303\\16":I
    move-object/from16 v60, v9

    .end local v9    # "it\\18":Ljava/lang/Object;
    .local v60, "it\\18":Ljava/lang/Object;
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Landroidx/compose/runtime/State;)V

    .line 303
    .end local v11    # "$i$a$-cache-ChatListScreenKt$ChatListScreen$2$1$2$1\\20\\303\\16":I
    nop

    .line 304
    .local v9, "value\\19":Ljava/lang/Object;
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 305
    nop

    .line 301
    .end local v9    # "value\\19":Ljava/lang/Object;
    .end local v59    # "$i$a$-let-ComposerKt$cache$1\\19\\301\\18":I
    .end local v60    # "it\\18":Ljava/lang/Object;
    :goto_5
    nop

    .line 134
    .end local v10    # "$this$cache\\18":Landroidx/compose/runtime/Composer;
    .end local v57    # "$i$f$cache\\18\\134":I
    .end local v58    # "invalid\\18":Z
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 131
    const/4 v11, 0x0

    invoke-static {v5, v6, v9, v7, v11}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatPartnerCard(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 123
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 144
    nop

    .line 275
    .end local v7    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .end local v80    # "$i$a$-Column-ChatListScreenKt$ChatListScreen$2$1$2\\16\\275\\6":I
    .end local v81    # "$this$ChatListScreen_u24lambda_u2416_u24lambda_u2415_u24lambda_u2414\\16":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v83    # "$changed\\16":I
    invoke-static/range {v82 .. v82}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 299
    .end local v40    # "$changed\\15":I
    .end local v46    # "$i$a$-Layout-ColumnKt$Column$1\\15\\299\\11":I
    .end local v82    # "$composer\\15":Landroidx/compose/runtime/Composer;
    nop

    .line 307
    invoke-interface/range {v53 .. v53}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 284
    invoke-static/range {v53 .. v53}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 308
    nop

    .line 278
    .end local v44    # "$i$f$ReusableComposeNode\\13\\282":I
    .end local v47    # "factory\\13":Lkotlin/jvm/functions/Function0;
    .end local v48    # "$changed\\13":I
    .end local v53    # "$composer\\13":Landroidx/compose/runtime/Composer;
    invoke-static/range {v45 .. v45}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 309
    nop

    .line 269
    .end local v27    # "modifier\\12":Landroidx/compose/ui/Modifier;
    .end local v38    # "$changed\\12":I
    .end local v39    # "compositeKeyHash\\12":I
    .end local v42    # "$i$f$Layout\\12\\274":I
    .end local v45    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .end local v54    # "measurePolicy\\12":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v55    # "localMap\\12":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v56    # "materialized\\12":Landroidx/compose/ui/Modifier;
    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 310
    nop

    .line 116
    .end local v19    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v24    # "modifier\\11":Landroidx/compose/ui/Modifier;
    .end local v36    # "$changed\\11":I
    .end local v37    # "$i$f$Column\\11\\117":I
    .end local v41    # "horizontalAlignment\\11":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v43    # "verticalArrangement\\11":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v61    # "measurePolicy\\11":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_7

    .line 89
    .end local v16    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "compositeKeyHash\\2":I
    .local v10, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v11, "compositeKeyHash\\2":I
    :cond_c
    move-object/from16 v16, v10

    move/from16 v23, v11

    .end local v10    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "compositeKeyHash\\2":I
    .restart local v16    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v23    # "compositeKeyHash\\2":I
    :goto_6
    const v5, -0x3bc4d080

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "89@3851L116"

    invoke-static {v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 91
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    .line 90
    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1e

    move-object/from16 v43, v8

    .end local v8    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .local v43, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static/range {v36 .. v45}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 89
    .end local v43    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 88
    :goto_7
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 147
    nop

    .line 240
    .end local v4    # "$this$ChatListScreen_u24lambda_u2416_u24lambda_u2415\\6":Landroidx/compose/foundation/layout/BoxScope;
    .end local v8    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-Box-ChatListScreenKt$ChatListScreen$2$1\\6\\240\\0":I
    .end local v51    # "$changed\\6":I
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 264
    .end local v20    # "$changed\\5":I
    .end local v50    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .end local v52    # "$i$a$-Layout-BoxKt$Box$1\\5\\264\\1":I
    nop

    .line 311
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 249
    invoke-static/range {v34 .. v34}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 312
    nop

    .line 243
    .end local v25    # "$i$f$ReusableComposeNode\\3\\247":I
    .end local v28    # "factory\\3":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$changed\\3":I
    .end local v34    # "$composer\\3":Landroidx/compose/runtime/Composer;
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 313
    nop

    .line 233
    .end local v16    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v18    # "$changed\\2":I
    .end local v22    # "$i$f$Layout\\2\\239":I
    .end local v23    # "compositeKeyHash\\2":I
    .end local v26    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v32    # "materialized\\2":Landroidx/compose/ui/Modifier;
    .end local v33    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v35    # "localMap\\2":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 314
    nop

    .end local v12    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v13    # "$changed\\1":I
    .end local v14    # "$i$f$Box\\1\\83":I
    .end local v15    # "propagateMinConstraints\\1":Z
    .end local v17    # "measurePolicy\\1":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v30    # "modifier\\1":Landroidx/compose/ui/Modifier;
    .end local v31    # "contentAlignment\\1":Landroidx/compose/ui/Alignment;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_8

    .line 82
    .end local v21    # "$dirty":I
    .local v6, "$dirty":I
    :cond_d
    move/from16 v21, v6

    .end local v6    # "$dirty":I
    .restart local v21    # "$dirty":I
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 148
    :cond_e
    :goto_8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4
.end method

.method static final ChatListScreen$lambda$16$lambda$15$lambda$14$lambda$13$lambda$12(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Landroidx/compose/runtime/State;)Lkotlin/Unit;
    .locals 14
    .param p0, "$currentUserId$delegate"    # Landroidx/compose/runtime/State;
    .param p1, "$partnerId$delegate"    # Landroidx/compose/runtime/State;
    .param p2, "$navController"    # Landroidx/navigation/NavController;
    .param p3, "$partnerNombre$delegate"    # Landroidx/compose/runtime/State;

    .line 135
    invoke-static {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .local v2, "currentId\\1":J
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$a$-let-ChatListScreenKt$ChatListScreen$2$1$2$1$1$1\\1\\135\\0":I
    invoke-static {p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .local v4, "pId\\2":J
    const/4 v7, 0x0

    .line 137
    .local v7, "$i$a$-let-ChatListScreenKt$ChatListScreen$2$1$2$1$1$1$1\\2\\136\\1":I
    nop

    .line 138
    sget-object v1, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;

    invoke-static/range {p3 .. p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;->createRoute(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v13}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 140
    nop

    .line 136
    .end local v4    # "pId\\2":J
    .end local v7    # "$i$a$-let-ChatListScreenKt$ChatListScreen$2$1$2$1$1$1$1\\2\\136\\1":I
    nop

    .line 141
    :cond_0
    nop

    .line 135
    .end local v0    # "$i$a$-let-ChatListScreenKt$ChatListScreen$2$1$2$1$1$1\\1\\135\\0":I
    .end local v2    # "currentId\\1":J
    nop

    .line 142
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ChatListScreen$lambda$16$lambda$15$lambda$9(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 26
    .param p0, "$normalizedRol"    # Ljava/lang/String;
    .param p1, "$typography"    # Landroidx/compose/material3/Typography;
    .param p2, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "C102@4398L608:ChatListScreen.kt#5xjsc0"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen.<anonymous>.<anonymous>.<anonymous> (ChatListScreen.kt:102)"

    const v5, -0x79e27efe

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 104
    :cond_1
    const-string v3, "psicologo"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "psicologa"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    const-string v3, "No tienes psic\u00f3logo asignado a\u00fan"

    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    const-string v3, "No tienes pacientes asignados a\u00fan"

    .line 104
    :goto_2
    nop

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    .line 110
    sget-object v4, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v4

    .line 111
    move-object v1, v3

    move v5, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v3

    .line 112
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    const/16 v7, 0x14

    .local v7, "$this$dp\\1":I
    const/4 v8, 0x0

    .line 232
    .local v8, "$i$f$getDp\\1\\112":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 112
    .end local v7    # "$this$dp\\1":I
    .end local v8    # "$i$f$getDp\\1\\112":I
    const/16 v8, 0x18

    .local v8, "$this$dp\\2":I
    const/4 v9, 0x0

    .line 232
    .local v9, "$i$f$getDp\\2\\112":I
    int-to-float v10, v8

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 112
    .end local v8    # "$this$dp\\2":I
    .end local v9    # "$i$f$getDp\\2\\112":I
    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 104
    nop

    .line 112
    nop

    .line 111
    nop

    .line 110
    invoke-static {v5}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v13

    .line 109
    nop

    .line 103
    move-object v2, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x30

    const/16 v24, 0x0

    const v25, 0xfdf8

    move-object/from16 v22, p3

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 102
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 114
    :cond_5
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static final ChatListScreen$lambda$17(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatListScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final ChatListScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Long;
    .locals 4
    .param p0, "$partnerId$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 223
    .local v3, "$i$f$getValue\\1\\59":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\59":I
    check-cast v0, Ljava/lang/Long;

    .line 59
    return-object v0
.end method

.method private static final ChatListScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 4
    .param p0, "$partnerNombre$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 224
    .local v3, "$i$f$getValue\\1\\60":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\60":I
    check-cast v0, Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method private static final ChatListScreen$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$isLoading$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .local v0, "this_\\1":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 225
    .local v3, "$i$f$getValue\\1\\61":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "this_\\1":Ljava/lang/Object;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue\\1\\61":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 61
    return v0
.end method

.method static final ChatListScreen$lambda$8(Landroidx/compose/material3/ColorScheme;Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17
    .param p0, "$colors"    # Landroidx/compose/material3/ColorScheme;
    .param p1, "$navController"    # Landroidx/navigation/NavController;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v8, p2

    move/from16 v14, p3

    const-string v0, "C67@3078L311,75@3434L144,65@2988L604:ChatListScreen.kt#5xjsc0"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v14, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v14, 0x1

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen.<anonymous> (ChatListScreen.kt:65)"

    const v3, -0x314e46d5    # -1.4908512E9f

    invoke-static {v3, v14, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatListScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatListScreenKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatListScreenKt;->getLambda$1256537327$app()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    .line 68
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda6;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda6;-><init>(Landroidx/navigation/NavController;)V

    const/16 v3, 0x36

    const v4, -0x2a65150f

    invoke-static {v4, v2, v0, v8, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 76
    sget-object v0, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v1

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v7

    sget v3, Landroidx/compose/material3/TopAppBarDefaults;->$stable:I

    shl-int/lit8 v12, v3, 0xf

    .line 76
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const/16 v13, 0x16

    move-object/from16 v11, p2

    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v6

    .line 66
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x186

    const/16 v10, 0xba

    move-object/from16 v8, p2

    move-object v0, v15

    move-object/from16 v2, v16

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    .line 65
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 81
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ChatListScreen$lambda$8$lambda$7(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13
    .param p0, "$navController"    # Landroidx/navigation/NavController;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C68@3121L32,68@3100L271:ChatListScreen.kt#5xjsc0"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen.<anonymous>.<anonymous> (ChatListScreen.kt:68)"

    const v2, -0x2a65150f

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 69
    :cond_1
    const v0, -0x257407cf

    const-string v1, "CC(remember):ChatListScreen.kt#9igjgp"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid\\1":Z
    move-object v1, p1

    .local v1, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$f$cache\\1\\69":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 227
    .local v4, "$i$a$-let-ComposerKt$cache$1\\2\\226\\1":I
    if-nez v0, :cond_3

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 231
    :cond_2
    goto :goto_2

    .line 228
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 69
    .local v5, "$i$a$-cache-ChatListScreenKt$ChatListScreen$1$1$1\\3\\228\\0":I
    new-instance v6, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavController;)V

    .line 228
    .end local v5    # "$i$a$-cache-ChatListScreenKt$ChatListScreen$1$1$1\\3\\228\\0":I
    nop

    .line 229
    .local v6, "value\\2":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 230
    move-object v3, v6

    .line 226
    .end local v3    # "it\\1":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1\\2\\226\\1":I
    .end local v6    # "value\\2":Ljava/lang/Object;
    :goto_2
    nop

    .line 69
    .end local v0    # "invalid\\1":Z
    .end local v1    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache\\1\\69":I
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatListScreenKt;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatListScreenKt;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ComposableSingletons$ChatListScreenKt;->getLambda$1190106126$app()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    const/high16 v11, 0x30000

    const/16 v12, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v12}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 68
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_4
    move-object v10, p1

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 75
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final ChatListScreen$lambda$8$lambda$7$lambda$6$lambda$5(Landroidx/navigation/NavController;)Lkotlin/Unit;
    .locals 1
    .param p0, "$navController"    # Landroidx/navigation/NavController;

    .line 69
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final ChatPartnerCard(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p0, "partnerName"    # Ljava/lang/String;
    .param p1, "currentUserRol"    # Ljava/lang/String;
    .param p2, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, -0x1a6a7838

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(ChatPartnerCard)N(partnerName,currentUserRol,onClick)159@6652L13,162@6795L11,161@6740L84,164@6859L38,165@6904L1532,156@6567L1869:ChatListScreen.kt#5xjsc0"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p4

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_1

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    const/16 v7, 0x100

    if-nez v6, :cond_5

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v5, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v8, :cond_6

    move v6, v10

    goto :goto_3

    :cond_6
    move v6, v9

    :goto_3
    and-int/lit8 v8, v5, 0x1

    invoke-interface {v11, v6, v8}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    const-string v8, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatPartnerCard (ChatListScreen.kt:155)"

    invoke-static {v4, v5, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 158
    :cond_7
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 159
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v10, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 160
    const v4, -0x29ad2fcb

    const-string v6, "CC(remember):ChatListScreen.kt#9igjgp"

    invoke-static {v11, v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v4, v5, 0x380

    if-ne v4, v7, :cond_8

    move v9, v10

    .local v9, "invalid\\1":Z
    :cond_8
    move-object v4, v11

    .local v4, "$this$cache\\1":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 213
    .local v6, "$i$f$cache\\1\\160":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it\\1":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 214
    .local v8, "$i$a$-let-ComposerKt$cache$1\\2\\213\\1":I
    if-nez v9, :cond_a

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v7, v13, :cond_9

    goto :goto_4

    .line 218
    :cond_9
    goto :goto_5

    .line 215
    :cond_a
    :goto_4
    const/4 v13, 0x0

    .line 160
    .local v13, "$i$a$-cache-ChatListScreenKt$ChatPartnerCard$1\\3\\215\\0":I
    new-instance v14, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v14, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 215
    .end local v13    # "$i$a$-cache-ChatListScreenKt$ChatPartnerCard$1\\3\\215\\0":I
    nop

    .line 216
    .local v14, "value\\2":Ljava/lang/Object;
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 217
    move-object v7, v14

    .line 213
    .end local v7    # "it\\1":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1\\2\\213\\1":I
    .end local v14    # "value\\2":Ljava/lang/Object;
    :goto_5
    nop

    .line 160
    .end local v4    # "$this$cache\\1":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache\\1\\160":I
    .end local v9    # "invalid\\1":Z
    move-object/from16 v17, v7

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v18, 0xf

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/foundation/ClickableKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 161
    const/16 v6, 0xc

    .local v6, "$this$dp\\4":I
    const/4 v7, 0x0

    .line 219
    .local v7, "$i$f$getDp\\4\\161":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 161
    .end local v6    # "$this$dp\\4":I
    .end local v7    # "$i$f$getDp\\4\\161":I
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroidx/compose/ui/graphics/Shape;

    .line 162
    move v6, v5

    .end local v5    # "$dirty":I
    .local v6, "$dirty":I
    sget-object v5, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    .line 163
    sget-object v7, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v8, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v7, v11, v8}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v7

    sget v9, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v15, v9, 0xc

    .line 162
    move v12, v6

    move-wide v6, v7

    .end local v6    # "$dirty":I
    .local v12, "$dirty":I
    const-wide/16 v8, 0x0

    move v13, v10

    move-object v14, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-wide/16 v10, 0x0

    move/from16 v16, v12

    move/from16 v18, v13

    .end local v12    # "$dirty":I
    .local v16, "$dirty":I
    const-wide/16 v12, 0x0

    move/from16 v19, v16

    .end local v16    # "$dirty":I
    .local v19, "$dirty":I
    const/16 v16, 0xe

    move-object/from16 p3, v4

    move/from16 v4, v18

    invoke-virtual/range {v5 .. v16}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v15

    .line 165
    sget-object v5, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    const/4 v6, 0x3

    .local v6, "$this$dp\\5":I
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$f$getDp\\5\\165":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .end local v6    # "$this$dp\\5":I
    .end local v7    # "$i$f$getDp\\5\\165":I
    sget v7, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v7, v7, 0x12

    or-int/lit8 v13, v7, 0x6

    .line 165
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v14, 0x3e

    invoke-virtual/range {v5 .. v14}, Landroidx/compose/material3/CardDefaults;->cardElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardElevation;

    move-result-object v8

    .line 166
    move-object v14, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x36

    const v7, -0x4daa5c46

    invoke-static {v7, v4, v5, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function3;

    .line 157
    const/4 v9, 0x0

    const/high16 v12, 0x30000

    const/16 v13, 0x10

    move-object/from16 v5, p3

    move-object v11, v14

    move-object v7, v15

    move-object/from16 v6, v17

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v5 .. v13}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 151
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "$dirty":I
    .restart local v5    # "$dirty":I
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_b
    move/from16 v19, v5

    move-object v14, v11

    .end local v5    # "$dirty":I
    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v19    # "$dirty":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 210
    :cond_c
    :goto_6
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_d

    new-instance v5, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_d
    return-void
.end method

.method static final ChatPartnerCard$lambda$19$lambda$18(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1
    .param p0, "$onClick"    # Lkotlin/jvm/functions/Function0;

    .line 160
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ChatPartnerCard$lambda$23(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 81
    .param p0, "$partnerName"    # Ljava/lang/String;
    .param p1, "$currentUserRol"    # Ljava/lang/String;
    .param p2, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "$this$Card"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C166@6914L1516:ChatListScreen.kt#5xjsc0"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-eq v2, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v2, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v4, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatPartnerCard.<anonymous> (ChatListScreen.kt:166)"

    const v7, -0x4daa5c46

    invoke-static {v7, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 168
    :cond_1
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 169
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 170
    const/16 v4, 0x10

    .local v4, "$this$dp\\1":I
    const/4 v5, 0x0

    .line 315
    .local v5, "$i$f$getDp\\1\\170":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 170
    .end local v4    # "$this$dp\\1":I
    .end local v5    # "$i$f$getDp\\1\\170":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 171
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 167
    move-object/from16 v5, p3

    .local v5, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/16 v7, 0x186

    .local v2, "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v4, "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .local v7, "$changed\\2":I
    const/4 v8, 0x0

    .line 316
    .local v8, "$i$f$Row\\2\\167":I
    const v9, 0x3255a44b

    const-string v10, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v5, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 317
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v9

    .line 321
    .local v9, "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v10, v7, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v9, v4, v5, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .line 325
    .local v10, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 324
    shl-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 322
    nop

    .local v11, "$changed\\3":I
    move-object v12, v5

    .local v12, "$composer\\3":Landroidx/compose/runtime/Composer;
    move-object v13, v2

    .local v13, "modifier\\3":Landroidx/compose/ui/Modifier;
    move-object v14, v10

    .local v14, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v15, 0x0

    .line 326
    .local v15, "$i$f$Layout\\3\\322":I
    const v6, -0x451e1427

    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v12, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 327
    const/4 v6, 0x0

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    .line 328
    .local v6, "compositeKeyHash\\3":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 329
    .local v1, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v18, v2

    .end local v2    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v18, "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static {v12, v13}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 331
    .local v2, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    shl-int/lit8 v3, v11, 0x6

    and-int/lit16 v3, v3, 0x380

    move/from16 v20, v3

    const/4 v3, 0x6

    or-int/lit8 v20, v20, 0x6

    .line 330
    nop

    .local v20, "$changed\\4":I
    move-object/from16 v21, v12

    .local v21, "$composer\\4":Landroidx/compose/runtime/Composer;
    move-object/from16 v22, v19

    .local v22, "factory\\4":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 332
    .local v19, "$i$f$ReusableComposeNode\\4\\330":I
    move/from16 v23, v3

    const v3, -0x20f7d59c

    move-object/from16 v24, v4

    .end local v4    # "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .local v24, "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    const-string v4, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v25, v5

    move-object/from16 v5, v21

    .end local v21    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v25, "$composer\\2":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 333
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 334
    :cond_2
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 335
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    move-object/from16 v3, v22

    .end local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v3, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 338
    .end local v3    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v3, v22

    .end local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 340
    :goto_1
    move-object/from16 v22, v3

    .end local v3    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 341
    .local v26, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\340\\3":I
    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v5

    .end local v5    # "$composer\\4":Landroidx/compose/runtime/Composer;
    .local v28, "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 342
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 343
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v1

    .end local v1    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 345
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 346
    nop

    .line 340
    .end local v3    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\340\\3":I
    nop

    .line 347
    shr-int/lit8 v1, v20, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\6":I
    move-object/from16 v3, v28

    .local v3, "$composer\\6":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 323
    .local v5, "$i$a$-Layout-RowKt$Row$1\\6\\347\\2":I
    move/from16 v26, v1

    .end local v1    # "$changed\\6":I
    .local v26, "$changed\\6":I
    const v1, 0x56ccd6f5

    move-object/from16 v27, v2

    .end local v2    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .local v27, "materialized\\3":Landroidx/compose/ui/Modifier;
    const-string v2, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v7, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\7":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422\\7":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v30, v3

    .local v30, "$composer\\7":Landroidx/compose/runtime/Composer;
    move-object/from16 v31, v1

    .end local v1    # "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422\\7":Landroidx/compose/foundation/layout/RowScope;
    .local v31, "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422\\7":Landroidx/compose/foundation/layout/RowScope;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$a$-Row-ChatListScreenKt$ChatPartnerCard$2$1\\7\\323\\0":I
    move/from16 v37, v1

    .end local v1    # "$i$a$-Row-ChatListScreenKt$ChatPartnerCard$2$1\\7\\323\\0":I
    .local v37, "$i$a$-Row-ChatListScreenKt$ChatPartnerCard$2$1\\7\\323\\0":I
    const v1, 0x3b5cfd5c

    move/from16 v38, v2

    .end local v2    # "$changed\\7":I
    .local v38, "$changed\\7":I
    const-string v2, "C176@7258L11,172@7099L496,186@7609L40,188@7663L757:ChatListScreen.kt#5xjsc0"

    move-object/from16 v39, v3

    .end local v30    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v39, "$composer\\6":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 174
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 175
    const/16 v2, 0x30

    .local v2, "$this$dp\\8":I
    const/16 v30, 0x0

    .line 348
    .local v30, "$i$f$getDp\\8\\175":I
    move/from16 v40, v5

    .end local v5    # "$i$a$-Layout-RowKt$Row$1\\6\\347\\2":I
    .local v40, "$i$a$-Layout-RowKt$Row$1\\6\\347\\2":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 175
    .end local v2    # "$this$dp\\8":I
    .end local v30    # "$i$f$getDp\\8\\175":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 176
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v41

    .line 177
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v42

    const/16 v45, 0x2

    const/16 v46, 0x0

    const/16 v44, 0x0

    invoke-static/range {v41 .. v46}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 178
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    .line 173
    nop

    .local v1, "modifier\\9":Landroidx/compose/ui/Modifier;
    move-object v5, v3

    .local v2, "contentAlignment\\9":Landroidx/compose/ui/Alignment;
    .local v5, "$composer\\9":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x30

    .local v30, "$changed\\9":I
    const/16 v32, 0x0

    .line 349
    .local v32, "$i$f$Box\\9\\173":I
    move-object/from16 v33, v1

    .end local v1    # "modifier\\9":Landroidx/compose/ui/Modifier;
    .local v33, "modifier\\9":Landroidx/compose/ui/Modifier;
    const v1, 0x3e277f0a

    move/from16 v41, v6

    .end local v6    # "compositeKeyHash\\3":I
    .local v41, "compositeKeyHash\\3":I
    const-string v6, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo"

    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    .line 353
    .local v1, "propagateMinConstraints\\9":Z
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .line 357
    .local v6, "measurePolicy\\9":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 356
    shl-int/lit8 v34, v30, 0x3

    and-int/lit8 v34, v34, 0x70

    .line 354
    move-object/from16 v35, v33

    .local v35, "modifier\\10":Landroidx/compose/ui/Modifier;
    move-object/from16 v36, v6

    .local v36, "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v42, v5

    .local v34, "$changed\\10":I
    .local v42, "$composer\\10":Landroidx/compose/runtime/Composer;
    const/16 v43, 0x0

    .line 358
    .local v43, "$i$f$Layout\\10\\354":I
    move/from16 v44, v1

    move-object/from16 v1, v42

    move-object/from16 v42, v2

    const v2, -0x451e1427

    .end local v2    # "contentAlignment\\9":Landroidx/compose/ui/Alignment;
    .local v1, "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v42, "contentAlignment\\9":Landroidx/compose/ui/Alignment;
    .local v44, "propagateMinConstraints\\9":Z
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 359
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    .line 360
    .local v2, "compositeKeyHash\\10":I
    move/from16 v45, v2

    .end local v2    # "compositeKeyHash\\10":I
    .local v45, "compositeKeyHash\\10":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 361
    .local v2, "localMap\\10":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v46, v5

    move-object/from16 v5, v35

    move-object/from16 v35, v6

    .end local v6    # "measurePolicy\\9":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v5, "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v35, "measurePolicy\\9":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v46, "$composer\\9":Landroidx/compose/runtime/Composer;
    invoke-static {v1, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 363
    .local v6, "materialized\\10":Landroidx/compose/ui/Modifier;
    sget-object v47, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v47 .. v47}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v47

    move-object/from16 v48, v1

    .end local v1    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v48, "$composer\\10":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v1, v34, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 362
    nop

    .local v1, "$changed\\11":I
    move-object/from16 v49, v48

    .local v49, "$composer\\11":Landroidx/compose/runtime/Composer;
    move-object/from16 v50, v47

    .local v50, "factory\\11":Lkotlin/jvm/functions/Function0;
    const/16 v47, 0x0

    .line 364
    .local v47, "$i$f$ReusableComposeNode\\11\\362":I
    move/from16 v51, v1

    move-object/from16 v1, v49

    move-object/from16 v49, v5

    const v5, -0x20f7d59c

    .end local v5    # "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v1, "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v49, "modifier\\10":Landroidx/compose/ui/Modifier;
    .local v51, "$changed\\11":I
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 365
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 366
    :cond_4
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 367
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 368
    move-object/from16 v5, v50

    .end local v50    # "factory\\11":Lkotlin/jvm/functions/Function0;
    .local v5, "factory\\11":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 370
    .end local v5    # "factory\\11":Lkotlin/jvm/functions/Function0;
    .restart local v50    # "factory\\11":Lkotlin/jvm/functions/Function0;
    :cond_5
    move-object/from16 v5, v50

    .end local v50    # "factory\\11":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory\\11":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 372
    :goto_2
    move-object/from16 v50, v1

    .end local v1    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v50, "$composer\\11":Landroidx/compose/runtime/Composer;
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240\\12":Landroidx/compose/runtime/Composer;
    const/16 v52, 0x0

    .line 373
    .local v52, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\12\\372\\10":I
    sget-object v53, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v54, v5

    .end local v5    # "factory\\11":Lkotlin/jvm/functions/Function0;
    .local v54, "factory\\11":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v53 .. v53}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    move/from16 v53, v7

    move-object/from16 v7, v36

    .end local v36    # "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v7, "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v53, "$changed\\2":I
    invoke-static {v1, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 374
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 375
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v55, v2

    .end local v2    # "localMap\\10":Landroidx/compose/runtime/CompositionLocalMap;
    .local v55, "localMap\\10":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 376
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 377
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 378
    nop

    .line 372
    .end local v1    # "$this$Layout_u24lambda_u240\\12":Landroidx/compose/runtime/Composer;
    .end local v52    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\12\\372\\10":I
    nop

    .line 379
    shr-int/lit8 v1, v51, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\13":I
    move-object/from16 v2, v50

    .local v2, "$composer\\13":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 355
    .local v5, "$i$a$-Layout-BoxKt$Box$1\\13\\379\\9":I
    move/from16 v36, v1

    .end local v1    # "$changed\\13":I
    .local v36, "$changed\\13":I
    const v1, 0x6d423196

    move/from16 v52, v5

    .end local v5    # "$i$a$-Layout-BoxKt$Box$1\\13\\379\\9":I
    .local v52, "$i$a$-Layout-BoxKt$Box$1\\13\\379\\9":I
    const-string v5, "C72@3469L9:Box.kt#2w3rfo"

    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v5, v30, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed\\14":I
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2420\\14":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v61, v2

    .local v61, "$composer\\14":Landroidx/compose/runtime/Composer;
    const/16 v64, 0x0

    .line 180
    .local v64, "$i$a$-Box-ChatListScreenKt$ChatPartnerCard$2$1$1\\14\\355\\7":I
    move-object/from16 v65, v1

    .end local v1    # "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2420\\14":Landroidx/compose/foundation/layout/BoxScope;
    .local v65, "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2420\\14":Landroidx/compose/foundation/layout/BoxScope;
    const v1, 0x6a5d55cf

    move-object/from16 v66, v2

    .end local v2    # "$composer\\13":Landroidx/compose/runtime/Composer;
    .local v66, "$composer\\13":Landroidx/compose/runtime/Composer;
    const-string v2, "C182@7533L11,179@7373L208:ChatListScreen.kt#5xjsc0"

    move/from16 v67, v5

    move-object/from16 v5, v61

    .end local v61    # "$composer\\14":Landroidx/compose/runtime/Composer;
    .local v5, "$composer\\14":Landroidx/compose/runtime/Composer;
    .local v67, "$changed\\14":I
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 181
    sget-object v1, Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;

    invoke-static {v1}, Landroidx/compose/material/icons/automirrored/filled/ChatKt;->getChat(Landroidx/compose/material/icons/Icons$AutoMirrored$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v56

    .line 182
    nop

    .line 183
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v5, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v59

    .line 180
    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v62, 0x30

    const/16 v63, 0x4

    .end local v5    # "$composer\\14":Landroidx/compose/runtime/Composer;
    .restart local v61    # "$composer\\14":Landroidx/compose/runtime/Composer;
    invoke-static/range {v56 .. v63}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static/range {v61 .. v61}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 185
    nop

    .line 355
    .end local v61    # "$composer\\14":Landroidx/compose/runtime/Composer;
    .end local v64    # "$i$a$-Box-ChatListScreenKt$ChatPartnerCard$2$1$1\\14\\355\\7":I
    .end local v65    # "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2420\\14":Landroidx/compose/foundation/layout/BoxScope;
    .end local v67    # "$changed\\14":I
    invoke-static/range {v66 .. v66}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 379
    .end local v36    # "$changed\\13":I
    .end local v52    # "$i$a$-Layout-BoxKt$Box$1\\13\\379\\9":I
    .end local v66    # "$composer\\13":Landroidx/compose/runtime/Composer;
    nop

    .line 380
    invoke-interface/range {v50 .. v50}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 364
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 381
    nop

    .line 358
    .end local v47    # "$i$f$ReusableComposeNode\\11\\362":I
    .end local v50    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v51    # "$changed\\11":I
    .end local v54    # "factory\\11":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 382
    nop

    .line 349
    .end local v6    # "materialized\\10":Landroidx/compose/ui/Modifier;
    .end local v7    # "measurePolicy\\10":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v34    # "$changed\\10":I
    .end local v43    # "$i$f$Layout\\10\\354":I
    .end local v45    # "compositeKeyHash\\10":I
    .end local v48    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .end local v49    # "modifier\\10":Landroidx/compose/ui/Modifier;
    .end local v55    # "localMap\\10":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 383
    nop

    .line 187
    .end local v30    # "$changed\\9":I
    .end local v32    # "$i$f$Box\\9\\173":I
    .end local v33    # "modifier\\9":Landroidx/compose/ui/Modifier;
    .end local v35    # "measurePolicy\\9":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v42    # "contentAlignment\\9":Landroidx/compose/ui/Alignment;
    .end local v44    # "propagateMinConstraints\\9":Z
    .end local v46    # "$composer\\9":Landroidx/compose/runtime/Composer;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x10

    .local v2, "$this$dp\\15":I
    const/4 v5, 0x0

    .line 384
    .local v5, "$i$f$getDp\\15\\187":I
    int-to-float v6, v2

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 187
    .end local v2    # "$this$dp\\15":I
    .end local v5    # "$i$f$getDp\\15\\187":I
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move/from16 v2, v23

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 190
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v32, v1

    check-cast v32, Landroidx/compose/ui/Modifier;

    const/16 v35, 0x2

    const/16 v36, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 189
    nop

    .local v1, "modifier\\16":Landroidx/compose/ui/Modifier;
    move-object v2, v3

    const/16 v16, 0x0

    .local v2, "$composer\\16":Landroidx/compose/runtime/Composer;
    move/from16 v5, v16

    .local v5, "$changed\\16":I
    const/4 v6, 0x0

    .line 385
    .local v6, "$i$f$Column\\16\\189":I
    const v7, 0x4ff7456f

    move-object/from16 v30, v1

    .end local v1    # "modifier\\16":Landroidx/compose/ui/Modifier;
    .local v30, "modifier\\16":Landroidx/compose/ui/Modifier;
    const-string v1, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v2, v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 386
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v1

    .line 387
    .local v1, "verticalArrangement\\16":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v7

    .line 390
    .local v7, "horizontalAlignment\\16":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v32, v5, 0x3

    and-int/lit8 v32, v32, 0xe

    shr-int/lit8 v33, v5, 0x3

    and-int/lit8 v33, v33, 0x70

    move-object/from16 v34, v3

    .end local v3    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .local v34, "$composer\\7":Landroidx/compose/runtime/Composer;
    or-int v3, v32, v33

    invoke-static {v1, v7, v2, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .line 394
    .local v3, "measurePolicy\\16":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 393
    shl-int/lit8 v32, v5, 0x3

    and-int/lit8 v32, v32, 0x70

    .line 391
    move-object/from16 v33, v30

    .local v33, "modifier\\17":Landroidx/compose/ui/Modifier;
    move-object/from16 v35, v3

    .local v35, "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v36, v2

    .local v32, "$changed\\17":I
    .local v36, "$composer\\17":Landroidx/compose/runtime/Composer;
    const/16 v42, 0x0

    .line 395
    .local v42, "$i$f$Layout\\17\\391":I
    move-object/from16 v43, v1

    move-object/from16 v17, v2

    move-object/from16 v1, v36

    const v2, -0x451e1427

    .end local v2    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .end local v36    # "$composer\\17":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\17":Landroidx/compose/runtime/Composer;
    .local v17, "$composer\\16":Landroidx/compose/runtime/Composer;
    .local v43, "verticalArrangement\\16":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 396
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 397
    .local v0, "compositeKeyHash\\17":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 398
    .local v2, "localMap\\17":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v16, v0

    move-object/from16 v0, v33

    move-object/from16 v33, v3

    .end local v3    # "measurePolicy\\16":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v0, "modifier\\17":Landroidx/compose/ui/Modifier;
    .local v16, "compositeKeyHash\\17":I
    .local v33, "measurePolicy\\16":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 400
    .local v3, "materialized\\17":Landroidx/compose/ui/Modifier;
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v36

    move-object/from16 v44, v0

    .end local v0    # "modifier\\17":Landroidx/compose/ui/Modifier;
    .local v44, "modifier\\17":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v32, 0x6

    and-int/lit16 v0, v0, 0x380

    const/16 v23, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 399
    nop

    .local v0, "$changed\\18":I
    move-object/from16 v45, v1

    .local v45, "$composer\\18":Landroidx/compose/runtime/Composer;
    move-object/from16 v46, v36

    .local v46, "factory\\18":Lkotlin/jvm/functions/Function0;
    const/16 v36, 0x0

    .line 401
    .local v36, "$i$f$ReusableComposeNode\\18\\399":I
    move/from16 v47, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v45

    const v1, -0x20f7d59c

    .end local v1    # "$composer\\17":Landroidx/compose/runtime/Composer;
    .end local v45    # "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v0, "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v21, "$composer\\17":Landroidx/compose/runtime/Composer;
    .local v47, "$changed\\18":I
    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 402
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 403
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 404
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 405
    move-object/from16 v1, v46

    .end local v46    # "factory\\18":Lkotlin/jvm/functions/Function0;
    .local v1, "factory\\18":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 407
    .end local v1    # "factory\\18":Lkotlin/jvm/functions/Function0;
    .restart local v46    # "factory\\18":Lkotlin/jvm/functions/Function0;
    :cond_7
    move-object/from16 v1, v46

    .end local v46    # "factory\\18":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory\\18":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 409
    :goto_3
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240\\19":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 410
    .local v45, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\19\\409\\17":I
    sget-object v46, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v48, v0

    .end local v0    # "$composer\\18":Landroidx/compose/runtime/Composer;
    .local v48, "$composer\\18":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v46 .. v46}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    move-object/from16 v46, v1

    move-object/from16 v1, v35

    .end local v35    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v1, "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v46    # "factory\\18":Lkotlin/jvm/functions/Function0;
    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 411
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 412
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v35, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v49, v1

    .end local v1    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v49, "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 413
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 414
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    nop

    .line 409
    .end local v4    # "$this$Layout_u24lambda_u240\\19":Landroidx/compose/runtime/Composer;
    .end local v45    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\19\\409\\17":I
    nop

    .line 416
    shr-int/lit8 v0, v47, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\20":I
    move-object/from16 v1, v48

    .local v1, "$composer\\20":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 392
    .local v4, "$i$a$-Layout-ColumnKt$Column$1\\20\\416\\16":I
    move/from16 v35, v0

    .end local v0    # "$changed\\20":I
    .local v35, "$changed\\20":I
    const v0, 0x7cc0ae6e

    move-object/from16 v45, v2

    .end local v2    # "localMap\\17":Landroidx/compose/runtime/CompositionLocalMap;
    .local v45, "localMap\\17":Landroidx/compose/runtime/CompositionLocalMap;
    const-string v2, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v5, 0x6

    and-int/lit8 v2, v2, 0x70

    const/16 v23, 0x6

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed\\21":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2421\\21":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v75, v1

    .local v75, "$composer\\21":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 192
    .local v50, "$i$a$-Column-ChatListScreenKt$ChatPartnerCard$2$1$2\\21\\392\\7":I
    move-object/from16 v51, v0

    .end local v0    # "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2421\\21":Landroidx/compose/foundation/layout/ColumnScope;
    .local v51, "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2421\\21":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x4071ed9f

    move-object/from16 v52, v1

    .end local v1    # "$composer\\20":Landroidx/compose/runtime/Composer;
    .local v52, "$composer\\20":Landroidx/compose/runtime/Composer;
    const-string v1, "C193@7838L10,195@7958L11,191@7750L247,197@8014L40,203@8295L10,204@8360L11,198@8071L335:ChatListScreen.kt#5xjsc0"

    move/from16 v79, v2

    move-object/from16 v2, v75

    .end local v75    # "$composer\\21":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\21":Landroidx/compose/runtime/Composer;
    .local v79, "$changed\\21":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 194
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v74

    .line 195
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v61

    .line 196
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v56

    .line 193
    nop

    .line 196
    nop

    .line 195
    nop

    .line 194
    nop

    .line 192
    const/16 v55, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/high16 v76, 0x30000

    const/16 v77, 0x0

    const v78, 0xffda

    move-object/from16 v54, p0

    .end local v2    # "$composer\\21":Landroidx/compose/runtime/Composer;
    .restart local v75    # "$composer\\21":Landroidx/compose/runtime/Composer;
    invoke-static/range {v54 .. v78}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 198
    .end local v75    # "$composer\\21":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\21":Landroidx/compose/runtime/Composer;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x4

    .local v1, "$this$dp\\22":I
    const/16 v54, 0x0

    .line 417
    .local v54, "$i$f$getDp\\22\\198":I
    move-object/from16 v80, v3

    .end local v3    # "materialized\\17":Landroidx/compose/ui/Modifier;
    .local v80, "materialized\\17":Landroidx/compose/ui/Modifier;
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 198
    .end local v1    # "$this$dp\\22":I
    .end local v54    # "$i$f$getDp\\22\\198":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 200
    const-string v0, "paciente"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    const-string v0, "Tu psic\u00f3logo asignado"

    move-object/from16 v54, v0

    goto :goto_4

    .line 203
    :cond_8
    const-string v0, "Tu paciente"

    move-object/from16 v54, v0

    .line 200
    :goto_4
    nop

    .line 204
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v74

    .line 205
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v56

    .line 200
    nop

    .line 205
    nop

    .line 204
    nop

    .line 199
    const/16 v55, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const v78, 0xfffa

    move-object/from16 v75, v2

    .end local v2    # "$composer\\21":Landroidx/compose/runtime/Composer;
    .restart local v75    # "$composer\\21":Landroidx/compose/runtime/Composer;
    invoke-static/range {v54 .. v78}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 192
    invoke-static/range {v75 .. v75}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 207
    nop

    .line 392
    .end local v50    # "$i$a$-Column-ChatListScreenKt$ChatPartnerCard$2$1$2\\21\\392\\7":I
    .end local v51    # "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422_u24lambda_u2421\\21":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v75    # "$composer\\21":Landroidx/compose/runtime/Composer;
    .end local v79    # "$changed\\21":I
    invoke-static/range {v52 .. v52}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 416
    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1\\20\\416\\16":I
    .end local v35    # "$changed\\20":I
    .end local v52    # "$composer\\20":Landroidx/compose/runtime/Composer;
    nop

    .line 418
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 401
    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 419
    nop

    .line 395
    .end local v36    # "$i$f$ReusableComposeNode\\18\\399":I
    .end local v46    # "factory\\18":Lkotlin/jvm/functions/Function0;
    .end local v47    # "$changed\\18":I
    .end local v48    # "$composer\\18":Landroidx/compose/runtime/Composer;
    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 420
    nop

    .line 385
    .end local v16    # "compositeKeyHash\\17":I
    .end local v21    # "$composer\\17":Landroidx/compose/runtime/Composer;
    .end local v32    # "$changed\\17":I
    .end local v42    # "$i$f$Layout\\17\\391":I
    .end local v44    # "modifier\\17":Landroidx/compose/ui/Modifier;
    .end local v45    # "localMap\\17":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v49    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v80    # "materialized\\17":Landroidx/compose/ui/Modifier;
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 421
    nop

    .line 173
    .end local v5    # "$changed\\16":I
    .end local v6    # "$i$f$Column\\16\\189":I
    .end local v7    # "horizontalAlignment\\16":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v17    # "$composer\\16":Landroidx/compose/runtime/Composer;
    .end local v30    # "modifier\\16":Landroidx/compose/ui/Modifier;
    .end local v33    # "measurePolicy\\16":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v43    # "verticalArrangement\\16":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static/range {v34 .. v34}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 208
    nop

    .line 323
    .end local v31    # "$this$ChatPartnerCard_u24lambda_u2423_u24lambda_u2422\\7":Landroidx/compose/foundation/layout/RowScope;
    .end local v34    # "$composer\\7":Landroidx/compose/runtime/Composer;
    .end local v37    # "$i$a$-Row-ChatListScreenKt$ChatPartnerCard$2$1\\7\\323\\0":I
    .end local v38    # "$changed\\7":I
    invoke-static/range {v39 .. v39}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 347
    .end local v26    # "$changed\\6":I
    .end local v39    # "$composer\\6":Landroidx/compose/runtime/Composer;
    .end local v40    # "$i$a$-Layout-RowKt$Row$1\\6\\347\\2":I
    nop

    .line 422
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 332
    invoke-static/range {v28 .. v28}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 423
    nop

    .line 326
    .end local v19    # "$i$f$ReusableComposeNode\\4\\330":I
    .end local v20    # "$changed\\4":I
    .end local v22    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v28    # "$composer\\4":Landroidx/compose/runtime/Composer;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 424
    nop

    .line 316
    .end local v11    # "$changed\\3":I
    .end local v12    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v13    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v14    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v15    # "$i$f$Layout\\3\\322":I
    .end local v27    # "materialized\\3":Landroidx/compose/ui/Modifier;
    .end local v29    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v41    # "compositeKeyHash\\3":I
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 425
    nop

    .end local v8    # "$i$f$Row\\2\\167":I
    .end local v9    # "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v10    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v18    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .end local v24    # "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .end local v25    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v53    # "$changed\\2":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_5

    .line 166
    :cond_9
    move-object/from16 v1, p1

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 209
    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ChatPartnerCard$lambda$24(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatListScreenKt;->ChatPartnerCard(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
