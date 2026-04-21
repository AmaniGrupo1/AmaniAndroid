.class public abstract Landroidx/compose/ui/node/AlignmentLines;
.super Ljava/lang/Object;
.source "LayoutNodeAlignmentLines.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNodeAlignmentLines.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNodeAlignmentLines.kt\nandroidx/compose/ui/node/AlignmentLines\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,228:1\n30#2:229\n30#2:233\n53#3,3:230\n53#3,3:234\n70#3:238\n60#3:241\n69#4:237\n65#4:240\n22#5:239\n22#5:242\n26#5:243\n*S KotlinDebug\n*F\n+ 1 LayoutNodeAlignmentLines.kt\nandroidx/compose/ui/node/AlignmentLines\n*L\n112#1:229\n120#1:233\n112#1:230,3\n120#1:234,3\n126#1:238\n128#1:241\n126#1:237\n128#1:240\n126#1:239\n128#1:242\n130#1:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u00002\u00020\u0001B\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\"\u001a\u00020#J\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0)J\u0014\u0010.\u001a\u00020\'*\u00020+2\u0006\u0010/\u001a\u00020&H$J \u00100\u001a\u00020#2\u0006\u0010/\u001a\u00020&2\u0006\u00101\u001a\u00020\'2\u0006\u00102\u001a\u00020+H\u0002J\u0006\u00103\u001a\u00020#J\r\u00104\u001a\u00020#H\u0000\u00a2\u0006\u0002\u00085J\u0006\u00106\u001a\u00020#J\u001b\u00107\u001a\u000208*\u00020+2\u0006\u00109\u001a\u000208H$\u00a2\u0006\u0004\u0008:\u0010;R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001a\u0010\u0014\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u001a\u0010\u0017\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000b\"\u0004\u0008\u0019\u0010\rR\u001a\u0010\u001a\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000b\"\u0004\u0008\u001c\u0010\rR\u0014\u0010\u001d\u001a\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u000bR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u000bR\u001a\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010*\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0)*\u00020+X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u0082\u0001\u0002<=\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/compose/ui/node/AlignmentLines;",
        "",
        "alignmentLinesOwner",
        "Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "<init>",
        "(Landroidx/compose/ui/node/AlignmentLinesOwner;)V",
        "getAlignmentLinesOwner",
        "()Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "dirty",
        "",
        "getDirty$ui",
        "()Z",
        "setDirty$ui",
        "(Z)V",
        "usedDuringParentMeasurement",
        "getUsedDuringParentMeasurement$ui",
        "setUsedDuringParentMeasurement$ui",
        "usedDuringParentLayout",
        "getUsedDuringParentLayout$ui",
        "setUsedDuringParentLayout$ui",
        "previousUsedDuringParentLayout",
        "getPreviousUsedDuringParentLayout$ui",
        "setPreviousUsedDuringParentLayout$ui",
        "usedByModifierMeasurement",
        "getUsedByModifierMeasurement$ui",
        "setUsedByModifierMeasurement$ui",
        "usedByModifierLayout",
        "getUsedByModifierLayout$ui",
        "setUsedByModifierLayout$ui",
        "queried",
        "getQueried$ui",
        "queryOwner",
        "required",
        "getRequired$ui",
        "recalculateQueryOwner",
        "",
        "alignmentLineMap",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "",
        "getLastCalculation",
        "",
        "alignmentLinesMap",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "getAlignmentLinesMap",
        "(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;",
        "getPositionFor",
        "alignmentLine",
        "addAlignmentLine",
        "initialPosition",
        "initialCoordinator",
        "recalculate",
        "reset",
        "reset$ui",
        "onAlignmentsChanged",
        "calculatePositionInParent",
        "Landroidx/compose/ui/geometry/Offset;",
        "position",
        "calculatePositionInParent-R5De75A",
        "(Landroidx/compose/ui/node/NodeCoordinator;J)J",
        "Landroidx/compose/ui/node/LayoutNodeAlignmentLines;",
        "Landroidx/compose/ui/node/LookaheadAlignmentLines;",
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
.field private final alignmentLineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

.field private dirty:Z

.field private previousUsedDuringParentLayout:Z

.field private queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

.field private usedByModifierLayout:Z

.field private usedByModifierMeasurement:Z

.field private usedDuringParentLayout:Z

.field private usedDuringParentMeasurement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/AlignmentLines;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/node/AlignmentLinesOwner;)V
    .locals 1
    .param p1, "alignmentLinesOwner"    # Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/node/AlignmentLinesOwner;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/AlignmentLines;-><init>(Landroidx/compose/ui/node/AlignmentLinesOwner;)V

    return-void
.end method

