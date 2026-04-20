.class public final Landroidx/compose/runtime/SlotReader;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 3 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,4112:1\n3898#2:4113\n3818#2:4114\n3818#2:4115\n3884#2:4116\n3884#2:4117\n3818#2:4118\n3929#2:4119\n3878#2:4120\n3878#2:4121\n3824#2:4122\n3824#2:4123\n3878#2:4124\n3841#2:4125\n3850#2:4126\n3884#2:4127\n3898#2:4132\n3929#2:4133\n3929#2:4134\n3898#2:4139\n3929#2:4144\n3818#2:4145\n3818#2:4154\n3884#2:4155\n3898#2:4164\n3898#2:4173\n3929#2:4174\n3878#2:4175\n3818#2:4176\n3884#2:4177\n3974#2,6:4178\n3818#2:4184\n3821#2:4185\n3833#2:4186\n3824#2:4187\n34#3,4:4128\n34#3,4:4135\n34#3,4:4140\n34#3,4:4146\n1475#4,4:4150\n1475#4,4:4156\n1475#4,4:4160\n1475#4,4:4165\n1475#4,4:4169\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n*L\n874#1:4113\n878#1:4114\n881#1:4115\n888#1:4116\n891#1:4117\n894#1:4118\n918#1:4119\n933#1:4120\n937#1:4121\n947#1:4122\n950#1:4123\n971#1:4124\n974#1:4125\n980#1:4126\n984#1:4127\n994#1:4132\n1003#1:4133\n1020#1:4134\n1072#1:4139\n1090#1:4144\n1097#1:4145\n1105#1:4154\n1105#1:4155\n1122#1:4164\n1152#1:4173\n1163#1:4174\n1180#1:4175\n1183#1:4176\n1183#1:4177\n1197#1:4178,6\n1200#1:4184\n1201#1:4185\n1205#1:4186\n1210#1:4187\n993#1:4128,4\n1053#1:4135,4\n1072#1:4140,4\n1097#1:4146,4\n1104#1:4150,4\n1112#1:4156,4\n1120#1:4160,4\n1137#1:4165,4\n1149#1:4169,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u00082\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010-\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010.\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u0010\u00100\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u000bJ\u000e\u00104\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u000e\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u000bJ\u000e\u00108\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010:\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010>\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u000bJ\u0010\u0010@\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u000bJ\u0010\u0010C\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010:\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u0012J\u000e\u0010H\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010I\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010N\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u0010\u0010Q\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u000bJ\u0010\u0010R\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u000bJ\u0018\u0010R\u001a\u0004\u0018\u00010\u00012\u0006\u00107\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bJ\u0008\u0010S\u001a\u0004\u0018\u00010\u0001J\u0006\u0010V\u001a\u00020WJ\u0006\u0010X\u001a\u00020WJ\u0006\u0010Y\u001a\u00020WJ\u0006\u0010Z\u001a\u00020WJ\u0006\u0010[\u001a\u00020WJ\u0006\u0010\\\u001a\u00020\u000bJ\u0006\u0010]\u001a\u00020WJ\u000e\u0010^\u001a\u00020W2\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010_\u001a\u00020W2\u0006\u0010,\u001a\u00020\u000bJ\u0006\u0010`\u001a\u00020WJ\u000c\u0010a\u001a\u0008\u0012\u0004\u0012\u00020c0bJ\u0008\u0010d\u001a\u00020eH\u0016J\u0010\u0010G\u001a\u00020\u00122\u0008\u0008\u0002\u0010,\u001a\u00020\u000bJ\u0016\u00100\u001a\u0004\u0018\u00010\u0001*\u00020\t2\u0006\u0010,\u001a\u00020\u000bH\u0002J\u0016\u0010f\u001a\u0004\u0018\u00010\u0001*\u00020\t2\u0006\u0010,\u001a\u00020\u000bH\u0002J\u0016\u0010g\u001a\u0004\u0018\u00010\u0001*\u00020\t2\u0006\u0010,\u001a\u00020\u000bH\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0010\u001a\"\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0011j\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u001e\u0010!\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001cR\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010(\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001cR\u0011\u0010*\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u001cR\u0011\u0010-\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0019R\u0011\u0010.\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u001cR\u0011\u00101\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0019R\u0011\u00102\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0019R\u0011\u00104\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u001cR\u0011\u00108\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u001cR\u0011\u0010:\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u001cR\u0011\u0010<\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\u001cR\u0011\u0010>\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010\u0019R\u0013\u0010@\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010BR\u0013\u0010C\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010BR\u0013\u0010E\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010BR\u0011\u0010J\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010\u001cR\u0011\u0010L\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u001cR\u0011\u0010O\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010\u001cR\u001e\u0010T\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010\u0019\u00a8\u0006h"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotReader;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "<init>",
        "(Landroidx/compose/runtime/SlotTable;)V",
        "getTable$runtime",
        "()Landroidx/compose/runtime/SlotTable;",
        "groups",
        "",
        "groupsSize",
        "",
        "slots",
        "",
        "[Ljava/lang/Object;",
        "slotsSize",
        "sourceInformationMap",
        "Ljava/util/HashMap;",
        "Landroidx/compose/runtime/Anchor;",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "Lkotlin/collections/HashMap;",
        "value",
        "",
        "closed",
        "getClosed",
        "()Z",
        "currentGroup",
        "getCurrentGroup",
        "()I",
        "setCurrentGroup",
        "(I)V",
        "currentEnd",
        "getCurrentEnd",
        "parent",
        "getParent",
        "currentSlotStack",
        "Landroidx/compose/runtime/IntStack;",
        "emptyCount",
        "currentSlot",
        "currentSlotEnd",
        "size",
        "getSize",
        "slot",
        "getSlot",
        "index",
        "isNode",
        "nodeCount",
        "getNodeCount",
        "node",
        "isGroupEnd",
        "inEmpty",
        "getInEmpty",
        "groupSize",
        "getGroupSize",
        "slotSize",
        "group",
        "groupEnd",
        "getGroupEnd",
        "groupKey",
        "getGroupKey",
        "groupSlotIndex",
        "getGroupSlotIndex",
        "hasObjectKey",
        "getHasObjectKey",
        "groupObjectKey",
        "getGroupObjectKey",
        "()Ljava/lang/Object;",
        "groupAux",
        "getGroupAux",
        "groupNode",
        "getGroupNode",
        "anchor",
        "hasMark",
        "containsMark",
        "parentNodes",
        "getParentNodes",
        "remainingSlots",
        "getRemainingSlots",
        "parentOf",
        "groupSlotCount",
        "getGroupSlotCount",
        "get",
        "groupGet",
        "next",
        "hadNext",
        "getHadNext",
        "beginEmpty",
        "",
        "endEmpty",
        "close",
        "startGroup",
        "startNode",
        "skipGroup",
        "skipToGroupEnd",
        "reposition",
        "restoreParent",
        "endGroup",
        "extractKeys",
        "",
        "Landroidx/compose/runtime/KeyInfo;",
        "toString",
        "",
        "aux",
        "objectKey",
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


