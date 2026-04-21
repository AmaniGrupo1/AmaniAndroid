.class public final Landroidx/compose/ui/node/BackwardsCompatNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "BackwardsCompatNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalReadScope;
.implements Landroidx/compose/ui/node/ParentDataModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackwardsCompatNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackwardsCompatNode.kt\nandroidx/compose/ui/node/BackwardsCompatNode\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 6 OwnerSnapshotObserver.kt\nandroidx/compose/ui/node/OwnerSnapshotObserver\n+ 7 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 9 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 10 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n57#2,4:435\n57#2,4:445\n57#2,4:477\n57#2,4:542\n57#2,4:546\n100#3:439\n92#3:441\n100#3:449\n88#3:451\n84#3:453\n108#3:455\n164#3:457\n112#3:459\n96#3:463\n92#3:465\n108#3:467\n100#3:470\n247#4:440\n247#4:442\n247#4:450\n247#4:452\n247#4:454\n247#4:456\n247#4:458\n247#4:460\n247#4:464\n247#4:466\n247#4:495\n648#5,2:443\n643#5,2:461\n138#6,2:468\n138#6,2:539\n252#7,5:471\n95#7:476\n96#7,8:481\n556#7,6:489\n566#7,2:496\n568#7,8:501\n576#7,9:512\n585#7,8:524\n105#7,7:532\n240#8,3:498\n243#8,3:521\n1107#9:509\n1085#9,2:510\n1#10:541\n*S KotlinDebug\n*F\n+ 1 BackwardsCompatNode.kt\nandroidx/compose/ui/node/BackwardsCompatNode\n*L\n113#1:435,4\n132#1:445,4\n257#1:477,4\n400#1:542,4\n408#1:546,4\n115#1:439\n123#1:441\n134#1:449\n142#1:451\n150#1:453\n166#1:455\n174#1:457\n190#1:459\n203#1:463\n208#1:465\n222#1:467\n257#1:470\n115#1:440\n123#1:442\n134#1:450\n142#1:452\n150#1:454\n166#1:456\n174#1:458\n190#1:460\n203#1:464\n208#1:466\n257#1:495\n127#1:443,2\n201#1:461,2\n236#1:468,2\n269#1:539,2\n257#1:471,5\n257#1:476\n257#1:481,8\n257#1:489,6\n257#1:496,2\n257#1:501,8\n257#1:512,9\n257#1:524,8\n257#1:532,7\n257#1:498,3\n257#1:521,3\n257#1:509\n257#1:510,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e2\u00020\u000fB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010,\u001a\u00020\u0019H\u0016J\u0008\u0010-\u001a\u00020\u0019H\u0002J\r\u0010.\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008/J\u0006\u0010B\u001a\u00020\u0019J\u0014\u0010C\u001a\u00020\u00192\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030DH\u0002J#\u0010G\u001a\u00020H*\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u001c\u0010P\u001a\u00020Q*\u00020R2\u0006\u0010J\u001a\u00020S2\u0006\u0010T\u001a\u00020QH\u0016J\u001c\u0010U\u001a\u00020Q*\u00020R2\u0006\u0010J\u001a\u00020S2\u0006\u0010V\u001a\u00020QH\u0016J\u001c\u0010W\u001a\u00020Q*\u00020R2\u0006\u0010J\u001a\u00020S2\u0006\u0010T\u001a\u00020QH\u0016J\u001c\u0010X\u001a\u00020Q*\u00020R2\u0006\u0010J\u001a\u00020S2\u0006\u0010V\u001a\u00020QH\u0016J\u000c\u0010Y\u001a\u00020\u0019*\u00020ZH\u0016J\u000c\u0010[\u001a\u00020\u0019*\u00020\\H\u0016J\'\u0010]\u001a\u00020\u00192\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020cH\u0016\u00a2\u0006\u0004\u0008d\u0010eJ\u0008\u0010f\u001a\u00020\u0019H\u0016J\u0008\u0010g\u001a\u00020\u0019H\u0016J\u0008\u0010h\u001a\u00020\u001eH\u0016J\u0008\u0010i\u001a\u00020\u001eH\u0016J\u0018\u0010j\u001a\u0004\u0018\u00010k*\u00020 2\u0008\u0010l\u001a\u0004\u0018\u00010kH\u0016J\u0010\u0010m\u001a\u00020\u00192\u0006\u0010n\u001a\u00020oH\u0016J\u0017\u0010p\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020cH\u0016\u00a2\u0006\u0004\u0008q\u0010rJ\u0010\u0010t\u001a\u00020\u00192\u0006\u0010n\u001a\u00020oH\u0016J\u0010\u0010u\u001a\u00020\u00192\u0006\u0010v\u001a\u00020wH\u0016J\u0010\u0010x\u001a\u00020\u00192\u0006\u0010y\u001a\u00020zH\u0016J\u0008\u0010{\u001a\u00020|H\u0016R$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0013R\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020$8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u000e\u0010+\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u00102\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030403j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u000304`5X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u0014\u0010:\u001a\u00020;8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R$\u0010>\u001a\u0002H?\"\u0004\u0008\u0000\u0010?*\u0008\u0012\u0004\u0012\u0002H?048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0014\u0010E\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u0010\u0010s\u001a\u0004\u0018\u00010oX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006}"
    }
    d2 = {
        "Landroidx/compose/ui/node/BackwardsCompatNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "Landroidx/compose/ui/node/ParentDataModifierNode;",
        "Landroidx/compose/ui/node/LayoutAwareModifierNode;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Landroidx/compose/ui/draw/BuildDrawCacheParams;",
        "Landroidx/compose/ui/Modifier$Node;",
        "element",
        "Landroidx/compose/ui/Modifier$Element;",
        "<init>",
        "(Landroidx/compose/ui/Modifier$Element;)V",
        "value",
        "getElement",
        "()Landroidx/compose/ui/Modifier$Element;",
        "setElement",
        "onAttach",
        "",
        "onDetach",
        "unInitializeModifier",
        "initializeModifier",
        "duringAttach",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "getSize-NH-jbRc",
        "()J",
        "invalidateCache",
        "onMeasureResultChanged",
        "updateDrawCache",
        "onDrawCacheReadsChanged",
        "onDrawCacheReadsChanged$ui",
        "_providedValues",
        "Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;",
        "readValues",
        "Ljava/util/HashSet;",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "Lkotlin/collections/HashSet;",
        "getReadValues",
        "()Ljava/util/HashSet;",
        "setReadValues",
        "(Ljava/util/HashSet;)V",
        "providedValues",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "getProvidedValues",
        "()Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "current",
        "T",
        "getCurrent",
        "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;",
        "updateModifierLocalConsumer",
        "updateModifierLocalProvider",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider;",
        "isValidOwnerScope",
        "()Z",
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
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "minIntrinsicHeight",
        "width",
        "maxIntrinsicWidth",
        "maxIntrinsicHeight",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "onDensityChange",
        "onCancelPointerInput",
        "sharePointerInputWithSiblings",
        "interceptOutOfBoundsChildEvents",
        "modifyParentData",
        "",
        "parentData",
        "onGloballyPositioned",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "onRemeasured",
        "onRemeasured-ozmzZPI",
        "(J)V",
        "lastOnPlacedCoordinates",
        "onPlaced",
        "onFocusEvent",
        "focusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "applyFocusProperties",
        "focusProperties",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "toString",
        "",
        "ui"
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
.field private _providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

.field private element:Landroidx/compose/ui/Modifier$Element;

.field private invalidateCache:Z

.field private lastOnPlacedCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private readValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/BackwardsCompatNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier$Element;)V
    .locals 1
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;

    .line 76
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 92
    nop

    .line 93
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->setKindSet$ui(I)V

    .line 94
    nop

    .line 96
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->invalidateCache:Z

    .line 249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    .line 76
    return-void
