.class public final Landroidx/compose/ui/tooling/data/SlotTreeKt;
.super Ljava/lang/Object;
.source "SlotTree.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTree.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTree.jvm.kt\nandroidx/compose/ui/tooling/data/SlotTreeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 6 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 7 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 8 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 9 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n360#2,7:731\n1557#2:739\n1628#2,3:740\n2669#2,7:743\n295#2,2:769\n1053#2:771\n1755#2,3:772\n1567#2:775\n1598#2,3:776\n295#2,2:779\n1601#2:781\n1755#2,3:782\n1053#2:785\n1053#2:786\n1577#2,11:787\n1872#2,2:798\n1874#2:801\n1588#2:802\n1#3:738\n1#3:800\n111#4,2:750\n65#4:752\n69#4:755\n60#5:753\n70#5:756\n85#5:759\n90#5:761\n22#6:754\n22#6:757\n54#7:758\n59#7:760\n381#8,7:762\n3829#9:803\n4344#9,2:804\n1310#9,2:806\n*S KotlinDebug\n*F\n+ 1 SlotTree.jvm.kt\nandroidx/compose/ui/tooling/data/SlotTreeKt\n*L\n238#1:731,7\n269#1:739\n269#1:740,3\n269#1:743,7\n567#1:769,2\n598#1:771\n600#1:772,3\n615#1:775\n615#1:776,3\n622#1:779,2\n615#1:781\n637#1:782,3\n640#1:785\n652#1:786\n653#1:787,11\n653#1:798,2\n653#1:801\n653#1:802\n653#1:800\n306#1:750,2\n310#1:752\n311#1:755\n310#1:753\n311#1:756\n312#1:759\n313#1:761\n310#1:754\n311#1:757\n312#1:758\n313#1:760\n518#1:762,7\n705#1:803\n705#1:804,2\n729#1:806,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0002\u001a\u0016\u0010\t\u001a\u00020\n*\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0003\u001a\u0010\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001aK\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\u0008\u0000\u0010\u0011*\u00020\u00122&\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0016\u0012\u0006\u0012\u0004\u0018\u0001H\u00110\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001ay\u0010\u001a\u001a\u0004\u0018\u0001H\u0011\"\u0004\u0008\u0000\u0010\u0011\"\u0004\u0008\u0001\u0010\u001b*\u00020\u001222\u0010\u001c\u001a.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001b0\u0016\u0012\u0006\u0012\u0004\u0018\u0001H\u00110\u001d2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u001a\u0008\u0002\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001b0 0\u001fH\u0000\u00a2\u0006\u0002\u0010!\u001a\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u0016*\u00020\u000b2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007\u001a\u000c\u0010$\u001a\u00020\n*\u00020\u0012H\u0007\u001a\u0014\u0010%\u001a\u00020\u0001*\u00020\u00012\u0006\u0010&\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\'\u001a\u0004\u0018\u00010\u00072\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0003\u001a(\u00103\u001a\u0008\u0012\u0004\u0012\u00020#0\u00162\u000e\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\u00162\u0008\u00105\u001a\u0004\u0018\u00010\u0005H\u0003\u001a2\u00106\u001a\u0008\u0012\u0004\u0012\u00020#0\u00162\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002080\u00162\u0006\u00109\u001a\u00020)2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020;0\u0016H\u0002\u001a2\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0\u00162\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002080\u00162\u0006\u00109\u001a\u00020)2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020;0\u0016H\u0002\u001a:\u0010=\u001a\u00020#2\u0006\u0010>\u001a\u0002082\u0006\u00109\u001a\u00020)2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@2\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0003\u001a)\u0010C\u001a\u0008\u0012\u0004\u0012\u0002080\u00162\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002080D2\u0006\u0010E\u001a\u00020FH\u0002\u00a2\u0006\u0002\u0010G\u001a\u001a\u0010Q\u001a\u0004\u0018\u000108*\u0006\u0012\u0002\u0008\u00030R2\u0006\u0010S\u001a\u00020\u0007H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010-\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010.\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010/\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u00100\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u00101\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u00102\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010H\u001a\u00020@X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010I\u001a\u00020@X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010J\u001a\u00020@X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010K\u001a\u00020@X\u0082T\u00a2\u0006\u0002\n\u0000\" \u0010L\u001a\u0004\u0018\u00010\u0007*\u00020\n8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\u00a8\u0006T"
    }
    d2 = {
        "emptyBox",
        "Landroidx/compose/ui/unit/IntRect;",
        "getEmptyBox",
        "()Landroidx/compose/ui/unit/IntRect;",
        "sourceInformationContextOf",
        "Landroidx/compose/ui/tooling/data/SourceInformationContext;",
        "information",
        "",
        "parent",
        "getGroup",
        "Landroidx/compose/ui/tooling/data/Group;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "parentContext",
        "boundsOfLayoutNode",
        "node",
        "Landroidx/compose/ui/layout/LayoutInfo;",
        "mapTree",
        "T",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "factory",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/tooling/data/SourceContext;",
        "",
        "cache",
        "Landroidx/compose/ui/tooling/data/ContextCache;",
        "(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/lang/Object;",
        "mapTreeWithStitching",
        "R",
        "createNode",
        "Lkotlin/Function4;",
        "childrenToAdd",
        "",
        "",
        "(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/tooling/data/ContextCache;Ljava/util/Map;)Ljava/lang/Object;",
        "findParameters",
        "Landroidx/compose/ui/tooling/data/ParameterInformation;",
        "asTree",
        "union",
        "other",
        "keyPosition",
        "key",
        "",
        "indyLambdaRegex",
        "Lkotlin/text/Regex;",
        "legacyLambdaRegex",
        "parameterPrefix",
        "internalFieldPrefix",
        "defaultFieldName",
        "changedFieldName",
        "jacocoDataField",
        "recomposeScopeNameSuffix",
        "extractParameterInfo",
        "data",
        "context",
        "extractFromIndyLambdaFields",
        "fields",
        "Ljava/lang/reflect/Field;",
        "block",
        "metadata",
        "Landroidx/compose/runtime/tooling/ParameterSourceInformation;",
        "extractFromLegacyFields",
        "buildParameterInfo",
        "field",
        "index",
        "",
        "defaults",
        "changed",
        "filterParameterFields",
        "",
        "isIndyLambda",
        "",
        "([Ljava/lang/reflect/Field;Z)Ljava/util/List;",
        "BITS_PER_SLOT",
        "SLOT_MASK",
        "STATIC_BITS",
        "STABLE_BITS",
        "position",
        "getPosition$annotations",
        "(Landroidx/compose/ui/tooling/data/Group;)V",
        "getPosition",
        "(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/String;",
        "accessibleField",
        "Ljava/lang/Class;",
        "name",
        "ui-tooling-data"
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
.field private static final BITS_PER_SLOT:I = 0x3

.field private static final SLOT_MASK:I = 0x7

.field private static final STABLE_BITS:I = 0x4

.field private static final STATIC_BITS:I = 0x3

.field private static final changedFieldName:Ljava/lang/String; = "$$changed"

.field private static final defaultFieldName:Ljava/lang/String; = "$$default"

.field private static final emptyBox:Landroidx/compose/ui/unit/IntRect;

.field private static final indyLambdaRegex:Lkotlin/text/Regex;

.field private static final internalFieldPrefix:Ljava/lang/String; = "$$"

.field private static final jacocoDataField:Ljava/lang/String; = "$jacoco"

.field private static final legacyLambdaRegex:Lkotlin/text/Regex;

.field private static final parameterPrefix:Ljava/lang/String; = "$"

.field private static final recomposeScopeNameSuffix:Ljava/lang/String; = ".RecomposeScopeImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    sput-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    .line 550
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^f\\$\\d+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->indyLambdaRegex:Lkotlin/text/Regex;

    .line 552
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^\\$([^$]+)$|\\$\\$.*?\\$-([^$]+)\\$\\d+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->legacyLambdaRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public static final synthetic access$boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;
    .locals 1
    .param p0, "node"    # Landroidx/compose/ui/layout/LayoutInfo;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$extractFromLegacyFields$extractedName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/reflect/Field;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractFromLegacyFields$extractedName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;
    .locals 1
    .param p0, "data"    # Ljava/util/List;
    .param p1, "context"    # Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 9
    .param p0, "$this$accessibleField"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 729
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 806
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 729
    .local v7, "$i$a$-firstOrNull-SlotTreeKt$accessibleField$1":I
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 806
    .end local v6    # "it":Ljava/lang/reflect/Field;
    .end local v7    # "$i$a$-firstOrNull-SlotTreeKt$accessibleField$1":I
    if-eqz v6, :cond_0

    goto :goto_1

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    :cond_1
    move-object v5, v4

    .line 729
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    if-eqz v5, :cond_2

    move-object v0, v5

    .line 738
    .local v0, "$this$accessibleField_u24lambda_u241":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 729
    .local v1, "$i$a$-apply-SlotTreeKt$accessibleField$2":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v4, v5

    .end local v0    # "$this$accessibleField_u24lambda_u241":Ljava/lang/reflect/Field;
    .end local v1    # "$i$a$-apply-SlotTreeKt$accessibleField$2":I
    :cond_2
    return-object v4
.end method

.method public static final asTree(Landroidx/compose/runtime/tooling/CompositionData;)Landroidx/compose/ui/tooling/data/Group;
    .locals 2
    .param p0, "$this$asTree"    # Landroidx/compose/runtime/tooling/CompositionData;

    .line 529
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getGroup(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/ui/tooling/data/EmptyGroup;->INSTANCE:Landroidx/compose/ui/tooling/data/EmptyGroup;

    check-cast v0, Landroidx/compose/ui/tooling/data/Group;

    :cond_1
    return-object v0
.end method

.method private static final boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;
    .locals 18
    .param p0, "node"    # Landroidx/compose/ui/layout/LayoutInfo;

    .line 301
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 302
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutInfo;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 305
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    .line 306
    .local v3, "position":J
    move-wide v5, v3

    .local v5, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v1, 0x0

    .line 750
    .local v1, "$i$f$isValid-impl":I
    const-wide v7, 0x7fffffff7fffffffL

    and-long/2addr v7, v5

    .line 751
    .local v7, "v$iv":J
    const-wide v9, 0x7fffff007fffffL

    add-long/2addr v9, v7

    const-wide v11, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v2

    .line 306
    .end local v1    # "$i$f$isValid-impl":I
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v7    # "v$iv":J
    :goto_0
    if-nez v9, :cond_2

    .line 307
    new-instance v1, Landroidx/compose/ui/unit/IntRect;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutInfo;->getWidth()I

    move-result v5

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutInfo;->getHeight()I

    move-result v6

    invoke-direct {v1, v2, v2, v5, v6}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v1

    .line 309
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    .line 310
    .local v1, "size":J
    move-wide v5, v3

    .restart local v5    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v7, 0x0

    .line 752
    .local v7, "$i$f$getX-impl":I
    move-wide v8, v5

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 753
    .local v10, "$i$f$unpackFloat1":I
    const/16 v11, 0x20

    shr-long v12, v8, v11

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 754
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 753
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 752
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 310
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v7    # "$i$f$getX-impl":I
    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 311
    .local v5, "left":I
    move-wide v6, v3

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 755
    .local v8, "$i$f$getY-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v12, 0x0

    .line 756
    .local v12, "$i$f$unpackFloat2":I
    const-wide v13, 0xffffffffL

    move v15, v11

    move/from16 v16, v12

    .end local v12    # "$i$f$unpackFloat2":I
    .local v16, "$i$f$unpackFloat2":I
    and-long v11, v9, v13

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 757
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 756
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 755
    .end local v9    # "value$iv$iv":J
    .end local v16    # "$i$f$unpackFloat2":I
    nop

    .line 311
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getY-impl":I
    invoke-static {v11}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    .line 312
    .local v6, "top":I
    move-wide v7, v1

    .local v7, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v9, 0x0

    .line 758
    .local v9, "$i$f$getWidth-impl":I
    move-wide v10, v7

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 759
    .local v12, "$i$f$unpackInt1":I
    move-wide/from16 v16, v13

    shr-long v13, v10, v15

    long-to-int v10, v13

    .line 758
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackInt1":I
    nop

    .line 312
    .end local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v9    # "$i$f$getWidth-impl":I
    add-int/2addr v10, v5

    .line 313
    .local v10, "right":I
    nop

    .restart local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v9, 0x0

    .line 760
    .local v9, "$i$f$getHeight-impl":I
    move-wide v11, v7

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 761
    .local v13, "$i$f$unpackInt2":I
    and-long v14, v11, v16

    long-to-int v11, v14

    .line 760
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackInt2":I
    nop

    .line 313
    .end local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v9    # "$i$f$getHeight-impl":I
    add-int/2addr v11, v6

    .line 314
    .local v11, "bottom":I
    new-instance v7, Landroidx/compose/ui/unit/IntRect;

    invoke-direct {v7, v5, v6, v10, v11}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v7

    .line 303
    .end local v1    # "size":J
    .end local v3    # "position":J
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    :cond_3
    :goto_1
    new-instance v1, Landroidx/compose/ui/unit/IntRect;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutInfo;->getWidth()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutInfo;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v1
.end method

.method private static final buildParameterInfo(Ljava/lang/reflect/Field;Ljava/lang/Object;IIILandroidx/compose/runtime/tooling/ParameterSourceInformation;)Landroidx/compose/ui/tooling/data/ParameterInformation;
    .locals 12
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "block"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "defaults"    # I
    .param p4, "changed"    # I
    .param p5, "metadata"    # Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    .line 682
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 683
    invoke-virtual/range {p0 .. p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 685
    .local v3, "value":Ljava/lang/Object;
    shl-int v1, v0, p2

    and-int/2addr v1, p3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 686
    .local v4, "fromDefault":Z
    :goto_0
    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v9, v1, 0x1

    .line 687
    .local v9, "changedOffset":I
    const/4 v1, 0x7

    shl-int/2addr v1, v9

    and-int v1, v1, p4

    shr-int v10, v1, v9

    .line 689
    .local v10, "parameterChanged":I
    and-int/lit8 v1, v10, 0x3

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v2

    .line 690
    .local v5, "static":Z
    :goto_1
    and-int/lit8 v1, v10, 0x3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v11, v1

    .line 691
    .local v11, "compared":Z
    and-int/lit8 v1, v10, 0x4

    if-nez v1, :cond_3

    move v8, v0

    goto :goto_3

    :cond_3
    move v8, v2

    .line 693
    .local v8, "stable":Z
    :goto_3
    new-instance v1, Landroidx/compose/ui/tooling/data/ParameterInformation;

    .line 694
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    :cond_5
    nop

    .line 696
    nop

    .line 697
    nop

    .line 698
    if-eqz v11, :cond_6

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    .line 699
    :goto_4
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getInlineClass()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    move-object v7, v2

    .line 700
    nop

    .line 693
    move-object v2, v6

    move v6, v0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/tooling/data/ParameterInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;ZZZLjava/lang/String;Z)V

    return-object v1
.end method

.method private static final extractFromIndyLambdaFields(Ljava/util/List;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 27
    .param p0, "fields"    # Ljava/util/List;
    .param p1, "block"    # Ljava/lang/Object;
    .param p2, "metadata"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ParameterSourceInformation;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .line 598
    move-object/from16 v1, p1

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 771
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractFromIndyLambdaFields$$inlined$sortedBy$1;

    invoke-direct {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractFromIndyLambdaFields$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 598
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    nop

    .line 597
    move-object v6, v0

    .line 600
    .local v6, "sortedFields":Ljava/util/List;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_5

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 772
    .local v2, "$i$f$any":I
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v8

    goto :goto_1

    .line 773
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    .local v5, "it":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    const/4 v9, 0x0

    .line 600
    .local v9, "$i$a$-any-SlotTreeKt$extractFromIndyLambdaFields$hasParameterNames$1":I
    invoke-virtual {v5}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v8

    .line 773
    .end local v5    # "it":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .end local v9    # "$i$a$-any-SlotTreeKt$extractFromIndyLambdaFields$hasParameterNames$1":I
    :goto_0
    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 774
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v0, v8

    .line 600
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v8

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v9, v0

    .line 602
    .local v9, "hasParameterNames":Z
    if-eqz v9, :cond_6

    .line 605
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 607
    :cond_6
    move-object v0, v6

    .line 602
    :goto_4
    nop

    .line 601
    move-object v10, v0

    .line 611
    .local v10, "realFields":Ljava/util/List;
    if-eqz v9, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    move v11, v0

    .line 612
    .local v11, "changedIndex":I
    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v12

    :goto_6
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    check-cast v0, Ljava/lang/Integer;

    goto :goto_7

    :cond_9
    move-object v0, v12

    :goto_7
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_8

    :cond_a
    move v4, v8

    .line 613
    .local v4, "changed":I
    :goto_8
    add-int/lit8 v0, v11, 0x1

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_b
    move-object v0, v12

    :goto_9
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_c

    check-cast v0, Ljava/lang/Integer;

    goto :goto_a

    :cond_c
    move-object v0, v12

    :goto_a
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_b

    :cond_d
    move v3, v8

    .line 615
    .local v3, "defaults":I
    :goto_b
    move-object v13, v10

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 775
    .local v14, "$i$f$mapIndexed":I
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v13, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    check-cast v15, Ljava/util/Collection;

    .local v15, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v16, v13

    .local v16, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 776
    .local v17, "$i$f$mapIndexedTo":I
    const/4 v0, 0x0

    .line 777
    .local v0, "index$iv$iv":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v2, v0

    .end local v0    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 778
    .local v19, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "index$iv$iv":I
    .local v20, "index$iv$iv":I
    if-gez v2, :cond_e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_e
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/reflect/Field;

    .local v0, "field":Ljava/lang/reflect/Field;
    .local v2, "index":I
    const/16 v21, 0x0

    .line 617
    .local v21, "$i$a$-mapIndexed-SlotTreeKt$extractFromIndyLambdaFields$1":I
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
    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 779
    .local v22, "$i$f$firstOrNull":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .local v24, "element$iv":Ljava/lang/Object;
    move-object/from16 v25, v24

    check-cast v25, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    .local v25, "it":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    const/16 v26, 0x0

    .line 622
    .local v26, "$i$a$-firstOrNull-SlotTreeKt$extractFromIndyLambdaFields$1$1":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getSortedIndex()I

    move-result v7

    if-ne v7, v2, :cond_10

    const/4 v7, 0x1

    goto :goto_d

    :cond_10
    move v7, v8

    .line 779
    .end local v25    # "it":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .end local v26    # "$i$a$-firstOrNull-SlotTreeKt$extractFromIndyLambdaFields$1$1":I
    :goto_d
    if-eqz v7, :cond_f

    goto :goto_e

    .line 780
    .end local v24    # "element$iv":Ljava/lang/Object;
    :cond_11
    move-object/from16 v24, v12

    .end local v5    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v22    # "$i$f$firstOrNull":I
    :goto_e
    move-object/from16 v5, v24

    check-cast v5, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    .line 616
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->buildParameterInfo(Ljava/lang/reflect/Field;Ljava/lang/Object;IIILandroidx/compose/runtime/tooling/ParameterSourceInformation;)Landroidx/compose/ui/tooling/data/ParameterInformation;

    move-result-object v5

    .line 623
    nop

    .line 778
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "index":I
    .end local v21    # "$i$a$-mapIndexed-SlotTreeKt$extractFromIndyLambdaFields$1":I
    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move/from16 v2, v20

    goto :goto_c

    .line 781
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    .end local v20    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    :cond_12
    nop

    .end local v2    # "index$iv$iv":I
    .end local v15    # "destination$iv$iv":Ljava/util/Collection;
    .end local v16    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapIndexedTo":I
    move-object v0, v15

    check-cast v0, Ljava/util/List;

    .line 775
    nop

    .line 615
    .end local v13    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapIndexed":I
    return-object v0
.end method

.method private static final extractFromLegacyFields(Ljava/util/List;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 31
    .param p0, "fields"    # Ljava/util/List;
    .param p1, "block"    # Ljava/lang/Object;
    .param p2, "metadata"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ParameterSourceInformation;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .line 633
    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 634
    .local v6, "blockClass":Ljava/lang/Class;
    const-string v0, "$$default"

    invoke-static {v6, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v2

    .line 635
    .local v3, "defaults":I
    :goto_2
    const-string v0, "$$changed"

    invoke-static {v6, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_5

    :cond_5
    move v4, v2

    .line 637
    .local v4, "changed":I
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_a

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 782
    .local v8, "$i$f$any":I
    instance-of v9, v0, Ljava/util/Collection;

    if-eqz v9, :cond_6

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move v0, v2

    goto :goto_7

    .line 783
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    .local v11, "it":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    const/4 v12, 0x0

    .line 637
    .local v12, "$i$a$-any-SlotTreeKt$extractFromLegacyFields$hasParameterNames$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    move v11, v5

    goto :goto_6

    :cond_8
    move v11, v2

    .line 783
    .end local v11    # "it":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .end local v12    # "$i$a$-any-SlotTreeKt$extractFromLegacyFields$hasParameterNames$1":I
    :goto_6
    if-eqz v11, :cond_7

    move v0, v5

    goto :goto_7

    .line 784
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_9
    move v0, v2

    .line 637
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    :goto_7
    if-eqz v0, :cond_b

    :cond_a
    move v2, v5

    :cond_b
    move v8, v2

    .line 639
    .local v8, "hasParameterNames":Z
    if-eqz v8, :cond_c

    .line 640
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 785
    .local v2, "$i$f$sortedBy":I
    new-instance v5, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractFromLegacyFields$$inlined$sortedBy$1;

    invoke-direct {v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractFromLegacyFields$$inlined$sortedBy$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    goto :goto_8

    .line 642
    :cond_c
    move-object/from16 v0, p2

    .line 639
    :goto_8
    nop

    .line 638
    move-object v9, v0

    .line 652
    .local v9, "sorted":Ljava/util/List;
    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 786
    .restart local v2    # "$i$f$sortedBy":I
    new-instance v5, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractFromLegacyFields$$inlined$sortedBy$2;

    invoke-direct {v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt$extractFromLegacyFields$$inlined$sortedBy$2;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 652
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    move-object v10, v0

    .line 653
    .local v10, "sortedFields":Ljava/util/List;
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 787
    .local v12, "$i$f$mapIndexedNotNull":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$mapIndexedNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 797
    .local v15, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v16, v14

    .local v16, "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 798
    .local v17, "$i$f$forEachIndexed":I
    const/4 v0, 0x0

    .line 799
    .local v0, "index$iv$iv$iv":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v20, v0, 0x1

    .end local v0    # "index$iv$iv$iv":I
    .local v20, "index$iv$iv$iv":I
    if-gez v0, :cond_d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v0, "index$iv$iv":I
    :cond_d
    move-object/from16 v21, v19

    .local v21, "element$iv$iv":Ljava/lang/Object;
    move/from16 v22, v0

    .end local v0    # "index$iv$iv":I
    .local v22, "index$iv$iv":I
    const/16 v23, 0x0

    .line 797
    .local v23, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/reflect/Field;

    move/from16 v2, v22

    .local v2, "index":I
    const/16 v30, 0x0

    .line 654
    .local v30, "$i$a$-mapIndexedNotNull-SlotTreeKt$extractFromLegacyFields$1":I
    invoke-static {v9, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    if-nez v0, :cond_e

    new-instance v24, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v25, v2

    .end local v2    # "index":I
    .local v25, "index":I
    invoke-direct/range {v24 .. v29}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v24

    .line 655
    .end local v25    # "index":I
    .local v0, "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .restart local v2    # "index":I
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getSortedIndex()I

    move-result v5

    .line 656
    .local v5, "sortedIndex":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_f

    const/16 v25, 0x0

    goto :goto_b

    .line 658
    :cond_f
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 659
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getName()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_10

    .line 661
    move-object/from16 v25, v0

    .end local v0    # "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .local v25, "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    new-instance v0, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    .line 662
    nop

    .line 663
    invoke-static {v7}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractFromLegacyFields$extractedName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 664
    move/from16 v26, v2

    .end local v2    # "index":I
    .local v26, "index":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->getInlineClass()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-direct {v0, v5, v1, v2}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 660
    nop

    .end local v25    # "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .restart local v0    # "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    goto :goto_a

    .line 659
    .end local v26    # "index":I
    .restart local v2    # "index":I
    :cond_10
    move-object/from16 v25, v0

    move/from16 v26, v2

    .line 668
    .end local v2    # "index":I
    .restart local v26    # "index":I
    :goto_a
    move v1, v5

    move-object v5, v0

    move-object v0, v7

    move v7, v1

    move-object/from16 v1, p1

    move/from16 v2, v26

    .end local v26    # "index":I
    .local v0, "field":Ljava/lang/reflect/Field;
    .restart local v2    # "index":I
    .local v5, "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .local v7, "sortedIndex":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->buildParameterInfo(Ljava/lang/reflect/Field;Ljava/lang/Object;IIILandroidx/compose/runtime/tooling/ParameterSourceInformation;)Landroidx/compose/ui/tooling/data/ParameterInformation;

    move-result-object v25

    .line 797
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "index":I
    .end local v5    # "paramMeta":Landroidx/compose/runtime/tooling/ParameterSourceInformation;
    .end local v7    # "sortedIndex":I
    .end local v30    # "$i$a$-mapIndexedNotNull-SlotTreeKt$extractFromLegacyFields$1":I
    :goto_b
    if-eqz v25, :cond_11

    move-object/from16 v0, v25

    .line 800
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 797
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 799
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    .end local v21    # "element$iv$iv":Ljava/lang/Object;
    .end local v22    # "index$iv$iv":I
    .end local v23    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    :cond_11
    move-object/from16 v1, p1

    move/from16 v0, v20

    .end local v19    # "item$iv$iv$iv":Ljava/lang/Object;
    goto/16 :goto_9

    .line 801
    .end local v20    # "index$iv$iv$iv":I
    .local v0, "index$iv$iv$iv":I
    :cond_12
    nop

    .line 802
    .end local v0    # "index$iv$iv$iv":I
    .end local v16    # "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$forEachIndexed":I
    nop

    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$mapIndexedNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 787
    nop

    .line 653
    .end local v11    # "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapIndexedNotNull":I
    return-object v0
.end method

.method private static final extractFromLegacyFields$extractedName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 5
    .param p0, "$this$extractFromLegacyFields_u24extractedName"    # Ljava/lang/reflect/Field;

    .line 646
    sget-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->legacyLambdaRegex:Lkotlin/text/Regex;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 649
    .local v0, "extractedGroups":Lkotlin/text/MatchGroupCollection;
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_4
    return-object v4
.end method

.method private static final extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;
    .locals 12
    .param p0, "data"    # Ljava/util/List;
    .param p1, "context"    # Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/tooling/data/SourceInformationContext;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .line 567
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 769
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v7, v3

    .local v7, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 567
    .local v8, "$i$a$-firstOrNull-SlotTreeKt$extractParameterInfo$recomposeScope$1":I
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".RecomposeScopeImpl"

    const/4 v11, 0x2

    invoke-static {v9, v10, v5, v11, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v5

    .line 769
    .end local v7    # "it":Ljava/lang/Object;
    .end local v8    # "$i$a$-firstOrNull-SlotTreeKt$extractParameterInfo$recomposeScope$1":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 770
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v3, v6

    .line 567
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    if-nez v3, :cond_3

    .line 568
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 566
    :cond_3
    nop

    .line 571
    .local v3, "recomposeScope":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "block"

    invoke-static {v0, v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->accessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 570
    :cond_4
    nop

    .line 573
    .local v0, "block":Ljava/lang/Object;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getParameters()Ljava/util/List;

    move-result-object v6

    :cond_5
    if-nez v6, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 574
    .local v6, "parametersMetadata":Ljava/util/List;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 576
    .local v1, "blockClass":Ljava/lang/Class;
    nop

    .line 577
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2, v4}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->filterParameterFields([Ljava/lang/reflect/Field;Z)Ljava/util/List;

    move-result-object v2

    .line 579
    .local v2, "inlineFields":Ljava/util/List;
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 580
    invoke-static {v2, v0, v6}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractFromIndyLambdaFields(Ljava/util/List;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 583
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4, v5}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->filterParameterFields([Ljava/lang/reflect/Field;Z)Ljava/util/List;

    move-result-object v4

    .line 582
    nop

    .line 584
    .local v4, "legacyFields":Ljava/util/List;
    invoke-static {v4, v0, v6}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractFromLegacyFields(Ljava/util/List;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .end local v2    # "inlineFields":Ljava/util/List;
    .end local v4    # "legacyFields":Ljava/util/List;
    :goto_2
    goto :goto_3

    .line 586
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 576
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v4

    .line 571
    .end local v0    # "block":Ljava/lang/Object;
    .end local v1    # "blockClass":Ljava/lang/Class;
    .end local v6    # "parametersMetadata":Ljava/util/List;
    :cond_8
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final filterParameterFields([Ljava/lang/reflect/Field;Z)Ljava/util/List;
    .locals 16
    .param p0, "fields"    # [Ljava/lang/reflect/Field;
    .param p1, "isIndyLambda"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Field;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 705
    move-object/from16 v0, p0

    .local v0, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 803
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 804
    .local v4, "$i$f$filterTo":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v3, v7

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .line 706
    .local v10, "$i$a$-filter-SlotTreeKt$filterParameterFields$1":I
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    .line 708
    .local v11, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 709
    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    sget-object v13, Landroidx/compose/ui/tooling/data/SlotTreeKt;->indyLambdaRegex:Lkotlin/text/Regex;

    invoke-virtual {v13, v12}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v12

    goto :goto_1

    .line 711
    :cond_0
    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    sget-object v13, Landroidx/compose/ui/tooling/data/SlotTreeKt;->legacyLambdaRegex:Lkotlin/text/Regex;

    invoke-virtual {v13, v12}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 708
    :goto_1
    nop

    .line 707
    nop

    .line 714
    .local v12, "validPrefix":Z
    if-eqz v12, :cond_1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-string v15, "$jacoco"

    invoke-static {v11, v15, v6, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    move v13, v6

    .line 804
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "$i$a$-filter-SlotTreeKt$filterParameterFields$1":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "validPrefix":Z
    :goto_2
    if-eqz v13, :cond_2

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 805
    :cond_3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 803
    nop

    .line 705
    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$filter":I
    return-object v2
.end method

.method public static final findParameters(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/util/List;
    .locals 8
    .param p0, "$this$findParameters"    # Landroidx/compose/runtime/tooling/CompositionGroup;
    .param p1, "cache"    # Landroidx/compose/ui/tooling/data/ContextCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "Landroidx/compose/ui/tooling/data/ContextCache;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .line 514
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 516
    .local v0, "information":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-static {v0, v2, v1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v2

    goto :goto_1

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/ContextCache;->getContexts$ui_tooling_data()Ljava/util/Map;

    move-result-object v3

    .local v3, "$this$getOrPut$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "key$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 762
    .local v5, "$i$f$getOrPut":I
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 763
    .local v6, "value$iv":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 764
    const/4 v7, 0x0

    .line 518
    .local v7, "$i$a$-getOrPut-SlotTreeKt$findParameters$context$1":I
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v1

    .line 764
    .end local v7    # "$i$a$-getOrPut-SlotTreeKt$findParameters$context$1":I
    nop

    .line 765
    .local v1, "answer$iv":Ljava/lang/Object;
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    nop

    .end local v1    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 768
    :cond_2
    move-object v1, v6

    .line 763
    :goto_0
    nop

    .line 518
    .end local v3    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v4    # "key$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$getOrPut":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    instance-of v3, v1, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 516
    :cond_3
    :goto_1
    nop

    .line 515
    nop

    .line 520
    .local v2, "context":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 521
    .local v1, "data":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getData()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 522
    invoke-static {v1, v2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static synthetic findParameters$default(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/ContextCache;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 513
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->findParameters(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getEmptyBox()Landroidx/compose/ui/unit/IntRect;
    .locals 1

    .line 169
    sget-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    return-object v0
.end method

.method private static final getGroup(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/Group;
    .locals 18
    .param p0, "$this$getGroup"    # Landroidx/compose/runtime/tooling/CompositionGroup;
    .param p1, "parentContext"    # Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 248
    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "key":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 738
    .local v1, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 249
    .local v4, "$i$a$-let-SlotTreeKt$getGroup$context$1":I
    invoke-static {v1, v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v1

    .end local v1    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-SlotTreeKt$getGroup$context$1":I
    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    move-object v11, v1

    .line 250
    .local v11, "context":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    move-object v1, v3

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getNode()Ljava/lang/Object;

    move-result-object v3

    .line 251
    .local v3, "node":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    check-cast v12, Ljava/util/List;

    .line 252
    .local v12, "data":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    check-cast v13, Ljava/util/List;

    .line 253
    .local v13, "children":Ljava/util/List;
    move-object v4, v12

    check-cast v4, Ljava/util/Collection;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getData()Ljava/lang/Iterable;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 254
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/tooling/CompositionGroup;

    .local v5, "child":Landroidx/compose/runtime/tooling/CompositionGroup;
    invoke-static {v5, v11}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getGroup(Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/Group;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v5    # "child":Landroidx/compose/runtime/tooling/CompositionGroup;
    :cond_1
    instance-of v4, v3, Landroidx/compose/ui/layout/LayoutInfo;

    if-eqz v4, :cond_2

    .line 258
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/LayoutInfo;

    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutInfo;->getModifierInfo()Ljava/util/List;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    .line 260
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v6, v4

    .line 257
    :goto_2
    nop

    .line 256
    nop

    .line 265
    .local v6, "modifierInfo":Ljava/util/List;
    nop

    .line 266
    instance-of v4, v3, Landroidx/compose/ui/layout/LayoutInfo;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/LayoutInfo;

    invoke-static {v4}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v4

    goto :goto_5

    .line 268
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    goto :goto_5

    .line 269
    :cond_4
    move-object v4, v13

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 739
    .local v5, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 740
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 741
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/tooling/data/Group;

    .local v15, "g":Landroidx/compose/ui/tooling/data/Group;
    const/16 v16, 0x0

    .line 269
    .local v16, "$i$a$-map-SlotTreeKt$getGroup$box$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/tooling/data/Group;->getBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v15

    .line 741
    .end local v15    # "g":Landroidx/compose/ui/tooling/data/Group;
    .end local v16    # "$i$a$-map-SlotTreeKt$getGroup$box$1":I
    invoke-interface {v7, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 742
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 739
    nop

    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    check-cast v7, Ljava/lang/Iterable;

    .line 269
    nop

    .local v7, "$this$reduce$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 743
    .local v4, "$i$f$reduce":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 744
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 745
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 746
    .local v8, "accumulator$iv":Ljava/lang/Object;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 747
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/IntRect;

    .local v9, "box":Landroidx/compose/ui/unit/IntRect;
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/unit/IntRect;

    .local v10, "acc":Landroidx/compose/ui/unit/IntRect;
    const/4 v14, 0x0

    .line 269
    .local v14, "$i$a$-reduce-SlotTreeKt$getGroup$box$2":I
    invoke-static {v9, v10}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->union(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v9

    .line 747
    .end local v9    # "box":Landroidx/compose/ui/unit/IntRect;
    .end local v10    # "acc":Landroidx/compose/ui/unit/IntRect;
    .end local v14    # "$i$a$-reduce-SlotTreeKt$getGroup$box$2":I
    move-object v8, v9

    goto :goto_4

    .line 749
    :cond_6
    nop

    .end local v4    # "$i$f$reduce":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v7    # "$this$reduce$iv":Ljava/lang/Iterable;
    .end local v8    # "accumulator$iv":Ljava/lang/Object;
    move-object v4, v8

    check-cast v4, Landroidx/compose/ui/unit/IntRect;

    .line 265
    :goto_5
    nop

    .line 264
    nop

    .line 272
    .local v4, "box":Landroidx/compose/ui/unit/IntRect;
    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isCall()Z

    move-result v8

    if-ne v8, v5, :cond_7

    move v8, v5

    goto :goto_6

    :cond_7
    move v8, v7

    :goto_6
    if-eqz v8, :cond_9

    .line 273
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextSourceLocation()Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v8

    goto :goto_7

    :cond_8
    move-object v8, v1

    goto :goto_7

    .line 275
    :cond_9
    move-object v8, v1

    .line 272
    :goto_7
    nop

    .line 271
    nop

    .line 277
    .local v8, "location":Landroidx/compose/ui/tooling/data/SourceLocation;
    if-eqz v3, :cond_a

    new-instance v1, Landroidx/compose/ui/tooling/data/NodeGroup;

    move-object v5, v12

    check-cast v5, Ljava/util/Collection;

    move-object v7, v13

    check-cast v7, Ljava/util/Collection;

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/tooling/data/NodeGroup;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/unit/IntRect;Ljava/util/Collection;Ljava/util/List;Ljava/util/Collection;)V

    move-object v14, v3

    move-object v15, v6

    .end local v3    # "node":Ljava/lang/Object;
    .end local v6    # "modifierInfo":Ljava/util/List;
    .local v14, "node":Ljava/lang/Object;
    .local v15, "modifierInfo":Ljava/util/List;
    check-cast v1, Landroidx/compose/ui/tooling/data/Group;

    move-object v5, v8

    goto/16 :goto_e

    .line 279
    .end local v14    # "node":Ljava/lang/Object;
    .end local v15    # "modifierInfo":Ljava/util/List;
    .restart local v3    # "node":Ljava/lang/Object;
    .restart local v6    # "modifierInfo":Ljava/util/List;
    :cond_a
    move-object v14, v3

    move-object v15, v6

    .end local v3    # "node":Ljava/lang/Object;
    .end local v6    # "modifierInfo":Ljava/util/List;
    .restart local v14    # "node":Ljava/lang/Object;
    .restart local v15    # "modifierInfo":Ljava/util/List;
    move-object v3, v1

    new-instance v1, Landroidx/compose/ui/tooling/data/CallGroup;

    .line 280
    nop

    .line 281
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_b
    move-object v6, v3

    .line 282
    :goto_8
    nop

    .line 283
    nop

    .line 285
    nop

    .line 286
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_c
    move-object v9, v3

    :goto_9
    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_d

    goto :goto_a

    :cond_d
    move v9, v7

    goto :goto_b

    :cond_e
    :goto_a
    move v9, v5

    :goto_b
    if-nez v9, :cond_10

    .line 287
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v9

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    if-gtz v9, :cond_f

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v9

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_10

    .line 289
    :cond_f
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getIdentity()Ljava/lang/Object;

    move-result-object v3

    goto :goto_c

    .line 291
    :cond_10
    nop

    .line 293
    :goto_c
    move v9, v7

    invoke-static {v12, v11}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object v7

    .line 294
    move-object v10, v8

    .end local v8    # "location":Landroidx/compose/ui/tooling/data/SourceLocation;
    .local v10, "location":Landroidx/compose/ui/tooling/data/SourceLocation;
    move-object v8, v12

    check-cast v8, Ljava/util/Collection;

    .line 295
    move/from16 v16, v9

    move-object v9, v13

    check-cast v9, Ljava/util/Collection;

    .line 296
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isInline()Z

    move-result v0

    if-ne v0, v5, :cond_11

    goto :goto_d

    :cond_11
    move/from16 v5, v16

    .line 279
    :goto_d
    move-object/from16 v17, v6

    move-object v6, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v10

    move v10, v5

    move-object/from16 v5, v17

    .end local v10    # "location":Landroidx/compose/ui/tooling/data/SourceLocation;
    .local v5, "location":Landroidx/compose/ui/tooling/data/SourceLocation;
    invoke-direct/range {v1 .. v10}, Landroidx/compose/ui/tooling/data/CallGroup;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/tooling/data/SourceLocation;Ljava/lang/Object;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Z)V

    check-cast v1, Landroidx/compose/ui/tooling/data/Group;

    .line 277
    :goto_e
    return-object v1

    .line 744
    .end local v14    # "node":Ljava/lang/Object;
    .end local v15    # "modifierInfo":Ljava/util/List;
    .restart local v3    # "node":Ljava/lang/Object;
    .local v4, "$i$f$reduce":I
    .local v5, "iterator$iv":Ljava/util/Iterator;
    .restart local v6    # "modifierInfo":Ljava/util/List;
    .restart local v7    # "$this$reduce$iv":Ljava/lang/Iterable;
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getPosition(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$position"    # Landroidx/compose/ui/tooling/data/Group;

    .line 726
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/data/Group;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->keyPosition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPosition$annotations(Landroidx/compose/ui/tooling/data/Group;)V
    .locals 0

    return-void
.end method

.method private static final keyPosition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .line 544
    nop

    .line 545
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 546
    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/tooling/data/JoinedKey;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/tooling/data/JoinedKey;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/JoinedKey;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->keyPosition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/tooling/data/JoinedKey;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/JoinedKey;->getRight()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->keyPosition(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_1
    const/4 v0, 0x0

    .line 548
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static final mapTree(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$mapTree"    # Landroidx/compose/runtime/tooling/CompositionData;
    .param p1, "factory"    # Lkotlin/jvm/functions/Function3;
    .param p2, "cache"    # Landroidx/compose/ui/tooling/data/ContextCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "-",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TT;>;",
            "Landroidx/compose/ui/tooling/data/ContextCache;",
            ")TT;"
        }
    .end annotation

    .line 464
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 468
    .local v0, "group":Landroidx/compose/runtime/tooling/CompositionGroup;
    :cond_0
    new-instance v1, Landroidx/compose/ui/tooling/data/CompositionCallStack;

    .line 467
    new-instance v2, Landroidx/compose/ui/tooling/data/SlotTreeKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 470
    invoke-virtual {p2}, Landroidx/compose/ui/tooling/data/ContextCache;->getContexts$ui_tooling_data()Ljava/util/Map;

    move-result-object v3

    .line 468
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/tooling/data/CompositionCallStack;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 467
    nop

    .line 473
    .local v1, "callStack":Landroidx/compose/ui/tooling/data/CompositionCallStack;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 474
    .local v2, "out":Ljava/util/List;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;

    .line 475
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static synthetic mapTree$default(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 460
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 462
    new-instance p2, Landroidx/compose/ui/tooling/data/ContextCache;

    invoke-direct {p2}, Landroidx/compose/ui/tooling/data/ContextCache;-><init>()V

    .line 460
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->mapTree(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/tooling/data/ContextCache;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final mapTree$lambda$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/tooling/CompositionGroup;Landroidx/compose/ui/tooling/data/SourceContext;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .param p0, "$factory"    # Lkotlin/jvm/functions/Function3;
    .param p1, "group"    # Landroidx/compose/runtime/tooling/CompositionGroup;
    .param p2, "sourceContext"    # Landroidx/compose/ui/tooling/data/SourceContext;
    .param p3, "children"    # Ljava/util/List;

    .line 469
    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    return-object p4
.end method

.method public static final mapTreeWithStitching(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/tooling/data/ContextCache;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$mapTreeWithStitching"    # Landroidx/compose/runtime/tooling/CompositionData;
    .param p1, "createNode"    # Lkotlin/jvm/functions/Function4;
    .param p2, "cache"    # Landroidx/compose/ui/tooling/data/ContextCache;
    .param p3, "childrenToAdd"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "-",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "-",
            "Ljava/util/List<",
            "+TT;>;-",
            "Ljava/util/List<",
            "+TR;>;+TT;>;",
            "Landroidx/compose/ui/tooling/data/ContextCache;",
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "Ljava/util/List<",
            "TR;>;>;)TT;"
        }
    .end annotation

    .line 504
    invoke-interface {p0}, Landroidx/compose/runtime/tooling/CompositionData;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 505
    .local v0, "group":Landroidx/compose/runtime/tooling/CompositionGroup;
    :cond_0
    new-instance v1, Landroidx/compose/ui/tooling/data/CompositionCallStack;

    invoke-virtual {p2}, Landroidx/compose/ui/tooling/data/ContextCache;->getContexts$ui_tooling_data()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroidx/compose/ui/tooling/data/CompositionCallStack;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/Map;Ljava/util/Map;)V

    .line 506
    .local v1, "callStack":Landroidx/compose/ui/tooling/data/CompositionCallStack;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 507
    .local v2, "out":Ljava/util/List;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;

    .line 508
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static synthetic mapTreeWithStitching$default(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/tooling/data/ContextCache;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 499
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 501
    new-instance p2, Landroidx/compose/ui/tooling/data/ContextCache;

    invoke-direct {p2}, Landroidx/compose/ui/tooling/data/ContextCache;-><init>()V

    .line 499
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 502
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    .line 499
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->mapTreeWithStitching(Landroidx/compose/runtime/tooling/CompositionData;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/tooling/data/ContextCache;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final sourceInformationContextOf(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .locals 13
    .param p0, "information"    # Ljava/lang/String;
    .param p1, "parent"    # Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 226
    invoke-static {p0}, Landroidx/compose/runtime/tooling/SourceInformationKt;->parseSourceInformation(Ljava/lang/String;)Landroidx/compose/runtime/tooling/SourceInformation;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 228
    .local v0, "parsedInfo":Landroidx/compose/runtime/tooling/SourceInformation;
    :cond_0
    nop

    .line 229
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v4, v2

    .line 232
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getPackageHash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/16 v1, 0x24

    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 235
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getPackageHash()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 232
    :cond_4
    :goto_2
    const/4 v2, -0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v5, v1

    goto :goto_3

    .line 236
    :cond_5
    move v5, v2

    .line 237
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getLocations()Ljava/util/List;

    move-result-object v6

    .line 238
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getLocations()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 731
    .local v7, "$i$f$indexOfFirst":I
    const/4 v8, 0x0

    .line 732
    .local v8, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 733
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/tooling/LocationSourceInformation;

    .local v11, "it":Landroidx/compose/runtime/tooling/LocationSourceInformation;
    const/4 v12, 0x0

    .line 238
    .local v12, "$i$a$-indexOfFirst-SlotTreeKt$sourceInformationContextOf$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/tooling/LocationSourceInformation;->isRepeatable()Z

    move-result v11

    .line 733
    .end local v11    # "it":Landroidx/compose/runtime/tooling/LocationSourceInformation;
    .end local v12    # "$i$a$-indexOfFirst-SlotTreeKt$sourceInformationContextOf$1":I
    if-eqz v11, :cond_6

    .line 734
    move v7, v8

    goto :goto_5

    .line 735
    :cond_6
    nop

    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 737
    :cond_7
    move v7, v2

    .line 239
    .end local v1    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v7    # "$i$f$indexOfFirst":I
    .end local v8    # "index$iv":I
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->getParameters()Ljava/util/List;

    move-result-object v8

    .line 240
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->isCall()Z

    move-result v9

    .line 241
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInformation;->isInline()Z

    move-result v10

    .line 228
    new-instance v2, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/tooling/data/SourceInformationContext;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/util/List;ZZ)V

    return-object v2
.end method

.method static synthetic sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .locals 0

    .line 222
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 224
    const/4 p1, 0x0

    .line 222
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object p0

    return-object p0
.end method

.method public static final union(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntRect;
    .locals 5
    .param p0, "$this$union"    # Landroidx/compose/ui/unit/IntRect;
    .param p1, "other"    # Landroidx/compose/ui/unit/IntRect;

    .line 532
    sget-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Landroidx/compose/ui/tooling/data/SlotTreeKt;->emptyBox:Landroidx/compose/ui/unit/IntRect;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 535
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 536
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 537
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 538
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 534
    new-instance v4, Landroidx/compose/ui/unit/IntRect;

    .line 535
    nop

    .line 536
    nop

    .line 538
    nop

    .line 537
    nop

    .line 534
    invoke-direct {v4, v0, v1, v3, v2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v4
.end method
