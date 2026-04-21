.class public final Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "TextStringSimpleNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextStringSimpleNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextStringSimpleNode.kt\nandroidx/compose/foundation/text/modifiers/TextStringSimpleNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 6 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 7 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 8 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 9 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,476:1\n1#2:477\n27#3,3:478\n31#3:495\n26#4:481\n26#4:482\n54#5:483\n54#5:485\n59#5:487\n59#5:489\n54#5:491\n59#5:493\n54#5:502\n59#5:504\n85#6:484\n85#6:486\n90#6:488\n90#6:490\n85#6:492\n90#6:494\n85#6:503\n90#6:505\n109#7,5:496\n233#8:501\n635#9:506\n635#9:507\n*S KotlinDebug\n*F\n+ 1 TextStringSimpleNode.kt\nandroidx/compose/foundation/text/modifiers/TextStringSimpleNode\n*L\n354#1:478,3\n354#1:495\n371#1:481\n372#1:482\n379#1:483\n380#1:485\n381#1:487\n382#1:489\n386#1:491\n386#1:493\n430#1:502\n431#1:504\n379#1:484\n380#1:486\n381#1:488\n382#1:490\n386#1:492\n386#1:494\n430#1:503\n431#1:505\n423#1:496,5\n427#1:501\n453#1:506\n455#1:507\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001PBS\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000c\u0010$\u001a\u00020 *\u00020%H\u0002J\r\u0010\"\u001a\u00020 H\u0003\u00a2\u0006\u0002\u0008&J\u0018\u0010\'\u001a\u00020\u000e2\u0008\u0010(\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010)\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006J=\u0010*\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008+\u0010,J\u001e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u000eJ\u0010\u00108\u001a\u00020\u000e2\u0006\u00109\u001a\u00020\u0006H\u0002J\u0008\u0010:\u001a\u00020.H\u0002J\u000c\u0010;\u001a\u00020.*\u00020<H\u0016J\u0008\u0010=\u001a\u00020.H\u0002J#\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u001c\u0010G\u001a\u00020\u0010*\u00020%2\u0006\u0010A\u001a\u00020H2\u0006\u0010I\u001a\u00020\u0010H\u0016J\u001c\u0010J\u001a\u00020\u0010*\u00020%2\u0006\u0010A\u001a\u00020H2\u0006\u0010K\u001a\u00020\u0010H\u0016J\u001c\u0010L\u001a\u00020\u0010*\u00020%2\u0006\u0010A\u001a\u00020H2\u0006\u0010I\u001a\u00020\u0010H\u0016J\u001c\u0010M\u001a\u00020\u0010*\u00020%2\u0006\u0010A\u001a\u00020H2\u0006\u0010K\u001a\u00020\u0010H\u0016J\u000c\u0010N\u001a\u00020.*\u00020OH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\"\u00102\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020504\u0012\u0004\u0012\u00020\u000e\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Q"
    }
    d2 = {
        "Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "text",
        "",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "softWrap",
        "",
        "maxLines",
        "",
        "minLines",
        "overrideColor",
        "Landroidx/compose/ui/graphics/ColorProducer;",
        "<init>",
        "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "I",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "()Z",
        "baselineCache",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "getBaselineCache$annotations",
        "()V",
        "_layoutCache",
        "Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;",
        "layoutCache",
        "getLayoutCache",
        "()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;",
        "getLayoutCacheForMeasure",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "getLayoutCacheOrSubstitute",
        "updateDraw",
        "color",
        "updateText",
        "updateLayoutRelatedArgs",
        "updateLayoutRelatedArgs-HuAbxIM",
        "(Landroidx/compose/ui/text/TextStyle;IIZLandroidx/compose/ui/text/font/FontFamily$Resolver;I)Z",
        "doInvalidations",
        "",
        "drawChanged",
        "textChanged",
        "layoutChanged",
        "semanticsTextLayoutResult",
        "Lkotlin/Function1;",
        "",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "textSubstitution",
        "Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;",
        "setSubstitution",
        "updatedText",
        "clearSubstitution",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "invalidateForTranslate",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicWidth",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "minIntrinsicHeight",
        "width",
        "maxIntrinsicWidth",
        "maxIntrinsicHeight",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "TextSubstitutionValue",
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


# static fields
.field public static final $stable:I


# instance fields
.field private _layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

.field private baselineCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private maxLines:I

.field private minLines:I

.field private overflow:I

.field private overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

.field private semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private softWrap:Z

.field private style:Landroidx/compose/ui/text/TextStyle;

.field private text:Ljava/lang/String;

.field private textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;


# direct methods
.method public static synthetic $r8$lambda$hi7gD20Tu0XAGFzjijkNuVrHmTY(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->measure_3p2s80s$lambda$0$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->$stable:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "overrideColor"    # Landroidx/compose/ui/graphics/ColorProducer;

    .line 71
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 74
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 75
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 76
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 77
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 78
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 79
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    .line 71
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .line 71
    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    move v6, v1

    goto :goto_0

    .line 71
    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 76
    move v7, v2

    goto :goto_1

    .line 71
    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 77
    const v1, 0x7fffffff

    move v8, v1

    goto :goto_2

    .line 71
    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 78
    move v9, v2

    goto :goto_3

    .line 71
    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_4

    .line 71
    :cond_4
    move-object/from16 v10, p8

    :goto_4
    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;)V

    return-void
.end method

.method static final applySemantics$lambda$0(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;Ljava/util/List;)Z
    .locals 34
    .param p0, "this$0"    # Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;
    .param p1, "textLayoutResult"    # Ljava/util/List;

    .line 301
    move-object/from16 v0, p0

    .line 296
    invoke-direct {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v1

    .line 299
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    :goto_0
    const v32, 0xfffffe

    const/16 v33, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v2 .. v33}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/TextMotion;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 297
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->slowCreateTextLayoutResultOrNull(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_1

    .line 296
    nop

    .line 301
    move-object v2, v1

    .line 477
    .local v2, "it":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v3, 0x0

    .line 301
    .local v3, "$i$a$-also-TextStringSimpleNode$applySemantics$1$layout$1":I
    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "it":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v3    # "$i$a$-also-TextStringSimpleNode$applySemantics$1$layout$1":I
    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    const/4 v1, 0x0

    .line 295
    :goto_1
    nop

    .line 302
    .local v1, "layout":Landroidx/compose/ui/text/TextLayoutResult;
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method static final applySemantics$lambda$1(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;
    .param p1, "updatedText"    # Landroidx/compose/ui/text/AnnotatedString;

    .line 315
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->setSubstitution(Ljava/lang/String;)Z

    .line 317
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->invalidateForTranslate()V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method static final applySemantics$lambda$2(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;Z)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;
    .param p1, "it"    # Z

    .line 322
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->setShowingSubstitution(Z)V

    .line 328
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->invalidateForTranslate()V

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method static final applySemantics$lambda$3(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 333
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->clearSubstitution()V

    .line 335
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->invalidateForTranslate()V

    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method private final clearSubstitution()V
    .locals 1

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 289
    return-void
.end method

.method private static synthetic getBaselineCache$annotations()V
    .locals 0

    return-void
.end method

.method private final getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .locals 10

    .line 93
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    if-nez v0, :cond_0

    .line 94
    nop

    .line 95
    new-instance v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 96
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    .line 97
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 98
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 99
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 100
    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 101
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 102
    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 95
    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    iput-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 105
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getLayoutCacheForMeasure(Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .locals 2
    .param p1, "$this$getLayoutCacheForMeasure"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;

    .line 118
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheOrSubstitute()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    .line 119
    .local v0, "activeCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setDensity$foundation(Landroidx/compose/ui/unit/Density;)V

    .line 120
    return-object v0
.end method

.method private final getLayoutCacheOrSubstitute()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .locals 3

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 477
    .local v1, "it":Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-takeIf-TextStringSimpleNode$getLayoutCache$1":I
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution()Z

    move-result v1

    .end local v1    # "it":Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    .end local v2    # "$i$a$-takeIf-TextStringSimpleNode$getLayoutCache$1":I
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private final invalidateForTranslate()V
    .locals 1

    .line 344
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 345
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 346
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 347
    return-void
.end method

.method private static final measure_3p2s80s$lambda$0$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7
    .param p0, "$placeable"    # Landroidx/compose/ui/layout/Placeable;
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 387
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    .end local p0    # "$placeable":Landroidx/compose/ui/layout/Placeable;
    .end local p1    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v0, "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v1, "$placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 388
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setSubstitution(Ljava/lang/String;)Z
    .locals 11
    .param p1, "updatedText"    # Ljava/lang/String;

    .line 253
    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 254
    .local v9, "currentTextSubstitution":Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    if-eqz v9, :cond_2

    .line 255
    invoke-virtual {v9}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->getSubstitution()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 256
    return v2

    .line 258
    :cond_0
    invoke-virtual {v9, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->setSubstitution(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v9}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    nop

    .line 261
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 262
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 263
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 264
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 265
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 266
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 259
    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->update-L6sJoHM(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    goto :goto_0

    .line 267
    :cond_1
    return v2

    .line 269
    :cond_2
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v0

    .line 271
    .local v10, "newTextSubstitution":Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    new-instance v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 272
    nop

    .line 273
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 274
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 275
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 276
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 277
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 278
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 271
    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 270
    nop

    .line 280
    .local v0, "substitutionLayoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getDensity$foundation()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setDensity$foundation(Landroidx/compose/ui/unit/Density;)V

    .line 281
    invoke-virtual {v10, v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->setLayoutCache(Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;)V

    .line 282
    iput-object v10, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 284
    .end local v0    # "substitutionLayoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .end local v10    # "newTextSubstitution":Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 6
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

    .line 293
    .local v0, "localSemanticsTextLayoutResult":Lkotlin/jvm/functions/Function1;
    if-nez v0, :cond_0

    .line 294
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V

    move-object v0, v1

    .line 304
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

    .line 307
    :cond_0
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 308
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 309
    .local v1, "currentTextSubstitution":Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution()Z

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    .line 311
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->getSubstitution()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v3, v4, v3}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 314
    :cond_1
    new-instance v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V

    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTextSubstitution$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 321
    new-instance v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V

    invoke-static {p1, v3, v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->showTextSubstitution$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 332
    new-instance v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V

    invoke-static {p1, v3, v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->clearTextSubstitution$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 339
    invoke-static {p1, v3, v0, v4, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->getTextLayoutResult$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 340
    return-void
.end method

.method public final doInvalidations(ZZZ)V
    .locals 8
    .param p1, "drawChanged"    # Z
    .param p2, "textChanged"    # Z
    .param p3, "layoutChanged"    # Z

    .line 204
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    .line 206
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 208
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 209
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 210
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 211
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 212
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 205
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->update-L6sJoHM(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    return-void

    .line 220
    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    .line 221
    :cond_3
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 224
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    .line 225
    :cond_5
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 226
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 228
    :cond_6
    if-eqz p1, :cond_7

    .line 229
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 231
    :cond_7
    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 22
    .param p1, "$this$draw"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 416
    move-object/from16 v1, p0

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    invoke-direct {v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheOrSubstitute()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v2

    .line 423
    .local v2, "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    invoke-virtual {v2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getParagraph$foundation()Landroidx/compose/ui/text/Paragraph;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 496
    .local v3, "$i$f$requirePreconditionNotNull":I
    if-eqz v0, :cond_d

    .line 500
    nop

    .line 423
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$requirePreconditionNotNull":I
    nop

    .line 422
    move-object v4, v0

    .line 427
    .local v4, "localParagraph":Landroidx/compose/ui/text/Paragraph;
    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v3, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v14, 0x0

    .line 501
    .local v14, "$i$f$drawIntoCanvas":I
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    .local v5, "canvas":Landroidx/compose/ui/graphics/Canvas;
    const/4 v15, 0x0

    .line 428
    .local v15, "$i$a$-drawIntoCanvas-TextStringSimpleNode$draw$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getDidOverflow$foundation()Z

    move-result v16

    .line 429
    .local v16, "willClip":Z
    if-eqz v16, :cond_1

    .line 430
    invoke-virtual {v2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getLayoutSize-YbymL2g$foundation()J

    move-result-wide v6

    .local v6, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v0, 0x0

    .line 502
    .local v0, "$i$f$getWidth-impl":I
    move-wide v8, v6

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 503
    .local v10, "$i$f$unpackInt1":I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v8, v11

    .line 502
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackInt1":I
    nop

    .line 430
    .end local v0    # "$i$f$getWidth-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v8, v8

    .line 431
    .local v8, "width":F
    invoke-virtual {v2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getLayoutSize-YbymL2g$foundation()J

    move-result-wide v6

    .restart local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v0, 0x0

    .line 504
    .local v0, "$i$f$getHeight-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 505
    .local v11, "$i$f$unpackInt2":I
    const-wide v12, 0xffffffffL

    and-long/2addr v12, v9

    long-to-int v9, v12

    .line 504
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackInt2":I
    nop

    .line 431
    .end local v0    # "$i$f$getHeight-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v9, v9

    .line 432
    .local v9, "height":F
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 433
    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V

    .line 435
    .end local v8    # "width":F
    .end local v9    # "height":F
    :cond_1
    nop

    .line 436
    :try_start_0
    iget-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    :cond_2
    move-object v9, v0

    .line 437
    .local v9, "textDecoration":Landroidx/compose/ui/text/style/TextDecoration;
    iget-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v0

    :cond_3
    move-object v8, v0

    .line 438
    .local v8, "shadow":Landroidx/compose/ui/graphics/Shadow;
    iget-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getDrawStyle()Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    :cond_4
    move-object v10, v0

    .line 439
    .local v10, "drawStyle":Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    iget-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v6

    .line 440
    .local v6, "brush":Landroidx/compose/ui/graphics/Brush;
    if-eqz v6, :cond_5

    .line 441
    iget-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getAlpha()F

    move-result v7

    .line 444
    .local v7, "alpha":F
    nop

    .line 442
    nop

    .line 443
    nop

    .line 444
    nop

    .line 445
    nop

    .line 446
    nop

    .line 448
    nop

    .line 447
    nop

    .line 442
    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Landroidx/compose/ui/text/Paragraph;->paint-hn5TExg$default(Landroidx/compose/ui/text/Paragraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IILjava/lang/Object;)V

    move-object v0, v6

    .end local v6    # "brush":Landroidx/compose/ui/graphics/Brush;
    .end local v7    # "alpha":F
    .local v0, "brush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_4

    .line 451
    .end local v0    # "brush":Landroidx/compose/ui/graphics/Brush;
    .restart local v6    # "brush":Landroidx/compose/ui/graphics/Brush;
    :cond_5
    move-object v0, v6

    .end local v6    # "brush":Landroidx/compose/ui/graphics/Brush;
    .restart local v0    # "brush":Landroidx/compose/ui/graphics/Brush;
    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v6

    goto :goto_0

    :cond_6
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v17, v6

    .line 453
    .local v17, "overrideColorVal":J
    nop

    .local v6, "$v$c$androidx-compose-ui-graphics-Color$-$this$isSpecified$0$iv":J
    const/4 v11, 0x0

    .line 506
    .local v11, "$i$f$isSpecified-8_81llA":I
    const-wide/16 v12, 0x10

    cmp-long v19, v6, v12

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-eqz v19, :cond_7

    move/from16 v6, v20

    goto :goto_1

    :cond_7
    move/from16 v6, v21

    .line 453
    .end local v6    # "$v$c$androidx-compose-ui-graphics-Color$-$this$isSpecified$0$iv":J
    .end local v11    # "$i$f$isSpecified-8_81llA":I
    :goto_1
    if-eqz v6, :cond_8

    .line 454
    move-wide/from16 v6, v17

    goto :goto_3

    .line 455
    :cond_8
    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v6}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    .restart local v6    # "$v$c$androidx-compose-ui-graphics-Color$-$this$isSpecified$0$iv":J
    const/4 v11, 0x0

    .line 507
    .restart local v11    # "$i$f$isSpecified-8_81llA":I
    cmp-long v12, v6, v12

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    move/from16 v20, v21

    .line 455
    .end local v6    # "$v$c$androidx-compose-ui-graphics-Color$-$this$isSpecified$0$iv":J
    .end local v11    # "$i$f$isSpecified-8_81llA":I
    :goto_2
    if-eqz v20, :cond_a

    .line 456
    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v6}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    goto :goto_3

    .line 458
    :cond_a
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    .line 453
    :goto_3
    nop

    .line 452
    nop

    .line 460
    .local v6, "color":J
    nop

    .line 461
    nop

    .line 462
    nop

    .line 463
    nop

    .line 465
    nop

    .line 464
    nop

    .line 460
    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Landroidx/compose/ui/text/Paragraph;->paint-LG529CI$default(Landroidx/compose/ui/text/Paragraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    .end local v0    # "brush":Landroidx/compose/ui/graphics/Brush;
    .end local v6    # "color":J
    .end local v8    # "shadow":Landroidx/compose/ui/graphics/Shadow;
    .end local v9    # "textDecoration":Landroidx/compose/ui/text/style/TextDecoration;
    .end local v10    # "drawStyle":Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .end local v17    # "overrideColorVal":J
    :goto_4
    if-eqz v16, :cond_b

    .line 470
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 472
    :cond_b
    nop

    .line 473
    nop

    .line 501
    .end local v5    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v15    # "$i$a$-drawIntoCanvas-TextStringSimpleNode$draw$1":I
    .end local v16    # "willClip":Z
    nop

    .line 474
    .end local v3    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v14    # "$i$f$drawIntoCanvas":I
    return-void

    .line 469
    .restart local v3    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v5    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .restart local v14    # "$i$f$drawIntoCanvas":I
    .restart local v15    # "$i$a$-drawIntoCanvas-TextStringSimpleNode$draw$1":I
    .restart local v16    # "willClip":Z
    :catchall_0
    move-exception v0

    if-eqz v16, :cond_c

    .line 470
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_c
    throw v0

    .line 497
    .end local v4    # "localParagraph":Landroidx/compose/ui/text/Paragraph;
    .end local v5    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v14    # "$i$f$drawIntoCanvas":I
    .end local v15    # "$i$a$-drawIntoCanvas-TextStringSimpleNode$draw$1":I
    .end local v16    # "willClip":Z
    .local v0, "value$iv":Ljava/lang/Object;
    .local v3, "$i$f$requirePreconditionNotNull":I
    :cond_d
    const/4 v4, 0x0

    .line 424
    .local v4, "$i$a$-requirePreconditionNotNull-TextStringSimpleNode$draw$localParagraph$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", textSubstitution="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    .end local v4    # "$i$a$-requirePreconditionNotNull-TextStringSimpleNode$draw$localParagraph$1":I
    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public getShouldAutoInvalidate()Z
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$maxIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "width"    # I

    .line 412
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheForMeasure(Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicHeight(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$maxIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "height"    # I

    .line 407
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheForMeasure(Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 354
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "TextStringSimpleNode::measure"

    .local v3, "sectionName$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 478
    .local v4, "$i$f$trace":I
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 479
    nop

    .line 480
    const/4 v0, 0x0

    .line 355
    .local v0, "$i$a$-trace-TextStringSimpleNode$measure$1":I
    :try_start_0
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasureScope;

    invoke-direct {v1, v5}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheForMeasure(Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v5

    .line 357
    .local v5, "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    move-wide/from16 v7, p3

    invoke-virtual {v5, v7, v8, v6}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutWithConstraints-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result v6

    .line 359
    .local v6, "didChangeLayout":Z
    invoke-virtual {v5}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getObserveFontChanges$foundation()Lkotlin/Unit;

    .line 360
    invoke-virtual {v5}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getParagraph$foundation()Landroidx/compose/ui/text/Paragraph;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 361
    .local v9, "paragraph":Landroidx/compose/ui/text/Paragraph;
    invoke-virtual {v5}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getLayoutSize-YbymL2g$foundation()J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 363
    .local v10, "layoutSize":J
    if-eqz v6, :cond_1

    .line 364
    :try_start_1
    move-object v12, v1

    check-cast v12, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v12}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateLayer(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 366
    iget-object v12, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->baselineCache:Ljava/util/Map;

    .line 367
    .local v12, "cache":Ljava/util/Map;
    if-nez v12, :cond_0

    .line 368
    new-instance v13, Ljava/util/HashMap;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V

    check-cast v13, Ljava/util/Map;

    move-object v12, v13

    .line 369
    iput-object v12, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->baselineCache:Ljava/util/Map;

    .line 371
    :cond_0
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v13

    invoke-interface {v9}, Landroidx/compose/ui/text/Paragraph;->getFirstBaseline()F

    move-result v14

    .local v14, "$this$fastRoundToInt$iv":F
    const/4 v15, 0x0

    .line 481
    .local v15, "$i$f$fastRoundToInt":I
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v16

    .end local v14    # "$this$fastRoundToInt$iv":F
    .end local v15    # "$i$f$fastRoundToInt":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 371
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v13

    invoke-interface {v9}, Landroidx/compose/ui/text/Paragraph;->getLastBaseline()F

    move-result v14

    .restart local v14    # "$this$fastRoundToInt$iv":F
    const/4 v15, 0x0

    .line 482
    .restart local v15    # "$i$f$fastRoundToInt":I
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v16

    .end local v14    # "$this$fastRoundToInt$iv":F
    .end local v15    # "$i$f$fastRoundToInt":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 372
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    .end local v0    # "$i$a$-trace-TextStringSimpleNode$measure$1":I
    .end local v5    # "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .end local v6    # "didChangeLayout":Z
    .end local v9    # "paragraph":Landroidx/compose/ui/text/Paragraph;
    .end local v10    # "layoutSize":J
    .end local v12    # "cache":Ljava/util/Map;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v21, v4

    goto/16 :goto_1

    .line 377
    .restart local v0    # "$i$a$-trace-TextStringSimpleNode$measure$1":I
    .restart local v5    # "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .restart local v6    # "didChangeLayout":Z
    .restart local v9    # "paragraph":Landroidx/compose/ui/text/Paragraph;
    .restart local v10    # "layoutSize":J
    :cond_1
    :goto_0
    nop

    .line 378
    :try_start_2
    sget-object v12, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 379
    move-wide v13, v10

    .local v13, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v15, 0x0

    .line 483
    .local v15, "$i$f$getWidth-impl":I
    move-wide/from16 v16, v13

    .local v16, "value$iv$iv":J
    const/16 v18, 0x0

    .line 484
    .local v18, "$i$f$unpackInt1":I
    const/16 v19, 0x20

    move-object/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .local v20, "sectionName$iv":Ljava/lang/String;
    .local v21, "$i$f$trace":I
    shr-long v3, v16, v19

    long-to-int v3, v3

    .line 483
    .end local v16    # "value$iv$iv":J
    .end local v18    # "$i$f$unpackInt1":I
    nop

    .line 380
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v15    # "$i$f$getWidth-impl":I
    nop

    .restart local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 485
    .local v4, "$i$f$getWidth-impl":I
    move-wide v15, v13

    .local v15, "value$iv$iv":J
    const/16 v17, 0x0

    .line 486
    .local v17, "$i$f$unpackInt1":I
    move/from16 v22, v4

    move-object/from16 v18, v5

    .end local v4    # "$i$f$getWidth-impl":I
    .end local v5    # "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .local v18, "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .local v22, "$i$f$getWidth-impl":I
    shr-long v4, v15, v19

    long-to-int v4, v4

    .line 485
    .end local v15    # "value$iv$iv":J
    .end local v17    # "$i$f$unpackInt1":I
    nop

    .line 381
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v22    # "$i$f$getWidth-impl":I
    nop

    .restart local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v5, 0x0

    .line 487
    .local v5, "$i$f$getHeight-impl":I
    nop

    .restart local v15    # "value$iv$iv":J
    const/16 v17, 0x0

    .line 488
    .local v17, "$i$f$unpackInt2":I
    const-wide v22, 0xffffffffL

    move/from16 v25, v5

    move/from16 v24, v6

    .end local v5    # "$i$f$getHeight-impl":I
    .end local v6    # "didChangeLayout":Z
    .local v24, "didChangeLayout":Z
    .local v25, "$i$f$getHeight-impl":I
    and-long v5, v15, v22

    long-to-int v5, v5

    .line 487
    .end local v15    # "value$iv$iv":J
    .end local v17    # "$i$f$unpackInt2":I
    nop

    .line 382
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v25    # "$i$f$getHeight-impl":I
    nop

    .restart local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 489
    .local v6, "$i$f$getHeight-impl":I
    nop

    .restart local v15    # "value$iv$iv":J
    const/16 v17, 0x0

    .line 490
    .restart local v17    # "$i$f$unpackInt2":I
    move v8, v6

    .end local v6    # "$i$f$getHeight-impl":I
    .local v8, "$i$f$getHeight-impl":I
    and-long v6, v15, v22

    long-to-int v6, v6

    .line 489
    .end local v15    # "value$iv$iv":J
    .end local v17    # "$i$f$unpackInt2":I
    nop

    .line 378
    .end local v8    # "$i$f$getHeight-impl":I
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    :try_start_3
    invoke-virtual {v12, v3, v4, v5, v6}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v3

    .line 377
    move-object/from16 v5, p2

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 376
    nop

    .line 386
    .local v3, "placeable":Landroidx/compose/ui/layout/Placeable;
    move-wide v6, v10

    .local v6, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 491
    .restart local v4    # "$i$f$getWidth-impl":I
    move-wide v12, v6

    .local v12, "value$iv$iv":J
    const/4 v8, 0x0

    .line 492
    .local v8, "$i$f$unpackInt1":I
    shr-long v14, v12, v19

    long-to-int v8, v14

    .line 491
    .end local v8    # "$i$f$unpackInt1":I
    .end local v12    # "value$iv$iv":J
    nop

    .line 386
    .end local v4    # "$i$f$getWidth-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    nop

    .restart local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 493
    .local v4, "$i$f$getHeight-impl":I
    nop

    .restart local v12    # "value$iv$iv":J
    const/4 v14, 0x0

    .line 494
    .local v14, "$i$f$unpackInt2":I
    move v15, v4

    .end local v4    # "$i$f$getHeight-impl":I
    .local v15, "$i$f$getHeight-impl":I
    and-long v4, v12, v22

    long-to-int v4, v4

    .line 493
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackInt2":I
    nop

    .line 386
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v15    # "$i$f$getHeight-impl":I
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->baselineCache:Ljava/util/Map;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda4;

    invoke-direct {v6, v3}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-interface {v2, v8, v4, v5, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 495
    .end local v0    # "$i$a$-trace-TextStringSimpleNode$measure$1":I
    .end local v3    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "paragraph":Landroidx/compose/ui/text/Paragraph;
    .end local v10    # "layoutSize":J
    .end local v18    # "layoutCache":Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .end local v20    # "sectionName$iv":Ljava/lang/String;
    .end local v21    # "$i$f$trace":I
    .end local v24    # "didChangeLayout":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v4

    .restart local v20    # "sectionName$iv":Ljava/lang/String;
    .restart local v21    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v20    # "sectionName$iv":Ljava/lang/String;
    .end local v21    # "$i$f$trace":I
    .local v3, "sectionName$iv":Ljava/lang/String;
    .local v4, "$i$f$trace":I
    :catchall_2
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .restart local v20    # "sectionName$iv":Ljava/lang/String;
    .restart local v21    # "$i$f$trace":I
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$minIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "width"    # I

    .line 402
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheForMeasure(Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicHeight(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$minIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "height"    # I

    .line 396
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCacheForMeasure(Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    return v0
.end method

.method public final updateDraw(Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/text/TextStyle;)Z
    .locals 2
    .param p1, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    .line 147
    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p2, v1}, Landroidx/compose/ui/text/TextStyle;->hasSameDrawAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 148
    .end local v0    # "changed":Z
    .local v1, "changed":Z
    :goto_1
    return v1
.end method

.method public final updateLayoutRelatedArgs-HuAbxIM(Landroidx/compose/ui/text/TextStyle;IIZLandroidx/compose/ui/text/font/FontFamily$Resolver;I)Z
    .locals 2
    .param p1, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p2, "minLines"    # I
    .param p3, "maxLines"    # I
    .param p4, "softWrap"    # Z
    .param p5, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p6, "$v$c$androidx-compose-ui-text-style-TextOverflow$-overflow$0"    # I

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 171
    .end local v0    # "changed":Z
    .local v1, "changed":Z
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 173
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    if-eq v0, p2, :cond_0

    .line 174
    iput p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 175
    const/4 v1, 0x1

    .line 178
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    if-eq v0, p3, :cond_1

    .line 179
    iput p3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 180
    const/4 v1, 0x1

    .line 183
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    if-eq v0, p4, :cond_2

    .line 184
    iput-boolean p4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 185
    const/4 v1, 0x1

    .line 188
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    iput-object p5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 190
    const/4 v1, 0x1

    .line 193
    :cond_3
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    invoke-static {v0, p6}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 194
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 195
    const/4 v1, 0x1

    .line 198
    :cond_4
    return v1
.end method

.method public final updateText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->clearSubstitution()V

    .line 156
    const/4 v0, 0x1

    return v0
.end method