.method public static final synthetic access$addAlignmentLine(Landroidx/compose/ui/node/AlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/AlignmentLines;
    .param p1, "alignmentLine"    # Landroidx/compose/ui/layout/AlignmentLine;
    .param p2, "initialPosition"    # I
    .param p3, "initialCoordinator"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/AlignmentLines;->addAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic access$getAlignmentLineMap$p(Landroidx/compose/ui/node/AlignmentLines;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/AlignmentLines;

    .line 26
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    return-object v0
.end method

.method private final addAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 25
    .param p1, "alignmentLine"    # Landroidx/compose/ui/layout/AlignmentLine;
    .param p2, "initialPosition"    # I
    .param p3, "initialCoordinator"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    int-to-float v3, v2

    .local v3, "x$iv":F
    int-to-float v4, v2

    .local v4, "y$iv":F
    const/4 v5, 0x0

    .line 229
    .local v5, "$i$f$Offset":I
    move v6, v4

    .local v6, "val2$iv$iv":F
    move v7, v3

    .local v7, "val1$iv$iv":F
    const/4 v8, 0x0

    .line 230
    .local v8, "$i$f$packFloats":I
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    .line 231
    .local v9, "v1$iv$iv":J
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 232
    .local v11, "v2$iv$iv":J
    const/16 v13, 0x20

    shl-long v14, v9, v13

    const-wide v16, 0xffffffffL

    and-long v18, v11, v16

    or-long v6, v14, v18

    .line 229
    .end local v6    # "val2$iv$iv":F
    .end local v7    # "val1$iv$iv":F
    .end local v8    # "$i$f$packFloats":I
    .end local v9    # "v1$iv$iv":J
    .end local v11    # "v2$iv$iv":J
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .line 112
    .end local v3    # "x$iv":F
    .end local v4    # "y$iv":F
    .end local v5    # "$i$f$Offset":I
    nop

    .line 113
    .local v3, "position":J
    move-object/from16 v5, p3

    .line 114
    .local v5, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    nop

    .line 115
    invoke-virtual {v0, v5, v3, v4}, Landroidx/compose/ui/node/AlignmentLines;->calculatePositionInParent-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide v3

    .line 116
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v6

    .line 117
    iget-object v6, v0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    invoke-interface {v6}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/AlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {v0, v5, v1}, Landroidx/compose/ui/node/AlignmentLines;->getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v6

    .line 120
    .local v6, "newPosition":I
    int-to-float v7, v6

    .local v7, "x$iv":F
    int-to-float v8, v6

    .local v8, "y$iv":F
    const/4 v9, 0x0

    .line 233
    .local v9, "$i$f$Offset":I
    move v10, v8

    .local v10, "val2$iv$iv":F
    move v11, v7

    .local v11, "val1$iv$iv":F
    const/4 v12, 0x0

    .line 234
    .local v12, "$i$f$packFloats":I
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 235
    .local v14, "v1$iv$iv":J
    move/from16 v18, v13

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    move-wide/from16 v19, v3

    .end local v3    # "position":J
    .local v19, "position":J
    int-to-long v2, v13

    .line 236
    .local v2, "v2$iv$iv":J
    shl-long v21, v14, v18

    and-long v23, v2, v16

    or-long v2, v21, v23

    .line 233
    .end local v2    # "v2$iv$iv":J
    .end local v10    # "val2$iv$iv":F
    .end local v11    # "val1$iv$iv":F
    .end local v12    # "$i$f$packFloats":I
    .end local v14    # "v1$iv$iv":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 120
    .end local v7    # "x$iv":F
    .end local v8    # "y$iv":F
    .end local v9    # "$i$f$Offset":I
    move-wide v3, v2

    move/from16 v2, p2

    move/from16 v13, v18

    .end local v6    # "newPosition":I
    .end local v19    # "position":J
    .restart local v3    # "position":J
    goto :goto_0

    .line 118
    :cond_0
    move-wide/from16 v19, v3

    move/from16 v18, v13

    .end local v3    # "position":J
    .restart local v19    # "position":J
    move/from16 v2, p2

    goto :goto_0

    .line 125
    .end local v19    # "position":J
    .restart local v3    # "position":J
    :cond_1
    move-wide/from16 v19, v3

    move/from16 v18, v13

    .end local v3    # "position":J
    .restart local v19    # "position":J
    instance-of v2, v1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    if-eqz v2, :cond_2

    .line 126
    move-wide/from16 v2, v19

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 237
    .local v4, "$i$f$getY-impl":I
    move-wide v6, v2

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 238
    .local v8, "$i$f$unpackFloat2":I
    and-long v9, v6, v16

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 239
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 238
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 237
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat2":I
    nop

    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getY-impl":I
    goto :goto_1

    .line 128
    :cond_2
    move-wide/from16 v2, v19

    .restart local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 240
    .local v4, "$i$f$getX-impl":I
    move-wide v6, v2

    .restart local v6    # "value$iv$iv":J
    const/4 v8, 0x0

    .line 241
    .local v8, "$i$f$unpackFloat1":I
    shr-long v9, v6, v18

    long-to-int v9, v9

    .restart local v9    # "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 242
    .restart local v10    # "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 241
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 240
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackFloat1":I
    nop

    .line 130
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getX-impl":I
    :goto_1
    nop

    .local v9, "$this$fastRoundToInt$iv":F
    const/4 v2, 0x0

    .line 243
    .local v2, "$i$f$fastRoundToInt":I
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 130
    .end local v2    # "$i$f$fastRoundToInt":I
    .end local v9    # "$this$fastRoundToInt$iv":F
    nop

    .line 124
    nop

    .line 132
    .local v2, "positionInContainer":I
    iget-object v3, v0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    .line 133
    iget-object v4, v0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    iget-object v4, v0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    invoke-static {v4, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v1, v4, v2}, Landroidx/compose/ui/layout/AlignmentLineKt;->merge(Landroidx/compose/ui/layout/AlignmentLine;II)I

    move-result v4

    goto :goto_2

    .line 136
    :cond_3
    move v4, v2

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method


# virtual methods
.method protected abstract calculatePositionInParent-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J
.end method

.method protected abstract getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public final getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 1

    .line 26
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    return-object v0
.end method

.method public final getDirty$ui()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    return v0
.end method

.method public final getLastCalculation()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I
.end method

.method public final getPreviousUsedDuringParentLayout$ui()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    return v0
.end method

.method public final getQueried$ui()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    if-nez v0, :cond_1

    .line 52
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v0, :cond_1

    .line 53
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    if-nez v0, :cond_1

    .line 54
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getRequired$ui()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->recalculateQueryOwner()V

    .line 69
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getUsedByModifierLayout$ui()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    return v0
.end method

.method public final getUsedByModifierMeasurement$ui()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    return v0
.end method

.method public final getUsedDuringParentLayout$ui()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    return v0
.end method

.method public final getUsedDuringParentMeasurement$ui()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    return v0
.end method

.method public final onAlignmentsChanged()V
    .locals 2

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    .line 183
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 184
    .local v0, "parent":Landroidx/compose/ui/node/AlignmentLinesOwner;
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestMeasure()V

    goto :goto_0

    .line 186
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    if-eqz v1, :cond_3

    .line 187
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestLayout()V

    .line 189
    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestMeasure()V

    .line 192
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestLayout()V

    .line 195
    :cond_5
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    .line 196
    return-void
.end method

.method public final recalculate()V
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    new-instance v1, Landroidx/compose/ui/node/AlignmentLines$recalculate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/AlignmentLines$recalculate$1;-><init>(Landroidx/compose/ui/node/AlignmentLines;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->forEachChildAlignmentLinesOwner(Lkotlin/jvm/functions/Function1;)V

    .line 165
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLineMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/AlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    .line 167
    return-void
.end method

.method public final recalculateQueryOwner()V
    .locals 4

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->getQueried$ui()Z

    move-result v0

    .line 81
    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 82
    .local v0, "parent":Landroidx/compose/ui/node/AlignmentLinesOwner;
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 83
    .local v1, "parentQueryOwner":Landroidx/compose/ui/node/AlignmentLinesOwner;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/AlignmentLines;->getQueried$ui()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 87
    .local v2, "owner":Landroidx/compose/ui/node/AlignmentLinesOwner;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/AlignmentLines;->getQueried$ui()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 88
    :cond_3
    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/compose/ui/node/AlignmentLines;->recalculateQueryOwner()V

    .line 89
    :cond_4
    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 77
    .end local v0    # "parent":Landroidx/compose/ui/node/AlignmentLinesOwner;
    .end local v1    # "parentQueryOwner":Landroidx/compose/ui/node/AlignmentLinesOwner;
    .end local v2    # "owner":Landroidx/compose/ui/node/AlignmentLinesOwner;
    :goto_1
    iput-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 92
    return-void

    .line 87
    .restart local v0    # "parent":Landroidx/compose/ui/node/AlignmentLinesOwner;
    .restart local v1    # "parentQueryOwner":Landroidx/compose/ui/node/AlignmentLinesOwner;
    .restart local v2    # "owner":Landroidx/compose/ui/node/AlignmentLinesOwner;
    :cond_6
    :goto_2
    return-void
.end method

.method public final reset$ui()V
    .locals 1

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    .line 173
    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    .line 174
    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    .line 175
    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    .line 176
    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 178
    return-void
.end method

.method public final setDirty$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->dirty:Z

    return-void
.end method

.method public final setPreviousUsedDuringParentLayout$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 40
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->previousUsedDuringParentLayout:Z

    return-void
.end method

.method public final setUsedByModifierLayout$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 46
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierLayout:Z

    return-void
.end method

.method public final setUsedByModifierMeasurement$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 43
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedByModifierMeasurement:Z

    return-void
.end method

.method public final setUsedDuringParentLayout$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 37
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentLayout:Z

    return-void
.end method

.method public final setUsedDuringParentMeasurement$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 31
    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->usedDuringParentMeasurement:Z

    return-void
.end method
