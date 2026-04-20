.class public final Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "BasicText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,749:1\n75#2:750\n75#2:751\n75#2:764\n75#2:765\n75#2:790\n75#2:791\n75#2:804\n1128#3,6:752\n1128#3,6:758\n1128#3,6:792\n1128#3,6:798\n1128#3,6:829\n1128#3,6:835\n1128#3,6:850\n1128#3,6:856\n1128#3,6:862\n1128#3,6:868\n1128#3,6:874\n1128#3,6:880\n1128#3,6:886\n1128#3,6:892\n1128#3,6:898\n124#4,6:766\n131#4,6:781\n138#4:789\n124#4,6:805\n131#4,6:820\n138#4:828\n81#4,6:904\n88#4,6:919\n96#4:928\n316#5,9:772\n325#5,2:787\n316#5,9:811\n325#5,2:826\n391#5,9:910\n400#5,3:925\n304#6,2:841\n71#6,3:843\n75#6:848\n306#6:849\n1#7:846\n1#7:847\n85#8:929\n117#8,2:930\n*S KotlinDebug\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n*L\n105#1:750\n108#1:751\n120#1:764\n134#1:765\n203#1:790\n206#1:791\n220#1:804\n110#1:752,6\n113#1:758,6\n208#1:792,6\n211#1:798,6\n254#1:829,6\n270#1:835,6\n651#1:850,6\n658#1:856,6\n660#1:862,6\n671#1:868,6\n676#1:874,6\n695#1:880,6\n714#1:886,6\n718#1:892,6\n719#1:898,6\n155#1:766,6\n155#1:781,6\n155#1:789\n231#1:805,6\n231#1:820,6\n231#1:828\n686#1:904,6\n686#1:919,6\n686#1:928\n155#1:772,9\n155#1:787,2\n231#1:811,9\n231#1:826,2\n686#1:910,9\n686#1:925,3\n553#1:841,2\n553#1:843,3\n553#1:848\n553#1:849\n553#1:847\n254#1:929\n254#1:930,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u0083\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0099\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001a2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001aw\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a\u008d\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001a2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010 \u001aa\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008!\u0010\"\u001aw\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001aH\u0007\u00a2\u0006\u0004\u0008#\u0010$\u001ak\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008#\u0010%\u001a\u0081\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001aH\u0007\u00a2\u0006\u0004\u0008\u001e\u0010&\u001a\u001e\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0(2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002\u001a@\u0010,\u001a\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020/\u0012\u000c\u0012\n\u0012\u0004\u0012\u000201\u0018\u0001000.\u0018\u00010-2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002030-2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000e00H\u0002\u001a\u00c9\u0001\u00105\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0014\u00108\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020:09\u0018\u00010-2\u001c\u0010;\u001a\u0018\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010<0-\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0014\u0010?\u001a\u0010\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008A\u0010B\u001a\u00b7\u0001\u0010C\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00182\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010D\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0014\u0010?\u001a\u0010\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0003\u00a2\u0006\u0004\u0008E\u0010F\u00a8\u0006G\u00b2\u0006\n\u0010H\u001a\u00020\u0018X\u008a\u008e\u0002"
    }
    d2 = {
        "BasicText",
        "",
        "text",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "onTextLayout",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "softWrap",
        "",
        "maxLines",
        "",
        "minLines",
        "color",
        "Landroidx/compose/ui/graphics/ColorProducer;",
        "autoSize",
        "Landroidx/compose/foundation/text/TextAutoSize;",
        "BasicText-RWo7tUw",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "inlineContent",
        "",
        "Landroidx/compose/foundation/text/InlineTextContent;",
        "BasicText-CL7eQgs",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V",
        "BasicText-VhcvRP8",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V",
        "BasicText-BpD7jsM",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V",
        "BasicText-4YKlhWE",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "selectionIdSaver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "",
        "selectionRegistrar",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
        "measureWithTextRangeMeasureConstraints",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/layout/Placeable;",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "measurables",
        "Landroidx/compose/ui/layout/Measurable;",
        "shouldMeasureLinks",
        "textModifier",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "placeholders",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/Placeholder;",
        "onPlaceholderLayout",
        "Landroidx/compose/ui/geometry/Rect;",
        "selectionController",
        "Landroidx/compose/foundation/text/modifiers/SelectionController;",
        "onShowTranslation",
        "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;",
        "textModifier-CL7eQgs",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;",
        "LayoutWithLinksAndInlineContent",
        "hasInlineContent",
        "LayoutWithLinksAndInlineContent-11Od_4g",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V",
        "foundation",
        "displayedText"
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
.method public static synthetic $r8$lambda$3_N8UIU533ibeUqjTAAaOCCYZCw(Landroidx/compose/runtime/MutableState;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$4$0(Landroidx/compose/runtime/MutableState;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IUeU8J7jgA_Om7kUMzqhYmBdS-4(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$2$0(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JGzY3PAQWoicXOKo7g_T2qcP13Y(Landroidx/compose/foundation/text/TextLinkScope;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$7$0(Landroidx/compose/foundation/text/TextLinkScope;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KfNERdSZspclrPtF7-JGc-ik6ew(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J
    .locals 2

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText_RWo7tUw$lambda$0$0(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$QIamDssrSz6f1AA87CxyOUpt1Tg(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$6$0(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YZjiog-e7SI4H2y73shVBmOST1I(Landroidx/compose/foundation/text/TextLinkScope;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$8$0(Landroidx/compose/foundation/text/TextLinkScope;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ae1CQlo-OZbKFUNQkrELWmtjpNM(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText_CL7eQgs$lambda$5$0(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kN7FLDccAq-xT3g1TKVqSLGOjl8(Landroidx/compose/runtime/MutableState;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$9$0(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n4vN65FWJZ64A2x_sVJud6oJ4vA(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J
    .locals 2

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText_CL7eQgs$lambda$0$0(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$qfwpW3k9W9Myr_IU8yqcggZ1wto(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent_11Od_4g$lambda$1$0(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "inlineContent"    # Ljava/util/Map;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 409
    move/from16 v9, p9

    move/from16 v10, p10

    const v0, -0x26a8f0e8

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,inlineContent)409@18970L274:BasicText.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p9

    .local v2, "$dirty":I
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_1

    move-object/from16 v11, p0

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v10, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v10, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v8, v9, 0xc00

    if-nez v8, :cond_a

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v2, v12

    goto :goto_7

    :cond_a
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v12, v10, 0x10

    if-eqz v12, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_d

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_d
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, v10, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_e

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_e
    and-int/2addr v15, v9

    if-nez v15, :cond_10

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_10
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v10, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v2, v2, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v17, v9, v17

    if-nez v17, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v10, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_14

    or-int v2, v2, v18

    move/from16 v19, v0

    move-object/from16 v0, p7

    goto :goto_f

    :cond_14
    and-int v19, v9, v18

    if-nez v19, :cond_16

    move/from16 v19, v0

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v20, 0x400000

    :goto_e
    or-int v2, v2, v20

    goto :goto_f

    :cond_16
    move/from16 v19, v0

    move-object/from16 v0, p7

    :goto_f
    const v20, 0x492493

    and-int v0, v2, v20

    move/from16 p8, v3

    const v3, 0x492492

    if-eq v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p8, :cond_18

    .line 402
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move/from16 v26, v12

    move-object v12, v0

    move/from16 v0, v26

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_11

    .line 409
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move v0, v12

    move-object v12, v4

    .line 402
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    if-eqz v5, :cond_19

    .line 403
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object v13, v3

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_12

    .line 402
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_19
    move-object v13, v6

    .line 403
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v13, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_12
    if-eqz v7, :cond_1a

    .line 404
    const/4 v3, 0x0

    move/from16 v26, v14

    move-object v14, v3

    move/from16 v3, v26

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_13

    .line 403
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1a
    move v3, v14

    move-object v14, v8

    .line 404
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v14, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_13
    if-eqz v0, :cond_1b

    .line 405
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move v15, v0

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v0, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_14

    .line 404
    .end local v0    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_1b
    move/from16 v15, p4

    .line 405
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v15, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_14
    if-eqz v3, :cond_1c

    .line 406
    const/4 v0, 0x1

    move/from16 v26, v16

    move/from16 v16, v0

    move/from16 v0, v26

    .end local p5    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_15

    .line 405
    .end local v0    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1c
    move/from16 v0, v16

    move/from16 v16, p5

    .line 406
    .end local p5    # "softWrap":Z
    .local v16, "softWrap":Z
    :goto_15
    if-eqz v0, :cond_1d

    .line 407
    const v0, 0x7fffffff

    move/from16 v17, v0

    const v0, -0x26a8f0e8

    .end local p6    # "maxLines":I
    .local v0, "maxLines":I
    goto :goto_16

    .line 406
    .end local v0    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_1d
    move/from16 v17, p6

    const v0, -0x26a8f0e8

    .line 407
    .end local p6    # "maxLines":I
    .local v17, "maxLines":I
    :goto_16
    if-eqz v19, :cond_1e

    .line 408
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v19, v3

    .end local p7    # "inlineContent":Ljava/util/Map;
    .local v3, "inlineContent":Ljava/util/Map;
    goto :goto_17

    .line 407
    .end local v3    # "inlineContent":Ljava/util/Map;
    .restart local p7    # "inlineContent":Ljava/util/Map;
    :cond_1e
    move-object/from16 v19, p7

    .line 408
    .end local p7    # "inlineContent":Ljava/util/Map;
    .local v19, "inlineContent":Ljava/util/Map;
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.text.BasicText (BasicText.kt:408)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 411
    :cond_1f
    nop

    .line 412
    nop

    .line 413
    nop

    .line 414
    nop

    .line 415
    nop

    .line 416
    nop

    .line 417
    nop

    .line 418
    nop

    .line 419
    and-int/lit8 v0, v2, 0xe

    or-int v0, v0, v18

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    const/high16 v4, 0xe000000

    and-int/2addr v3, v4

    or-int v23, v0, v3

    .line 410
    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x600

    move-object/from16 v22, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v25}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 421
    :cond_20
    move-object v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v19

    goto :goto_18

    .line 400
    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v13    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v14    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v15    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v16    # "softWrap":Z
    .end local v17    # "maxLines":I
    .end local v19    # "inlineContent":Ljava/util/Map;
    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "softWrap":Z
    .restart local p6    # "maxLines":I
    .restart local p7    # "inlineContent":Ljava/util/Map;
    :cond_21
    move-object/from16 v22, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v7, p6

    move-object v12, v4

    move-object v3, v6

    move-object v4, v8

    move/from16 v6, p5

    move-object/from16 v8, p7

    .line 421
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "inlineContent":Ljava/util/Map;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "inlineContent":Ljava/util/Map;
    .restart local v12    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_22

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda20;

    move-object v1, v12

    move v12, v2

    move-object v2, v1

    move-object/from16 v1, p0

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "$dirty":I
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda20;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;II)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .local v2, "$dirty":I
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object/from16 v26, v12

    move v12, v2

    move-object/from16 v2, v26

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "$dirty":I
    :goto_19
    return-void
.end method

.method public static final synthetic BasicText-4YKlhWE(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compat"
    .end annotation

    .line 434
    move/from16 v9, p9

    move/from16 v10, p10

    const v0, 0x5bf3fbc9

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines)433@19643L86:BasicText.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p9

    .local v2, "$dirty":I
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_1

    move-object/from16 v11, p0

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v10, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v10, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v8, v9, 0xc00

    if-nez v8, :cond_a

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v2, v12

    goto :goto_7

    :cond_a
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v12, v10, 0x10

    if-eqz v12, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_d

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_d
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, v10, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_e

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_e
    and-int/2addr v15, v9

    if-nez v15, :cond_10

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_10
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v10, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v2, v2, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v17, v9, v17

    if-nez v17, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v10, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_14

    or-int v2, v2, v18

    move/from16 v18, v0

    move/from16 v0, p7

    goto :goto_f

    :cond_14
    and-int v18, v9, v18

    if-nez v18, :cond_16

    move/from16 v18, v0

    move/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    goto :goto_f

    :cond_16
    move/from16 v18, v0

    move/from16 v0, p7

    :goto_f
    const v19, 0x492493

    and-int v0, v2, v19

    move/from16 p8, v3

    const v3, 0x492492

    if-eq v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p8, :cond_18

    .line 427
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move/from16 v24, v12

    move-object v12, v0

    move/from16 v0, v24

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_11

    .line 434
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move v0, v12

    move-object v12, v4

    .line 427
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    if-eqz v5, :cond_19

    .line 428
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object v13, v3

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_12

    .line 427
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_19
    move-object v13, v6

    .line 428
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v13, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_12
    if-eqz v7, :cond_1a

    .line 429
    const/4 v3, 0x0

    move/from16 v24, v14

    move-object v14, v3

    move/from16 v3, v24

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_13

    .line 428
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1a
    move v3, v14

    move-object v14, v8

    .line 429
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v14, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_13
    if-eqz v0, :cond_1b

    .line 430
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move v15, v0

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v0, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_14

    .line 429
    .end local v0    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_1b
    move/from16 v15, p4

    .line 430
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v15, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_14
    if-eqz v3, :cond_1c

    .line 431
    const/4 v0, 0x1

    move/from16 v24, v16

    move/from16 v16, v0

    move/from16 v0, v24

    .end local p5    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_15

    .line 430
    .end local v0    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1c
    move/from16 v0, v16

    move/from16 v16, p5

    .line 431
    .end local p5    # "softWrap":Z
    .local v16, "softWrap":Z
    :goto_15
    if-eqz v0, :cond_1d

    .line 432
    const v0, 0x7fffffff

    move/from16 v17, v0

    const v0, 0x5bf3fbc9

    .end local p6    # "maxLines":I
    .local v0, "maxLines":I
    goto :goto_16

    .line 431
    .end local v0    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_1d
    move/from16 v17, p6

    const v0, 0x5bf3fbc9

    .line 432
    .end local p6    # "maxLines":I
    .local v17, "maxLines":I
    :goto_16
    if-eqz v18, :cond_1e

    .line 433
    const/4 v3, 0x1

    move/from16 v18, v3

    .end local p7    # "minLines":I
    .local v3, "minLines":I
    goto :goto_17

    .line 432
    .end local v3    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_1e
    move/from16 v18, p7

    .line 433
    .end local p7    # "minLines":I
    .local v18, "minLines":I
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.text.BasicText (BasicText.kt:433)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 434
    :cond_1f
    and-int/lit8 v0, v2, 0xe

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int v22, v0, v3

    const/16 v23, 0x300

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v23}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    move-object v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    goto :goto_18

    .line 425
    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v13    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v14    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v15    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v16    # "softWrap":Z
    .end local v17    # "maxLines":I
    .end local v18    # "minLines":I
    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "softWrap":Z
    .restart local p6    # "maxLines":I
    .restart local p7    # "minLines":I
    :cond_21
    move-object/from16 v21, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v7, p6

    move-object v12, v4

    move-object v3, v6

    move-object v4, v8

    move/from16 v6, p5

    move/from16 v8, p7

    .line 434
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "minLines":I
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "minLines":I
    .restart local v12    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_22

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    move-object v1, v12

    move v12, v2

    move-object v2, v1

    move-object/from16 v1, p0

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "$dirty":I
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIII)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .local v2, "$dirty":I
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object/from16 v24, v12

    move v12, v2

    move-object/from16 v2, v24

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "$dirty":I
    :goto_19
    return-void
.end method

.method public static final synthetic BasicText-BpD7jsM(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 385
    move/from16 v8, p8

    const v0, 0x3cf10926

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines)385@18278L235:BasicText.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_1

    move-object/from16 v9, p0

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p0

    :goto_1
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v10, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_a

    move-object/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v2, v11

    goto :goto_7

    :cond_a
    move-object/from16 v10, p3

    :goto_7
    and-int/lit8 v11, p9, 0x10

    if-eqz v11, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v12, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v12, v8, 0x6000

    if-nez v12, :cond_d

    move/from16 v12, p4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v2, v13

    goto :goto_9

    :cond_d
    move/from16 v12, p4

    :goto_9
    and-int/lit8 v13, p9, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_e

    or-int/2addr v2, v14

    move/from16 v14, p5

    goto :goto_b

    :cond_e
    and-int/2addr v14, v8

    if-nez v14, :cond_10

    move/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v2, v15

    goto :goto_b

    :cond_10
    move/from16 v14, p5

    :goto_b
    and-int/lit8 v15, p9, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_11

    or-int v2, v2, v16

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v16, v8, v16

    if-nez v16, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    const v17, 0x92493

    and-int v0, v2, v17

    move/from16 p7, v3

    const v3, 0x92492

    if-eq v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p7, :cond_15

    .line 379
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v10, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 385
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move-object v10, v4

    .line 379
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v5, :cond_16

    .line 380
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move/from16 v22, v11

    move-object v11, v0

    move/from16 v0, v22

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v0, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_10

    .line 379
    .end local v0    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_16
    move v0, v11

    move-object v11, v6

    .line 380
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v11, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_10
    if-eqz v7, :cond_17

    .line 381
    const/4 v3, 0x0

    move-object v12, v3

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_11

    .line 380
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_17
    move-object/from16 v12, p3

    .line 381
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v12, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_11
    if-eqz v0, :cond_18

    .line 382
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move/from16 v22, v13

    move v13, v0

    move/from16 v0, v22

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v0, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_12

    .line 381
    .end local v0    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_18
    move v0, v13

    move/from16 v13, p4

    .line 382
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v13, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_12
    if-eqz v0, :cond_19

    .line 383
    const/4 v0, 0x1

    move v14, v0

    .end local p5    # "softWrap":Z
    .local v14, "softWrap":Z
    :cond_19
    if-eqz v15, :cond_1a

    .line 384
    const v0, 0x7fffffff

    move v15, v0

    .end local p6    # "maxLines":I
    .local v0, "maxLines":I
    goto :goto_13

    .line 383
    .end local v0    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_1a
    move/from16 v15, p6

    .line 384
    .end local p6    # "maxLines":I
    .local v15, "maxLines":I
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.BasicText (BasicText.kt:384)"

    const v4, 0x3cf10926

    invoke-static {v4, v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 387
    :cond_1b
    nop

    .line 388
    nop

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 392
    nop

    .line 394
    nop

    .line 393
    and-int/lit8 v0, v2, 0xe

    const/high16 v3, 0xc00000

    or-int/2addr v0, v3

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int v20, v0, v3

    .line 386
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x300

    move-object/from16 v19, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v9 .. v21}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 396
    :cond_1c
    move-object v3, v11

    move-object v4, v12

    move v5, v13

    move v7, v15

    move v6, v14

    goto :goto_14

    .line 377
    .end local v10    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v11    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v12    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v13    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v14    # "softWrap":Z
    .end local v15    # "maxLines":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "softWrap":Z
    .restart local p6    # "maxLines":I
    :cond_1d
    move-object/from16 v19, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v7, p6

    move-object v10, v4

    move-object v3, v6

    move-object/from16 v4, p3

    move v6, v14

    .line 396
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .restart local v10    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_1e

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda19;

    move-object v1, v10

    move v10, v2

    move-object v2, v1

    move-object/from16 v1, p0

    move/from16 v9, p9

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "$dirty":I
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIII)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .local v2, "$dirty":I
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move-object/from16 v22, v10

    move v10, v2

    move-object/from16 v2, v22

    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "$dirty":I
    :goto_15
    return-void
.end method

.method public static final BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "inlineContent"    # Ljava/util/Map;
    .param p9, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p10, "autoSize"    # Landroidx/compose/foundation/text/TextAutoSize;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Landroidx/compose/foundation/text/TextAutoSize;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 201
    move-object/from16 v1, p0

    move-object/from16 v0, p10

    move/from16 v15, p12

    move/from16 v2, p14

    const v3, -0x5013ac4b

    move-object/from16 v4, p11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,inlineContent,color,autoSize)202@10280L7,219@11037L7:BasicText.kt#423gt5"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p12

    .local v5, "$dirty":I
    move/from16 v6, p13

    .local v6, "$dirty1":I
    and-int/lit8 v7, v15, 0x6

    if-nez v7, :cond_1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v5, v7

    :cond_1
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_2

    or-int/lit8 v5, v5, 0x30

    move-object/from16 v10, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v10, v15, 0x30

    if-nez v10, :cond_4

    move-object/from16 v10, p1

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x20

    goto :goto_1

    :cond_3
    const/16 v11, 0x10

    :goto_1
    or-int/2addr v5, v11

    goto :goto_2

    :cond_4
    move-object/from16 v10, p1

    :goto_2
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_5

    or-int/lit16 v5, v5, 0x180

    move-object/from16 v12, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_7

    move-object/from16 v12, p2

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x100

    goto :goto_3

    :cond_6
    const/16 v13, 0x80

    :goto_3
    or-int/2addr v5, v13

    goto :goto_4

    :cond_7
    move-object/from16 v12, p2

    :goto_4
    and-int/lit8 v13, v2, 0x8

    if-eqz v13, :cond_8

    or-int/lit16 v5, v5, 0xc00

    move-object/from16 v14, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v14, v15, 0xc00

    if-nez v14, :cond_a

    move-object/from16 v14, p3

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x800

    goto :goto_5

    :cond_9
    const/16 v16, 0x400

    :goto_5
    or-int v5, v5, v16

    goto :goto_6

    :cond_a
    move-object/from16 v14, p3

    :goto_6
    and-int/lit8 v16, v2, 0x10

    if-eqz v16, :cond_b

    or-int/lit16 v5, v5, 0x6000

    move/from16 v8, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_d

    move/from16 v8, p4

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x4000

    goto :goto_7

    :cond_c
    const/16 v17, 0x2000

    :goto_7
    or-int v5, v5, v17

    goto :goto_8

    :cond_d
    move/from16 v8, p4

    :goto_8
    and-int/lit8 v17, v2, 0x20

    const/high16 v18, 0x30000

    if-eqz v17, :cond_e

    or-int v5, v5, v18

    move/from16 v3, p5

    goto :goto_a

    :cond_e
    and-int v18, v15, v18

    if-nez v18, :cond_10

    move/from16 v3, p5

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v19, 0x10000

    :goto_9
    or-int v5, v5, v19

    goto :goto_a

    :cond_10
    move/from16 v3, p5

    :goto_a
    and-int/lit8 v19, v2, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_11

    or-int v5, v5, v20

    move/from16 v9, p6

    goto :goto_c

    :cond_11
    and-int v20, v15, v20

    if-nez v20, :cond_13

    move/from16 v9, p6

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v21, 0x80000

    :goto_b
    or-int v5, v5, v21

    goto :goto_c

    :cond_13
    move/from16 v9, p6

    :goto_c
    and-int/lit16 v1, v2, 0x80

    const/high16 v21, 0xc00000

    if-eqz v1, :cond_14

    or-int v5, v5, v21

    move/from16 v21, v1

    move/from16 v1, p7

    goto :goto_e

    :cond_14
    and-int v21, v15, v21

    if-nez v21, :cond_16

    move/from16 v21, v1

    move/from16 v1, p7

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v22

    if-eqz v22, :cond_15

    const/high16 v22, 0x800000

    goto :goto_d

    :cond_15
    const/high16 v22, 0x400000

    :goto_d
    or-int v5, v5, v22

    goto :goto_e

    :cond_16
    move/from16 v21, v1

    move/from16 v1, p7

    :goto_e
    and-int/lit16 v1, v2, 0x100

    const/high16 v22, 0x6000000

    if-eqz v1, :cond_17

    or-int v5, v5, v22

    move/from16 v22, v1

    move-object/from16 v1, p8

    goto :goto_10

    :cond_17
    and-int v22, v15, v22

    if-nez v22, :cond_19

    move/from16 v22, v1

    move-object/from16 v1, p8

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    const/high16 v23, 0x4000000

    goto :goto_f

    :cond_18
    const/high16 v23, 0x2000000

    :goto_f
    or-int v5, v5, v23

    goto :goto_10

    :cond_19
    move/from16 v22, v1

    move-object/from16 v1, p8

    :goto_10
    and-int/lit16 v1, v2, 0x200

    const/high16 v23, 0x30000000

    if-eqz v1, :cond_1a

    or-int v5, v5, v23

    move/from16 v23, v1

    move-object/from16 v1, p9

    goto :goto_12

    :cond_1a
    and-int v23, v15, v23

    if-nez v23, :cond_1c

    move/from16 v23, v1

    move-object/from16 v1, p9

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    const/high16 v24, 0x20000000

    goto :goto_11

    :cond_1b
    const/high16 v24, 0x10000000

    :goto_11
    or-int v5, v5, v24

    goto :goto_12

    :cond_1c
    move/from16 v23, v1

    move-object/from16 v1, p9

    :goto_12
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_1d

    or-int/lit8 v6, v6, 0x6

    goto :goto_15

    :cond_1d
    and-int/lit8 v24, p13, 0x6

    if-nez v24, :cond_20

    and-int/lit8 v24, p13, 0x8

    if-nez v24, :cond_1e

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    goto :goto_13

    :cond_1e
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    :goto_13
    if-eqz v24, :cond_1f

    const/16 v24, 0x4

    goto :goto_14

    :cond_1f
    const/16 v24, 0x2

    :goto_14
    or-int v6, v6, v24

    :cond_20
    :goto_15
    const v24, 0x12492493

    and-int v0, v5, v24

    move/from16 v24, v1

    const v1, 0x12492492

    const/16 v25, 0x1

    if-ne v0, v1, :cond_22

    and-int/lit8 v0, v6, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    goto :goto_17

    :cond_22
    :goto_16
    move/from16 v0, v25

    :goto_17
    and-int/lit8 v1, v5, 0x1

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v7, :cond_23

    .line 191
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_18

    .line 201
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_23
    move-object v0, v10

    .line 191
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    if-eqz v11, :cond_24

    .line 192
    sget-object v1, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v1, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_19

    .line 191
    .end local v1    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_24
    move-object v1, v12

    .line 192
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v1    # "style":Landroidx/compose/ui/text/TextStyle;
    :goto_19
    if-eqz v13, :cond_25

    .line 193
    const/4 v7, 0x0

    move-object v3, v7

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_1a

    .line 192
    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_25
    move-object v3, v14

    .line 193
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_1a
    if-eqz v16, :cond_26

    .line 194
    sget-object v7, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v7

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v7, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_1b

    .line 193
    .end local v7    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_26
    move v7, v8

    .line 194
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local v7    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_1b
    if-eqz v17, :cond_27

    .line 195
    const/4 v8, 0x1

    .end local p5    # "softWrap":Z
    .local v8, "softWrap":Z
    goto :goto_1c

    .line 194
    .end local v8    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_27
    move/from16 v8, p5

    .line 195
    .end local p5    # "softWrap":Z
    .restart local v8    # "softWrap":Z
    :goto_1c
    if-eqz v19, :cond_28

    .line 196
    const v10, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v10, "maxLines":I
    goto :goto_1d

    .line 195
    .end local v10    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_28
    move/from16 v10, p6

    .line 196
    .end local p6    # "maxLines":I
    .restart local v10    # "maxLines":I
    :goto_1d
    if-eqz v21, :cond_29

    .line 197
    const/4 v11, 0x1

    move/from16 v39, v11

    move v11, v7

    move/from16 v7, v39

    .end local p7    # "minLines":I
    .local v11, "minLines":I
    goto :goto_1e

    .line 196
    .end local v11    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_29
    move v11, v7

    move/from16 v7, p7

    .line 197
    .end local p7    # "minLines":I
    .local v7, "minLines":I
    .local v11, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_1e
    if-eqz v22, :cond_2a

    .line 198
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v20, v12

    const/4 v12, 0x2

    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v12, "inlineContent":Ljava/util/Map;
    goto :goto_1f

    .line 197
    .end local v12    # "inlineContent":Ljava/util/Map;
    .restart local p8    # "inlineContent":Ljava/util/Map;
    :cond_2a
    move-object/from16 v20, p8

    const/4 v12, 0x2

    .line 198
    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v20, "inlineContent":Ljava/util/Map;
    :goto_1f
    if-eqz v23, :cond_2b

    .line 199
    const/4 v13, 0x0

    move-object/from16 v28, v13

    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v13, "color":Landroidx/compose/ui/graphics/ColorProducer;
    goto :goto_20

    .line 198
    .end local v13    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_2b
    move-object/from16 v28, p9

    .line 199
    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v28, "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_20
    if-eqz v24, :cond_2c

    .line 200
    const/4 v13, 0x0

    move-object v14, v13

    .end local p10    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v13, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    goto :goto_21

    .line 199
    .end local v13    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .restart local p10    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :cond_2c
    move-object/from16 v14, p10

    .line 200
    .end local p10    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v14, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :goto_21
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_2d

    const-string/jumbo v13, "androidx.compose.foundation.text.BasicText (BasicText.kt:200)"

    const v12, -0x5013ac4b

    invoke-static {v12, v5, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 202
    :cond_2d
    invoke-static {v7, v10}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    .line 203
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .local v12, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v13, 0x6

    .local v13, "$changed$iv":I
    move-object/from16 p2, v4

    .local p2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 790
    .local v16, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    move-object/from16 v18, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    const-string v0, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    move-object/from16 v21, v1

    move-object/from16 v1, p2

    .end local p2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v21, "style":Landroidx/compose/ui/text/TextStyle;
    invoke-static {v1, v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v19

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 203
    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v13    # "$changed$iv":I
    .end local v16    # "$i$f$getCurrent":I
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 205
    .local v1, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    const-string v13, "CC(remember):BasicText.kt#9igjgp"

    if-eqz v1, :cond_32

    const v12, 0x5eab0cd5

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v12, "205@10428L7,207@10582L77,207@10499L160,210@10672L180"

    invoke-static {v4, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .restart local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v19, 0x6

    .local v19, "$changed$iv":I
    move-object/from16 p2, v4

    .restart local p2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 791
    .local v22, "$i$f$getCurrent":I
    move-object/from16 v2, p2

    .end local p2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v23

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v19    # "$changed$iv":I
    .end local v22    # "$i$f$getCurrent":I
    check-cast v23, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 206
    move/from16 v24, v10

    .end local v10    # "maxLines":I
    .local v24, "maxLines":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v9

    .line 208
    .local v9, "backgroundSelectionColor":J
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v1}, Landroidx/compose/foundation/text/BasicTextKt;->selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    move-object/from16 v22, v3

    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v22, "onTextLayout":Lkotlin/jvm/functions/Function1;
    const v3, 0x6626a722

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv":Z
    .local p2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 792
    .local v23, "$i$f$cache":I
    move/from16 p3, v3

    .end local v3    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 793
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p3, :cond_2f

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v29, v5

    .end local v5    # "$dirty":I
    .local v29, "$dirty":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2e

    goto :goto_22

    .line 797
    :cond_2e
    move-object/from16 v5, p2

    goto :goto_23

    .line 793
    .end local v29    # "$dirty":I
    .restart local v5    # "$dirty":I
    :cond_2f
    move/from16 v29, v5

    .line 794
    .end local v5    # "$dirty":I
    .restart local v29    # "$dirty":I
    :goto_22
    const/4 v5, 0x0

    .line 208
    .local v5, "$i$a$-cache-BasicTextKt$BasicText$selectionController$selectableId$2":I
    move-object/from16 p4, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local p4, "it$iv":Ljava/lang/Object;
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 794
    .end local v5    # "$i$a$-cache-BasicTextKt$BasicText$selectionController$selectableId$2":I
    nop

    .line 795
    .local v3, "value$iv":Ljava/lang/Object;
    move-object/from16 v5, p2

    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 796
    nop

    .line 792
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p4    # "it$iv":Ljava/lang/Object;
    :goto_23
    nop

    .line 208
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v5, 0x0

    invoke-static {v12, v2, v3, v4, v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 207
    nop

    .line 211
    .local v2, "selectableId":J
    const v12, 0x6626b2c9

    invoke-static {v4, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v12, v12, v17

    invoke-interface {v4, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    or-int v12, v12, v17

    .local v12, "invalid$iv":Z
    move-object/from16 v17, v4

    .local v17, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 798
    .restart local v23    # "$i$f$cache":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 799
    .local v27, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v12, :cond_31

    sget-object v30, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p5, v1

    .end local v1    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local p5, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_30

    goto :goto_24

    .line 803
    :cond_30
    move-object/from16 v35, p5

    move-wide/from16 p6, v9

    move-object/from16 v1, v17

    move-wide v9, v2

    goto :goto_25

    .line 799
    .end local p5    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .restart local v1    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :cond_31
    move-object/from16 p5, v1

    .line 800
    .end local v1    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .restart local p5    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :goto_24
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$a$-cache-BasicTextKt$BasicText$selectionController$2":I
    new-instance v30, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/16 v31, 0x8

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-wide/from16 p3, v2

    move-wide/from16 p6, v9

    move-object/from16 p2, v30

    move/from16 p9, v31

    move-object/from16 p10, v32

    move-object/from16 p8, v33

    .end local v2    # "selectableId":J
    .end local v9    # "backgroundSelectionColor":J
    .local p3, "selectableId":J
    .local p6, "backgroundSelectionColor":J
    invoke-direct/range {p2 .. p10}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 800
    move-object/from16 v3, p2

    move-wide/from16 v9, p3

    move-object/from16 v35, p5

    move-wide/from16 v1, p6

    .line 801
    .end local p3    # "selectableId":J
    .end local p5    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local p6    # "backgroundSelectionColor":J
    .local v1, "backgroundSelectionColor":J
    .restart local v3    # "value$iv":Ljava/lang/Object;
    .local v9, "selectableId":J
    .local v35, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    move-object/from16 v1, v17

    .end local v17    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p6    # "backgroundSelectionColor":J
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 802
    move-object v5, v3

    .line 798
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_25
    nop

    .line 211
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "invalid$iv":Z
    .end local v23    # "$i$f$cache":I
    check-cast v5, Landroidx/compose/foundation/text/modifiers/SelectionController;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 205
    .end local v9    # "selectableId":J
    .end local p6    # "backgroundSelectionColor":J
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v27, v5

    goto :goto_26

    .line 214
    .end local v22    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v24    # "maxLines":I
    .end local v29    # "$dirty":I
    .end local v35    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local v1, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "$dirty":I
    .restart local v10    # "maxLines":I
    :cond_32
    move-object/from16 v35, v1

    move-object/from16 v22, v3

    move/from16 v29, v5

    move/from16 v24, v10

    .end local v1    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$dirty":I
    .end local v10    # "maxLines":I
    .restart local v22    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v24    # "maxLines":I
    .restart local v29    # "$dirty":I
    .restart local v35    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    const v1, 0x5eb28b71

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 215
    const/16 v27, 0x0

    .line 205
    :goto_26
    nop

    .line 204
    nop

    .line 217
    .local v27, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    const v2, 0x789c5f52

    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->hasInlineContent(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v19

    .line 218
    .local v19, "hasInlineContent":Z
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v36

    .line 220
    .local v36, "hasLinks":Z
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    move-object v5, v4

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 804
    .local v9, "$i$f$getCurrent":I
    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 220
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$getCurrent":I
    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 222
    .local v0, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    if-nez v19, :cond_35

    if-nez v36, :cond_35

    const v1, 0x5eb64fb6

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "222@11096L174,230@11349L746"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    and-int/lit8 v1, v29, 0xe

    or-int/lit16 v1, v1, 0xc00

    shr-int/lit8 v2, v29, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    .line 223
    const/4 v2, 0x0

    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move/from16 p6, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p2, v21

    .end local v0    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "style":Landroidx/compose/ui/text/TextStyle;
    .local p2, "style":Landroidx/compose/ui/text/TextStyle;
    .local p3, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .local p5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    .line 233
    move-object/from16 v1, p5

    move v5, v8

    move-object/from16 v8, p3

    .line 234
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "softWrap":Z
    .local v8, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .restart local v21    # "style":Landroidx/compose/ui/text/TextStyle;
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 233
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move/from16 v37, v6

    move v4, v11

    move-object/from16 v0, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v6, v24

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move/from16 v38, v29

    const/4 v15, 0x0

    move-object/from16 v1, p0

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v21    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v22    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v24    # "maxLines":I
    .end local v27    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local v28    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v29    # "$dirty":I
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "style":Landroidx/compose/ui/text/TextStyle;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "maxLines":I
    .local v11, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .local v12, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v37, "$dirty1":I
    .local v38, "$dirty":I
    .restart local p5    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v0 .. v14}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 249
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v6    # "maxLines":I
    .restart local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v21    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v24    # "maxLines":I
    sget-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 231
    const/16 v2, 0x30

    .local v2, "$changed$iv":I
    move-object/from16 v6, p5

    .local v0, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v9, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v10, 0x0

    .line 805
    .local v10, "$i$f$Layout":I
    const v13, 0x207baf9a

    const-string v15, "CC(Layout)P(1)124@5019L27,127@5185L389:Layout.kt#80mrfh"

    invoke-static {v6, v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 806
    const/4 v15, 0x0

    invoke-static {v6, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    .line 807
    .local v13, "compositeKeyHash$iv":I
    invoke-static {v6, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 808
    .local v15, "materialized$iv":Landroidx/compose/ui/Modifier;
    move/from16 p1, v2

    .end local v2    # "$changed$iv":I
    .local p1, "$changed$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 810
    .local v2, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 809
    move-object/from16 p2, v16

    .local p2, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 p3, v6

    .local p3, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x6

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    .line 811
    .local v17, "$i$f$ReusableComposeNode":I
    nop

    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v22    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    const v3, 0x53ca7ea5

    move/from16 p4, v4

    .end local v4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    const-string v4, "CC(ReusableComposeNode)N(factory,update):Composables.kt#9igjgp"

    move/from16 v23, v5

    move-object/from16 v5, p3

    .end local p3    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v23, "softWrap":Z
    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 812
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 813
    :cond_33
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 814
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 815
    move-object/from16 v3, p2

    .end local p2    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_27

    .line 817
    .end local v3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_34
    move-object/from16 v3, p2

    .end local p2    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 819
    :goto_27
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 820
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v27, v3

    .end local v3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v27, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 821
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 822
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 823
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v15, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 824
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p2, v0

    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local p2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 825
    nop

    .line 819
    .end local v4    # "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    nop

    .line 826
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 811
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 827
    nop

    .line 805
    .end local v5    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 828
    nop

    .line 222
    .end local v2    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v10    # "$i$f$Layout":I
    .end local v13    # "compositeKeyHash$iv":I
    .end local v15    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local p1    # "$changed$iv":I
    .end local p2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move/from16 v4, p4

    move-object/from16 v31, p5

    move-object/from16 v3, v22

    move/from16 v5, v23

    goto/16 :goto_2d

    .end local v12    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v23    # "softWrap":Z
    .end local v37    # "$dirty1":I
    .end local v38    # "$dirty":I
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$dirty1":I
    .local v8, "softWrap":Z
    .local v11, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v27, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .restart local v28    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v29    # "$dirty":I
    :cond_35
    move-object/from16 v1, p0

    move-object/from16 p5, v4

    move/from16 v37, v6

    move/from16 v23, v8

    move/from16 p4, v11

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move/from16 v38, v29

    const/4 v15, 0x0

    move-object v8, v0

    .line 251
    .end local v0    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$dirty1":I
    .end local v27    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local v28    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v29    # "$dirty":I
    .local v8, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .local v11, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .restart local v12    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v23    # "softWrap":Z
    .restart local v37    # "$dirty1":I
    .restart local v38    # "$dirty":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "$composer":Landroidx/compose/runtime/Composer;
    const v0, 0x5ec5cfb6

    move-object/from16 v2, p5

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "253@12268L39,269@12876L292,255@12317L895"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 254
    const v0, 0x662779bc

    invoke-static {v2, v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v38, 0xe

    const/4 v3, 0x4

    if-ne v0, v3, :cond_36

    goto :goto_28

    :cond_36
    move/from16 v25, v15

    .local v25, "invalid$iv":Z
    :goto_28
    move-object v0, v2

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 829
    .local v3, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 830
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v25, :cond_38

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_37

    goto :goto_29

    .line 834
    :cond_37
    goto :goto_2a

    .line 831
    :cond_38
    :goto_29
    const/4 v6, 0x0

    .line 254
    .local v6, "$i$a$-cache-BasicTextKt$BasicText$displayedText$2":I
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v1, v9, v10, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 831
    .end local v6    # "$i$a$-cache-BasicTextKt$BasicText$displayedText$2":I
    nop

    .line 832
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 833
    move-object v4, v6

    .line 829
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_2a
    nop

    .line 254
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local v25    # "invalid$iv":Z
    move-object v0, v4

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .local v0, "displayedText$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 257
    nop

    .line 258
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText_CL7eQgs$lambda$3(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v17

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 270
    const v3, 0x6627c6b9

    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv":Z
    move-object v4, v2

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 835
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 836
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_3a

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v6, v10, :cond_39

    goto :goto_2b

    .line 840
    :cond_39
    goto :goto_2c

    .line 837
    :cond_3a
    :goto_2b
    const/4 v10, 0x0

    .line 270
    .local v10, "$i$a$-cache-BasicTextKt$BasicText$2":I
    new-instance v13, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda9;

    invoke-direct {v13, v0}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 837
    .end local v10    # "$i$a$-cache-BasicTextKt$BasicText$2":I
    nop

    .line 838
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 839
    move-object v6, v13

    .line 835
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_2c
    nop

    .line 270
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object/from16 v29, v6

    check-cast v29, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 278
    shr-int/lit8 v3, v38, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v38, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v4, v38, 0xc

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v38, 0x9

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v38, 0x6

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v38, 0x6

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v38, 0x6

    const/high16 v5, 0xe000000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v38, 0x6

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v32, v3, v4

    shr-int/lit8 v3, v38, 0x15

    and-int/lit16 v3, v3, 0x380

    shl-int/lit8 v4, v37, 0xc

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int v33, v3, v4

    .line 256
    const/16 v34, 0x0

    move-object/from16 v31, v2

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v30, v14

    move-object/from16 v16, v18

    move-object/from16 v18, v22

    move/from16 v22, p4

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v7    # "minLines":I
    .end local v8    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v11    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local v12    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v14    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v22, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v25, "minLines":I
    .local v26, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .restart local v27    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .restart local v28    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v30, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v31, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v16 .. v34}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    .line 251
    move-object/from16 v3, v18

    move/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v18, v16

    .end local v0    # "displayedText$delegate":Landroidx/compose/runtime/MutableState;
    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v22    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v23    # "softWrap":Z
    .end local v25    # "minLines":I
    .end local v26    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v27    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local v28    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v30    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v5, "softWrap":Z
    .restart local v7    # "minLines":I
    .restart local v8    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .restart local v11    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .restart local v12    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v14    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_2d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 281
    .end local v8    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v11    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local v19    # "hasInlineContent":Z
    .end local v35    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local v36    # "hasLinks":Z
    :cond_3b
    move v6, v5

    move v8, v7

    move-object v10, v12

    move-object v11, v14

    move-object/from16 v2, v18

    move-object/from16 v9, v20

    move/from16 v7, v24

    move v5, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto :goto_2e

    .line 189
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v7    # "minLines":I
    .end local v12    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v14    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v20    # "inlineContent":Ljava/util/Map;
    .end local v21    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v24    # "maxLines":I
    .end local v31    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v37    # "$dirty1":I
    .end local v38    # "$dirty":I
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$dirty":I
    .local v6, "$dirty1":I
    .local p1, "modifier":Landroidx/compose/ui/Modifier;
    .local p2, "style":Landroidx/compose/ui/text/TextStyle;
    .local p3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local p5, "softWrap":Z
    .local p6, "maxLines":I
    .restart local p7    # "minLines":I
    .restart local p8    # "inlineContent":Ljava/util/Map;
    .restart local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p10    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :cond_3c
    move-object/from16 v1, p0

    move-object/from16 v31, v4

    move/from16 v38, v5

    move/from16 v37, v6

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$dirty":I
    .end local v6    # "$dirty1":I
    .restart local v31    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v37    # "$dirty1":I
    .restart local v38    # "$dirty":I
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move v5, v8

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move/from16 v8, p7

    move-object/from16 v10, p9

    .line 281
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "minLines":I
    .end local p8    # "inlineContent":Ljava/util/Map;
    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local p10    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "minLines":I
    .local v9, "inlineContent":Ljava/util/Map;
    .local v10, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v11, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :goto_2e
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_3d

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;III)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3d
    return-void
.end method

.method public static final synthetic BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "inlineContent"    # Ljava/util/Map;
    .param p9, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 360
    move/from16 v11, p11

    move/from16 v12, p12

    const v0, -0x3f70023c

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,inlineContent,color)360@17696L195:BasicText.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p11

    .local v2, "$dirty":I
    and-int/lit8 v3, v11, 0x6

    if-nez v3, :cond_1

    move-object/from16 v13, p0

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v11, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v12, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v8, v11, 0xc00

    if-nez v8, :cond_a

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    goto :goto_7

    :cond_a
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v9, v12, 0x10

    if-eqz v9, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v10, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v10, v11, 0x6000

    if-nez v10, :cond_d

    move/from16 v10, p4

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_d
    move/from16 v10, p4

    :goto_9
    and-int/lit8 v14, v12, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_e

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_e
    and-int/2addr v15, v11

    if-nez v15, :cond_10

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_10
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v12, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v2, v2, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v17, v11, v17

    if-nez v17, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_14

    or-int v2, v2, v18

    move/from16 v18, v0

    move/from16 v0, p7

    goto :goto_f

    :cond_14
    and-int v18, v11, v18

    if-nez v18, :cond_16

    move/from16 v18, v0

    move/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    goto :goto_f

    :cond_16
    move/from16 v18, v0

    move/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v12, 0x100

    const/high16 v19, 0x6000000

    if-eqz v0, :cond_17

    or-int v2, v2, v19

    move/from16 v19, v0

    move-object/from16 v0, p8

    goto :goto_11

    :cond_17
    and-int v19, v11, v19

    if-nez v19, :cond_19

    move/from16 v19, v0

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v20, 0x2000000

    :goto_10
    or-int v2, v2, v20

    goto :goto_11

    :cond_19
    move/from16 v19, v0

    move-object/from16 v0, p8

    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v20, 0x30000000

    if-eqz v0, :cond_1a

    or-int v2, v2, v20

    move/from16 v20, v0

    move-object/from16 v0, p9

    goto :goto_13

    :cond_1a
    and-int v20, v11, v20

    if-nez v20, :cond_1c

    move/from16 v20, v0

    move-object/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/high16 v21, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v21, 0x10000000

    :goto_12
    or-int v2, v2, v21

    goto :goto_13

    :cond_1c
    move/from16 v20, v0

    move-object/from16 v0, p9

    :goto_13
    const v21, 0x12492493

    and-int v0, v2, v21

    move/from16 p10, v3

    const v3, 0x12492492

    if-eq v0, v3, :cond_1d

    const/4 v0, 0x1

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p10, :cond_1e

    .line 351
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move/from16 v28, v14

    move-object v14, v0

    move/from16 v0, v28

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_15

    .line 360
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move v0, v14

    move-object v14, v4

    .line 351
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    :goto_15
    if-eqz v5, :cond_1f

    .line 352
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object v15, v3

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_16

    .line 351
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1f
    move-object v15, v6

    .line 352
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v15, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_16
    if-eqz v7, :cond_20

    .line 353
    const/4 v3, 0x0

    move/from16 v28, v16

    move-object/from16 v16, v3

    move/from16 v3, v28

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_17

    .line 352
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_20
    move/from16 v3, v16

    move-object/from16 v16, v8

    .line 353
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v16, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_17
    if-eqz v9, :cond_21

    .line 354
    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v4

    move/from16 v17, v4

    const v4, -0x3f70023c

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_18

    .line 353
    .end local v4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_21
    move/from16 v17, v10

    const v4, -0x3f70023c

    .line 354
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v17, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_18
    if-eqz v0, :cond_22

    .line 355
    const/4 v0, 0x1

    move/from16 v28, v18

    move/from16 v18, v0

    move/from16 v0, v28

    .end local p5    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_19

    .line 354
    .end local v0    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_22
    move/from16 v0, v18

    move/from16 v18, p5

    .line 355
    .end local p5    # "softWrap":Z
    .local v18, "softWrap":Z
    :goto_19
    if-eqz v3, :cond_23

    .line 356
    const v3, 0x7fffffff

    move/from16 v28, v19

    move/from16 v19, v3

    move/from16 v3, v28

    .end local p6    # "maxLines":I
    .local v3, "maxLines":I
    goto :goto_1a

    .line 355
    .end local v3    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_23
    move/from16 v3, v19

    move/from16 v19, p6

    .line 356
    .end local p6    # "maxLines":I
    .local v19, "maxLines":I
    :goto_1a
    if-eqz v0, :cond_24

    .line 357
    const/4 v0, 0x1

    move/from16 v28, v20

    move/from16 v20, v0

    move/from16 v0, v28

    .end local p7    # "minLines":I
    .local v0, "minLines":I
    goto :goto_1b

    .line 356
    .end local v0    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_24
    move/from16 v0, v20

    move/from16 v20, p7

    .line 357
    .end local p7    # "minLines":I
    .local v20, "minLines":I
    :goto_1b
    if-eqz v3, :cond_25

    .line 358
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v21, v3

    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v3, "inlineContent":Ljava/util/Map;
    goto :goto_1c

    .line 357
    .end local v3    # "inlineContent":Ljava/util/Map;
    .restart local p8    # "inlineContent":Ljava/util/Map;
    :cond_25
    move-object/from16 v21, p8

    .line 358
    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v21, "inlineContent":Ljava/util/Map;
    :goto_1c
    if-eqz v0, :cond_26

    .line 359
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v0, "color":Landroidx/compose/ui/graphics/ColorProducer;
    goto :goto_1d

    .line 358
    .end local v0    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_26
    move-object/from16 v22, p9

    .line 359
    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v22, "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_1d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.BasicText (BasicText.kt:359)"

    invoke-static {v4, v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 362
    :cond_27
    nop

    .line 363
    nop

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    and-int/lit8 v0, v2, 0xe

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000000

    and-int/2addr v3, v2

    or-int v25, v0, v3

    .line 361
    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x400

    move-object/from16 v24, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v13 .. v27}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 373
    :cond_28
    move-object v4, v14

    move-object v3, v15

    move-object/from16 v8, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto :goto_1e

    .line 349
    .end local v14    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v15    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v16    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v17    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v18    # "softWrap":Z
    .end local v19    # "maxLines":I
    .end local v20    # "minLines":I
    .end local v21    # "inlineContent":Ljava/util/Map;
    .end local v22    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "softWrap":Z
    .restart local p6    # "maxLines":I
    .restart local p7    # "minLines":I
    .restart local p8    # "inlineContent":Ljava/util/Map;
    .restart local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_29
    move-object/from16 v24, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v7, p6

    move/from16 v20, p7

    move-object/from16 v9, p8

    move-object v3, v6

    move v5, v10

    move/from16 v6, p5

    move-object/from16 v10, p9

    .line 373
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "minLines":I
    .end local p8    # "inlineContent":Ljava/util/Map;
    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v9, "inlineContent":Ljava/util/Map;
    .local v10, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v20    # "minLines":I
    :goto_1e
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_2a

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    move v14, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v8, v20

    .end local v20    # "minLines":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v8, "minLines":I
    .local v14, "$dirty":I
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;II)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1f

    .end local v14    # "$dirty":I
    .local v2, "$dirty":I
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v20    # "minLines":I
    :cond_2a
    move v14, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v8, v20

    .end local v20    # "minLines":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v8, "minLines":I
    .restart local v14    # "$dirty":I
    :goto_1f
    return-void
.end method

.method public static final BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p9, "autoSize"    # Landroidx/compose/foundation/text/TextAutoSize;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Landroidx/compose/foundation/text/TextAutoSize;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 103
    move-object/from16 v1, p0

    move-object/from16 v0, p9

    move/from16 v11, p11

    move/from16 v12, p12

    const v2, -0x3e089999

    move-object/from16 v3, p10

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,color,autoSize)104@5458L7,119@6129L7,121@6142L94,154@7432L41:BasicText.kt#423gt5"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p11

    .local v3, "$dirty":I
    and-int/lit8 v4, v11, 0x6

    if-nez v4, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_2

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v6, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v6, v11, 0x30

    if-nez v6, :cond_4

    move-object/from16 v6, p1

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_1

    :cond_3
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v3, v7

    goto :goto_2

    :cond_4
    move-object/from16 v6, p1

    :goto_2
    and-int/lit8 v7, v12, 0x4

    if-eqz v7, :cond_5

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v8, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v8, v11, 0x180

    if-nez v8, :cond_7

    move-object/from16 v8, p2

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_3

    :cond_6
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v3, v9

    goto :goto_4

    :cond_7
    move-object/from16 v8, p2

    :goto_4
    and-int/lit8 v9, v12, 0x8

    if-eqz v9, :cond_8

    or-int/lit16 v3, v3, 0xc00

    move-object/from16 v10, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v10, v11, 0xc00

    if-nez v10, :cond_a

    move-object/from16 v10, p3

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v14, 0x800

    goto :goto_5

    :cond_9
    const/16 v14, 0x400

    :goto_5
    or-int/2addr v3, v14

    goto :goto_6

    :cond_a
    move-object/from16 v10, p3

    :goto_6
    and-int/lit8 v14, v12, 0x10

    if-eqz v14, :cond_b

    or-int/lit16 v3, v3, 0x6000

    move/from16 v15, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v15, v11, 0x6000

    if-nez v15, :cond_d

    move/from16 v15, p4

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_7

    :cond_c
    const/16 v16, 0x2000

    :goto_7
    or-int v3, v3, v16

    goto :goto_8

    :cond_d
    move/from16 v15, p4

    :goto_8
    and-int/lit8 v16, v12, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_e

    or-int v3, v3, v17

    move/from16 v5, p5

    goto :goto_a

    :cond_e
    and-int v17, v11, v17

    if-nez v17, :cond_10

    move/from16 v5, p5

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v17, 0x10000

    :goto_9
    or-int v3, v3, v17

    goto :goto_a

    :cond_10
    move/from16 v5, p5

    :goto_a
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v3, v3, v18

    move/from16 v2, p6

    goto :goto_c

    :cond_11
    and-int v18, v11, v18

    if-nez v18, :cond_13

    move/from16 v2, p6

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v19, 0x80000

    :goto_b
    or-int v3, v3, v19

    goto :goto_c

    :cond_13
    move/from16 v2, p6

    :goto_c
    and-int/lit16 v2, v12, 0x80

    const/high16 v19, 0xc00000

    if-eqz v2, :cond_14

    or-int v3, v3, v19

    move/from16 v19, v2

    move/from16 v2, p7

    goto :goto_e

    :cond_14
    and-int v19, v11, v19

    if-nez v19, :cond_16

    move/from16 v19, v2

    move/from16 v2, p7

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_d

    :cond_15
    const/high16 v20, 0x400000

    :goto_d
    or-int v3, v3, v20

    goto :goto_e

    :cond_16
    move/from16 v19, v2

    move/from16 v2, p7

    :goto_e
    and-int/lit16 v2, v12, 0x100

    const/high16 v20, 0x6000000

    if-eqz v2, :cond_17

    or-int v3, v3, v20

    move/from16 v20, v2

    move-object/from16 v2, p8

    goto :goto_10

    :cond_17
    and-int v20, v11, v20

    if-nez v20, :cond_19

    move/from16 v20, v2

    move-object/from16 v2, p8

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    const/high16 v21, 0x4000000

    goto :goto_f

    :cond_18
    const/high16 v21, 0x2000000

    :goto_f
    or-int v3, v3, v21

    goto :goto_10

    :cond_19
    move/from16 v20, v2

    move-object/from16 v2, p8

    :goto_10
    and-int/lit16 v2, v12, 0x200

    const/high16 v21, 0x30000000

    if-eqz v2, :cond_1a

    :goto_11
    or-int v3, v3, v21

    goto :goto_13

    :cond_1a
    and-int v21, v11, v21

    if-nez v21, :cond_1d

    const/high16 v21, 0x40000000    # 2.0f

    and-int v21, v11, v21

    if-nez v21, :cond_1b

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    goto :goto_12

    :cond_1b
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    :goto_12
    if-eqz v21, :cond_1c

    const/high16 v21, 0x20000000

    goto :goto_11

    :cond_1c
    const/high16 v21, 0x10000000

    goto :goto_11

    :cond_1d
    :goto_13
    const v21, 0x12492493

    and-int v0, v3, v21

    move/from16 v21, v2

    const v2, 0x12492492

    move/from16 v22, v4

    if-eq v0, v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    and-int/lit8 v2, v3, 0x1

    invoke-interface {v13, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v22, :cond_1f

    .line 94
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v6, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1f
    if-eqz v7, :cond_20

    .line 95
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object v8, v0

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v8, "style":Landroidx/compose/ui/text/TextStyle;
    :cond_20
    if-eqz v9, :cond_21

    .line 96
    const/4 v0, 0x0

    move-object/from16 v25, v0

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v0, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_15

    .line 95
    .end local v0    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_21
    move-object/from16 v25, v10

    .line 96
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v25, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_15
    if-eqz v14, :cond_22

    .line 97
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move/from16 v26, v0

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v0, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_16

    .line 96
    .end local v0    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_22
    move/from16 v26, v15

    .line 97
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v26, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_16
    if-eqz v16, :cond_23

    .line 98
    const/4 v0, 0x1

    move/from16 v27, v0

    .end local p5    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_17

    .line 97
    .end local v0    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_23
    move/from16 v27, v5

    .line 98
    .end local p5    # "softWrap":Z
    .local v27, "softWrap":Z
    :goto_17
    if-eqz v17, :cond_24

    .line 99
    const v0, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v0, "maxLines":I
    goto :goto_18

    .line 98
    .end local v0    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_24
    move/from16 v0, p6

    .line 99
    .end local p6    # "maxLines":I
    .restart local v0    # "maxLines":I
    :goto_18
    if-eqz v19, :cond_25

    .line 100
    const/4 v2, 0x1

    .end local p7    # "minLines":I
    .local v2, "minLines":I
    goto :goto_19

    .line 99
    .end local v2    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_25
    move/from16 v2, p7

    .line 100
    .end local p7    # "minLines":I
    .restart local v2    # "minLines":I
    :goto_19
    if-eqz v20, :cond_26

    .line 101
    const/4 v5, 0x0

    move-object/from16 v34, v5

    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v5, "color":Landroidx/compose/ui/graphics/ColorProducer;
    goto :goto_1a

    .line 100
    .end local v5    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_26
    move-object/from16 v34, p8

    .line 101
    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v34, "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_1a
    if-eqz v21, :cond_27

    .line 102
    const/4 v5, 0x0

    move-object/from16 v36, v5

    .end local p9    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v5, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    goto :goto_1b

    .line 101
    .end local v5    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .restart local p9    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :cond_27
    move-object/from16 v36, p9

    .line 102
    .end local p9    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v36, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, -0x1

    const-string/jumbo v7, "androidx.compose.foundation.text.BasicText (BasicText.kt:102)"

    const v9, -0x3e089999

    invoke-static {v9, v3, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 104
    :cond_28
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    .line 105
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v7, 0x6

    .local v7, "$changed$iv":I
    move-object v9, v13

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 750
    .local v10, "$i$f$getCurrent":I
    const v14, 0x789c5f52

    const-string v15, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v9, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 105
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v7    # "$changed$iv":I
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$getCurrent":I
    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 107
    .local v5, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    if-eqz v5, :cond_2d

    const v9, 0x153e95a3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "107@5606L7,109@5760L77,109@5677L160,112@5850L180"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x6

    .local v10, "$changed$iv":I
    move-object/from16 p1, v13

    .local p1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 751
    .local v16, "$i$f$getCurrent":I
    move-object/from16 v7, p1

    .end local p1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v7, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v18

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v16    # "$i$f$getCurrent":I
    check-cast v18, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 108
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v9

    .line 110
    .local v9, "backgroundSelectionColor":J
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Landroidx/compose/foundation/text/BasicTextKt;->selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v14

    const v4, 0x21b7cc94

    move/from16 v28, v0

    .end local v0    # "maxLines":I
    .local v28, "maxLines":I
    const-string v0, "CC(remember):BasicText.kt#9igjgp"

    invoke-static {v13, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v4, v13

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 752
    .local v19, "$i$f$cache":I
    move/from16 p1, v0

    .end local v0    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 753
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p1, :cond_2a

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v29, v2

    .end local v2    # "minLines":I
    .local v29, "minLines":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_29

    goto :goto_1c

    .line 757
    :cond_29
    goto :goto_1d

    .line 753
    .end local v29    # "minLines":I
    .restart local v2    # "minLines":I
    :cond_2a
    move/from16 v29, v2

    .line 754
    .end local v2    # "minLines":I
    .restart local v29    # "minLines":I
    :goto_1c
    const/4 v2, 0x0

    .line 110
    .local v2, "$i$a$-cache-BasicTextKt$BasicText$selectionController$selectableId$1":I
    move-object/from16 p2, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local p2, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, v5}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 754
    .end local v2    # "$i$a$-cache-BasicTextKt$BasicText$selectionController$selectableId$1":I
    nop

    .line 755
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 756
    nop

    .line 752
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p2    # "it$iv":Ljava/lang/Object;
    :goto_1d
    nop

    .line 110
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v2, 0x0

    invoke-static {v7, v14, v0, v13, v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    .line 109
    move-wide/from16 p2, v19

    .line 113
    .local p2, "selectableId":J
    const v0, 0x21b7d83b

    const-string v2, "CC(remember):BasicText.kt#9igjgp"

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move v0, v3

    move-wide/from16 v2, p2

    .end local v3    # "$dirty":I
    .end local p2    # "selectableId":J
    .local v0, "$dirty":I
    .local v2, "selectableId":J
    invoke-interface {v13, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    or-int/2addr v4, v7

    .local v4, "invalid$iv":Z
    move-object v7, v13

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 758
    .local v14, "$i$f$cache":I
    move/from16 v19, v0

    .end local v0    # "$dirty":I
    .local v19, "$dirty":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 759
    .restart local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_2c

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-wide/from16 p2, v2

    .end local v2    # "selectableId":J
    .restart local p2    # "selectableId":J
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2b

    goto :goto_1e

    .line 763
    :cond_2b
    move-wide/from16 v21, p2

    move-object v2, v5

    goto :goto_1f

    .line 759
    .end local p2    # "selectableId":J
    .restart local v2    # "selectableId":J
    :cond_2c
    move-wide/from16 p2, v2

    .line 760
    .end local v2    # "selectableId":J
    .restart local p2    # "selectableId":J
    :goto_1e
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-cache-BasicTextKt$BasicText$selectionController$1":I
    new-instance v3, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 p1, v3

    move-object/from16 p4, v5

    move-wide/from16 p5, v9

    move/from16 p8, v21

    move-object/from16 p9, v22

    move-object/from16 p7, v23

    .end local v5    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local v9    # "backgroundSelectionColor":J
    .local p4, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local p5, "backgroundSelectionColor":J
    invoke-direct/range {p1 .. p9}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 760
    move-wide/from16 v21, p2

    move-object/from16 v2, p4

    .line 761
    .end local p2    # "selectableId":J
    .end local p4    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local p5    # "backgroundSelectionColor":J
    .local v2, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local v3, "value$iv":Ljava/lang/Object;
    .restart local v9    # "backgroundSelectionColor":J
    .local v21, "selectableId":J
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 762
    move-object v0, v3

    .line 758
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_1f
    nop

    .line 113
    .end local v4    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 107
    .end local v9    # "backgroundSelectionColor":J
    .end local v21    # "selectableId":J
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v33, v0

    goto :goto_20

    .line 116
    .end local v19    # "$dirty":I
    .end local v28    # "maxLines":I
    .end local v29    # "minLines":I
    .local v0, "maxLines":I
    .local v2, "minLines":I
    .local v3, "$dirty":I
    .restart local v5    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :cond_2d
    move/from16 v28, v0

    move/from16 v29, v2

    move/from16 v19, v3

    move-object v2, v5

    .end local v0    # "maxLines":I
    .end local v3    # "$dirty":I
    .end local v5    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local v2, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .restart local v19    # "$dirty":I
    .restart local v28    # "maxLines":I
    .restart local v29    # "minLines":I
    const v0, 0x1546143f    # 4.0001753E-26f

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 117
    const/16 v33, 0x0

    .line 107
    :goto_20
    nop

    .line 106
    nop

    .line 120
    .local v33, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    move-object v4, v13

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 764
    .local v5, "$i$f$getCurrent":I
    const v7, 0x789c5f52

    invoke-static {v4, v7, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 120
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$getCurrent":I
    move-object v0, v7

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 122
    .local v0, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    and-int/lit8 v3, v19, 0xe

    shr-int/lit8 v4, v19, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    invoke-static {v1, v8, v0, v13, v3}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/runtime/Composer;I)V

    .line 125
    if-nez v33, :cond_2f

    if-nez v25, :cond_2f

    if-eqz v36, :cond_2e

    move-object/from16 v24, v8

    goto :goto_21

    .line 142
    :cond_2e
    const v3, 0x1554c093

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 143
    nop

    .line 144
    new-instance v3, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 144
    const/4 v4, 0x0

    move-object/from16 p4, v0

    move-object/from16 p2, v1

    move-object/from16 p1, v3

    move-object/from16 p10, v4

    move-object/from16 p3, v8

    move/from16 p5, v26

    move/from16 p6, v27

    move/from16 p7, v28

    move/from16 p8, v29

    move-object/from16 p9, v34

    .end local v0    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v8    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v26    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v27    # "softWrap":Z
    .end local v28    # "maxLines":I
    .end local v29    # "minLines":I
    .end local v34    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local p3, "style":Landroidx/compose/ui/text/TextStyle;
    .local p4, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .local p5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local p6, "softWrap":Z
    .local p7, "maxLines":I
    .local p8, "minLines":I
    .local p9, "color":Landroidx/compose/ui/graphics/ColorProducer;
    invoke-direct/range {p1 .. p10}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v24, p3

    .end local p3    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p4    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local p5    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p6    # "softWrap":Z
    .end local p7    # "maxLines":I
    .end local p8    # "minLines":I
    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v0    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .local v24, "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v26    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local v27    # "softWrap":Z
    .restart local v28    # "maxLines":I
    .restart local v29    # "minLines":I
    .restart local v34    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 143
    invoke-interface {v6, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v22, v6

    goto :goto_22

    .line 125
    .end local v24    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v8    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_2f
    move-object/from16 v24, v8

    .end local v8    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v24    # "style":Landroidx/compose/ui/text/TextStyle;
    :goto_21
    const v3, 0x154aedf1

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "133@6715L7"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 126
    nop

    .line 127
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v4}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x0

    .local v5, "$changed$iv":I
    move-object v7, v13

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 765
    .local v8, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    invoke-static {v7, v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$changed$iv":I
    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$getCurrent":I
    move-object/from16 v30, v9

    check-cast v30, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 126
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .local v22, "modifier":Landroidx/compose/ui/Modifier;
    invoke-static/range {v22 .. v36}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 125
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_22
    nop

    .line 124
    nop

    .line 155
    .local v3, "finalModifier":Landroidx/compose/ui/Modifier;
    sget-object v4, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v5, 0x30

    .restart local v5    # "$changed$iv":I
    move-object v6, v3

    .local v6, "modifier$iv":Landroidx/compose/ui/Modifier;
    move-object v7, v13

    .restart local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 766
    .local v8, "$i$f$Layout":I
    const v9, 0x207baf9a

    const-string v10, "CC(Layout)P(1)124@5019L27,127@5185L389:Layout.kt#80mrfh"

    invoke-static {v7, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 767
    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    .line 768
    .local v9, "compositeKeyHash$iv":I
    invoke-static {v7, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 769
    .local v10, "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 771
    .local v14, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 770
    const/16 v16, 0x6

    .local v15, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v16, "$changed$iv$iv":I
    move-object/from16 p1, v7

    .local p1, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 772
    .local v17, "$i$f$ReusableComposeNode":I
    move-object/from16 p4, v0

    .end local v0    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .restart local p4    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    const v0, 0x53ca7ea5

    const-string v1, "CC(ReusableComposeNode)N(factory,update):Composables.kt#9igjgp"

    move-object/from16 p2, v2

    move-object/from16 v2, p1

    .end local p1    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local p2, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 773
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 774
    :cond_30
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 775
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 776
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    .line 778
    :cond_31
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 780
    :goto_23
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    .line 781
    .local v1, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p1, v1

    .end local v1    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    .local p1, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 782
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 783
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 784
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 785
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v20, v2

    .end local v2    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v20, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 786
    nop

    .line 780
    .end local v0    # "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    .end local p1    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    nop

    .line 787
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 772
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 788
    nop

    .line 766
    .end local v15    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v20    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 789
    nop

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v5    # "$changed$iv":I
    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$Layout":I
    .end local v9    # "compositeKeyHash$iv":I
    .end local v10    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v14    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 156
    .end local v3    # "finalModifier":Landroidx/compose/ui/Modifier;
    .end local v33    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local p2    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local p4    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    :cond_32
    move-object/from16 v2, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v8, v29

    move-object/from16 v9, v34

    move-object/from16 v10, v36

    goto :goto_24

    .line 92
    .end local v19    # "$dirty":I
    .end local v22    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v24    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v25    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v26    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v27    # "softWrap":Z
    .end local v28    # "maxLines":I
    .end local v29    # "minLines":I
    .end local v34    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v36    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v3, "$dirty":I
    .local p1, "modifier":Landroidx/compose/ui/Modifier;
    .local p2, "style":Landroidx/compose/ui/text/TextStyle;
    .local p3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local p5, "softWrap":Z
    .local p6, "maxLines":I
    .local p7, "minLines":I
    .local p8, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local p9, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :cond_33
    move/from16 v19, v3

    .end local v3    # "$dirty":I
    .restart local v19    # "$dirty":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object v2, v6

    move-object v3, v8

    move-object v4, v10

    move/from16 v8, p7

    move-object/from16 v10, p9

    move v6, v5

    move v5, v15

    .line 156
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "minLines":I
    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local p9    # "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "minLines":I
    .local v9, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v10, "autoSize":Landroidx/compose/foundation/text/TextAutoSize;
    :goto_24
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_34

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda4;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;II)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_34
    return-void
.end method

.method public static final synthetic BasicText-VhcvRP8(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "inlineContent"    # Ljava/util/Map;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compat"
    .end annotation

    .line 449
    move/from16 v10, p10

    move/from16 v11, p11

    const v0, 0x32bf773b

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,inlineContent)448@20200L281:BasicText.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p10

    .local v2, "$dirty":I
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_1

    move-object/from16 v12, p0

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v11, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_a

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    goto :goto_7

    :cond_a
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v9, v11, 0x10

    if-eqz v9, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_d

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_d
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, v11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_e

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_e
    and-int/2addr v15, v10

    if-nez v15, :cond_10

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_10
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v11, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v2, v2, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v17, v10, v17

    if-nez v17, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_14

    or-int v2, v2, v18

    move/from16 v18, v0

    move/from16 v0, p7

    goto :goto_f

    :cond_14
    and-int v18, v10, v18

    if-nez v18, :cond_16

    move/from16 v18, v0

    move/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    goto :goto_f

    :cond_16
    move/from16 v18, v0

    move/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    const/high16 v19, 0x6000000

    if-eqz v0, :cond_17

    or-int v2, v2, v19

    move/from16 v19, v0

    move-object/from16 v0, p8

    goto :goto_11

    :cond_17
    and-int v19, v10, v19

    if-nez v19, :cond_19

    move/from16 v19, v0

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v20, 0x2000000

    :goto_10
    or-int v2, v2, v20

    goto :goto_11

    :cond_19
    move/from16 v19, v0

    move-object/from16 v0, p8

    :goto_11
    const v20, 0x2492493

    and-int v0, v2, v20

    move/from16 p9, v3

    const v3, 0x2492492

    if-eq v0, v3, :cond_1a

    const/4 v0, 0x1

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p9, :cond_1b

    .line 440
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v13, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_13

    .line 449
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object v13, v4

    .line 440
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_13
    if-eqz v5, :cond_1c

    .line 441
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move/from16 v27, v14

    move-object v14, v0

    move/from16 v0, v27

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v0, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_14

    .line 440
    .end local v0    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1c
    move v0, v14

    move-object v14, v6

    .line 441
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v14, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_14
    if-eqz v7, :cond_1d

    .line 442
    const/4 v3, 0x0

    move-object v15, v3

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_15

    .line 441
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1d
    move-object v15, v8

    .line 442
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v15, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_15
    if-eqz v9, :cond_1e

    .line 443
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v3

    move/from16 v27, v16

    move/from16 v16, v3

    move/from16 v3, v27

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v3, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_16

    .line 442
    .end local v3    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_1e
    move/from16 v3, v16

    move/from16 v16, p4

    .line 443
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v16, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_16
    if-eqz v0, :cond_1f

    .line 444
    const/4 v0, 0x1

    move/from16 v17, v0

    const v0, 0x32bf773b

    .end local p5    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_17

    .line 443
    .end local v0    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1f
    move/from16 v17, p5

    const v0, 0x32bf773b

    .line 444
    .end local p5    # "softWrap":Z
    .local v17, "softWrap":Z
    :goto_17
    if-eqz v3, :cond_20

    .line 445
    const v3, 0x7fffffff

    move/from16 v27, v18

    move/from16 v18, v3

    move/from16 v3, v27

    .end local p6    # "maxLines":I
    .local v3, "maxLines":I
    goto :goto_18

    .line 444
    .end local v3    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_20
    move/from16 v3, v18

    move/from16 v18, p6

    .line 445
    .end local p6    # "maxLines":I
    .local v18, "maxLines":I
    :goto_18
    if-eqz v3, :cond_21

    .line 446
    const/4 v3, 0x1

    move/from16 v27, v19

    move/from16 v19, v3

    move/from16 v3, v27

    .end local p7    # "minLines":I
    .local v3, "minLines":I
    goto :goto_19

    .line 445
    .end local v3    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_21
    move/from16 v3, v19

    move/from16 v19, p7

    .line 446
    .end local p7    # "minLines":I
    .local v19, "minLines":I
    :goto_19
    if-eqz v3, :cond_22

    .line 447
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v20, v3

    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v3, "inlineContent":Ljava/util/Map;
    goto :goto_1a

    .line 446
    .end local v3    # "inlineContent":Ljava/util/Map;
    .restart local p8    # "inlineContent":Ljava/util/Map;
    :cond_22
    move-object/from16 v20, p8

    .line 447
    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v20, "inlineContent":Ljava/util/Map;
    :goto_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.text.BasicText (BasicText.kt:448)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 450
    :cond_23
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    nop

    .line 454
    nop

    .line 455
    nop

    .line 456
    nop

    .line 457
    nop

    .line 458
    and-int/lit8 v0, v2, 0xe

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v2

    or-int v24, v0, v3

    .line 449
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x600

    move-object/from16 v23, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v12 .. v26}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 459
    :cond_24
    move-object v4, v13

    move-object v3, v14

    move-object v8, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v9, v20

    goto :goto_1b

    .line 438
    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v14    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v15    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v16    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v17    # "softWrap":Z
    .end local v18    # "maxLines":I
    .end local v19    # "minLines":I
    .end local v20    # "inlineContent":Ljava/util/Map;
    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "softWrap":Z
    .restart local p6    # "maxLines":I
    .restart local p7    # "minLines":I
    .restart local p8    # "inlineContent":Ljava/util/Map;
    :cond_25
    move-object/from16 v23, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v23    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v19, p7

    move-object/from16 v9, p8

    move-object v3, v6

    move/from16 v6, p5

    .line 459
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "minLines":I
    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v9, "inlineContent":Ljava/util/Map;
    .restart local v19    # "minLines":I
    :goto_1b
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_26

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move v13, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v8, v19

    .end local v19    # "minLines":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v8, "minLines":I
    .local v13, "$dirty":I
    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1c

    .end local v13    # "$dirty":I
    .local v2, "$dirty":I
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v19    # "minLines":I
    :cond_26
    move v13, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v8, v19

    .end local v19    # "minLines":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v8, "minLines":I
    .restart local v13    # "$dirty":I
    :goto_1c
    return-void
.end method

.method public static final synthetic BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 318
    move/from16 v10, p10

    move/from16 v11, p11

    const v0, -0x46bd8e2e

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(BasicText)N(text,modifier,style,onTextLayout,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,color)318@15279L93:BasicText.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p10

    .local v2, "$dirty":I
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_1

    move-object/from16 v12, p0

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_2
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v11, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v2, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_8
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_a

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    goto :goto_7

    :cond_a
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v9, v11, 0x10

    if-eqz v9, :cond_b

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_d

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_d
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, v11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_e

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_e
    and-int/2addr v15, v10

    if-nez v15, :cond_10

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_10
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v11, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v2, v2, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v17, v10, v17

    if-nez v17, :cond_13

    move/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_14

    or-int v2, v2, v18

    move/from16 v18, v0

    move/from16 v0, p7

    goto :goto_f

    :cond_14
    and-int v18, v10, v18

    if-nez v18, :cond_16

    move/from16 v18, v0

    move/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    goto :goto_f

    :cond_16
    move/from16 v18, v0

    move/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    const/high16 v19, 0x6000000

    if-eqz v0, :cond_17

    or-int v2, v2, v19

    move/from16 v19, v0

    move-object/from16 v0, p8

    goto :goto_11

    :cond_17
    and-int v19, v10, v19

    if-nez v19, :cond_19

    move/from16 v19, v0

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v20, 0x2000000

    :goto_10
    or-int v2, v2, v20

    goto :goto_11

    :cond_19
    move/from16 v19, v0

    move-object/from16 v0, p8

    :goto_11
    const v20, 0x2492493

    and-int v0, v2, v20

    move/from16 p9, v3

    const v3, 0x2492492

    if-eq v0, v3, :cond_1a

    const/4 v0, 0x1

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p9, :cond_1b

    .line 310
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v13, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_13

    .line 318
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object v13, v4

    .line 310
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_13
    if-eqz v5, :cond_1c

    .line 311
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move/from16 v25, v14

    move-object v14, v0

    move/from16 v0, v25

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v0, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_14

    .line 310
    .end local v0    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1c
    move v0, v14

    move-object v14, v6

    .line 311
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v14, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_14
    if-eqz v7, :cond_1d

    .line 312
    const/4 v3, 0x0

    move-object v15, v3

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v3, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_15

    .line 311
    .end local v3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1d
    move-object v15, v8

    .line 312
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v15, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_15
    if-eqz v9, :cond_1e

    .line 313
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v3

    move/from16 v25, v16

    move/from16 v16, v3

    move/from16 v3, v25

    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v3, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    goto :goto_16

    .line 312
    .end local v3    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :cond_1e
    move/from16 v3, v16

    move/from16 v16, p4

    .line 313
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v16, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    :goto_16
    if-eqz v0, :cond_1f

    .line 314
    const/4 v0, 0x1

    move/from16 v17, v0

    const v0, -0x46bd8e2e

    .end local p5    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_17

    .line 313
    .end local v0    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1f
    move/from16 v17, p5

    const v0, -0x46bd8e2e

    .line 314
    .end local p5    # "softWrap":Z
    .local v17, "softWrap":Z
    :goto_17
    if-eqz v3, :cond_20

    .line 315
    const v3, 0x7fffffff

    move/from16 v25, v18

    move/from16 v18, v3

    move/from16 v3, v25

    .end local p6    # "maxLines":I
    .local v3, "maxLines":I
    goto :goto_18

    .line 314
    .end local v3    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_20
    move/from16 v3, v18

    move/from16 v18, p6

    .line 315
    .end local p6    # "maxLines":I
    .local v18, "maxLines":I
    :goto_18
    if-eqz v3, :cond_21

    .line 316
    const/4 v3, 0x1

    move/from16 v25, v19

    move/from16 v19, v3

    move/from16 v3, v25

    .end local p7    # "minLines":I
    .local v3, "minLines":I
    goto :goto_19

    .line 315
    .end local v3    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_21
    move/from16 v3, v19

    move/from16 v19, p7

    .line 316
    .end local p7    # "minLines":I
    .local v19, "minLines":I
    :goto_19
    if-eqz v3, :cond_22

    .line 317
    const/4 v3, 0x0

    move-object/from16 v20, v3

    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v3, "color":Landroidx/compose/ui/graphics/ColorProducer;
    goto :goto_1a

    .line 316
    .end local v3    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_22
    move-object/from16 v20, p8

    .line 317
    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v20, "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.text.BasicText (BasicText.kt:317)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 319
    :cond_23
    and-int/lit8 v0, v2, 0xe

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v2

    or-int v23, v0, v3

    const/16 v24, 0x200

    const/16 v21, 0x0

    move-object/from16 v22, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v12 .. v24}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 320
    :cond_24
    move-object v4, v13

    move-object v3, v14

    move-object v8, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v9, v20

    goto :goto_1b

    .line 308
    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v14    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v15    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v16    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local v17    # "softWrap":Z
    .end local v18    # "maxLines":I
    .end local v19    # "minLines":I
    .end local v20    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .restart local p5    # "softWrap":Z
    .restart local p6    # "maxLines":I
    .restart local p7    # "minLines":I
    .restart local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_25
    move-object/from16 v22, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v19, p7

    move-object/from16 v9, p8

    move-object v3, v6

    move/from16 v6, p5

    .line 320
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local p4    # "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .end local p5    # "softWrap":Z
    .end local p6    # "maxLines":I
    .end local p7    # "minLines":I
    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0":I
    .local v6, "softWrap":Z
    .local v7, "maxLines":I
    .local v8, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v9, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v19    # "minLines":I
    :goto_1b
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_26

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda5;

    move-object/from16 v1, p0

    move v13, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v8, v19

    .end local v19    # "minLines":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v8, "minLines":I
    .local v13, "$dirty":I
    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1c

    .end local v13    # "$dirty":I
    .local v2, "$dirty":I
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v19    # "minLines":I
    :cond_26
    move v13, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v8, v19

    .end local v19    # "minLines":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v8, "minLines":I
    .restart local v13    # "$dirty":I
    :goto_1c
    return-void
.end method

.method static final BasicText_4YKlhWE$lambda$0(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p9

    move-object/from16 v9, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BasicText_4YKlhWE$lambda$1(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p9

    move-object/from16 v9, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-4YKlhWE(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BasicText_BpD7jsM$lambda$0(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-BpD7jsM(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final BasicText_CL7eQgs$lambda$0$0(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J
    .locals 2
    .param p0, "$selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 209
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->nextSelectableId()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final BasicText_CL7eQgs$lambda$3(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 4
    .param p0, "$displayedText$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;)",
            "Landroidx/compose/ui/text/AnnotatedString;"
        }
    .end annotation

    .line 254
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 929
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 254
    return-object v0
.end method

.method private static final BasicText_CL7eQgs$lambda$4(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 5
    .param p0, "$displayedText$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "<set-?>"    # Landroidx/compose/ui/text/AnnotatedString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ")V"
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 930
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 931
    nop

    .line 254
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private static final BasicText_CL7eQgs$lambda$5$0(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;)Lkotlin/Unit;
    .locals 1
    .param p0, "$displayedText$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "substitutionValue"    # Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 271
    nop

    .line 272
    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->getSubstitution()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->getOriginal()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 271
    :goto_0
    invoke-static {p0, v0}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText_CL7eQgs$lambda$4(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 277
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BasicText_CL7eQgs$lambda$6(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    invoke-static/range {p12 .. p12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p13

    move-object/from16 v12, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final BasicText_RWo7tUw$lambda$0$0(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)J
    .locals 2
    .param p0, "$selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 111
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->nextSelectableId()J

    move-result-wide v0

    return-wide v0
.end method

.method static final BasicText_RWo7tUw$lambda$2(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BasicText_RWo7tUw$lambda$3(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BasicText_VhcvRP8$lambda$0(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final BasicText_VhcvRP8$lambda$1(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p2, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p3, "hasInlineContent"    # Z
    .param p4, "inlineContent"    # Ljava/util/Map;
    .param p5, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p6, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p7, "softWrap"    # Z
    .param p8, "maxLines"    # I
    .param p9, "minLines"    # I
    .param p10, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p11, "selectionController"    # Landroidx/compose/foundation/text/modifiers/SelectionController;
    .param p12, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p13, "onShowTranslation"    # Lkotlin/jvm/functions/Function1;
    .param p14, "autoSize"    # Landroidx/compose/foundation/text/TextAutoSize;
    .param p15, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p16, "$changed"    # I
    .param p17, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "IZII",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/foundation/text/modifiers/SelectionController;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/TextAutoSize;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 647
    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v15, p14

    move/from16 v8, p16

    move/from16 v9, p17

    const v1, -0x7e46da9f

    move-object/from16 v2, p15

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(LayoutWithLinksAndInlineContent)N(modifier,text,onTextLayout,hasInlineContent,inlineContent,style,overflow:c#ui.text.style.TextOverflow,softWrap,maxLines,minLines,fontFamilyResolver,selectionController,color,onShowTranslation,autoSize)678@28236L162,694@28726L117,685@28404L1429:BasicText.kt#423gt5"

    invoke-static {v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p16

    .local v2, "$dirty":I
    move/from16 v3, p17

    .local v3, "$dirty1":I
    and-int/lit8 v5, v8, 0x6

    if-nez v5, :cond_1

    move-object/from16 v12, p0

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_1
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_3
    and-int/lit16 v5, v8, 0x180

    const/16 v16, 0x80

    if-nez v5, :cond_5

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    move/from16 v5, v16

    :goto_3
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v8, 0xc00

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-nez v5, :cond_7

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v5, v17

    goto :goto_4

    :cond_6
    move/from16 v5, v18

    :goto_4
    or-int/2addr v2, v5

    :cond_7
    and-int/lit8 v5, p18, 0x10

    const/16 v19, 0x2000

    if-eqz v5, :cond_8

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v13, p4

    goto :goto_6

    :cond_8
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_a

    move-object/from16 v13, p4

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x4000

    goto :goto_5

    :cond_9
    move/from16 v21, v19

    :goto_5
    or-int v2, v2, v21

    goto :goto_6

    :cond_a
    move-object/from16 v13, p4

    :goto_6
    const/high16 v21, 0x30000

    and-int v21, v8, v21

    if-nez v21, :cond_c

    move-object/from16 v10, p5

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/high16 v22, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v22, 0x10000

    :goto_7
    or-int v2, v2, v22

    goto :goto_8

    :cond_c
    move-object/from16 v10, p5

    :goto_8
    const/high16 v22, 0x180000

    and-int v22, v8, v22

    if-nez v22, :cond_e

    move/from16 v11, p6

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_d

    const/high16 v23, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v23, 0x80000

    :goto_9
    or-int v2, v2, v23

    goto :goto_a

    :cond_e
    move/from16 v11, p6

    :goto_a
    const/high16 v23, 0xc00000

    and-int v23, v8, v23

    if-nez v23, :cond_10

    move/from16 v14, p7

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_f

    const/high16 v24, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v24, 0x400000

    :goto_b
    or-int v2, v2, v24

    goto :goto_c

    :cond_10
    move/from16 v14, p7

    :goto_c
    const/high16 v24, 0x6000000

    and-int v24, v8, v24

    if-nez v24, :cond_12

    move/from16 v1, p8

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_11

    const/high16 v25, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v25, 0x2000000

    :goto_d
    or-int v2, v2, v25

    goto :goto_e

    :cond_12
    move/from16 v1, p8

    :goto_e
    const/high16 v25, 0x30000000

    and-int v25, v8, v25

    if-nez v25, :cond_14

    move/from16 v7, p9

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x20000000

    goto :goto_f

    :cond_13
    const/high16 v25, 0x10000000

    :goto_f
    or-int v2, v2, v25

    goto :goto_10

    :cond_14
    move/from16 v7, p9

    :goto_10
    and-int/lit8 v25, v9, 0x6

    if-nez v25, :cond_16

    move-object/from16 v1, p10

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v25, 0x4

    goto :goto_11

    :cond_15
    const/16 v25, 0x2

    :goto_11
    or-int v3, v3, v25

    goto :goto_12

    :cond_16
    move-object/from16 v1, p10

    :goto_12
    and-int/lit8 v25, v9, 0x30

    if-nez v25, :cond_18

    move-object/from16 v7, p11

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v20, 0x20

    goto :goto_13

    :cond_17
    const/16 v20, 0x10

    :goto_13
    or-int v3, v3, v20

    goto :goto_14

    :cond_18
    move-object/from16 v7, p11

    :goto_14
    and-int/lit16 v1, v9, 0x180

    if-nez v1, :cond_1a

    move-object/from16 v1, p12

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v16, 0x100

    :cond_19
    or-int v3, v3, v16

    goto :goto_15

    :cond_1a
    move-object/from16 v1, p12

    :goto_15
    and-int/lit16 v1, v9, 0xc00

    if-nez v1, :cond_1c

    move-object/from16 v1, p13

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    goto :goto_16

    :cond_1b
    move/from16 v17, v18

    :goto_16
    or-int v3, v3, v17

    goto :goto_17

    :cond_1c
    move-object/from16 v1, p13

    :goto_17
    and-int/lit16 v1, v9, 0x6000

    if-nez v1, :cond_1f

    const v1, 0x8000

    and-int/2addr v1, v9

    if-nez v1, :cond_1d

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_18

    :cond_1d
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_18
    if-eqz v1, :cond_1e

    const/16 v19, 0x4000

    :cond_1e
    or-int v3, v3, v19

    :cond_1f
    move v1, v3

    .end local v3    # "$dirty1":I
    .local v1, "$dirty1":I
    const v3, 0x12492493

    and-int/2addr v3, v2

    move/from16 p15, v5

    const v5, 0x12492492

    const/16 v16, 0x1

    if-ne v3, v5, :cond_21

    and-int/lit16 v3, v1, 0x2493

    const/16 v5, 0x2492

    if-eq v3, v5, :cond_20

    goto :goto_19

    :cond_20
    const/4 v3, 0x0

    goto :goto_1a

    :cond_21
    :goto_19
    move/from16 v3, v16

    :goto_1a
    and-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v3, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz p15, :cond_22

    .line 636
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object v13, v3

    .end local p4    # "inlineContent":Ljava/util/Map;
    .local v13, "inlineContent":Ljava/util/Map;
    :cond_22
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v3, "androidx.compose.foundation.text.LayoutWithLinksAndInlineContent (BasicText.kt:646)"

    const v5, -0x7e46da9f

    invoke-static {v5, v2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 650
    :cond_23
    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v3

    const/16 p15, 0x0

    const-string v7, "CC(remember):BasicText.kt#9igjgp"

    if-eqz v3, :cond_27

    const v3, 0x8ae5063

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "650@27301L38"

    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 651
    const v3, -0x7fa5ed9

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, v2, 0x70

    const/16 v5, 0x20

    if-ne v3, v5, :cond_24

    move/from16 v3, v16

    goto :goto_1b

    :cond_24
    move/from16 v3, p15

    .local v3, "invalid$iv":Z
    :goto_1b
    move-object v5, v4

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 850
    .local v17, "$i$f$cache":I
    move/from16 v18, v1

    .end local v1    # "$dirty1":I
    .local v18, "$dirty1":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 851
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_26

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v2

    .end local v2    # "$dirty":I
    .local v24, "$dirty":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_25

    goto :goto_1c

    .line 855
    :cond_25
    goto :goto_1d

    .line 851
    .end local v24    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_26
    move/from16 v24, v2

    .line 852
    .end local v2    # "$dirty":I
    .restart local v24    # "$dirty":I
    :goto_1c
    const/4 v2, 0x0

    .line 651
    .local v2, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$textScope$1":I
    move-object/from16 v20, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v20, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 852
    .end local v2    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$textScope$1":I
    nop

    .line 853
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 854
    nop

    .line 850
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    :goto_1d
    nop

    .line 651
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 650
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1e

    .line 652
    .end local v18    # "$dirty1":I
    .end local v24    # "$dirty":I
    .local v1, "$dirty1":I
    .local v2, "$dirty":I
    :cond_27
    move/from16 v18, v1

    move/from16 v24, v2

    .end local v1    # "$dirty1":I
    .end local v2    # "$dirty":I
    .restart local v18    # "$dirty1":I
    .restart local v24    # "$dirty":I
    const v1, 0x8af50dc

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v1, 0x0

    .line 650
    :goto_1e
    nop

    .line 649
    nop

    .line 657
    .local v1, "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const v2, 0x8b25723

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "657@27566L70"

    invoke-static {v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 658
    const v2, -0x7fa3d99

    invoke-static {v4, v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v24, 0x70

    const/16 v5, 0x20

    if-ne v2, v5, :cond_28

    move/from16 v2, v16

    goto :goto_1f

    :cond_28
    move/from16 v2, p15

    :goto_1f
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .local v2, "invalid$iv":Z
    move-object v3, v4

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 856
    .local v5, "$i$f$cache":I
    move/from16 v17, v2

    .end local v2    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 857
    .restart local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v17, :cond_2a

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v23, v5

    .end local v5    # "$i$f$cache":I
    .local v23, "$i$f$cache":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_29

    goto :goto_20

    .line 861
    :cond_29
    goto :goto_21

    .line 857
    .end local v23    # "$i$f$cache":I
    .restart local v5    # "$i$f$cache":I
    :cond_2a
    move/from16 v23, v5

    .line 858
    .end local v5    # "$i$f$cache":I
    .restart local v23    # "$i$f$cache":I
    :goto_20
    const/4 v5, 0x0

    .line 658
    .local v5, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$styledText$1":I
    move-object/from16 v20, v2

    .end local v2    # "it$iv":Ljava/lang/Object;
    .restart local v20    # "it$iv":Ljava/lang/Object;
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1, v0}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 858
    .end local v5    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$styledText$1":I
    nop

    .line 859
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 860
    nop

    .line 856
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    :goto_21
    nop

    .line 658
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "invalid$iv":Z
    .end local v23    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 657
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v17, v1

    goto :goto_25

    .line 659
    :cond_2b
    const v2, 0x8b3d321

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "659@27666L8"

    invoke-static {v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 660
    const v2, -0x7fa3157

    invoke-static {v4, v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v24, 0x70

    const/16 v5, 0x20

    if-ne v2, v5, :cond_2c

    move/from16 v2, v16

    goto :goto_22

    :cond_2c
    move/from16 v2, p15

    .local v2, "invalid$iv":Z
    :goto_22
    move-object v3, v4

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 862
    .local v5, "$i$f$cache":I
    move-object/from16 v17, v1

    .end local v1    # "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    .local v17, "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 863
    .restart local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_2e

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v23, v2

    .end local v2    # "invalid$iv":Z
    .local v23, "invalid$iv":Z
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2d

    goto :goto_23

    .line 867
    :cond_2d
    goto :goto_24

    .line 863
    .end local v23    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_2e
    move/from16 v23, v2

    .line 864
    .end local v2    # "invalid$iv":Z
    .restart local v23    # "invalid$iv":Z
    :goto_23
    const/4 v2, 0x0

    .line 660
    .local v2, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$styledText$2":I
    move-object/from16 v20, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v20    # "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 864
    .end local v2    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$styledText$2":I
    nop

    .line 865
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 866
    nop

    .line 862
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    :goto_24
    nop

    .line 660
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v23    # "invalid$iv":Z
    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 659
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 657
    :goto_25
    nop

    .line 656
    move-object/from16 v23, v2

    .line 665
    .local v23, "styledText":Lkotlin/jvm/functions/Function0;
    if-eqz p3, :cond_2f

    .line 666
    invoke-static {v0, v13}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->resolveInlineContent(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_26

    .line 667
    :cond_2f
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 665
    :goto_26
    nop

    .line 664
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .local v3, "placeholders":Ljava/util/List;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Ljava/util/List;

    .line 670
    .local v25, "inlineComposables":Ljava/util/List;
    if-eqz p3, :cond_31

    const v1, 0x8b8a5ec

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "670@27983L61"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 671
    const v1, -0x7fa0982

    invoke-static {v4, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object v2, v4

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 868
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 869
    .restart local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v26, v1

    .end local v1    # "invalid$iv":Z
    .local v26, "invalid$iv":Z
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_30

    .line 870
    const/4 v1, 0x0

    .line 671
    .local v1, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$measuredPlaceholderPositions$1":I
    move-object/from16 v20, v0

    move/from16 p4, v1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$measuredPlaceholderPositions$1":I
    .restart local v20    # "it$iv":Ljava/lang/Object;
    .local p4, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$measuredPlaceholderPositions$1":I
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 870
    .end local p4    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$measuredPlaceholderPositions$1":I
    nop

    .line 871
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 872
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_27

    .line 873
    .end local v20    # "it$iv":Ljava/lang/Object;
    .restart local v0    # "it$iv":Ljava/lang/Object;
    :cond_30
    move-object/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .restart local v20    # "it$iv":Ljava/lang/Object;
    move-object/from16 v1, v20

    .line 868
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    :goto_27
    nop

    .line 671
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v26    # "invalid$iv":Z
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 670
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_28

    .line 672
    :cond_31
    const/4 v0, 0x0

    const v1, 0x8b9fcbc    # 1.11937E-33f

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v2, v0

    .line 670
    :goto_28
    nop

    .line 669
    move-object v1, v2

    .line 675
    .local v1, "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    if-eqz p3, :cond_34

    const v0, 0x8bb68fd

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "675@28166L44"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 676
    const v0, -0x7f9f2b3

    invoke-static {v4, v0, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v2, v4

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 874
    .restart local v5    # "$i$f$cache":I
    move/from16 p4, v0

    .end local v0    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 875
    .restart local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p4, :cond_33

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v22, v3

    .end local v3    # "placeholders":Ljava/util/List;
    .local v22, "placeholders":Ljava/util/List;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_32

    goto :goto_29

    .line 879
    :cond_32
    goto :goto_2a

    .line 875
    .end local v22    # "placeholders":Ljava/util/List;
    .restart local v3    # "placeholders":Ljava/util/List;
    :cond_33
    move-object/from16 v22, v3

    .line 876
    .end local v3    # "placeholders":Ljava/util/List;
    .restart local v22    # "placeholders":Ljava/util/List;
    :goto_29
    const/4 v3, 0x0

    .line 676
    .local v3, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$onPlaceholderLayout$1":I
    move-object/from16 v20, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .restart local v20    # "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 876
    .end local v3    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$onPlaceholderLayout$1":I
    nop

    .line 877
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 878
    nop

    .line 874
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    :goto_2a
    nop

    .line 676
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 675
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_2b

    .line 677
    .end local v22    # "placeholders":Ljava/util/List;
    .local v3, "placeholders":Ljava/util/List;
    :cond_34
    move-object/from16 v22, v3

    .end local v3    # "placeholders":Ljava/util/List;
    .restart local v22    # "placeholders":Ljava/util/List;
    const v2, 0x8bc7ffc

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v5, v0

    .line 675
    :goto_2b
    nop

    .line 674
    move-object/from16 v19, v5

    .line 680
    .local v19, "onPlaceholderLayout":Lkotlin/jvm/functions/Function1;
    nop

    .line 681
    nop

    .line 682
    nop

    .line 683
    shr-int/lit8 v0, v24, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v2, v24, 0xc

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    shl-int/lit8 v2, v18, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int v5, v0, v2

    .line 679
    move-object/from16 v0, p1

    move-object/from16 v2, p10

    move-object/from16 v27, v1

    move-object v1, v10

    move-object/from16 v8, v17

    move-object/from16 v3, v22

    move/from16 v10, v24

    move/from16 v24, v18

    .end local v1    # "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    .end local v17    # "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    .end local v18    # "$dirty1":I
    .end local v22    # "placeholders":Ljava/util/List;
    .restart local v3    # "placeholders":Ljava/util/List;
    .local v8, "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    .local v10, "$dirty":I
    .local v24, "$dirty1":I
    .local v27, "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    .line 692
    move-object/from16 v17, v3

    move-object v1, v4

    .line 693
    .end local v3    # "placeholders":Ljava/util/List;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "placeholders":Ljava/util/List;
    invoke-interface/range {v23 .. v23}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 694
    nop

    .line 695
    const v3, -0x7f9ac6a

    invoke-static {v1, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit16 v4, v10, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_35

    goto :goto_2c

    :cond_35
    move/from16 v16, p15

    :goto_2c
    or-int v3, v3, v16

    .local v3, "invalid$iv":Z
    move-object v4, v1

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 880
    .restart local v5    # "$i$f$cache":I
    move-object/from16 p4, v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 881
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_37

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v20, v3

    .end local v3    # "invalid$iv":Z
    .local v20, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_36

    goto :goto_2d

    .line 885
    :cond_36
    goto :goto_2e

    .line 881
    .end local v20    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_37
    move/from16 v20, v3

    .line 882
    .end local v3    # "invalid$iv":Z
    .restart local v20    # "invalid$iv":Z
    :goto_2d
    const/4 v3, 0x0

    .line 695
    .local v3, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$2":I
    move-object/from16 v18, v2

    .end local v2    # "it$iv":Ljava/lang/Object;
    .local v18, "it$iv":Ljava/lang/Object;
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;

    invoke-direct {v2, v8, v6}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;)V

    .line 882
    .end local v3    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$2":I
    nop

    .line 883
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 884
    nop

    .line 880
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v18    # "it$iv":Ljava/lang/Object;
    :goto_2e
    nop

    .line 695
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v20    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 699
    nop

    .line 700
    nop

    .line 701
    nop

    .line 702
    nop

    .line 703
    nop

    .line 704
    nop

    .line 705
    nop

    .line 706
    nop

    .line 707
    nop

    .line 708
    nop

    .line 709
    nop

    .line 692
    move v3, v11

    move-object v11, v2

    move-object v2, v8

    move-object v8, v12

    move v12, v3

    move-object/from16 v9, p4

    move-object/from16 v16, p10

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move/from16 v26, v10

    move-object v3, v13

    move v13, v14

    move-object/from16 v22, v15

    move-object/from16 v18, v19

    move-object/from16 v10, p5

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v19, p11

    .end local v8    # "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    .end local v10    # "$dirty":I
    .end local v13    # "inlineContent":Ljava/util/Map;
    .end local v19    # "onPlaceholderLayout":Lkotlin/jvm/functions/Function1;
    .local v2, "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    .local v3, "inlineContent":Ljava/util/Map;
    .local v18, "onPlaceholderLayout":Lkotlin/jvm/functions/Function1;
    .local v26, "$dirty":I
    invoke-static/range {v8 .. v22}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 712
    if-nez p3, :cond_3a

    const v5, 0x8ce8017

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "713@29493L55"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 713
    nop

    .line 714
    const v5, -0x7f94cc8

    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid$iv":Z
    move-object v7, v1

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 886
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 887
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_39

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_38

    goto :goto_2f

    .line 891
    :cond_38
    goto :goto_30

    .line 888
    :cond_39
    :goto_2f
    const/4 v11, 0x0

    .line 714
    .local v11, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$3":I
    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda15;

    invoke-direct {v12, v2}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda15;-><init>(Landroidx/compose/foundation/text/TextLinkScope;)V

    .line 888
    .end local v11    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$3":I
    nop

    .line 889
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 890
    move-object v9, v12

    .line 886
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_30
    nop

    .line 714
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 713
    new-instance v5, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    invoke-direct {v5, v9}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 712
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    move-object v7, v5

    move-object/from16 v5, v27

    goto/16 :goto_35

    .line 716
    :cond_3a
    const v5, 0x8d13291

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v5, "717@29664L55,718@29754L39"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 717
    nop

    .line 718
    const v5, -0x7f93768

    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    .restart local v5    # "invalid$iv":Z
    move-object v8, v1

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 892
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 893
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_3c

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_3b

    goto :goto_31

    .line 897
    :cond_3b
    goto :goto_32

    .line 894
    :cond_3c
    :goto_31
    const/4 v12, 0x0

    .line 718
    .local v12, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$4":I
    new-instance v13, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda16;

    invoke-direct {v13, v2}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda16;-><init>(Landroidx/compose/foundation/text/TextLinkScope;)V

    .line 894
    .end local v12    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$4":I
    nop

    .line 895
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 896
    move-object v10, v13

    .line 892
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_32
    nop

    .line 718
    .end local v5    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 719
    const v5, -0x7f92c38

    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 v5, v27

    .end local v27    # "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    .local v5, "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid$iv":Z
    move-object v8, v1

    .restart local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 898
    .restart local v9    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 899
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_3e

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_3d

    goto :goto_33

    .line 903
    :cond_3d
    goto :goto_34

    .line 900
    :cond_3e
    :goto_33
    const/4 v13, 0x0

    .line 719
    .local v13, "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$5":I
    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda17;

    invoke-direct {v14, v5}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda17;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 900
    .end local v13    # "$i$a$-cache-BasicTextKt$LayoutWithLinksAndInlineContent$5":I
    nop

    .line 901
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 902
    move-object v11, v14

    .line 898
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_34
    nop

    .line 719
    .end local v7    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 717
    new-instance v7, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v7, v10, v11}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 716
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    check-cast v7, Landroidx/compose/ui/layout/MeasurePolicy;

    :goto_35
    nop

    .line 686
    nop

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v8, v1

    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    move/from16 v9, p15

    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .line 904
    .local v10, "$i$f$Layout":I
    const v11, -0x451e1427

    const-string v12, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v8, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 905
    move/from16 v11, p15

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    .line 906
    .local v11, "compositeKeyHash$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 907
    .local v12, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v8, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 909
    .local v13, "materialized$iv":Landroidx/compose/ui/Modifier;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    shl-int/lit8 v15, v9, 0x6

    and-int/lit16 v15, v15, 0x380

    or-int/lit8 v15, v15, 0x6

    .line 908
    move-object/from16 p4, v8

    .local v14, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v15, "$changed$iv$iv":I
    .local p4, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 910
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 v19, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    const v1, -0x20f7d59c

    move-object/from16 v20, v3

    .end local v3    # "inlineContent":Ljava/util/Map;
    .local v20, "inlineContent":Ljava/util/Map;
    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v21, v4

    move-object/from16 v4, p4

    .end local p4    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v21, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 911
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_3f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 912
    :cond_3f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 913
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 914
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_36

    .line 916
    :cond_40
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 918
    :goto_36
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 919
    .local v3, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p4, v3

    .end local v3    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    .local p4, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 920
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 921
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v27, v4

    .end local v4    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v27, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 922
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 923
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 924
    nop

    .line 918
    .end local v1    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 925
    shr-int/lit8 v1, v15, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed":I
    move-object/from16 v3, v27

    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 688
    .local v4, "$i$a$-Layout-BasicTextKt$LayoutWithLinksAndInlineContent$1":I
    move/from16 p4, v1

    .end local v1    # "$changed":I
    .local p4, "$changed":I
    const v1, -0x19d7acaa

    move/from16 v22, v4

    .end local v4    # "$i$a$-Layout-BasicTextKt$LayoutWithLinksAndInlineContent$1":I
    .local v22, "$i$a$-Layout-BasicTextKt$LayoutWithLinksAndInlineContent$1":I
    const-string v4, "C:BasicText.kt#423gt5"

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-nez v2, :cond_41

    const v1, -0x19d78e09

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_37

    :cond_41
    const v1, -0x115988b6

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "687@28455L18"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 689
    :goto_37
    if-nez v25, :cond_42

    const v1, -0x19d6c7af

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p15, v2

    goto :goto_38

    :cond_42
    const v1, -0x19d6c7ae

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "*688@28511L48"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v1, v25

    .line 846
    .local v1, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 689
    .local v4, "$i$a$-let-BasicTextKt$LayoutWithLinksAndInlineContent$1$1":I
    shr-int/lit8 v28, v26, 0x3

    move-object/from16 p15, v2

    .end local v2    # "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    .local p15, "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    and-int/lit8 v2, v28, 0xe

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    .end local v1    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-let-BasicTextKt$LayoutWithLinksAndInlineContent$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 688
    :goto_38
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 690
    nop

    .line 925
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-Layout-BasicTextKt$LayoutWithLinksAndInlineContent$1":I
    .end local p4    # "$changed":I
    nop

    .line 926
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 910
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 927
    nop

    .line 904
    .end local v14    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$changed$iv$iv":I
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v27    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 928
    nop

    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$Layout":I
    .end local v11    # "compositeKeyHash$iv":I
    .end local v12    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v21    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 723
    .end local v5    # "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    .end local v17    # "placeholders":Ljava/util/List;
    .end local v18    # "onPlaceholderLayout":Lkotlin/jvm/functions/Function1;
    .end local v23    # "styledText":Lkotlin/jvm/functions/Function0;
    .end local v25    # "inlineComposables":Ljava/util/List;
    .end local p15    # "textScope":Landroidx/compose/foundation/text/TextLinkScope;
    :cond_43
    move-object/from16 v5, v20

    goto :goto_39

    .line 631
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "inlineContent":Ljava/util/Map;
    .end local v24    # "$dirty1":I
    .end local v26    # "$dirty":I
    .local v1, "$dirty1":I
    .local v2, "$dirty":I
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local p4, "inlineContent":Ljava/util/Map;
    :cond_44
    move/from16 v24, v1

    move/from16 v26, v2

    move-object/from16 v19, v4

    .end local v1    # "$dirty1":I
    .end local v2    # "$dirty":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$dirty1":I
    .restart local v26    # "$dirty":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v5, v13

    .line 723
    .end local p4    # "inlineContent":Ljava/util/Map;
    .local v5, "inlineContent":Ljava/util/Map;
    :goto_39
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_45

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda18;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v29, v1

    move-object v3, v6

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda18;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;III)V

    move-object v1, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_45
    return-void
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$1$0(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 1
    .param p0, "$textScope"    # Landroidx/compose/foundation/text/TextLinkScope;
    .param p1, "$text"    # Landroidx/compose/ui/text/AnnotatedString;

    .line 658
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextLinkScope;->applyAnnotators$foundation()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$10(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 20

    or-int/lit8 v0, p15, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    invoke-static/range {p16 .. p16}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v19, p17

    move-object/from16 v16, p18

    invoke-static/range {v1 .. v19}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$2$0(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 0
    .param p0, "$text"    # Landroidx/compose/ui/text/AnnotatedString;

    .line 660
    return-object p0
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$4$0(Landroidx/compose/runtime/MutableState;Ljava/util/List;)Lkotlin/Unit;
    .locals 1
    .param p0, "$measuredPlaceholderPositions"    # Landroidx/compose/runtime/MutableState;
    .param p1, "it"    # Ljava/util/List;

    .line 676
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$6$0(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Unit;
    .locals 1
    .param p0, "$textScope"    # Landroidx/compose/foundation/text/TextLinkScope;
    .param p1, "$onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p2, "it"    # Landroidx/compose/ui/text/TextLayoutResult;

    .line 696
    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/TextLinkScope;->setTextLayoutResult(Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 697
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$7$0(Landroidx/compose/foundation/text/TextLinkScope;)Z
    .locals 3
    .param p0, "$textScope"    # Landroidx/compose/foundation/text/TextLinkScope;

    .line 714
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 846
    .local v0, "it":Landroidx/compose/foundation/text/TextLinkScope;
    const/4 v1, 0x0

    .line 714
    .local v1, "$i$a$-let-BasicTextKt$LayoutWithLinksAndInlineContent$3$1$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLinkScope;->getShouldMeasureLinks()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .end local v0    # "it":Landroidx/compose/foundation/text/TextLinkScope;
    .end local v1    # "$i$a$-let-BasicTextKt$LayoutWithLinksAndInlineContent$3$1$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$8$0(Landroidx/compose/foundation/text/TextLinkScope;)Z
    .locals 3
    .param p0, "$textScope"    # Landroidx/compose/foundation/text/TextLinkScope;

    .line 718
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 846
    .local v0, "it":Landroidx/compose/foundation/text/TextLinkScope;
    const/4 v1, 0x0

    .line 718
    .local v1, "$i$a$-let-BasicTextKt$LayoutWithLinksAndInlineContent$4$1$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLinkScope;->getShouldMeasureLinks()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .end local v0    # "it":Landroidx/compose/foundation/text/TextLinkScope;
    .end local v1    # "$i$a$-let-BasicTextKt$LayoutWithLinksAndInlineContent$4$1$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final LayoutWithLinksAndInlineContent_11Od_4g$lambda$9$0(Landroidx/compose/runtime/MutableState;)Ljava/util/List;
    .locals 1
    .param p0, "$measuredPlaceholderPositions"    # Landroidx/compose/runtime/MutableState;

    .line 719
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final synthetic access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 1
    .param p0, "measurables"    # Ljava/util/List;
    .param p1, "shouldMeasureLinks"    # Lkotlin/jvm/functions/Function0;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 21
    .param p0, "measurables"    # Ljava/util/List;
    .param p1, "shouldMeasureLinks"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/layout/Placeable;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;>;>;"
        }
    .end annotation

    .line 551
    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;

    invoke-direct {v0}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;-><init>()V

    .line 553
    .local v0, "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    move-object/from16 v1, p0

    .local v1, "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 841
    .local v2, "$i$f$fastMapIndexedNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 842
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 843
    .local v5, "$i$f$fastForEachIndexed":I
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    .line 844
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 845
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move v9, v6

    .local v9, "index$iv":I
    move-object v10, v8

    .local v10, "e$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 842
    .local v11, "$i$a$-fastForEachIndexed-ListUtilsKt$fastMapIndexedNotNull$1$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .local v12, "measurable":Landroidx/compose/ui/layout/Measurable;
    const/4 v13, 0x0

    .line 555
    .local v13, "$i$a$-fastMapIndexedNotNull-BasicTextKt$measureWithTextRangeMeasureConstraints$1":I
    invoke-interface {v12}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.foundation.text.TextRangeLayoutModifier"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->getMeasurePolicy()Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;

    move-result-object v14

    .line 554
    nop

    .line 557
    .local v14, "rangeMeasurePolicy":Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;
    move-object v15, v14

    .line 846
    .local v15, "$this$measureWithTextRangeMeasureConstraints_u24lambda_u240_u240":Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;
    const/16 v16, 0x0

    .line 557
    .local v16, "$i$a$-with-BasicTextKt$measureWithTextRangeMeasureConstraints$1$rangeMeasureResult$1":I
    invoke-interface {v15, v0}, Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;->measure(Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;)Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    move-result-object v15

    .line 556
    .end local v15    # "$this$measureWithTextRangeMeasureConstraints_u24lambda_u240_u240":Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;
    .end local v16    # "$i$a$-with-BasicTextKt$measureWithTextRangeMeasureConstraints$1$rangeMeasureResult$1":I
    nop

    .line 559
    .local v15, "rangeMeasureResult":Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;
    nop

    .line 560
    move-object/from16 v16, v0

    .end local v0    # "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    .local v16, "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 561
    move-object/from16 v17, v1

    .end local v1    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .local v17, "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->getWidth()I

    move-result v1

    .line 562
    move/from16 v18, v2

    .end local v2    # "$i$f$fastMapIndexedNotNull":I
    .local v18, "$i$f$fastMapIndexedNotNull":I
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->getWidth()I

    move-result v2

    .line 563
    move-object/from16 v19, v3

    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .local v19, "target$iv":Ljava/util/ArrayList;
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->getHeight()I

    move-result v3

    .line 564
    move-object/from16 v20, v4

    .end local v4    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v20, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->getHeight()I

    move-result v4

    .line 560
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v0

    .line 559
    invoke-interface {v12, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 558
    nop

    .line 567
    .local v0, "placeable":Landroidx/compose/ui/layout/Placeable;
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->getPlace()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    .end local v0    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "measurable":Landroidx/compose/ui/layout/Measurable;
    .end local v13    # "$i$a$-fastMapIndexedNotNull-BasicTextKt$measureWithTextRangeMeasureConstraints$1":I
    .end local v14    # "rangeMeasurePolicy":Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;
    .end local v15    # "rangeMeasureResult":Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;
    nop

    .line 847
    .local v1, "it$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 842
    .local v0, "$i$a$-let-ListUtilsKt$fastMapIndexedNotNull$1$1$iv":I
    move-object/from16 v2, v19

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 845
    .end local v0    # "$i$a$-let-ListUtilsKt$fastMapIndexedNotNull$1$1$iv":I
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v9    # "index$iv":I
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEachIndexed-ListUtilsKt$fastMapIndexedNotNull$1$iv":I
    nop

    .line 843
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_0

    .end local v16    # "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    .end local v17    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastMapIndexedNotNull":I
    .end local v19    # "target$iv":Ljava/util/ArrayList;
    .end local v20    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v0, "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    .local v1, "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastMapIndexedNotNull":I
    .restart local v3    # "target$iv":Ljava/util/ArrayList;
    .restart local v4    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    :cond_0
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 848
    .end local v0    # "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    .end local v1    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMapIndexedNotNull":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v4    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v6    # "index$iv$iv":I
    .restart local v16    # "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    .restart local v17    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastMapIndexedNotNull":I
    .restart local v19    # "target$iv":Ljava/util/ArrayList;
    .restart local v20    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    nop

    .line 849
    .end local v5    # "$i$f$fastForEachIndexed":I
    .end local v20    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    move-object/from16 v0, v19

    check-cast v0, Ljava/util/List;

    .end local v16    # "textRangeLayoutMeasureScope":Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;
    .end local v17    # "$this$fastMapIndexedNotNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastMapIndexedNotNull":I
    .end local v19    # "target$iv":Ljava/util/ArrayList;
    goto :goto_1

    .line 570
    :cond_1
    const/4 v0, 0x0

    .line 551
    :goto_1
    return-object v0
.end method

.method private static final selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .param p0, "selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    .line 466
    return-object v0
.end method

.method static final selectionIdSaver$lambda$0(Landroidx/compose/foundation/text/selection/SelectionRegistrar;Landroidx/compose/runtime/saveable/SaverScope;J)Ljava/lang/Long;
    .locals 1
    .param p0, "$selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .param p1, "$this$Saver"    # Landroidx/compose/runtime/saveable/SaverScope;
    .param p2, "it"    # J

    .line 464
    invoke-static {p0, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static final selectionIdSaver$lambda$1(J)Ljava/lang/Long;
    .locals 1
    .param p0, "it"    # J

    .line 465
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static final textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;
    .locals 32
    .param p0, "$this$textModifier_u2dCL7eQgs"    # Landroidx/compose/ui/Modifier;
    .param p1, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p9, "placeholders"    # Ljava/util/List;
    .param p10, "onPlaceholderLayout"    # Lkotlin/jvm/functions/Function1;
    .param p11, "selectionController"    # Landroidx/compose/foundation/text/modifiers/SelectionController;
    .param p12, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p13, "onShowTranslation"    # Lkotlin/jvm/functions/Function1;
    .param p14, "autoSize"    # Landroidx/compose/foundation/text/TextAutoSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/modifiers/SelectionController;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/TextAutoSize;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 590
    move-object/from16 v0, p0

    if-nez p11, :cond_0

    .line 592
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 593
    nop

    .line 594
    nop

    .line 595
    nop

    .line 596
    nop

    .line 597
    nop

    .line 598
    nop

    .line 599
    nop

    .line 600
    nop

    .line 601
    nop

    .line 602
    nop

    .line 603
    nop

    .line 604
    nop

    .line 605
    nop

    .line 606
    nop

    .line 592
    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v15, p13

    move-object/from16 v14, p14

    invoke-direct/range {v1 .. v16}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 591
    nop

    .line 608
    .local v1, "staticTextModifier":Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    return-object v2

    .line 611
    .end local v1    # "staticTextModifier":Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;
    :cond_0
    new-instance v17, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    .line 612
    nop

    .line 613
    nop

    .line 614
    nop

    .line 615
    nop

    .line 616
    nop

    .line 617
    nop

    .line 618
    nop

    .line 619
    nop

    .line 620
    nop

    .line 621
    nop

    .line 622
    nop

    .line 623
    nop

    .line 624
    nop

    .line 611
    const/16 v31, 0x0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v21, p3

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    move-object/from16 v20, p8

    move-object/from16 v26, p9

    move-object/from16 v27, p10

    move-object/from16 v28, p11

    move-object/from16 v29, p12

    move-object/from16 v30, p14

    invoke-direct/range {v17 .. v31}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 610
    nop

    .line 626
    .local v17, "selectableTextModifier":Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;
    invoke-virtual/range {p11 .. p11}, Landroidx/compose/foundation/text/modifiers/SelectionController;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    return-object v1
.end method