.end method

.method public static final synthetic access$getLastOnPlacedCoordinates$p(Landroidx/compose/ui/node/BackwardsCompatNode;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->lastOnPlacedCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method private final initializeModifier(Z)V
    .locals 7
    .param p1, "duringAttach"    # Z

    .line 132
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 445
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 446
    const/4 v2, 0x0

    .line 132
    .local v2, "$i$a$-checkPrecondition-BackwardsCompatNode$initializeModifier$1":I
    nop

    .line 446
    .end local v2    # "$i$a$-checkPrecondition-BackwardsCompatNode$initializeModifier$1":I
    const-string v2, "initializeModifier called on unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 448
    :cond_0
    nop

    .line 133
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 134
    .local v0, "element":Landroidx/compose/ui/Modifier$Element;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 449
    .local v2, "$i$f$getLocals-OLwlOKw":I
    const/16 v3, 0x20

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 134
    .end local v2    # "$i$f$getLocals-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 450
    .local v3, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v5

    .line 134
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_0
    if-eqz v1, :cond_3

    .line 135
    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v1, :cond_2

    .line 136
    new-instance v1, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->sideEffect(Lkotlin/jvm/functions/Function0;)V

    .line 138
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v1, :cond_3

    .line 139
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->updateModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocalProvider;)V

    .line 142
    :cond_3
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 451
    .local v2, "$i$f$getDraw-OLwlOKw":I
    const/4 v3, 0x4

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 142
    .end local v2    # "$i$f$getDraw-OLwlOKw":I
    nop

    .restart local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 452
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    move v1, v5

    .line 142
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v1, :cond_6

    .line 143
    instance-of v1, v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    if-eqz v1, :cond_5

    .line 144
    iput-boolean v6, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->invalidateCache:Z

    .line 146
    :cond_5
    if-nez p1, :cond_6

    .line 147
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateLayer(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 150
    :cond_6
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 453
    .local v2, "$i$f$getLayout-OLwlOKw":I
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 150
    .end local v2    # "$i$f$getLayout-OLwlOKw":I
    nop

    .restart local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 454
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_7

    move v1, v6

    goto :goto_2

    :cond_7
    move v1, v5

    .line 150
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v1, :cond_9

    .line 151
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    .line 152
    .local v1, "isChainUpdate":Z
    if-eqz v1, :cond_8

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    .local v2, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 155
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 156
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->onLayoutModifierNodeChanged()V

    .line 158
    .end local v2    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_8
    if-nez p1, :cond_9

    .line 159
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateLayer(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 160
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 163
    .end local v1    # "isChainUpdate":Z
    :cond_9
    instance-of v1, v0, Landroidx/compose/ui/layout/RemeasurementModifier;

    if-eqz v1, :cond_a

    .line 164
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/RemeasurementModifier;

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Remeasurement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/RemeasurementModifier;->onRemeasurementAvailable(Landroidx/compose/ui/layout/Remeasurement;)V

    .line 166
    :cond_a
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 455
    .local v2, "$i$f$getOnRemeasured-OLwlOKw":I
    const/16 v3, 0x80

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 166
    .end local v2    # "$i$f$getOnRemeasured-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 456
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_b

    move v1, v6

    goto :goto_3

    :cond_b
    move v1, v5

    .line 166
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v1, :cond_c

    instance-of v1, v0, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    if-eqz v1, :cond_c

    .line 169
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    .line 170
    .local v1, "isChainUpdate":Z
    if-eqz v1, :cond_c

    .line 171
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 174
    .end local v1    # "isChainUpdate":Z
    :cond_c
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 457
    .local v2, "$i$f$getOnPlaced-OLwlOKw":I
    const/high16 v3, 0x400000

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 174
    .end local v2    # "$i$f$getOnPlaced-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 458
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_d

    move v1, v6

    goto :goto_4

    :cond_d
    move v1, v5

    .line 174
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v1, :cond_e

    instance-of v1, v0, Landroidx/compose/ui/layout/OnPlacedModifier;

    if-eqz v1, :cond_e

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->lastOnPlacedCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 176
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    .line 177
    .local v1, "isChainUpdate":Z
    if-eqz v1, :cond_e

    .line 178
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    .line 180
    new-instance v3, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$3;

    invoke-direct {v3, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$3;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    check-cast v3, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 179
    invoke-interface {v2, v3}, Landroidx/compose/ui/node/Owner;->registerOnLayoutCompletedListener(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V

    .line 190
    .end local v1    # "isChainUpdate":Z
    :cond_e
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 459
    .local v2, "$i$f$getGlobalPositionAware-OLwlOKw":I
    const/16 v3, 0x100

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 190
    .end local v2    # "$i$f$getGlobalPositionAware-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 460
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_f

    move v1, v6

    goto :goto_5

    :cond_f
    move v1, v5

    .line 190
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v1, :cond_10

    .line 193
    instance-of v1, v0, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz v1, :cond_10

    .line 194
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    .line 195
    .local v1, "isChainUpdate":Z
    if-eqz v1, :cond_10

    .line 196
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 200
    .end local v1    # "isChainUpdate":Z
    :cond_10
    instance-of v1, v0, Landroidx/compose/ui/focus/FocusRequesterModifier;

    if-eqz v1, :cond_11

    .line 201
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/focus/FocusRequesterModifier;

    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusRequesterModifier;->getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v2, p0

    .local v2, "element$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 461
    .local v3, "$i$f$plusAssign":I
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 462
    nop

    .line 203
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$plusAssign":I
    :cond_11
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 463
    .local v2, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 203
    .end local v2    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 464
    .local v3, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_12

    move v1, v6

    goto :goto_6

    :cond_12
    move v1, v5

    .line 203
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v1, :cond_13

    .line 204
    instance-of v1, v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    if-eqz v1, :cond_13

    .line 205
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->setLayoutCoordinates$ui(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 208
    :cond_13
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 465
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 208
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .restart local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 466
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_14

    move v5, v6

    .line 208
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :cond_14
    if-eqz v5, :cond_15

    .line 209
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 211
    :cond_15
    return-void
.end method

.method private final unInitializeModifier()V
    .locals 7

    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 435
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 436
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-checkPrecondition-BackwardsCompatNode$unInitializeModifier$1":I
    nop

    .line 436
    .end local v2    # "$i$a$-checkPrecondition-BackwardsCompatNode$unInitializeModifier$1":I
    const-string/jumbo v2, "unInitializeModifier called on unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 438
    :cond_0
    nop

    .line 114
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 115
    .local v0, "element":Landroidx/compose/ui/Modifier$Element;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 439
    .local v2, "$i$f$getLocals-OLwlOKw":I
    const/16 v3, 0x20

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 115
    .end local v2    # "$i$f$getLocals-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 440
    .local v3, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v6

    .line 115
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_0
    if-eqz v1, :cond_3

    .line 116
    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v1, :cond_2

    .line 117
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    invoke-interface {v2}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedProvider(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 119
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v1, :cond_3

    .line 120
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$getDetachedModifierLocalReadScope$p()Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/modifier/ModifierLocalReadScope;

    invoke-interface {v1, v2}, Landroidx/compose/ui/modifier/ModifierLocalConsumer;->onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V

    .line 123
    :cond_3
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    .line 441
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 123
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .restart local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v3, 0x0

    .line 442
    .restart local v3    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    .line 123
    .end local v1    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v5, :cond_5

    .line 124
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 126
    :cond_5
    instance-of v1, v0, Landroidx/compose/ui/focus/FocusRequesterModifier;

    if-eqz v1, :cond_6

    .line 127
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/focus/FocusRequesterModifier;

    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusRequesterModifier;->getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v2, p0

    .local v2, "element$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 443
    .local v3, "$i$f$minusAssign":I
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 444
    nop

    .line 129
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$minusAssign":I
    :cond_6
    return-void
.end method

.method private final updateDrawCache()V
    .locals 7

    .line 234
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 235
    .local v0, "element":Landroidx/compose/ui/Modifier$Element;
    instance-of v1, v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    if-eqz v1, :cond_0

    .line 236
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/OwnerScope;

    .local v2, "target$iv":Landroidx/compose/ui/node/OwnerScope;
    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$getOnDrawCacheReadsChanged$p()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .local v3, "onChanged$iv":Lkotlin/jvm/functions/Function1;
    new-instance v4, Landroidx/compose/ui/node/BackwardsCompatNode$updateDrawCache$1;

    invoke-direct {v4, v0, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$updateDrawCache$1;-><init>(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/BackwardsCompatNode;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 468
    .local v5, "$i$f$observeReads$ui":I
    invoke-static {v1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 469
    nop

    .line 240
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .end local v2    # "target$iv":Landroidx/compose/ui/node/OwnerScope;
    .end local v3    # "onChanged$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$observeReads$ui":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->invalidateCache:Z

    .line 241
    return-void
.end method

.method private final updateModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocalProvider;)V
    .locals 4
    .param p1, "element"    # Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;)V"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->_providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    .line 277
    .local v0, "providedValues":Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->contains$ui(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->setElement(Landroidx/compose/ui/modifier/ModifierLocalProvider;)V

    .line 279
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v1

    invoke-interface {p1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/modifier/ModifierLocalManager;->updatedProvider(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/ModifierLocal;)V

    goto :goto_0

    .line 281
    :cond_0
    new-instance v1, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    invoke-direct {v1, p1}, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocalProvider;)V

    iput-object v1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->_providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    .line 289
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    .line 290
    .local v1, "isChainUpdate":Z
    if-eqz v1, :cond_1

    .line 291
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v2

    invoke-interface {p1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v2, p0, v3}, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedProvider(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 294
    .end local v1    # "isChainUpdate":Z
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 4
    .param p1, "focusProperties"    # Landroidx/compose/ui/focus/FocusProperties;

    .line 407
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 408
    .local v0, "focusOrderModifier":Landroidx/compose/ui/Modifier$Element;
    instance-of v1, v0, Landroidx/compose/ui/focus/FocusOrderModifier;

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 546
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 547
    const/4 v3, 0x0

    .line 409
    .local v3, "$i$a$-checkPrecondition-BackwardsCompatNode$applyFocusProperties$1":I
    nop

    .line 547
    .end local v3    # "$i$a$-checkPrecondition-BackwardsCompatNode$applyFocusProperties$1":I
    const-string v3, "applyFocusProperties called on wrong node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 549
    :cond_0
    nop

    .line 412
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/focus/FocusOrderModifier;

    new-instance v2, Landroidx/compose/ui/focus/FocusOrder;

    invoke-direct {v2, p1}, Landroidx/compose/ui/focus/FocusOrder;-><init>(Landroidx/compose/ui/focus/FocusProperties;)V

    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusOrderModifier;->populateFocusOrder(Landroidx/compose/ui/focus/FocusOrder;)V

    .line 413
    return-void
.end method

.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 337
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 338
    .local v0, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 339
    .local v1, "toMergeInto":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    invoke-virtual {v1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->collapsePeer$ui(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 340
    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 4
    .param p1, "$this$draw"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 327
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 328
    .local v0, "element":Landroidx/compose/ui/Modifier$Element;
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/draw/DrawModifier;

    .local v1, "$this$draw_u24lambda_u240":Landroidx/compose/ui/draw/DrawModifier;
    const/4 v2, 0x0

    .line 329
    .local v2, "$i$a$-with-BackwardsCompatNode$draw$1":I
    iget-boolean v3, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->invalidateCache:Z

    if-eqz v3, :cond_0

    instance-of v3, v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    if-eqz v3, :cond_0

    .line 330
    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->updateDrawCache()V

    .line 332
    :cond_0
    invoke-interface {v1, p1}, Landroidx/compose/ui/draw/DrawModifier;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 333
    nop

    .line 328
    .end local v1    # "$this$draw_u24lambda_u240":Landroidx/compose/ui/draw/DrawModifier;
    .end local v2    # "$i$a$-with-BackwardsCompatNode$draw$1":I
    nop

    .line 334
    return-void
.end method

.method public getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .locals 32
    .param p1, "$this$current"    # Landroidx/compose/ui/modifier/ModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 256
    .local v1, "key":Landroidx/compose/ui/modifier/ModifierLocal;
    iget-object v2, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 470
    .local v3, "$i$f$getLocals-OLwlOKw":I
    const/16 v4, 0x20

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 257
    .end local v3    # "$i$f$getLocals-OLwlOKw":I
    nop

    .line 471
    .local v2, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 473
    const/4 v4, 0x0

    .line 471
    .local v4, "includeSelf$iv":Z
    const/4 v5, 0x0

    .line 475
    .local v5, "$i$f$visitAncestors-Y-YKmho":I
    move v6, v4

    .local v6, "includeSelf$iv$iv":Z
    move v7, v3

    .local v7, "mask$iv$iv":I
    move-object v8, v2

    .local v8, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 476
    .local v9, "$i$f$visitAncestors":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 477
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_0

    .line 478
    const/4 v12, 0x0

    .line 476
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 478
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v12, "visitAncestors called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 480
    :cond_0
    nop

    .line 481
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 482
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 483
    .local v11, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v11, :cond_13

    .line 484
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 485
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_11

    .line 486
    :goto_1
    if-eqz v10, :cond_10

    .line 487
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_f

    .line 488
    move-object v13, v10

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 475
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 489
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 490
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    .line 491
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v0, :cond_e

    .line 492
    move-object/from16 v19, v2

    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v19, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v2, v0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v2, :cond_2

    .line 493
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .local v2, "it":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    const/16 v20, 0x0

    .line 258
    .local v20, "$i$a$-visitAncestors-Y-YKmho$default-BackwardsCompatNode$current$1":I
    move-object/from16 v21, v2

    .end local v2    # "it":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    .local v21, "it":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->get$ui(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 262
    :cond_1
    nop

    .line 493
    .end local v20    # "$i$a$-visitAncestors-Y-YKmho$default-BackwardsCompatNode$current$1":I
    .end local v21    # "it":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    move-object/from16 v23, v1

    goto/16 :goto_9

    .line 494
    :cond_2
    move v2, v15

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v20, v0

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 495
    .local v21, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v2

    move-object/from16 v23, v1

    .end local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .local v23, "key":Landroidx/compose/ui/modifier/ModifierLocal;
    const/4 v1, 0x1

    if-eqz v22, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 494
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v2, :cond_d

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_d

    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, "count$iv$iv":I
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 498
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 499
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v22, :cond_b

    .line 500
    move-object/from16 v24, v22

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 501
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 495
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_4

    move/from16 v26, v1

    goto :goto_5

    :cond_4
    const/16 v26, 0x0

    .line 501
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v26, :cond_a

    .line 502
    add-int/lit8 v2, v2, 0x1

    .line 503
    if-ne v2, v1, :cond_5

    .line 504
    move-object/from16 v0, v24

    move-object/from16 v1, v24

    goto :goto_8

    .line 508
    :cond_5
    if-nez v18, :cond_6

    const/16 v26, 0x0

    .line 509
    .local v26, "$i$f$mutableVectorOf":I
    nop

    .line 510
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 511
    .local v28, "$i$f$MutableVector":I
    move-object/from16 v29, v0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v29, "node$iv$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v2

    .end local v2    # "count$iv$iv":I
    .local v30, "count$iv$iv":I
    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 509
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 508
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v29    # "node$iv$iv":Ljava/lang/Object;
    .end local v30    # "count$iv$iv":I
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "count$iv$iv":I
    :cond_6
    move-object/from16 v29, v0

    move/from16 v30, v2

    const/4 v1, 0x0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "count$iv$iv":I
    .restart local v29    # "node$iv$iv":Ljava/lang/Object;
    .restart local v30    # "count$iv$iv":I
    move-object/from16 v0, v18

    :goto_6
    nop

    .line 512
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v29

    .line 513
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 514
    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v29, v18

    .line 517
    :cond_8
    if-eqz v0, :cond_9

    move-object/from16 v1, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v1, v24

    .line 520
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v18, v0

    move-object/from16 v0, v29

    move/from16 v2, v30

    goto :goto_8

    .line 501
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "node$iv$iv":Ljava/lang/Object;
    .end local v30    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .restart local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v29, v0

    move-object/from16 v1, v24

    .line 520
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    nop

    .line 500
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 521
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    const/4 v1, 0x1

    goto :goto_4

    .line 523
    :cond_b
    move-object/from16 v29, v0

    .line 524
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v2, v0, :cond_c

    .line 526
    move-object/from16 v2, v19

    move-object/from16 v1, v23

    move-object/from16 v0, v29

    goto/16 :goto_2

    .line 524
    :cond_c
    move-object/from16 v0, v29

    .line 529
    .end local v2    # "count$iv$iv":I
    .end local v29    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_d
    :goto_9
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v2, v19

    move-object/from16 v1, v23

    goto/16 :goto_2

    .line 531
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .local v1, "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .local v2, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    .line 475
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    nop

    .line 488
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_a

    .line 487
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    .line 532
    .end local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    :goto_a
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    move-object/from16 v1, v23

    goto/16 :goto_1

    .line 486
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    .end local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    goto :goto_b

    .line 485
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    .line 535
    .end local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 536
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    :goto_c
    move-object v10, v0

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    move-object/from16 v1, v23

    .end local v12    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 538
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move-object/from16 v23, v1

    .line 475
    .end local v1    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    .end local v6    # "includeSelf$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitAncestors":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v23    # "key":Landroidx/compose/ui/modifier/ModifierLocal;
    nop

    .line 263
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "includeSelf$iv":Z
    .end local v5    # "$i$f$visitAncestors-Y-YKmho":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/modifier/ModifierLocal;->getDefaultFactory$ui()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 215
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    return-object v0
.end method

.method public final getElement()Landroidx/compose/ui/Modifier$Element;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 218
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->_providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalMap;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;->modifierLocalMapOf()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getReadValues()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;>;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSize-NH-jbRc()J
    .locals 3

    .line 222
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 467
    .local v1, "$i$f$getOnRemeasured-OLwlOKw":I
    const/16 v2, 0x80

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 222
    .end local v1    # "$i$f$getOnRemeasured-OLwlOKw":I
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptOutOfBoundsChildEvents()Z
    .locals 3

    .line 368
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .local v0, "$this$interceptOutOfBoundsChildEvents_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    const/4 v1, 0x0

    .line 369
    .local v1, "$i$a$-with-BackwardsCompatNode$interceptOutOfBoundsChildEvents$1":I
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->getInterceptOutOfBoundsChildEvents()Z

    move-result v0

    .line 368
    .end local v0    # "$this$interceptOutOfBoundsChildEvents_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$interceptOutOfBoundsChildEvents$1":I
    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 297
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v0

    return v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$maxIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "width"    # I

    .line 324
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 541
    .local v0, "$this$maxIntrinsicHeight_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$a$-with-BackwardsCompatNode$maxIntrinsicHeight$1":I
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result v0

    .end local v0    # "$this$maxIntrinsicHeight_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$maxIntrinsicHeight$1":I
    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$maxIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "height"    # I

    .line 319
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 541
    .local v0, "$this$maxIntrinsicWidth_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    const/4 v1, 0x0

    .line 319
    .local v1, "$i$a$-with-BackwardsCompatNode$maxIntrinsicWidth$1":I
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result v0

    .end local v0    # "$this$maxIntrinsicWidth_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$maxIntrinsicWidth$1":I
    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 303
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 541
    .local v0, "$this$measure_3p2s80s_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    const/4 v1, 0x0

    .line 303
    .local v1, "$i$a$-with-BackwardsCompatNode$measure$1":I
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .end local v0    # "$this$measure_3p2s80s_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$measure$1":I
    return-object v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$minIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "width"    # I

    .line 314
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 541
    .local v0, "$this$minIntrinsicHeight_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    const/4 v1, 0x0

    .line 314
    .local v1, "$i$a$-with-BackwardsCompatNode$minIntrinsicHeight$1":I
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result v0

    .end local v0    # "$this$minIntrinsicHeight_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$minIntrinsicHeight$1":I
    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
    .param p1, "$this$minIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p3, "height"    # I

    .line 309
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 541
    .local v0, "$this$minIntrinsicWidth_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    const/4 v1, 0x0

    .line 309
    .local v1, "$i$a$-with-BackwardsCompatNode$minIntrinsicWidth$1":I
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result v0

    .end local v0    # "$this$minIntrinsicWidth_u24lambda_u240":Landroidx/compose/ui/layout/LayoutModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$minIntrinsicWidth$1":I
    return v0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$modifyParentData"    # Landroidx/compose/ui/unit/Density;
    .param p2, "parentData"    # Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 541
    .local v0, "$this$modifyParentData_u24lambda_u240":Landroidx/compose/ui/layout/ParentDataModifier;
    const/4 v1, 0x0

    .line 374
    .local v1, "$i$a$-with-BackwardsCompatNode$modifyParentData$1":I
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/layout/ParentDataModifier;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$modifyParentData_u24lambda_u240":Landroidx/compose/ui/layout/ParentDataModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$modifyParentData$1":I
    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V

    .line 106
    return-void
.end method

.method public onCancelPointerInput()V
    .locals 3

    .line 360
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 541
    .local v0, "$this$onCancelPointerInput_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    const/4 v1, 0x0

    .line 360
    .local v1, "$i$a$-with-BackwardsCompatNode$onCancelPointerInput$1":I
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->onCancel()V

    .line 361
    .end local v0    # "$this$onCancelPointerInput_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$onCancelPointerInput$1":I
    return-void
.end method

.method public onDensityChange()V
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    instance-of v0, v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->onCancelPointerInput()V

    .line 357
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->unInitializeModifier()V

    .line 110
    return-void
.end method

.method public final onDrawCacheReadsChanged$ui()V
    .locals 1

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->invalidateCache:Z

    .line 245
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 246
    return-void
.end method

.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 4
    .param p1, "focusState"    # Landroidx/compose/ui/focus/FocusState;

    .line 399
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 400
    .local v0, "focusEventModifier":Landroidx/compose/ui/Modifier$Element;
    instance-of v1, v0, Landroidx/compose/ui/focus/FocusEventModifier;

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 542
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 543
    const/4 v3, 0x0

    .line 401
    .local v3, "$i$a$-checkPrecondition-BackwardsCompatNode$onFocusEvent$1":I
    nop

    .line 543
    .end local v3    # "$i$a$-checkPrecondition-BackwardsCompatNode$onFocusEvent$1":I
    const-string/jumbo v3, "onFocusEvent called on wrong node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 545
    :cond_0
    nop

    .line 403
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/focus/FocusEventModifier;

    invoke-interface {v1, p1}, Landroidx/compose/ui/focus/FocusEventModifier;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    .line 404
    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 378
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;->onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 379
    return-void
.end method

.method public onMeasureResultChanged()V
    .locals 1

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->invalidateCache:Z

    .line 230
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 231
    return-void
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 391
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->lastOnPlacedCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 392
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 393
    .local v0, "element":Landroidx/compose/ui/Modifier$Element;
    instance-of v1, v0, Landroidx/compose/ui/layout/OnPlacedModifier;

    if-eqz v1, :cond_0

    .line 394
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/OnPlacedModifier;

    invoke-interface {v1, p1}, Landroidx/compose/ui/layout/OnPlacedModifier;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 396
    :cond_0
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 3
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-bounds$0"    # J

    .line 347
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .local v0, "$this$onPointerEvent_H0pRuoY_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    const/4 v1, 0x0

    .line 348
    .local v1, "$i$a$-with-BackwardsCompatNode$onPointerEvent$1":I
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 349
    nop

    .line 347
    .end local v0    # "$this$onPointerEvent_H0pRuoY_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$onPointerEvent$1":I
    nop

    .line 350
    return-void
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J

    .line 382
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 383
    .local v0, "element":Landroidx/compose/ui/Modifier$Element;
    instance-of v1, v0, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    if-eqz v1, :cond_0

    .line 384
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/layout/OnRemeasuredModifier;->onRemeasured-ozmzZPI(J)V

    .line 386
    :cond_0
    return-void
.end method

.method public final setElement(Landroidx/compose/ui/Modifier$Element;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/ui/Modifier$Element;

    .line 98
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->unInitializeModifier()V

    .line 99
    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 100
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->setKindSet$ui(I)V

    .line 101
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V

    .line 102
    :cond_1
    return-void
.end method

.method public final setReadValues(Ljava/util/HashSet;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;>;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    return-void
.end method

.method public sharePointerInputWithSiblings()Z
    .locals 3

    .line 364
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 541
    .local v0, "$this$sharePointerInputWithSiblings_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    const/4 v1, 0x0

    .line 364
    .local v1, "$i$a$-with-BackwardsCompatNode$sharePointerInputWithSiblings$1":I
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->getShareWithSiblings()Z

    move-result v0

    .end local v0    # "$this$sharePointerInputWithSiblings_u24lambda_u240":Landroidx/compose/ui/input/pointer/PointerInputModifier;
    .end local v1    # "$i$a$-with-BackwardsCompatNode$sharePointerInputWithSiblings$1":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateModifierLocalConsumer()V
    .locals 6

    .line 267
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 269
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/OwnerScope;

    .local v1, "target$iv":Landroidx/compose/ui/node/OwnerScope;
    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->access$getUpdateModifierLocalConsumer$p()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .local v2, "onChanged$iv":Lkotlin/jvm/functions/Function1;
    new-instance v3, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 539
    .local v4, "$i$f$observeReads$ui":I
    invoke-static {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 540
    nop

    .line 273
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .end local v1    # "target$iv":Landroidx/compose/ui/node/OwnerScope;
    .end local v2    # "onChanged$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$observeReads$ui":I
    :cond_0
    return-void
.end method
