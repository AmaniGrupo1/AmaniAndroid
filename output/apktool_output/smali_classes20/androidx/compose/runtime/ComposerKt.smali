.class public final Landroidx/compose/runtime/ComposerKt;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n+ 4 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 5 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 8 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n+ 9 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 10 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,1707:1\n1489#1,4:1709\n1475#1,4:1713\n1#2:1708\n1#2:1803\n1#2:1811\n944#3,3:1717\n947#3,10:1760\n958#3,2:1797\n139#4:1720\n140#4,5:1736\n145#4,6:1780\n152#4:1796\n842#5:1721\n844#5:1735\n845#5,3:1786\n848#5:1795\n329#6,6:1722\n339#6,3:1729\n342#6,2:1733\n345#6,6:1789\n1399#7:1728\n1270#7:1732\n809#8,2:1741\n812#8:1759\n813#8,3:1770\n816#8:1779\n200#9,16:1743\n217#9,6:1773\n175#10,4:1799\n180#10,3:1804\n175#10,4:1807\n180#10,3:1812\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1494#1:1709,4\n1496#1:1713,4\n1594#1:1803\n1654#1:1811\n1583#1:1717,3\n1583#1:1760,10\n1583#1:1797,2\n1583#1:1720\n1583#1:1736,5\n1583#1:1780,6\n1583#1:1796\n1583#1:1721\n1583#1:1735\n1583#1:1786,3\n1583#1:1795\n1583#1:1722,6\n1583#1:1729,3\n1583#1:1733,2\n1583#1:1789,6\n1583#1:1728\n1583#1:1732\n1583#1:1741,2\n1583#1:1759\n1583#1:1770,3\n1583#1:1779\n1583#1:1743,16\n1583#1:1773,6\n1594#1:1799,4\n1594#1:1804,3\n1654#1:1807,4\n1654#1:1812,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008%\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a3\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u0002H\u00060\u000b\u00a2\u0006\u0002\u0008\u000cH\u0087\u0008\u00a2\u0006\u0002\u0010\r\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0011H\u0007\u001a \u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0011H\u0007\u001a\u0008\u0010\u001f\u001a\u00020\tH\u0007\u001a\u0018\u0010 \u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0011H\u0007\u001a(\u0010 \u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0011H\u0007\u001a\u0008\u0010$\u001a\u00020\u000fH\u0007\u001a\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0007\u001a\u0014\u0010&\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\'\u001a\u00020(H\u0000\u001a7\u0010)\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010**\u00020\u00022\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0018\u0010-\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H*0.H\u0080\u0008\u001a*\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\t2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000bH\u0080\u0008\u0082\u0002\u0008\n\u0006\u0008\u0000\u001a\u0002\u0010\u0001\u001a\u001f\u0010[\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\t2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000bH\u0080\u0008\u001a\u0011\u0010[\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\tH\u0080\u0008\u001a\u0011\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\tH\u0080\u0008\u001a\u0010\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020\u0011H\u0000\u001a\u0010\u0010_\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020\u0011H\u0000\u001a.\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020c2\u0006\u0010Q\u001a\u00020d2\u0006\u0010e\u001a\u00020\u00022\u000c\u0010f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010gH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017\"\u001c\u0010\u0018\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\"\u0018\u0010/\u001a\u00020\t*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100\"\u0018\u0010/\u001a\u00020\t*\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00102\"\u000e\u00103\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u00104\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00085\u0010\u0017\"\u001c\u00106\u001a\u0002078\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00088\u0010\u0017\u001a\u0004\u00089\u0010:\"\u0016\u0010;\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008<\u0010\u0017\"\u001c\u0010=\u001a\u0002078\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008>\u0010\u0017\u001a\u0004\u0008?\u0010:\"\u0016\u0010@\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008A\u0010\u0017\"\u001c\u0010B\u001a\u0002078\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008C\u0010\u0017\u001a\u0004\u0008D\u0010:\"\u0016\u0010E\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008F\u0010\u0017\"\u001c\u0010G\u001a\u0002078\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008H\u0010\u0017\u001a\u0004\u0008I\u0010:\"\u0016\u0010J\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008K\u0010\u0017\"\u001c\u0010L\u001a\u0002078\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008M\u0010\u0017\u001a\u0004\u0008N\u0010:\"\u0016\u0010O\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008P\u0010\u0017\"\u001c\u0010Q\u001a\u0002078\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008R\u0010\u0017\u001a\u0004\u0008S\u0010:\"\u0016\u0010T\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008U\u0010\u0017\"\u000e\u0010V\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010Z\u001a\u00020\tX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006h"
    }
    d2 = {
        "nextGroup",
        "",
        "Landroidx/compose/runtime/SlotWriter;",
        "getNextGroup",
        "(Landroidx/compose/runtime/SlotWriter;)I",
        "cache",
        "T",
        "Landroidx/compose/runtime/Composer;",
        "invalid",
        "",
        "block",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/DisallowComposableCalls;",
        "(Landroidx/compose/runtime/Composer;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "sourceInformation",
        "",
        "composer",
        "",
        "sourceInformationMarkerStart",
        "key",
        "compositionTracer",
        "Landroidx/compose/runtime/CompositionTracer;",
        "getCompositionTracer$annotations",
        "()V",
        "composeStackTraceMode",
        "Landroidx/compose/runtime/tooling/ComposeStackTraceMode;",
        "getComposeStackTraceMode",
        "()I",
        "setComposeStackTraceMode-76WK1J0",
        "(I)V",
        "I",
        "isTraceInProgress",
        "traceEventStart",
        "info",
        "dirty1",
        "dirty2",
        "traceEventEnd",
        "sourceInformationMarkerEnd",
        "removeCurrentGroup",
        "rememberManager",
        "Landroidx/compose/runtime/RememberManager;",
        "withAfterAnchorInfo",
        "R",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "cb",
        "Lkotlin/Function2;",
        "isAfterFirstChild",
        "(Landroidx/compose/runtime/SlotWriter;)Z",
        "Landroidx/compose/runtime/SlotReader;",
        "(Landroidx/compose/runtime/SlotReader;)Z",
        "defaultsKey",
        "invocationKey",
        "getInvocationKey$annotations",
        "invocation",
        "",
        "getInvocation$annotations",
        "getInvocation",
        "()Ljava/lang/Object;",
        "providerKey",
        "getProviderKey$annotations",
        "provider",
        "getProvider$annotations",
        "getProvider",
        "compositionLocalMapKey",
        "getCompositionLocalMapKey$annotations",
        "compositionLocalMap",
        "getCompositionLocalMap$annotations",
        "getCompositionLocalMap",
        "providerValuesKey",
        "getProviderValuesKey$annotations",
        "providerValues",
        "getProviderValues$annotations",
        "getProviderValues",
        "providerMapsKey",
        "getProviderMapsKey$annotations",
        "providerMaps",
        "getProviderMaps$annotations",
        "getProviderMaps",
        "referenceKey",
        "getReferenceKey$annotations",
        "reference",
        "getReference$annotations",
        "getReference",
        "reuseKey",
        "getReuseKey$annotations",
        "invalidGroupLocation",
        "runtimeCheck",
        "value",
        "lazyMessage",
        "EnableDebugRuntimeChecks",
        "debugRuntimeCheck",
        "composeRuntimeError",
        "",
        "message",
        "composeImmediateRuntimeError",
        "extractMovableContentAtCurrent",
        "Landroidx/compose/runtime/MovableContentState;",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "slots",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "runtime"
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
.field public static final EnableDebugRuntimeChecks:Z = false

.field private static composeStackTraceMode:I = 0x0

.field private static final compositionLocalMap:Ljava/lang/Object;

.field public static final compositionLocalMapKey:I = 0xca

.field private static compositionTracer:Landroidx/compose/runtime/CompositionTracer; = null

.field public static final defaultsKey:I = -0x7f

.field private static final invalidGroupLocation:I = -0x2

.field private static final invocation:Ljava/lang/Object;

.field public static final invocationKey:I = 0xc8

.field private static final provider:Ljava/lang/Object;

.field public static final providerKey:I = 0xc9

.field private static final providerMaps:Ljava/lang/Object;

.field public static final providerMapsKey:I = 0xcc

.field private static final providerValues:Ljava/lang/Object;

.field public static final providerValuesKey:I = 0xcb

.field private static final reference:Ljava/lang/Object;

.field public static final referenceKey:I = 0xce

.field public static final reuseKey:I = 0xcf


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1182
    sget-object v0, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->Companion:Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;->getNone-MD5MrJc()I

    move-result v0

    sput v0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceMode:I

    .line 1443
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "provider"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    .line 1447
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    .line 1451
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    .line 1455
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "providerValues"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    .line 1459
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "providers"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    .line 1463
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string/jumbo v1, "reference"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNextGroup(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/runtime/SlotWriter;

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->getNextGroup(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setCompositionTracer$p(Landroidx/compose/runtime/CompositionTracer;)V
    .locals 0
    .param p0, "<set-?>"    # Landroidx/compose/runtime/CompositionTracer;

    .line 1
    sput-object p0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    return-void
.end method

.method public static final cache(Landroidx/compose/runtime/Composer;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$cache"    # Landroidx/compose/runtime/Composer;
    .param p1, "invalid"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/Composer;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1128
    .local v0, "$i$f$cache":I
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1129
    .local v2, "$i$a$-let-ComposerKt$cache$1":I
    if-nez p1, :cond_1

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1133
    :cond_0
    goto :goto_1

    .line 1130
    :cond_1
    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    .line 1131
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1132
    move-object v1, v3

    .line 1128
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-ComposerKt$cache$1":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    return-object v1
.end method

.method public static final composeImmediateRuntimeError(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1509
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1511
    nop

    .line 1510
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1511
    nop

    .line 1510
    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    invoke-direct {v0, v1}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1499
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1501
    nop

    .line 1500
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1501
    nop

    .line 1500
    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    invoke-direct {v0, v1}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final debugRuntimeCheck(Z)V
    .locals 3
    .param p0, "value"    # Z

    const/4 v0, 0x0

    .line 1494
    .local v0, "$i$f$debugRuntimeCheck":I
    move v1, p0

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 1709
    .local v2, "$i$f$debugRuntimeCheck":I
    nop

    .line 1712
    nop

    .line 1494
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$debugRuntimeCheck":I
    return-void
.end method

.method public static final debugRuntimeCheck(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "value"    # Z
    .param p1, "lazyMessage"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1489
    .local v0, "$i$f$debugRuntimeCheck":I
    nop

    .line 1492
    return-void
.end method

.method public static final extractMovableContentAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;)Landroidx/compose/runtime/MovableContentState;
    .locals 59
    .param p0, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;
    .param p2, "slots"    # Landroidx/compose/runtime/SlotWriter;
    .param p3, "applier"    # Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Applier<",
            "*>;)",
            "Landroidx/compose/runtime/MovableContentState;"
        }
    .end annotation

    .line 1529
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    move-object v5, v0

    .line 1530
    .local v5, "slotTable":Landroidx/compose/runtime/SlotTable;
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCollectingSourceInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 1533
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCollectingCalledInformation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 1540
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v6

    .line 1541
    .local v6, "currentGroup":I
    if-eqz v4, :cond_7

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v7

    if-lez v7, :cond_7

    .line 1543
    nop

    .line 1546
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v7

    .line 1547
    .local v7, "parentNodeGroup":I
    :goto_0
    if-lez v7, :cond_2

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1548
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v7

    goto :goto_0

    .line 1554
    :cond_2
    if-ltz v7, :cond_7

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1555
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v8

    .line 1556
    .local v8, "node":Ljava/lang/Object;
    add-int/lit8 v9, v7, 0x1

    .line 1557
    .local v9, "currentChild":I
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v10

    add-int/2addr v10, v7

    .line 1560
    .local v10, "end":I
    const/4 v11, 0x0

    .line 1561
    .local v11, "nodeIndex":I
    :goto_1
    if-ge v9, v10, :cond_5

    .line 1562
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v12

    .line 1563
    .local v12, "size":I
    add-int v13, v9, v12

    if-le v13, v6, :cond_3

    .line 1564
    goto :goto_3

    .line 1566
    :cond_3
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v13

    :goto_2
    add-int/2addr v11, v13

    .line 1567
    add-int/2addr v9, v12

    .end local v12    # "size":I
    goto :goto_1

    .line 1571
    :cond_5
    :goto_3
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v12

    .line 1572
    .local v12, "count":I
    :goto_4
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    .line 1573
    invoke-interface {v4, v11, v12}, Landroidx/compose/runtime/Applier;->remove(II)V

    .line 1574
    invoke-interface {v4}, Landroidx/compose/runtime/Applier;->up()V

    .line 1580
    .end local v7    # "parentNodeGroup":I
    .end local v8    # "node":Ljava/lang/Object;
    .end local v9    # "currentChild":I
    .end local v10    # "end":I
    .end local v11    # "nodeIndex":I
    .end local v12    # "count":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v7

    .line 1581
    .local v7, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v7}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1583
    const-string/jumbo v8, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroidx/compose/runtime/CompositionImpl;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v10, 0x0

    .line 1717
    .local v10, "$i$f$extractInvalidationsOfGroup$runtime":I
    invoke-static {v8}, Landroidx/compose/runtime/CompositionImpl;->access$getInvalidations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    move-result v11

    if-lez v11, :cond_1c

    .line 1718
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 1719
    .local v11, "result$iv":Ljava/util/List;
    invoke-static {v8}, Landroidx/compose/runtime/CompositionImpl;->access$getInvalidations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v12

    .local v12, "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v13, 0x0

    .line 1720
    .local v13, "$i$f$removeIf-impl":I
    move-object v14, v12

    .local v14, "this_$iv$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v15, 0x0

    .line 1721
    .local v15, "$i$f$removeIf":I
    move-object v0, v14

    check-cast v0, Landroidx/collection/ScatterMap;

    .local v0, "this_$iv$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/16 v17, 0x0

    .line 1722
    .local v17, "$i$f$forEachIndexed":I
    iget-object v9, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1723
    .local v9, "m$iv$iv$iv$iv":[J
    move-object/from16 v18, v0

    .end local v0    # "this_$iv$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v18, "this_$iv$iv$iv$iv":Landroidx/collection/ScatterMap;
    array-length v0, v9

    add-int/lit8 v0, v0, -0x2

    .line 1725
    .local v0, "lastIndex$iv$iv$iv$iv":I
    const/4 v4, 0x0

    .local v4, "i$iv$iv$iv$iv":I
    if-gt v4, v0, :cond_19

    .line 1726
    :goto_5
    aget-wide v19, v9, v4

    .line 1727
    .local v19, "slot$iv$iv$iv$iv":J
    move-wide/from16 v21, v19

    .local v21, "$this$maskEmptyOrDeleted$iv$iv$iv$iv$iv":J
    const/16 v23, 0x0

    .line 1728
    .local v23, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v8, v21

    move-object/from16 v21, v12

    move/from16 v22, v13

    .end local v9    # "m$iv$iv$iv$iv":[J
    .end local v12    # "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v13    # "$i$f$removeIf-impl":I
    .local v8, "$this$maskEmptyOrDeleted$iv$iv$iv$iv$iv":J
    .local v21, "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .local v22, "$i$f$removeIf-impl":I
    .local v24, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .local v25, "m$iv$iv$iv$iv":[J
    not-long v12, v8

    const/16 v26, 0x7

    shl-long v12, v12, v26

    and-long/2addr v12, v8

    const-wide v27, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v8, v12, v27

    .line 1727
    .end local v8    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv$iv":J
    .end local v23    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v8, v8, v27

    if-eqz v8, :cond_18

    .line 1729
    sub-int v8, v4, v0

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    .line 1730
    .local v8, "bitCount$iv$iv$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv$iv$iv":I
    :goto_6
    if-ge v12, v8, :cond_17

    .line 1731
    const-wide/16 v29, 0xff

    and-long v31, v19, v29

    .local v31, "value$iv$iv$iv$iv$iv":J
    const/4 v13, 0x0

    .line 1732
    .local v13, "$i$f$isFull":I
    const-wide/16 v33, 0x80

    cmp-long v23, v31, v33

    if-gez v23, :cond_8

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    .line 1731
    .end local v13    # "$i$f$isFull":I
    .end local v31    # "value$iv$iv$iv$iv$iv":J
    :goto_7
    if-eqz v13, :cond_16

    .line 1733
    shl-int/lit8 v13, v4, 0x3

    add-int/2addr v13, v12

    .line 1734
    .local v13, "index$iv$iv$iv$iv":I
    move/from16 v23, v13

    .local v23, "index$iv$iv$iv":I
    const/16 v31, 0x0

    .line 1735
    .local v31, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv$iv":I
    move/from16 v32, v9

    iget-object v9, v14, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v9, v9, v23

    move/from16 v35, v6

    .end local v6    # "currentGroup":I
    .local v9, "key$iv$iv":Ljava/lang/Object;
    .local v35, "currentGroup":I
    iget-object v6, v14, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v6, v6, v23

    .local v6, "scopes$iv$iv":Ljava/lang/Object;
    const/16 v36, 0x0

    .line 1736
    .local v36, "$i$a$-removeIf-ScopeMap$removeIf$1$iv$iv":I
    move/from16 v37, v10

    .end local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .local v37, "$i$f$extractInvalidationsOfGroup$runtime":I
    const-string/jumbo v10, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1737
    nop

    .line 1738
    instance-of v10, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v10, :cond_13

    .line 1739
    const-string/jumbo v10, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v6

    check-cast v10, Landroidx/collection/MutableScatterSet;

    .line 1740
    move-object v10, v6

    check-cast v10, Landroidx/collection/MutableScatterSet;

    .local v10, "this_$iv$iv$iv":Landroidx/collection/MutableScatterSet;
    const/16 v38, 0x0

    .line 1741
    .local v38, "$i$f$removeIf":I
    move-object/from16 v39, v9

    .end local v9    # "key$iv$iv":Ljava/lang/Object;
    .local v39, "key$iv$iv":Ljava/lang/Object;
    iget-object v9, v10, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1742
    .local v9, "elements$iv$iv$iv":[Ljava/lang/Object;
    move-object/from16 v40, v9

    .end local v9    # "elements$iv$iv$iv":[Ljava/lang/Object;
    .local v40, "elements$iv$iv$iv":[Ljava/lang/Object;
    move-object v9, v10

    check-cast v9, Landroidx/collection/ScatterSet;

    .local v9, "this_$iv$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v41, 0x0

    .line 1743
    .local v41, "$i$f$forEachIndex":I
    nop

    .line 1744
    move/from16 v42, v12

    .end local v12    # "j$iv$iv$iv$iv":I
    .local v42, "j$iv$iv$iv$iv":I
    iget-object v12, v9, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1745
    .local v12, "m$iv$iv$iv$iv":[J
    move-object/from16 v43, v9

    .end local v9    # "this_$iv$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v43, "this_$iv$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v9, v12

    add-int/lit8 v9, v9, -0x2

    .line 1747
    .local v9, "lastIndex$iv$iv$iv$iv":I
    move-object/from16 v44, v12

    .end local v12    # "m$iv$iv$iv$iv":[J
    .local v44, "m$iv$iv$iv$iv":[J
    const/4 v12, 0x0

    .local v12, "i$iv$iv$iv$iv":I
    if-gt v12, v9, :cond_10

    .line 1748
    :goto_8
    aget-wide v45, v44, v12

    .line 1749
    .local v45, "slot$iv$iv$iv$iv":J
    move-wide/from16 v47, v45

    .local v47, "$this$maskEmptyOrDeleted$iv$iv$iv$iv$iv":J
    const/16 v49, 0x0

    .line 1728
    .local v49, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v1, v47

    move/from16 v48, v4

    move-object/from16 v47, v5

    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .local v1, "$this$maskEmptyOrDeleted$iv$iv$iv$iv$iv":J
    .local v47, "slotTable":Landroidx/compose/runtime/SlotTable;
    .local v48, "i$iv$iv$iv$iv":I
    not-long v4, v1

    shl-long v4, v4, v26

    and-long/2addr v4, v1

    and-long v1, v4, v27

    .line 1749
    .end local v1    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv$iv":J
    .end local v49    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v1, v1, v27

    if-eqz v1, :cond_f

    .line 1754
    sub-int v1, v12, v9

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v1, v1, 0x8

    .line 1755
    .local v1, "bitCount$iv$iv$iv$iv":I
    const/4 v2, 0x0

    .local v2, "j$iv$iv$iv$iv":I
    :goto_9
    if-ge v2, v1, :cond_e

    .line 1756
    and-long v4, v45, v29

    .local v4, "value$iv$iv$iv$iv$iv":J
    const/16 v49, 0x0

    .line 1732
    .local v49, "$i$f$isFull":I
    cmp-long v50, v4, v33

    if-gez v50, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    .line 1756
    .end local v4    # "value$iv$iv$iv$iv$iv":J
    .end local v49    # "$i$f$isFull":I
    :goto_a
    if-eqz v4, :cond_d

    .line 1757
    shl-int/lit8 v4, v12, 0x3

    add-int/2addr v4, v2

    .line 1758
    .local v4, "index$iv$iv$iv$iv":I
    move v5, v4

    .local v5, "index$iv$iv$iv":I
    const/16 v49, 0x0

    .line 1759
    .local v49, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv$iv":I
    aget-object v50, v40, v5

    .local v50, "it$iv$iv":Ljava/lang/Object;
    const/16 v51, 0x0

    .line 1740
    .local v51, "$i$a$-removeIf-ScopeMap$removeIf$1$1$iv$iv":I
    move/from16 v52, v2

    .end local v2    # "j$iv$iv$iv$iv":I
    .local v52, "j$iv$iv$iv$iv":I
    move-object/from16 v2, v39

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v2, "scope$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    move-object/from16 v53, v50

    .local v53, "value$iv":Ljava/lang/Object;
    const/16 v54, 0x0

    .line 1760
    .local v54, "$i$a$-removeIf-impl-CompositionImpl$extractInvalidationsOfGroup$1$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v55

    .line 1761
    .local v55, "scopeAnchor$iv":Landroidx/compose/runtime/Anchor;
    if-eqz v55, :cond_b

    move-object/from16 v56, v55

    .local v56, "it":Landroidx/compose/runtime/Anchor;
    const/16 v57, 0x0

    .line 1584
    .local v57, "$i$a$-extractInvalidationsOfGroup$runtime-ComposerKt$extractMovableContentAtCurrent$extracted$1":I
    move/from16 v58, v4

    move-object/from16 v4, v56

    .end local v56    # "it":Landroidx/compose/runtime/Anchor;
    .local v4, "it":Landroidx/compose/runtime/Anchor;
    .local v58, "index$iv$iv$iv$iv":I
    invoke-virtual {v3, v7, v4}, Landroidx/compose/runtime/SlotWriter;->inGroup(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Anchor;)Z

    move-result v4

    .line 1761
    .end local v4    # "it":Landroidx/compose/runtime/Anchor;
    .end local v57    # "$i$a$-extractInvalidationsOfGroup$runtime-ComposerKt$extractMovableContentAtCurrent$extracted$1":I
    if-eqz v4, :cond_a

    .line 1762
    move-object/from16 v4, v53

    move/from16 v53, v13

    .end local v13    # "index$iv$iv$iv$iv":I
    .local v4, "value$iv":Ljava/lang/Object;
    .local v53, "index$iv$iv$iv$iv":I
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    const/4 v13, 0x1

    goto :goto_c

    .line 1761
    .end local v4    # "value$iv":Ljava/lang/Object;
    .restart local v13    # "index$iv$iv$iv$iv":I
    .local v53, "value$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v4, v53

    move/from16 v53, v13

    .end local v13    # "index$iv$iv$iv$iv":I
    .restart local v4    # "value$iv":Ljava/lang/Object;
    .local v53, "index$iv$iv$iv$iv":I
    goto :goto_b

    .end local v58    # "index$iv$iv$iv$iv":I
    .local v4, "index$iv$iv$iv$iv":I
    .restart local v13    # "index$iv$iv$iv$iv":I
    .local v53, "value$iv":Ljava/lang/Object;
    :cond_b
    move/from16 v58, v4

    move-object/from16 v4, v53

    move/from16 v53, v13

    .line 1768
    .end local v13    # "index$iv$iv$iv$iv":I
    .local v4, "value$iv":Ljava/lang/Object;
    .local v53, "index$iv$iv$iv$iv":I
    .restart local v58    # "index$iv$iv$iv$iv":I
    :goto_b
    const/4 v13, 0x0

    .line 1769
    :goto_c
    nop

    .line 1740
    .end local v2    # "scope$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v54    # "$i$a$-removeIf-impl-CompositionImpl$extractInvalidationsOfGroup$1$iv":I
    .end local v55    # "scopeAnchor$iv":Landroidx/compose/runtime/Anchor;
    nop

    .line 1759
    .end local v50    # "it$iv$iv":Ljava/lang/Object;
    .end local v51    # "$i$a$-removeIf-ScopeMap$removeIf$1$1$iv$iv":I
    if-eqz v13, :cond_c

    .line 1770
    invoke-virtual {v10, v5}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 1772
    :cond_c
    nop

    .line 1758
    .end local v5    # "index$iv$iv$iv":I
    .end local v49    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv$iv":I
    goto :goto_d

    .line 1756
    .end local v52    # "j$iv$iv$iv$iv":I
    .end local v53    # "index$iv$iv$iv$iv":I
    .end local v58    # "index$iv$iv$iv$iv":I
    .local v2, "j$iv$iv$iv$iv":I
    .restart local v13    # "index$iv$iv$iv$iv":I
    :cond_d
    move/from16 v52, v2

    move/from16 v53, v13

    .line 1773
    .end local v2    # "j$iv$iv$iv$iv":I
    .end local v13    # "index$iv$iv$iv$iv":I
    .restart local v52    # "j$iv$iv$iv$iv":I
    .restart local v53    # "index$iv$iv$iv$iv":I
    :goto_d
    shr-long v45, v45, v32

    .line 1755
    add-int/lit8 v2, v52, 0x1

    move/from16 v13, v53

    .end local v52    # "j$iv$iv$iv$iv":I
    .restart local v2    # "j$iv$iv$iv$iv":I
    goto :goto_9

    .end local v53    # "index$iv$iv$iv$iv":I
    .restart local v13    # "index$iv$iv$iv$iv":I
    :cond_e
    move/from16 v52, v2

    move/from16 v53, v13

    .line 1775
    .end local v2    # "j$iv$iv$iv$iv":I
    .end local v13    # "index$iv$iv$iv$iv":I
    .restart local v53    # "index$iv$iv$iv$iv":I
    move/from16 v2, v32

    if-ne v1, v2, :cond_12

    goto :goto_e

    .line 1749
    .end local v1    # "bitCount$iv$iv$iv$iv":I
    .end local v53    # "index$iv$iv$iv$iv":I
    .restart local v13    # "index$iv$iv$iv$iv":I
    :cond_f
    move/from16 v53, v13

    .line 1747
    .end local v13    # "index$iv$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv$iv":J
    .restart local v53    # "index$iv$iv$iv$iv":I
    :goto_e
    if-eq v12, v9, :cond_11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v47

    move/from16 v4, v48

    move/from16 v13, v53

    const/16 v32, 0x8

    goto/16 :goto_8

    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v48    # "i$iv$iv$iv$iv":I
    .end local v53    # "index$iv$iv$iv$iv":I
    .local v4, "i$iv$iv$iv$iv":I
    .local v5, "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v13    # "index$iv$iv$iv$iv":I
    :cond_10
    move/from16 v48, v4

    move-object/from16 v47, v5

    move/from16 v53, v13

    .line 1778
    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v12    # "i$iv$iv$iv$iv":I
    .end local v13    # "index$iv$iv$iv$iv":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v48    # "i$iv$iv$iv$iv":I
    .restart local v53    # "index$iv$iv$iv$iv":I
    :cond_11
    nop

    .line 1779
    .end local v9    # "lastIndex$iv$iv$iv$iv":I
    .end local v41    # "$i$f$forEachIndex":I
    .end local v43    # "this_$iv$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v44    # "m$iv$iv$iv$iv":[J
    :cond_12
    nop

    .line 1780
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/MutableScatterSet;
    .end local v38    # "$i$f$removeIf":I
    .end local v40    # "elements$iv$iv$iv":[Ljava/lang/Object;
    move-object v1, v6

    check-cast v1, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    goto :goto_10

    .line 1783
    .end local v39    # "key$iv$iv":Ljava/lang/Object;
    .end local v42    # "j$iv$iv$iv$iv":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v48    # "i$iv$iv$iv$iv":I
    .end local v53    # "index$iv$iv$iv$iv":I
    .restart local v4    # "i$iv$iv$iv$iv":I
    .restart local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .local v9, "key$iv$iv":Ljava/lang/Object;
    .local v12, "j$iv$iv$iv$iv":I
    .restart local v13    # "index$iv$iv$iv$iv":I
    :cond_13
    move/from16 v48, v4

    move-object/from16 v47, v5

    move-object/from16 v39, v9

    move/from16 v42, v12

    move/from16 v53, v13

    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v9    # "key$iv$iv":Ljava/lang/Object;
    .end local v12    # "j$iv$iv$iv$iv":I
    .end local v13    # "index$iv$iv$iv$iv":I
    .restart local v39    # "key$iv$iv":Ljava/lang/Object;
    .restart local v42    # "j$iv$iv$iv$iv":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v48    # "i$iv$iv$iv$iv":I
    .restart local v53    # "index$iv$iv$iv$iv":I
    const-string/jumbo v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v39

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v1, "scope$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    move-object v2, v6

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1760
    .local v4, "$i$a$-removeIf-impl-CompositionImpl$extractInvalidationsOfGroup$1$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v5

    .line 1761
    .local v5, "scopeAnchor$iv":Landroidx/compose/runtime/Anchor;
    if-eqz v5, :cond_14

    move-object v9, v5

    .local v9, "it":Landroidx/compose/runtime/Anchor;
    const/4 v10, 0x0

    .line 1584
    .local v10, "$i$a$-extractInvalidationsOfGroup$runtime-ComposerKt$extractMovableContentAtCurrent$extracted$1":I
    invoke-virtual {v3, v7, v9}, Landroidx/compose/runtime/SlotWriter;->inGroup(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Anchor;)Z

    move-result v9

    .line 1761
    .end local v9    # "it":Landroidx/compose/runtime/Anchor;
    .end local v10    # "$i$a$-extractInvalidationsOfGroup$runtime-ComposerKt$extractMovableContentAtCurrent$extracted$1":I
    if-eqz v9, :cond_14

    .line 1762
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    const/4 v9, 0x1

    goto :goto_f

    .line 1768
    :cond_14
    const/4 v9, 0x0

    .line 1769
    :goto_f
    move v1, v9

    .line 1783
    .end local v1    # "scope$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-removeIf-impl-CompositionImpl$extractInvalidationsOfGroup$1$iv":I
    .end local v5    # "scopeAnchor$iv":Landroidx/compose/runtime/Anchor;
    :goto_10
    nop

    .line 1785
    nop

    .line 1735
    .end local v6    # "scopes$iv$iv":Ljava/lang/Object;
    .end local v36    # "$i$a$-removeIf-ScopeMap$removeIf$1$iv$iv":I
    .end local v39    # "key$iv$iv":Ljava/lang/Object;
    if-eqz v1, :cond_15

    .line 1786
    move/from16 v13, v23

    .end local v23    # "index$iv$iv$iv":I
    .local v13, "index$iv$iv$iv":I
    invoke-virtual {v14, v13}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    goto :goto_11

    .line 1735
    .end local v13    # "index$iv$iv$iv":I
    .restart local v23    # "index$iv$iv$iv":I
    :cond_15
    move/from16 v13, v23

    .line 1788
    .end local v23    # "index$iv$iv$iv":I
    .restart local v13    # "index$iv$iv$iv":I
    :goto_11
    nop

    .line 1734
    .end local v13    # "index$iv$iv$iv":I
    .end local v31    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv$iv":I
    goto :goto_12

    .line 1731
    .end local v35    # "currentGroup":I
    .end local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v42    # "j$iv$iv$iv$iv":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v48    # "i$iv$iv$iv$iv":I
    .end local v53    # "index$iv$iv$iv$iv":I
    .local v4, "i$iv$iv$iv$iv":I
    .local v5, "slotTable":Landroidx/compose/runtime/SlotTable;
    .local v6, "currentGroup":I
    .local v10, "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v12    # "j$iv$iv$iv$iv":I
    :cond_16
    move/from16 v48, v4

    move-object/from16 v47, v5

    move/from16 v35, v6

    move/from16 v37, v10

    move/from16 v42, v12

    .line 1789
    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "currentGroup":I
    .end local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v12    # "j$iv$iv$iv$iv":I
    .restart local v35    # "currentGroup":I
    .restart local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v42    # "j$iv$iv$iv$iv":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v48    # "i$iv$iv$iv$iv":I
    :goto_12
    const/16 v2, 0x8

    shr-long v19, v19, v2

    .line 1730
    add-int/lit8 v12, v42, 0x1

    move-object/from16 v1, p0

    move v9, v2

    move/from16 v6, v35

    move/from16 v10, v37

    move-object/from16 v5, v47

    move/from16 v4, v48

    .end local v42    # "j$iv$iv$iv$iv":I
    .restart local v12    # "j$iv$iv$iv$iv":I
    goto/16 :goto_6

    .end local v35    # "currentGroup":I
    .end local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v48    # "i$iv$iv$iv$iv":I
    .restart local v4    # "i$iv$iv$iv$iv":I
    .restart local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v6    # "currentGroup":I
    .restart local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    :cond_17
    move/from16 v48, v4

    move-object/from16 v47, v5

    move/from16 v35, v6

    move v2, v9

    move/from16 v37, v10

    move/from16 v42, v12

    .line 1791
    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "currentGroup":I
    .end local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v12    # "j$iv$iv$iv$iv":I
    .restart local v35    # "currentGroup":I
    .restart local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v48    # "i$iv$iv$iv$iv":I
    if-ne v8, v2, :cond_1b

    goto :goto_13

    .line 1727
    .end local v8    # "bitCount$iv$iv$iv$iv":I
    .end local v35    # "currentGroup":I
    .end local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v48    # "i$iv$iv$iv$iv":I
    .restart local v4    # "i$iv$iv$iv$iv":I
    .restart local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v6    # "currentGroup":I
    .restart local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    :cond_18
    move/from16 v48, v4

    move-object/from16 v47, v5

    move/from16 v35, v6

    move/from16 v37, v10

    .line 1725
    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "currentGroup":I
    .end local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v19    # "slot$iv$iv$iv$iv":J
    .restart local v35    # "currentGroup":I
    .restart local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v48    # "i$iv$iv$iv$iv":I
    :goto_13
    move/from16 v4, v48

    .end local v48    # "i$iv$iv$iv$iv":I
    .restart local v4    # "i$iv$iv$iv$iv":I
    if-eq v4, v0, :cond_1a

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v6, v35

    move/from16 v10, v37

    move-object/from16 v5, v47

    goto/16 :goto_5

    .end local v21    # "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v22    # "$i$f$removeIf-impl":I
    .end local v24    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v25    # "m$iv$iv$iv$iv":[J
    .end local v35    # "currentGroup":I
    .end local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v6    # "currentGroup":I
    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .local v9, "m$iv$iv$iv$iv":[J
    .restart local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .local v12, "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .local v13, "$i$f$removeIf-impl":I
    :cond_19
    move-object/from16 v47, v5

    move/from16 v35, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v37, v10

    move-object/from16 v21, v12

    move/from16 v22, v13

    .line 1794
    .end local v4    # "i$iv$iv$iv$iv":I
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "currentGroup":I
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v9    # "m$iv$iv$iv$iv":[J
    .end local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v12    # "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v13    # "$i$f$removeIf-impl":I
    .restart local v21    # "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .restart local v22    # "$i$f$removeIf-impl":I
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v25    # "m$iv$iv$iv$iv":[J
    .restart local v35    # "currentGroup":I
    .restart local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    :cond_1a
    nop

    .line 1795
    .end local v0    # "lastIndex$iv$iv$iv$iv":I
    .end local v17    # "$i$f$forEachIndexed":I
    .end local v18    # "this_$iv$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v25    # "m$iv$iv$iv$iv":[J
    :cond_1b
    nop

    .line 1796
    .end local v14    # "this_$iv$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v15    # "$i$f$removeIf":I
    nop

    .line 1797
    .end local v21    # "$v$c$androidx-compose-runtime-collection-ScopeMap$-this$0$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v22    # "$i$f$removeIf-impl":I
    nop

    .end local v11    # "result$iv":Ljava/util/List;
    goto :goto_14

    .line 1798
    .end local v24    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v35    # "currentGroup":I
    .end local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v6    # "currentGroup":I
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    :cond_1c
    move-object/from16 v47, v5

    move/from16 v35, v6

    move-object/from16 v24, v8

    move/from16 v37, v10

    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "currentGroup":I
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v10    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v35    # "currentGroup":I
    .restart local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 1717
    :goto_14
    nop

    .line 1583
    .end local v24    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v37    # "$i$f$extractInvalidationsOfGroup$runtime":I
    nop

    .line 1582
    nop

    .line 1586
    .local v11, "extracted":Ljava/util/List;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/MovableContentStateReference;->getInvalidations$runtime()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v1, v11

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/MovableContentStateReference;->setInvalidations$runtime(Ljava/util/List;)V

    goto :goto_15

    .line 1581
    .end local v11    # "extracted":Ljava/util/List;
    .end local v35    # "currentGroup":I
    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v6    # "currentGroup":I
    :cond_1d
    move-object/from16 v2, p1

    move-object/from16 v47, v5

    move/from16 v35, v6

    .line 1594
    .end local v5    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "currentGroup":I
    .restart local v35    # "currentGroup":I
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    :goto_15
    move-object/from16 v1, v47

    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v4, 0x0

    .line 1799
    .local v4, "$i$f$write":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v5

    .local v5, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v6, 0x0

    .line 1800
    .local v6, "$i$a$-let-SlotTable$write$1$iv":I
    const/4 v8, 0x0

    .line 1801
    .local v8, "normalClose$iv":Z
    nop

    .line 1802
    move-object v0, v5

    .local v0, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v9, 0x0

    .line 1595
    .local v9, "$i$a$-write-ComposerKt$extractMovableContentAtCurrent$anchors$1":I
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 1598
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    move-result-object v10

    const v11, 0x78cc281

    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 1599
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v0, v11, v12, v10}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 1600
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12, v0}, Landroidx/compose/runtime/SlotWriter;->moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;

    move-result-object v10

    .line 1606
    .local v10, "anchors":Ljava/util/List;
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    .line 1609
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 1611
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->endInsert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1613
    nop

    .line 1802
    .end local v0    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v9    # "$i$a$-write-ComposerKt$extractMovableContentAtCurrent$anchors$1":I
    .end local v10    # "anchors":Ljava/util/List;
    move-object v0, v10

    .line 1803
    .local v0, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1802
    .local v9, "$i$a$-also-SlotTable$write$1$1$iv":I
    const/4 v0, 0x1

    .line 1804
    .end local v8    # "normalClose$iv":Z
    .end local v9    # "$i$a$-also-SlotTable$write$1$1$iv":I
    .local v0, "normalClose$iv":Z
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 1805
    nop

    .line 1799
    .end local v0    # "normalClose$iv":Z
    .end local v5    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v6    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1806
    nop

    .line 1594
    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v4    # "$i$f$write":I
    nop

    .line 1593
    nop

    .line 1616
    .restart local v10    # "anchors":Ljava/util/List;
    new-instance v0, Landroidx/compose/runtime/MovableContentState;

    move-object/from16 v9, v47

    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .local v9, "slotTable":Landroidx/compose/runtime/SlotTable;
    invoke-direct {v0, v9}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotTable;)V

    move-object v1, v0

    .line 1617
    .local v1, "state":Landroidx/compose/runtime/MovableContentState;
    sget-object v0, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    invoke-virtual {v0, v9, v10}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->hasAnchoredRecomposeScopes$runtime(Landroidx/compose/runtime/SlotTable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1621
    new-instance v0, Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;

    move-object/from16 v11, p0

    invoke-direct {v0, v11, v2}, Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 1620
    move-object v4, v0

    .line 1654
    .local v4, "movableContentRecomposeScopeOwner":Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;
    move-object v5, v9

    .local v5, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v6, 0x0

    .line 1807
    .local v6, "$i$f$write":I
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v8

    .local v8, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v12, 0x0

    .line 1808
    .local v12, "$i$a$-let-SlotTable$write$1$iv":I
    const/4 v13, 0x0

    .line 1809
    .local v13, "normalClose$iv":Z
    nop

    .line 1810
    move-object v0, v8

    .local v0, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v14, 0x0

    .line 1655
    .local v14, "$i$a$-write-ComposerKt$extractMovableContentAtCurrent$1":I
    :try_start_1
    sget-object v15, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1656
    nop

    .line 1657
    nop

    .line 1658
    move-object/from16 v16, v1

    .end local v1    # "state":Landroidx/compose/runtime/MovableContentState;
    .local v16, "state":Landroidx/compose/runtime/MovableContentState;
    :try_start_2
    move-object v1, v4

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 1655
    invoke-virtual {v15, v0, v10, v1}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 1660
    nop

    .end local v0    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v14    # "$i$a$-write-ComposerKt$extractMovableContentAtCurrent$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1810
    nop

    .line 1811
    .local v0, "it$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1810
    .local v1, "$i$a$-also-SlotTable$write$1$1$iv":I
    const/4 v0, 0x1

    .line 1812
    .end local v1    # "$i$a$-also-SlotTable$write$1$1$iv":I
    .end local v13    # "normalClose$iv":Z
    .local v0, "normalClose$iv":Z
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 1813
    nop

    .line 1807
    .end local v0    # "normalClose$iv":Z
    .end local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v12    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1814
    goto :goto_17

    .line 1812
    .restart local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v12    # "$i$a$-let-SlotTable$write$1$iv":I
    .restart local v13    # "normalClose$iv":Z
    :catchall_0
    move-exception v0

    goto :goto_16

    .end local v16    # "state":Landroidx/compose/runtime/MovableContentState;
    .local v1, "state":Landroidx/compose/runtime/MovableContentState;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "state":Landroidx/compose/runtime/MovableContentState;
    .restart local v16    # "state":Landroidx/compose/runtime/MovableContentState;
    :goto_16
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0

    .line 1617
    .end local v4    # "movableContentRecomposeScopeOwner":Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v6    # "$i$f$write":I
    .end local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v12    # "$i$a$-let-SlotTable$write$1$iv":I
    .end local v13    # "normalClose$iv":Z
    .end local v16    # "state":Landroidx/compose/runtime/MovableContentState;
    .restart local v1    # "state":Landroidx/compose/runtime/MovableContentState;
    :cond_1e
    move-object/from16 v11, p0

    move-object/from16 v16, v1

    .line 1662
    .end local v1    # "state":Landroidx/compose/runtime/MovableContentState;
    .restart local v16    # "state":Landroidx/compose/runtime/MovableContentState;
    :goto_17
    return-object v16

    .line 1804
    .end local v9    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .end local v10    # "anchors":Ljava/util/List;
    .end local v16    # "state":Landroidx/compose/runtime/MovableContentState;
    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    .local v4, "$i$f$write":I
    .local v5, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .local v6, "$i$a$-let-SlotTable$write$1$iv":I
    .local v8, "normalClose$iv":Z
    .restart local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    :catchall_2
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v9, v47

    .end local v47    # "slotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v9    # "slotTable":Landroidx/compose/runtime/SlotTable;
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0
.end method

.method public static final getComposeStackTraceMode()I
    .locals 1

    .line 1182
    sget v0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceMode:I

    return v0
.end method

.method public static final getCompositionLocalMap()Ljava/lang/Object;
    .locals 1

    .line 1451
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getCompositionLocalMap$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCompositionLocalMapKey$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getCompositionTracer$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInvocation()Ljava/lang/Object;
    .locals 1

    .line 1443
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getInvocation$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInvocationKey$annotations()V
    .locals 0

    return-void
.end method

.method private static final getNextGroup(Landroidx/compose/runtime/SlotWriter;)I
    .locals 2
    .param p0, "$this$nextGroup"    # Landroidx/compose/runtime/SlotWriter;

    .line 285
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getProvider()Ljava/lang/Object;
    .locals 1

    .line 1447
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProviderKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getProviderMaps()Ljava/lang/Object;
    .locals 1

    .line 1459
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getProviderMaps$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProviderMapsKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getProviderValues()Ljava/lang/Object;
    .locals 1

    .line 1455
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getProviderValues$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProviderValuesKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getReference()Ljava/lang/Object;
    .locals 1

    .line 1463
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getReference$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReferenceKey$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReuseKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/SlotReader;)Z
    .locals 3
    .param p0, "$this$isAfterFirstChild"    # Landroidx/compose/runtime/SlotReader;

    .line 1427
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/SlotWriter;)Z
    .locals 3
    .param p0, "$this$isAfterFirstChild"    # Landroidx/compose/runtime/SlotWriter;

    .line 1425
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static final isTraceInProgress()Z
    .locals 3
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1192
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    .line 1708
    .local v0, "it":Landroidx/compose/runtime/CompositionTracer;
    const/4 v1, 0x0

    .line 1192
    .local v1, "$i$a$-let-ComposerKt$isTraceInProgress$1":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/CompositionTracer;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "it":Landroidx/compose/runtime/CompositionTracer;
    .end local v1    # "$i$a$-let-ComposerKt$isTraceInProgress$1":I
    :goto_0
    return v2
.end method

.method public static final removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 2
    .param p0, "$this$removeCurrentGroup"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "rememberManager"    # Landroidx/compose/runtime/RememberManager;

    .line 1397
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    new-instance v1, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/RememberManager;)V

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->forAllDataInRememberOrder(ILkotlin/jvm/functions/Function2;)V

    .line 1411
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    .line 1412
    return-void
.end method

.method static final removeCurrentGroup$lambda$0(Landroidx/compose/runtime/RememberManager;ILjava/lang/Object;)Lkotlin/Unit;
    .locals 0
    .param p0, "$rememberManager"    # Landroidx/compose/runtime/RememberManager;
    .param p2, "slot"    # Ljava/lang/Object;

    .line 1400
    instance-of p1, p2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz p1, :cond_0

    .line 1401
    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/RememberManager;->releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    .line 1403
    :cond_0
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_1

    .line 1404
    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 1406
    :cond_1
    instance-of p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p1, :cond_2

    .line 1407
    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 1409
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static final runtimeCheck(Z)V
    .locals 4
    .param p0, "value"    # Z

    const/4 v0, 0x0

    .line 1496
    .local v0, "$i$f$runtimeCheck":I
    move v1, p0

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 1713
    .local v2, "$i$f$runtimeCheck":I
    if-nez v1, :cond_0

    .line 1714
    const/4 v3, 0x0

    .line 1496
    .local v3, "$i$a$-runtimeCheck-ComposerKt$runtimeCheck$1":I
    nop

    .line 1714
    .end local v3    # "$i$a$-runtimeCheck-ComposerKt$runtimeCheck$1":I
    const-string v3, "Check failed"

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1716
    :cond_0
    nop

    .line 1496
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    return-void
.end method

.method public static final runtimeCheck(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "value"    # Z
    .param p1, "lazyMessage"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1475
    .local v0, "$i$f$runtimeCheck":I
    if-nez p0, :cond_0

    .line 1476
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1478
    :cond_0
    return-void
.end method

.method public static final setComposeStackTraceMode-76WK1J0(I)V
    .locals 0
    .param p0, "$v$c$androidx-compose-runtime-tooling-ComposeStackTraceMode$-<set-?>$0"    # I

    .line 1182
    sput p0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceMode:I

    return-void
.end method

.method public static final sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 0
    .param p0, "composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "sourceInformation"    # Ljava/lang/String;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1146
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->sourceInformation(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public static final sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V
    .locals 0
    .param p0, "composer"    # Landroidx/compose/runtime/Composer;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1246
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->sourceInformationMarkerEnd()V

    .line 1247
    return-void
.end method

.method public static final sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V
    .locals 0
    .param p0, "composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "key"    # I
    .param p2, "sourceInformation"    # Ljava/lang/String;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1163
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->sourceInformationMarkerStart(ILjava/lang/String;)V

    .line 1164
    return-void
.end method

.method public static final traceEventEnd()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1229
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/CompositionTracer;->traceEventEnd()V

    .line 1230
    :cond_0
    return-void
.end method

.method public static final traceEventStart(IIILjava/lang/String;)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "dirty1"    # I
    .param p2, "dirty2"    # I
    .param p3, "info"    # Ljava/lang/String;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1218
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionTracer;->traceEventStart(IIILjava/lang/String;)V

    .line 1219
    :cond_0
    return-void
.end method

.method public static final synthetic traceEventStart(ILjava/lang/String;)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "info"    # Ljava/lang/String;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use the overload with $dirty metadata instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "traceEventStart(key, dirty1, dirty2, info)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1201
    const/4 v0, -0x1

    invoke-static {p0, v0, v0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    return-void
.end method

.method public static final withAfterAnchorInfo(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p0, "$this$withAfterAnchorInfo"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "cb"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Anchor;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1415
    .local v0, "$i$f$withAfterAnchorInfo":I
    const/4 v1, -0x1

    .line 1416
    .local v1, "priority":I
    const/4 v2, -0x1

    .line 1417
    .local v2, "endRelativeAfter":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1418
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v1

    .line 1419
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime(I)I

    move-result v4

    sub-int v2, v3, v4

    .line 1421
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    return-void
.end method