# static fields
.field public static final $stable:I


# instance fields
.field private closed:Z

.field private currentEnd:I

.field private currentGroup:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private final currentSlotStack:Landroidx/compose/runtime/IntStack;

.field private emptyCount:I

.field private final groups:[I

.field private final groupsSize:I

.field private hadNext:Z

.field private parent:I

.field private slots:[Ljava/lang/Object;

.field private final slotsSize:I

.field private sourceInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/SlotReader;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 1
    .param p1, "table"    # Landroidx/compose/runtime/SlotTable;

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 818
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 821
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 824
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    .line 843
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 847
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 851
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlotStack:Landroidx/compose/runtime/IntStack;

    .line 812
    return-void
.end method

.method public static synthetic anchor$default(Landroidx/compose/runtime/SlotReader;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;
    .locals 0

    .line 1196
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    return-object p0
.end method

.method private final aux([II)Ljava/lang/Object;
    .locals 6
    .param p1, "$this$aux"    # [I
    .param p2, "index"    # I

    .line 1205
    move v0, p2

    .local v0, "address$iv":I
    move-object v1, p1

    .local v1, "$this$hasAux$iv":[I
    const/4 v2, 0x0

    .line 4186
    .local v2, "$i$f$hasAux":I
    mul-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v1, v3

    const/high16 v5, 0x10000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1205
    .end local v0    # "address$iv":I
    .end local v1    # "$this$hasAux$iv":[I
    .end local v2    # "$i$f$hasAux":I
    :goto_0
    if-eqz v4, :cond_1

    .line 1206
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_1

    .line 1207
    :cond_1
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final node([II)Ljava/lang/Object;
    .locals 6
    .param p1, "$this$node"    # [I
    .param p2, "index"    # I

    .line 1200
    move v0, p2

    .local v0, "address$iv":I
    move-object v1, p1

    .local v1, "$this$isNode$iv":[I
    const/4 v2, 0x0

    .line 4184
    .local v2, "$i$f$isNode":I
    mul-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1200
    .end local v0    # "address$iv":I
    .end local v1    # "$this$isNode$iv":[I
    .end local v2    # "$i$f$isNode":I
    :goto_0
    if-eqz v4, :cond_1

    .line 1201
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    move v1, p2

    .local v1, "address$iv":I
    move-object v2, p1

    .local v2, "$this$nodeIndex$iv":[I
    const/4 v3, 0x0

    .line 4185
    .local v3, "$i$f$nodeIndex":I
    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x4

    aget v1, v2, v4

    .end local v1    # "address$iv":I
    .end local v2    # "$this$nodeIndex$iv":[I
    .end local v3    # "$i$f$nodeIndex":I
    aget-object v0, v0, v1

    goto :goto_1

    .line 1202
    :cond_1
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final objectKey([II)Ljava/lang/Object;
    .locals 6
    .param p1, "$this$objectKey"    # [I
    .param p2, "index"    # I

    .line 1210
    move v0, p2

    .local v0, "address$iv":I
    move-object v1, p1

    .local v1, "$this$hasObjectKey$iv":[I
    const/4 v2, 0x0

    .line 4187
    .local v2, "$i$f$hasObjectKey":I
    mul-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v1, v3

    const/high16 v5, 0x20000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1210
    .end local v0    # "address$iv":I
    .end local v1    # "$this$hasObjectKey$iv":[I
    .end local v2    # "$i$f$hasObjectKey":I
    :goto_0
    if-eqz v4, :cond_1

    .line 1211
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_1

    .line 1212
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 7
    .param p1, "index"    # I

    .line 1197
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "$this$getOrAdd$iv":Ljava/util/ArrayList;
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .local v1, "effectiveSize$iv":I
    move v2, p1

    .local v2, "index$iv":I
    const/4 v3, 0x0

    .line 4178
    .local v3, "$i$f$getOrAdd":I
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v4

    .line 4179
    .local v4, "location$iv":I
    if-gez v4, :cond_0

    .line 4180
    const/4 v5, 0x0

    .line 1197
    .local v5, "$i$a$-getOrAdd-SlotReader$anchor$1":I
    new-instance v6, Landroidx/compose/runtime/Anchor;

    invoke-direct {v6, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 4180
    .end local v5    # "$i$a$-getOrAdd-SlotReader$anchor$1":I
    nop

    .line 4181
    .local v6, "anchor$iv":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4182
    nop

    .end local v6    # "anchor$iv":Landroidx/compose/runtime/Anchor;
    goto :goto_0

    .line 4183
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/Anchor;

    .line 4179
    :goto_0
    nop

    .line 1197
    .end local v0    # "$this$getOrAdd$iv":Ljava/util/ArrayList;
    .end local v1    # "effectiveSize$iv":I
    .end local v2    # "index$iv":I
    .end local v3    # "$i$f$getOrAdd":I
    .end local v4    # "location$iv":I
    return-object v6
.end method

.method public final beginEmpty()V
    .locals 1

    .line 1048
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 1049
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    .line 1063
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->sourceInformationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Landroidx/compose/runtime/SlotTable;->close$runtime(Landroidx/compose/runtime/SlotReader;Ljava/util/HashMap;)V

    .line 1064
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 1065
    return-void
.end method

.method public final containsMark(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 980
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$containsMark$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4126
    .local v2, "$i$f$containsMark":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x4000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 980
    .end local v0    # "$this$containsMark$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$containsMark":I
    :goto_0
    return v4
.end method

.method public final endEmpty()V
    .locals 3

    .line 1053
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 4135
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 4136
    const/4 v2, 0x0

    .line 1053
    .local v2, "$i$a$-requirePrecondition-SlotReader$endEmpty$1":I
    nop

    .line 4136
    .end local v2    # "$i$a$-requirePrecondition-SlotReader$endEmpty$1":I
    const-string v2, "Unbalanced begin/end empty"

    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 4138
    :cond_1
    nop

    .line 1054
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    .line 1055
    return-void
.end method

.method public final endGroup()V
    .locals 7

    .line 1148
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-nez v0, :cond_5

    .line 1149
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 4169
    .local v1, "$i$f$runtimeCheck":I
    if-nez v0, :cond_1

    .line 4170
    const/4 v4, 0x0

    .line 1150
    .local v4, "$i$a$-runtimeCheck-SlotReader$endGroup$1":I
    nop

    .line 4170
    .end local v4    # "$i$a$-runtimeCheck-SlotReader$endGroup$1":I
    const-string v4, "endGroup() not called at the end of a group"

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4172
    :cond_1
    nop

    .line 1152
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$parentAnchor$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .local v1, "address$iv":I
    const/4 v4, 0x0

    .line 4173
    .local v4, "$i$f$parentAnchor":I
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aget v0, v0, v5

    .line 1152
    .end local v0    # "$this$parentAnchor$iv":[I
    .end local v1    # "address$iv":I
    .end local v4    # "$i$f$parentAnchor":I
    nop

    .line 1153
    .local v0, "parent":I
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1154
    if-gez v0, :cond_2

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v1, v0

    :goto_1
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1155
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotStack:Landroidx/compose/runtime/IntStack;

    .line 1156
    .local v1, "currentSlotStack":Landroidx/compose/runtime/IntStack;
    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v4

    .line 1157
    .local v4, "newCurrentSlot":I
    if-gez v4, :cond_3

    .line 1158
    iput v3, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1159
    iput v3, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    goto :goto_3

    .line 1161
    :cond_3
    iput v4, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1162
    nop

    .line 1163
    iget v3, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_4

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v2, "$this$dataAnchor$iv":[I
    add-int/lit8 v3, v0, 0x1

    .local v3, "address$iv":I
    const/4 v5, 0x0

    .line 4174
    .local v5, "$i$f$dataAnchor":I
    mul-int/lit8 v6, v3, 0x5

    add-int/lit8 v6, v6, 0x4

    aget v6, v2, v6

    move v2, v6

    .line 1162
    .end local v2    # "$this$dataAnchor$iv":[I
    .end local v3    # "address$iv":I
    .end local v5    # "$i$f$dataAnchor":I
    :goto_2
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1166
    .end local v0    # "parent":I
    .end local v1    # "currentSlotStack":Landroidx/compose/runtime/IntStack;
    .end local v4    # "newCurrentSlot":I
    :cond_5
    :goto_3
    return-void
.end method

.method public final extractKeys()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1174
    .local v0, "result":Ljava/util/List;
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v1, :cond_0

    return-object v0

    .line 1175
    :cond_0
    const/4 v1, 0x0

    .line 1176
    .local v1, "index":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    move v6, v2

    move v8, v1

    .line 1177
    .end local v1    # "index":I
    .local v6, "childIndex":I
    .local v8, "index":I
    :goto_0
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v6, v1, :cond_3

    .line 1178
    nop

    .line 1179
    new-instance v3, Landroidx/compose/runtime/KeyInfo;

    .line 1180
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v1, "$this$key$iv":[I
    move v2, v6

    .local v2, "address$iv":I
    const/4 v4, 0x0

    .line 4175
    .local v4, "$i$f$key":I
    mul-int/lit8 v5, v2, 0x5

    aget v4, v1, v5

    .line 1181
    .end local v1    # "$this$key$iv":[I
    .end local v2    # "address$iv":I
    .end local v4    # "$i$f$key":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v1, v6}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v5

    .line 1182
    nop

    .line 1183
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v1, "$this$isNode$iv":[I
    .restart local v2    # "address$iv":I
    const/4 v7, 0x0

    .line 4176
    .local v7, "$i$f$isNode":I
    mul-int/lit8 v9, v2, 0x5

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget v9, v1, v9

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v9, v11

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 1183
    .end local v1    # "$this$isNode$iv":[I
    .end local v2    # "address$iv":I
    .end local v7    # "$i$f$isNode":I
    :goto_1
    if-eqz v9, :cond_2

    move v7, v10

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v1, "$this$nodeCount$iv":[I
    move v2, v6

    .restart local v2    # "address$iv":I
    const/4 v7, 0x0

    .line 4177
    .local v7, "$i$f$nodeCount":I
    mul-int/lit8 v9, v2, 0x5

    add-int/2addr v9, v10

    aget v9, v1, v9

    const v10, 0x3ffffff

    and-int/2addr v10, v9

    move v7, v10

    .line 1184
    .end local v1    # "$this$nodeCount$iv":[I
    .end local v2    # "address$iv":I
    .end local v7    # "$i$f$nodeCount":I
    :goto_2
    add-int/lit8 v1, v8, 0x1

    .line 1179
    .end local v8    # "index":I
    .local v1, "index":I
    nop

    .restart local v8    # "index":I
    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 1178
    .end local v8    # "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v6, v2

    move v8, v1

    goto :goto_0

    .line 1189
    .end local v1    # "index":I
    .restart local v8    # "index":I
    :cond_3
    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 1009
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    add-int/2addr v0, p1

    .local v0, "slotIndex":I
    const/4 v1, 0x0

    .line 1010
    .local v1, "$i$a$-let-SlotReader$get$1":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    .line 1009
    .end local v0    # "slotIndex":I
    .end local v1    # "$i$a$-let-SlotReader$get$1":I
    :goto_0
    nop

    .line 1011
    return-object v2
.end method

.method public final getClosed()Z
    .locals 1

    .line 836
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    return v0
.end method

.method public final getCurrentEnd()I
    .locals 1

    .line 843
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final getCurrentGroup()I
    .locals 1

    .line 840
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return v0
.end method

.method public final getGroupAux()Ljava/lang/Object;
    .locals 2

    .line 961
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getGroupEnd()I
    .locals 1

    .line 924
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final getGroupKey()I
    .locals 4

    .line 932
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    .line 933
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$key$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4120
    .local v2, "$i$f$key":I
    mul-int/lit8 v3, v1, 0x5

    aget v0, v0, v3

    .end local v0    # "$this$key$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$key":I
    goto :goto_0

    .line 934
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getGroupNode()Ljava/lang/Object;
    .locals 2

    .line 968
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->node([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGroupObjectKey()Ljava/lang/Object;
    .locals 2

    .line 954
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGroupSize()I
    .locals 2

    .line 906
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public final getGroupSlotCount()I
    .locals 7

    .line 1000
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1001
    .local v0, "current":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    .line 1002
    .local v1, "start":I
    add-int/lit8 v2, v0, 0x1

    .line 1003
    .local v2, "next":I
    iget v3, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v3, "$this$dataAnchor$iv":[I
    move v4, v2

    .local v4, "address$iv":I
    const/4 v5, 0x0

    .line 4133
    .local v5, "$i$f$dataAnchor":I
    mul-int/lit8 v6, v4, 0x5

    add-int/lit8 v6, v6, 0x4

    aget v3, v3, v6

    .end local v3    # "$this$dataAnchor$iv":[I
    .end local v4    # "address$iv":I
    .end local v5    # "$i$f$dataAnchor":I
    goto :goto_0

    .line 1003
    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    :goto_0
    nop

    .line 1004
    .local v3, "end":I
    sub-int v4, v3, v1

    return v4
.end method

.method public final getGroupSlotIndex()I
    .locals 3

    .line 944
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getHadNext()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    return v0
.end method

.method public final getHasObjectKey()Z
    .locals 7

    .line 950
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$hasObjectKey$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v1, "address$iv":I
    const/4 v3, 0x0

    .line 4123
    .local v3, "$i$f$hasObjectKey":I
    mul-int/lit8 v4, v1, 0x5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget v4, v0, v4

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v2

    .line 950
    .end local v0    # "$this$hasObjectKey$iv":[I
    .end local v1    # "address$iv":I
    .end local v3    # "$i$f$hasObjectKey":I
    :goto_0
    if-eqz v0, :cond_1

    move v2, v5

    :cond_1
    return v2
.end method

.method public final getInEmpty()Z
    .locals 1

    .line 902
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNodeCount()I
    .locals 5

    .line 888
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$nodeCount$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4116
    .local v2, "$i$f$nodeCount":I
    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    const v4, 0x3ffffff

    and-int v0, v3, v4

    .line 888
    .end local v0    # "$this$nodeCount$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$nodeCount":I
    return v0
.end method

.method public final getParent()I
    .locals 1

    .line 847
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    return v0
.end method

.method public final getParentNodes()I
    .locals 5

    .line 984
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$nodeCount$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4127
    .local v2, "$i$f$nodeCount":I
    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    const v4, 0x3ffffff

    and-int v0, v3, v4

    .end local v0    # "$this$nodeCount$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$nodeCount":I
    goto :goto_0

    .line 984
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getRemainingSlots()I
    .locals 2

    .line 988
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 867
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    return v0
.end method

.method public final getSlot()I
    .locals 3

    .line 871
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getTable$runtime()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 814
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 964
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final groupEnd(I)I
    .locals 1
    .param p1, "index"    # I

    .line 927
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final groupGet(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 1014
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final groupGet(II)Ljava/lang/Object;
    .locals 6
    .param p1, "group"    # I
    .param p2, "index"    # I

    .line 1018
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    .line 1019
    .local v0, "start":I
    add-int/lit8 v1, p1, 0x1

    .line 1020
    .local v1, "next":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v2, "$this$dataAnchor$iv":[I
    move v3, v1

    .local v3, "address$iv":I
    const/4 v4, 0x0

    .line 4134
    .local v4, "$i$f$dataAnchor":I
    mul-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x4

    aget v2, v2, v5

    .end local v2    # "$this$dataAnchor$iv":[I
    .end local v3    # "address$iv":I
    .end local v4    # "$i$f$dataAnchor":I
    goto :goto_0

    .line 1020
    :cond_0
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    :goto_0
    nop

    .line 1021
    .local v2, "end":I
    add-int v3, v0, p2

    .line 1022
    .local v3, "address":I
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object v4, v4, v3

    goto :goto_1

    :cond_1
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    return-object v4
.end method

.method public final groupKey(I)I
    .locals 4
    .param p1, "index"    # I

    .line 937
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$key$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4121
    .local v2, "$i$f$key":I
    mul-int/lit8 v3, v1, 0x5

    aget v0, v0, v3

    .line 937
    .end local v0    # "$this$key$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$key":I
    return v0
.end method

.method public final groupKey(Landroidx/compose/runtime/Anchor;)I
    .locals 4
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 971
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$key$iv":[I
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4124
    .local v2, "$i$f$key":I
    mul-int/lit8 v3, v1, 0x5

    aget v0, v0, v3

    .end local v0    # "$this$key$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$key":I
    goto :goto_0

    .line 971
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 957
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final groupSize(I)I
    .locals 1
    .param p1, "index"    # I

    .line 912
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public final hasMark(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 974
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$hasMark$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4125
    .local v2, "$i$f$hasMark":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x8000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 974
    .end local v0    # "$this$hasMark$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$hasMark":I
    :goto_0
    return v4
.end method

.method public final hasObjectKey(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 947
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$hasObjectKey$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4122
    .local v2, "$i$f$hasObjectKey":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x20000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 947
    .end local v0    # "$this$hasObjectKey$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$hasObjectKey":I
    :goto_0
    return v4
.end method

.method public final isGroupEnd()Z
    .locals 2

    .line 898
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v0, v1, :cond_0

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

.method public final isNode()Z
    .locals 6

    .line 878
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$isNode$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4114
    .local v2, "$i$f$isNode":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 878
    .end local v0    # "$this$isNode$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$isNode":I
    :goto_0
    return v4
.end method

.method public final isNode(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 881
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$isNode$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4115
    .local v2, "$i$f$isNode":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 881
    .end local v0    # "$this$isNode$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$isNode":I
    :goto_0
    return v4
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1031
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1035
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    .line 1036
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    aget-object v0, v0, v1

    return-object v0

    .line 1032
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    .line 1033
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I

    .line 894
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$isNode$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4118
    .local v2, "$i$f$isNode":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 894
    .end local v0    # "$this$isNode$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$isNode":I
    :goto_0
    if-eqz v4, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->node([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final nodeCount(I)I
    .locals 5
    .param p1, "index"    # I

    .line 891
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$nodeCount$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4117
    .local v2, "$i$f$nodeCount":I
    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    const v4, 0x3ffffff

    and-int v0, v3, v4

    .line 891
    .end local v0    # "$this$nodeCount$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$nodeCount":I
    return v0
.end method

.method public final parent(I)I
    .locals 4
    .param p1, "index"    # I

    .line 874
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$parentAnchor$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4113
    .local v2, "$i$f$parentAnchor":I
    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x2

    aget v0, v0, v3

    .line 874
    .end local v0    # "$this$parentAnchor$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$parentAnchor":I
    return v0
.end method

.method public final parentOf(I)I
    .locals 5
    .param p1, "index"    # I

    .line 993
    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 4128
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 4129
    const/4 v2, 0x0

    .line 993
    .local v2, "$i$a$-requirePrecondition-SlotReader$parentOf$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid group index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4129
    .end local v2    # "$i$a$-requirePrecondition-SlotReader$parentOf$1":I
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 4131
    :cond_1
    nop

    .line 994
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$parentAnchor$iv":[I
    move v1, p1

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4132
    .local v2, "$i$f$parentAnchor":I
    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x2

    aget v0, v0, v3

    .line 994
    .end local v0    # "$this$parentAnchor$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$parentAnchor":I
    return v0
.end method

.method public final reposition(I)V
    .locals 5
    .param p1, "index"    # I

    .line 1120
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 4160
    .local v2, "$i$f$runtimeCheck":I
    if-nez v0, :cond_1

    .line 4161
    const/4 v3, 0x0

    .line 1120
    .local v3, "$i$a$-runtimeCheck-SlotReader$reposition$1":I
    nop

    .line 4161
    .end local v3    # "$i$a$-runtimeCheck-SlotReader$reposition$1":I
    const-string v3, "Cannot reposition while in an empty region"

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4163
    :cond_1
    nop

    .line 1121
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1122
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$parentAnchor$iv":[I
    move v2, p1

    .local v2, "address$iv":I
    const/4 v3, 0x0

    .line 4164
    .local v3, "$i$f$parentAnchor":I
    mul-int/lit8 v4, v2, 0x5

    add-int/lit8 v4, v4, 0x2

    aget v0, v0, v4

    .end local v0    # "$this$parentAnchor$iv":[I
    .end local v2    # "address$iv":I
    .end local v3    # "$i$f$parentAnchor":I
    goto :goto_1

    .line 1122
    :cond_2
    const/4 v0, -0x1

    :goto_1
    nop

    .line 1123
    .local v0, "parent":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-eq v0, v2, :cond_4

    .line 1124
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1125
    if-gez v0, :cond_3

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    goto :goto_2

    .line 1126
    :cond_3
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1127
    :goto_2
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1128
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1130
    :cond_4
    return-void
.end method

.method public final restoreParent(I)V
    .locals 8
    .param p1, "index"    # I

    .line 1134
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p1

    .line 1135
    .local v0, "newCurrentEnd":I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1137
    .local v1, "current":I
    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    if-gt v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .local v3, "value$iv":Z
    :goto_0
    const/4 v4, 0x0

    .line 4165
    .local v4, "$i$f$runtimeCheck":I
    if-nez v3, :cond_1

    .line 4166
    const/4 v5, 0x0

    .line 1138
    .local v5, "$i$a$-runtimeCheck-SlotReader$restoreParent$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a parent of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4166
    .end local v5    # "$i$a$-runtimeCheck-SlotReader$restoreParent$1":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4168
    :cond_1
    nop

    .line 1140
    .end local v3    # "value$iv":Z
    .end local v4    # "$i$f$runtimeCheck":I
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1141
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1142
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1143
    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1144
    return-void
.end method

.method public final setCurrentGroup(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 840
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return-void
.end method

.method public final skipGroup()I
    .locals 7

    .line 1104
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 4150
    .local v3, "$i$f$runtimeCheck":I
    if-nez v0, :cond_1

    .line 4151
    const/4 v4, 0x0

    .line 1104
    .local v4, "$i$a$-runtimeCheck-SlotReader$skipGroup$1":I
    nop

    .line 4151
    .end local v4    # "$i$a$-runtimeCheck-SlotReader$skipGroup$1":I
    const-string v4, "Cannot skip while in an empty region"

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4153
    :cond_1
    nop

    .line 1105
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$isNode$iv":[I
    iget v3, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v3, "address$iv":I
    const/4 v4, 0x0

    .line 4154
    .local v4, "$i$f$isNode":I
    mul-int/lit8 v5, v3, 0x5

    add-int/2addr v5, v2

    aget v5, v0, v5

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    move v1, v2

    .line 1105
    .end local v0    # "$this$isNode$iv":[I
    .end local v3    # "address$iv":I
    .end local v4    # "$i$f$isNode":I
    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$nodeCount$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v1, "address$iv":I
    const/4 v3, 0x0

    .line 4155
    .local v3, "$i$f$nodeCount":I
    mul-int/lit8 v4, v1, 0x5

    add-int/2addr v4, v2

    aget v2, v0, v4

    const v4, 0x3ffffff

    and-int/2addr v2, v4

    .line 1105
    .end local v0    # "$this$nodeCount$iv":[I
    .end local v1    # "address$iv":I
    .end local v3    # "$i$f$nodeCount":I
    :goto_1
    nop

    .line 1106
    .local v2, "count":I
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v3, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v1, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1107
    return v2
.end method

.method public final skipToGroupEnd()V
    .locals 4

    .line 1112
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 4156
    .local v2, "$i$f$runtimeCheck":I
    if-nez v0, :cond_1

    .line 4157
    const/4 v3, 0x0

    .line 1112
    .local v3, "$i$a$-runtimeCheck-SlotReader$skipToGroupEnd$1":I
    nop

    .line 4157
    .end local v3    # "$i$a$-runtimeCheck-SlotReader$skipToGroupEnd$1":I
    const-string v3, "Cannot skip the enclosing group while in an empty region"

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 4159
    :cond_1
    nop

    .line 1113
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1114
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1115
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1116
    return-void
.end method

.method public final slotSize(I)I
    .locals 6
    .param p1, "group"    # I

    .line 916
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    .line 917
    .local v0, "start":I
    add-int/lit8 v1, p1, 0x1

    .line 918
    .local v1, "next":I
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v2, "$this$dataAnchor$iv":[I
    move v3, v1

    .local v3, "address$iv":I
    const/4 v4, 0x0

    .line 4119
    .local v4, "$i$f$dataAnchor":I
    mul-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x4

    aget v2, v2, v5

    .end local v2    # "$this$dataAnchor$iv":[I
    .end local v3    # "address$iv":I
    .end local v4    # "$i$f$dataAnchor":I
    goto :goto_0

    .line 918
    :cond_0
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    :goto_0
    nop

    .line 919
    .local v2, "end":I
    sub-int v3, v2, v0

    return v3
.end method

.method public final startGroup()V
    .locals 9

    .line 1069
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_5

    .line 1070
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1071
    .local v0, "parent":I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1072
    .local v1, "currentGroup":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v2, "$this$parentAnchor$iv":[I
    move v3, v1

    .local v3, "address$iv":I
    const/4 v4, 0x0

    .line 4139
    .local v4, "$i$f$parentAnchor":I
    mul-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x2

    aget v2, v2, v5

    .line 1072
    .end local v2    # "$this$parentAnchor$iv":[I
    .end local v3    # "address$iv":I
    .end local v4    # "$i$f$parentAnchor":I
    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "value$iv":Z
    :goto_0
    const/4 v4, 0x0

    .line 4140
    .local v4, "$i$f$requirePrecondition":I
    if-nez v2, :cond_1

    .line 4141
    const/4 v5, 0x0

    .line 1073
    .local v5, "$i$a$-requirePrecondition-SlotReader$startGroup$1":I
    nop

    .line 4141
    .end local v5    # "$i$a$-requirePrecondition-SlotReader$startGroup$1":I
    const-string v5, "Invalid slot table detected"

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 4143
    :cond_1
    nop

    .line 1075
    .end local v2    # "value$iv":Z
    .end local v4    # "$i$f$requirePrecondition":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/GroupSourceInformation;->reportGroup(Landroidx/compose/runtime/SlotTable;I)V

    .line 1076
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotStack:Landroidx/compose/runtime/IntStack;

    .line 1077
    .local v2, "currentSlotStack":Landroidx/compose/runtime/IntStack;
    iget v4, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1078
    .local v4, "currentSlot":I
    iget v5, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1079
    .local v5, "currentEndSlot":I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 1080
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/IntStack;->push(I)V

    goto :goto_1

    .line 1082
    :cond_3
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 1084
    :goto_1
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1085
    iget-object v6, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v6, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v6

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    .line 1086
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 1087
    iget-object v6, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v6, v1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v6

    iput v6, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 1088
    nop

    .line 1089
    iget v6, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    sub-int/2addr v6, v3

    if-lt v1, v6, :cond_4

    iget v3, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    goto :goto_2

    .line 1090
    :cond_4
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v3, "$this$dataAnchor$iv":[I
    add-int/lit8 v6, v1, 0x1

    .local v6, "address$iv":I
    const/4 v7, 0x0

    .line 4144
    .local v7, "$i$f$dataAnchor":I
    mul-int/lit8 v8, v6, 0x5

    add-int/lit8 v8, v8, 0x4

    aget v8, v3, v8

    move v3, v8

    .line 1088
    .end local v3    # "$this$dataAnchor$iv":[I
    .end local v6    # "address$iv":I
    .end local v7    # "$i$f$dataAnchor":I
    :goto_2
    iput v3, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    .line 1092
    .end local v0    # "parent":I
    .end local v1    # "currentGroup":I
    .end local v2    # "currentSlotStack":Landroidx/compose/runtime/IntStack;
    .end local v4    # "currentSlot":I
    .end local v5    # "currentEndSlot":I
    :cond_5
    return-void
.end method

.method public final startNode()V
    .locals 6

    .line 1096
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_2

    .line 1097
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .local v0, "$this$isNode$iv":[I
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .local v1, "address$iv":I
    const/4 v2, 0x0

    .line 4145
    .local v2, "$i$f$isNode":I
    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1097
    .end local v0    # "$this$isNode$iv":[I
    .end local v1    # "address$iv":I
    .end local v2    # "$i$f$isNode":I
    :goto_0
    nop

    .local v4, "value$iv":Z
    const/4 v0, 0x0

    .line 4146
    .local v0, "$i$f$requirePrecondition":I
    if-nez v4, :cond_1

    .line 4147
    const/4 v1, 0x0

    .line 1097
    .local v1, "$i$a$-requirePrecondition-SlotReader$startNode$1":I
    nop

    .line 4147
    .end local v1    # "$i$a$-requirePrecondition-SlotReader$startNode$1":I
    const-string v1, "Expected a node group"

    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 4149
    :cond_1
    nop

    .line 1098
    .end local v0    # "$i$f$requirePrecondition":I
    .end local v4    # "value$iv":Z
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    .line 1100
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlotReader(current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
