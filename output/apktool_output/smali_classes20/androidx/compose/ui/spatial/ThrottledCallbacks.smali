.class public final Landroidx/compose/ui/spatial/ThrottledCallbacks;
.super Ljava/lang/Object;
.source "ThrottledCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThrottledCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThrottledCallbacks.kt\nandroidx/compose/ui/spatial/ThrottledCallbacks\n+ 2 RectList.kt\nandroidx/compose/ui/spatial/RectListKt\n+ 3 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 6 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 7 IntObjectMap.kt\nandroidx/collection/MutableIntObjectMap\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,536:1\n438#1,7:538\n428#1:569\n429#1,6:586\n435#1:599\n420#1,3:600\n423#1,3:608\n428#1:611\n429#1,6:628\n435#1:641\n420#1,6:642\n1052#2:537\n1052#2:607\n397#3,3:545\n354#3,6:548\n364#3,3:555\n367#3,9:559\n400#3:568\n397#3,3:570\n354#3,6:573\n364#3,3:580\n367#3,2:584\n370#3,6:592\n400#3:598\n397#3,3:612\n354#3,6:615\n364#3,3:622\n367#3,2:626\n370#3,6:634\n400#3:640\n397#3,3:648\n354#3,6:651\n364#3,3:658\n367#3,9:662\n400#3:671\n1399#4:554\n1270#4:558\n1399#4:579\n1270#4:583\n1399#4:621\n1270#4:625\n1399#4:657\n1270#4:661\n54#5:603\n59#5:605\n85#6:604\n90#6:606\n679#7:672\n1#8:673\n*S KotlinDebug\n*F\n+ 1 ThrottledCallbacks.kt\nandroidx/compose/ui/spatial/ThrottledCallbacks\n*L\n186#1:538,7\n208#1:569\n208#1:586,6\n208#1:599\n224#1:600,3\n224#1:608,3\n253#1:611\n253#1:628,6\n253#1:641\n264#1:642,6\n123#1:537\n232#1:607\n192#1:545,3\n192#1:548,6\n192#1:555,3\n192#1:559,9\n192#1:568\n208#1:570,3\n208#1:573,6\n208#1:580,3\n208#1:584,2\n208#1:592,6\n208#1:598\n253#1:612,3\n253#1:615,6\n253#1:622,3\n253#1:626,2\n253#1:634,6\n253#1:640\n428#1:648,3\n428#1:651,6\n428#1:658,3\n428#1:662,9\n428#1:671\n192#1:554\n192#1:558\n208#1:579\n208#1:583\n253#1:621\n253#1:625\n428#1:657\n428#1:661\n232#1:603\n232#1:605\n232#1:604\n232#1:606\n447#1:672\n447#1:673\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001f\u0008\u0001\u0018\u00002\u00020\u0001:\u0001ZB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00152\u0008\u0010*\u001a\u0004\u0018\u00010 2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000fH\u0002J:\u00102\u001a\u0002032\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020\u000f2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u0002082\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<0:J:\u0010=\u001a\u0002032\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020\u000f2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u0002082\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<0:J&\u0010>\u001a\u00020<2\u0006\u00104\u001a\u00020,2\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u000fJ!\u0010B\u001a\u00020<2\u0016\u00109\u001a\u0012\u0012\u0008\u0012\u00060\u0006R\u00020\u0000\u0012\u0004\u0012\u00020<0:H\u0086\u0008J\u000e\u0010C\u001a\u00020<2\u0006\u0010A\u001a\u00020\u000fJ\u000e\u0010D\u001a\u00020<2\u0006\u0010A\u001a\u00020\u000fJ\u000e\u0010E\u001a\u00020<2\u0006\u0010A\u001a\u00020\u000fJ1\u0010F\u001a\u00020<2\n\u0010G\u001a\u00060\u0006R\u00020\u00002\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008HJ=\u0010I\u001a\u00020<2\n\u0010G\u001a\u00060\u0006R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010A\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008J\u0010KJE\u0010L\u001a\u00020\u000f2\n\u0010G\u001a\u00060\u0006R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010A\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008N\u0010OJ\u0014\u0010P\u001a\u00020<2\n\u0010G\u001a\u00060\u0006R\u00020\u0000H\u0002J\u0014\u0010Q\u001a\u00020\'2\n\u0010G\u001a\u00060\u0006R\u00020\u0000H\u0002J)\u0010R\u001a\u00020<*\u00060\u0006R\u00020\u00002\u0016\u0010S\u001a\u0012\u0012\u0008\u0012\u00060\u0006R\u00020\u0000\u0012\u0004\u0012\u00020<0:H\u0082\u0008J/\u0010T\u001a\u00020<*\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00000\u00052\u0016\u0010S\u001a\u0012\u0012\u0008\u0012\u00060\u0006R\u00020\u0000\u0012\u0004\u0012\u00020<0:H\u0082\u0008J7\u0010U\u001a\u00020<*\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00000\u00052\u0006\u00104\u001a\u00020,2\u0016\u0010S\u001a\u0012\u0012\u0008\u0012\u00060\u0006R\u00020\u0000\u0012\u0004\u0012\u00020<0:H\u0082\u0008J.\u0010V\u001a\u00060\u0006R\u00020\u0000*\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00000\u00052\u0006\u0010W\u001a\u00020,2\n\u0010X\u001a\u00060\u0006R\u00020\u0000H\u0002J*\u0010Y\u001a\u00020\'*\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00000\u00052\u0006\u0010W\u001a\u00020,2\n\u0010X\u001a\u00060\u0006R\u00020\u0000H\u0002R\u001b\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0018\u00010\u0006R\u00020\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001c\u0010\u0019\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013R\u001a\u0010\u001c\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011\"\u0004\u0008\u001e\u0010\u0013R\u001e\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006["
    }
    d2 = {
        "Landroidx/compose/ui/spatial/ThrottledCallbacks;",
        "",
        "<init>",
        "()V",
        "rectChangedMap",
        "Landroidx/collection/MutableIntObjectMap;",
        "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
        "getRectChangedMap",
        "()Landroidx/collection/MutableIntObjectMap;",
        "globalChangeEntries",
        "getGlobalChangeEntries",
        "()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
        "setGlobalChangeEntries",
        "(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V",
        "minDebounceDeadline",
        "",
        "getMinDebounceDeadline",
        "()J",
        "setMinDebounceDeadline",
        "(J)V",
        "windowOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "getWindowOffset-nOcc-ac",
        "setWindowOffset--gyyYBs",
        "J",
        "screenOffset",
        "getScreenOffset-nOcc-ac",
        "setScreenOffset--gyyYBs",
        "windowSize",
        "getWindowSize",
        "setWindowSize",
        "viewToWindowMatrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "getViewToWindowMatrix-3i98HWw",
        "()[F",
        "setViewToWindowMatrix-Q8lPUPs",
        "([F)V",
        "[F",
        "updateOffsets",
        "",
        "screen",
        "window",
        "matrix",
        "windowWidth",
        "",
        "windowHeight",
        "updateOffsets-LDcG7Xg",
        "(JJ[FII)Z",
        "roundDownToMultipleOf8",
        "x",
        "registerOnRectChanged",
        "Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;",
        "id",
        "throttleMillis",
        "debounceMillis",
        "node",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "callback",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
        "",
        "registerOnGlobalChange",
        "fireOnUpdatedRect",
        "topLeft",
        "bottomRight",
        "currentMillis",
        "forEachNewCallbackNeverInvoked",
        "fireOnRectChangedEntries",
        "fireGlobalChangeEntries",
        "triggerDebounced",
        "fireWithUpdatedRect",
        "entry",
        "fireWithUpdatedRect$ui",
        "fire",
        "fire-WY9HvpM",
        "(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V",
        "debounceEntry",
        "minDeadline",
        "debounceEntry-b8qMvQI",
        "(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJJ)J",
        "addToGlobalEntries",
        "removeFromGlobalEntries",
        "linkedForEach",
        "block",
        "multiForEach",
        "runFor",
        "multiPut",
        "key",
        "value",
        "multiRemove",
        "Entry",
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
.field private globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

.field private minDebounceDeadline:J

.field private final rectChangedMap:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private screenOffset:J

.field private viewToWindowMatrix:[F

.field private windowOffset:J

.field private windowSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 98
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 99
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 33
    return-void
.end method

.method public static final synthetic access$multiRemove(Landroidx/compose/ui/spatial/ThrottledCallbacks;Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .param p1, "$receiver"    # Landroidx/collection/MutableIntObjectMap;
    .param p2, "key"    # I
    .param p3, "value"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->multiRemove(Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$removeFromGlobalEntries(Landroidx/compose/ui/spatial/ThrottledCallbacks;Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .param p1, "entry"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 33
    invoke-direct {p0, p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->removeFromGlobalEntries(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Z

    move-result v0

    return v0
.end method

.method private final addToGlobalEntries(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V
    .locals 1
    .param p1, "entry"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 387
    iget-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 388
    .local v0, "oldInitialEntry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    invoke-virtual {p1, v0}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 389
    iput-object p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 390
    return-void
.end method

.method private final debounceEntry-b8qMvQI(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJJ)J
    .locals 14
    .param p1, "entry"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .param p2, "$v$c$androidx-compose-ui-unit-IntOffset$-windowOffset$0"    # J
    .param p4, "$v$c$androidx-compose-ui-unit-IntOffset$-screenOffset$0"    # J
    .param p6, "viewToWindowMatrix"    # [F
    .param p7, "currentMillis"    # J
    .param p9, "minDeadline"    # J

    .line 369
    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    .line 370
    .local v12, "newMinDeadline":J
    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getDebounceMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getLastUninvokedFireMillis()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 371
    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getLastUninvokedFireMillis()J

    move-result-wide v1

    sub-long v1, v10, v1

    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getDebounceMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 372
    invoke-virtual {p1, v10, v11}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastInvokeMillis(J)V

    .line 373
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastUninvokedFireMillis(J)V

    .line 374
    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getTopLeft()J

    move-result-wide v1

    .line 375
    .local v1, "topLeft":J
    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getBottomRight()J

    move-result-wide v3

    .line 376
    .local v3, "bottomRight":J
    move-object v0, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->fire-9b-9wPM(JJJJ[F)V

    .end local v1    # "topLeft":J
    .end local v3    # "bottomRight":J
    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getLastUninvokedFireMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getDebounceMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 378
    move-wide v12, v0

    .line 382
    :cond_1
    :goto_0
    return-wide v12
.end method

.method private final fire-WY9HvpM(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V
    .locals 19
    .param p1, "entry"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .param p2, "$v$c$androidx-compose-ui-unit-IntOffset$-windowOffset$0"    # J
    .param p4, "$v$c$androidx-compose-ui-unit-IntOffset$-screenOffset$0"    # J
    .param p6, "viewToWindowMatrix"    # [F
    .param p7, "currentMillis"    # J

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v11, p7

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getLastInvokeMillis()J

    move-result-wide v13

    .line 337
    .local v13, "lastInvokeMillis":J
    sub-long v2, v11, v13

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getThrottleMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    .line 338
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v2, v13, v5

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 336
    :goto_1
    move v15, v2

    .line 339
    .local v15, "throttleOkay":Z
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getDebounceMillis()J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v2, v5, v16

    if-nez v2, :cond_2

    move v3, v4

    :cond_2
    move/from16 v18, v3

    .line 340
    .local v18, "debounceOkay":Z
    invoke-virtual {v1, v11, v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastUninvokedFireMillis(J)V

    .line 341
    if-eqz v15, :cond_3

    if-eqz v18, :cond_3

    .line 342
    invoke-virtual {v1, v11, v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastInvokeMillis(J)V

    .line 343
    nop

    .line 344
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getTopLeft()J

    move-result-wide v2

    .line 345
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getBottomRight()J

    move-result-wide v4

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 343
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->fire-9b-9wPM(JJJJ[F)V

    .line 351
    :cond_3
    if-nez v18, :cond_4

    .line 352
    iget-wide v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 353
    .local v1, "currentMinDeadline":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getDebounceMillis()J

    move-result-wide v3

    add-long/2addr v3, v11

    .line 354
    .local v3, "thisDeadline":J
    cmp-long v5, v1, v16

    if-lez v5, :cond_4

    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 355
    iput-wide v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 358
    .end local v1    # "currentMinDeadline":J
    .end local v3    # "thisDeadline":J
    :cond_4
    return-void
.end method

.method private final linkedForEach(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "$this$linkedForEach"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 420
    .local v0, "$i$f$linkedForEach":I
    move-object v1, p1

    .line 421
    .local v1, "node":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_0
    if-eqz v1, :cond_0

    .line 422
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method private final multiForEach(Landroidx/collection/MutableIntObjectMap;Lkotlin/jvm/functions/Function1;)V
    .locals 21
    .param p1, "$this$multiForEach"    # Landroidx/collection/MutableIntObjectMap;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 428
    .local v0, "$i$f$multiForEach":I
    move-object/from16 v1, p1

    check-cast v1, Landroidx/collection/IntObjectMap;

    .local v1, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v2, 0x0

    .line 648
    .local v2, "$i$f$forEachValue":I
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 650
    .local v3, "v$iv":[Ljava/lang/Object;
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v5, 0x0

    .line 651
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 652
    .local v6, "m$iv$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 654
    .local v7, "lastIndex$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    if-gt v8, v7, :cond_5

    .line 655
    :goto_0
    aget-wide v9, v6, v8

    .line 656
    .local v9, "slot$iv$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v13, 0x0

    .line 657
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 656
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v16

    if-eqz v11, :cond_4

    .line 658
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 659
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_3

    .line 660
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 661
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v17, v14, v17

    if-gez v17, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 660
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_2

    .line 662
    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 663
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 650
    .local v16, "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv":I
    aget-object v17, v3, v15

    check-cast v17, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .local v17, "it":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/16 v18, 0x0

    .line 429
    .local v18, "$i$a$-forEachValue-ThrottledCallbacks$multiForEach$1":I
    move-object/from16 v19, v17

    move/from16 v20, v12

    move-object/from16 v12, v19

    .line 430
    .local v12, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_3
    if-eqz v12, :cond_1

    .line 431
    move/from16 v19, v0

    move-object/from16 v0, p2

    .end local v0    # "$i$f$multiForEach":I
    .local v19, "$i$f$multiForEach":I
    invoke-interface {v0, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v12

    move/from16 v0, v19

    goto :goto_3

    .line 434
    .end local v19    # "$i$f$multiForEach":I
    .restart local v0    # "$i$f$multiForEach":I
    :cond_1
    move/from16 v19, v0

    move-object/from16 v0, p2

    .line 650
    .end local v0    # "$i$f$multiForEach":I
    .end local v12    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v17    # "it":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v18    # "$i$a$-forEachValue-ThrottledCallbacks$multiForEach$1":I
    .restart local v19    # "$i$f$multiForEach":I
    nop

    .line 663
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv":I
    goto :goto_4

    .line 660
    .end local v14    # "index$iv$iv":I
    .end local v19    # "$i$f$multiForEach":I
    .restart local v0    # "$i$f$multiForEach":I
    :cond_2
    move/from16 v19, v0

    move/from16 v20, v12

    move-object/from16 v0, p2

    .line 665
    .end local v0    # "$i$f$multiForEach":I
    .restart local v19    # "$i$f$multiForEach":I
    :goto_4
    shr-long v9, v9, v20

    .line 659
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v19

    move/from16 v12, v20

    goto :goto_1

    .end local v19    # "$i$f$multiForEach":I
    .restart local v0    # "$i$f$multiForEach":I
    :cond_3
    move/from16 v19, v0

    move/from16 v20, v12

    move-object/from16 v0, p2

    .line 667
    .end local v0    # "$i$f$multiForEach":I
    .end local v13    # "j$iv$iv":I
    .restart local v19    # "$i$f$multiForEach":I
    if-ne v11, v12, :cond_7

    goto :goto_5

    .line 656
    .end local v11    # "bitCount$iv$iv":I
    .end local v19    # "$i$f$multiForEach":I
    .restart local v0    # "$i$f$multiForEach":I
    :cond_4
    move/from16 v19, v0

    move-object/from16 v0, p2

    .line 654
    .end local v0    # "$i$f$multiForEach":I
    .end local v9    # "slot$iv$iv":J
    .restart local v19    # "$i$f$multiForEach":I
    :goto_5
    if-eq v8, v7, :cond_6

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v19

    goto :goto_0

    .end local v19    # "$i$f$multiForEach":I
    .restart local v0    # "$i$f$multiForEach":I
    :cond_5
    move/from16 v19, v0

    move-object/from16 v0, p2

    .line 670
    .end local v0    # "$i$f$multiForEach":I
    .end local v8    # "i$iv$iv":I
    .restart local v19    # "$i$f$multiForEach":I
    :cond_6
    nop

    .line 671
    .end local v4    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    :cond_7
    nop

    .line 435
    .end local v1    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v2    # "$i$f$forEachValue":I
    .end local v3    # "v$iv":[Ljava/lang/Object;
    return-void
.end method

.method private final multiPut(Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .locals 5
    .param p1, "$this$multiPut"    # Landroidx/collection/MutableIntObjectMap;
    .param p2, "key"    # I
    .param p3, "value"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ">;I",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ")",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;"
        }
    .end annotation

    .line 447
    move v0, p2

    .local v0, "key$iv":I
    move-object v1, p1

    .local v1, "this_$iv":Landroidx/collection/MutableIntObjectMap;
    const/4 v2, 0x0

    .line 672
    .local v2, "$i$f$getOrPut":I
    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 447
    .local v3, "$i$a$-getOrPut-ThrottledCallbacks$multiPut$entry$1":I
    nop

    .line 672
    .end local v3    # "$i$a$-getOrPut-ThrottledCallbacks$multiPut$entry$1":I
    move-object v3, p3

    .line 673
    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 672
    .local v4, "$i$a$-also-MutableIntObjectMap$getOrPut$1$iv":I
    invoke-virtual {v1, v0, v3}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 447
    .end local v0    # "key$iv":I
    .end local v1    # "this_$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v2    # "$i$f$getOrPut":I
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-also-MutableIntObjectMap$getOrPut$1$iv":I
    :cond_0
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 448
    .local v0, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    if-eq v0, p3, :cond_2

    .line 449
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v0, p3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 454
    :cond_2
    return-object p3
.end method

.method private final multiRemove(Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Z
    .locals 6
    .param p1, "$this$multiRemove"    # Landroidx/collection/MutableIntObjectMap;
    .param p2, "key"    # I
    .param p3, "value"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ">;I",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ")Z"
        }
    .end annotation

    .line 458
    invoke-virtual {p1, p2}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 459
    .local v0, "result":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    .line 460
    :cond_0
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 461
    invoke-virtual {p3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v1

    .line 462
    .local v1, "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    invoke-virtual {p3, v4}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 463
    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p1, p2, v1}, Landroidx/collection/MutableIntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNode()Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 467
    .local v2, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getAddedToRectList$ui()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/compose/ui/spatial/RectManager;->unsetHasCallbacksFor(Landroidx/compose/ui/node/LayoutNode;)V

    .line 471
    .end local v2    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_2
    :goto_0
    move v1, v3

    .end local v1    # "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    goto :goto_3

    .line 474
    :cond_3
    invoke-virtual {p1, p2, v0}, Landroidx/collection/MutableIntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-object v2, v0

    .line 476
    .local v2, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_1
    if-eqz v2, :cond_6

    .line 477
    invoke-virtual {v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v5

    if-nez v5, :cond_4

    return v1

    .line 478
    .local v5, "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :cond_4
    if-ne v5, p3, :cond_5

    .line 479
    invoke-virtual {p3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 480
    invoke-virtual {p3, v4}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 481
    goto :goto_2

    .line 483
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v2

    .end local v5    # "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    goto :goto_1

    .line 485
    :cond_6
    :goto_2
    move v1, v3

    .line 458
    .end local v0    # "result":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v2    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_3
    return v1
.end method

.method private final removeFromGlobalEntries(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Z
    .locals 6
    .param p1, "entry"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 398
    iget-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 399
    .local v0, "initialGlobalEntry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 400
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 401
    invoke-virtual {p1, v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 402
    return v1

    .line 404
    :cond_0
    move-object v3, v0

    .line 405
    .local v3, "last":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 406
    .local v4, "node":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_0
    if-eqz v4, :cond_4

    .line 407
    if-ne v4, p1, :cond_3

    .line 408
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 409
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setNext(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 410
    return v1

    .line 412
    :cond_3
    move-object v3, v4

    .line 413
    invoke-virtual {v4}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v4

    goto :goto_0

    .line 415
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private final roundDownToMultipleOf8(J)J
    .locals 3
    .param p1, "x"    # J

    .line 132
    const/4 v0, 0x3

    shr-long v1, p1, v0

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private final runFor(Landroidx/collection/MutableIntObjectMap;ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "$this$runFor"    # Landroidx/collection/MutableIntObjectMap;
    .param p2, "id"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 438
    .local v0, "$i$f$runFor":I
    invoke-virtual {p1, p2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 439
    .local v1, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_0
    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v2

    .line 441
    .local v2, "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object v1, v2

    .end local v2    # "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    goto :goto_0

    .line 444
    :cond_0
    return-void
.end method


# virtual methods
.method public final fireGlobalChangeEntries(J)V
    .locals 30
    .param p1, "currentMillis"    # J

    .line 221
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 222
    .local v2, "windowOffset":J
    iget-wide v4, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 223
    .local v4, "screenOffset":J
    iget-object v6, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 224
    .local v6, "viewToWindowMatrix":[F
    iget-object v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    if-eqz v1, :cond_1

    .local v1, "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    move-object/from16 v9, p0

    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    move-object v10, v1

    .end local v1    # "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .local v10, "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v11, 0x0

    .line 600
    .local v11, "$i$f$linkedForEach":I
    move-object v12, v1

    .line 601
    .local v12, "node$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_0
    if-eqz v12, :cond_0

    .line 602
    move-object v1, v12

    .local v1, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v13, 0x0

    .line 225
    .local v13, "$i$a$-linkedForEach-ThrottledCallbacks$fireGlobalChangeEntries$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNode()Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v14

    .line 226
    .local v14, "node":Landroidx/compose/ui/node/LayoutNode;
    invoke-static {v14}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroidx/compose/ui/spatial/RectManager;->getOffsetFromRectListFor-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v7

    .line 227
    .local v7, "offsetFromRoot":J
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getLastSize-YbymL2g$ui()J

    move-result-wide v15

    .line 230
    .local v15, "lastSize":J
    invoke-virtual {v1, v7, v8}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setTopLeft(J)V

    .line 231
    nop

    .line 232
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v17

    move-wide/from16 v18, v15

    .local v18, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/16 v20, 0x0

    .line 603
    .local v20, "$i$f$getWidth-impl":I
    move-wide/from16 v21, v18

    .local v21, "value$iv$iv":J
    const/16 v23, 0x0

    .line 604
    .local v23, "$i$f$unpackInt1":I
    const/16 v24, 0x20

    move-wide/from16 v25, v2

    .end local v2    # "windowOffset":J
    .local v25, "windowOffset":J
    shr-long v2, v21, v24

    long-to-int v2, v2

    .line 603
    .end local v21    # "value$iv$iv":J
    .end local v23    # "$i$f$unpackInt1":I
    nop

    .line 232
    .end local v18    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v20    # "$i$f$getWidth-impl":I
    add-int v17, v17, v2

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    .restart local v18    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 605
    .local v3, "$i$f$getHeight-impl":I
    move-wide/from16 v20, v18

    .local v20, "value$iv$iv":J
    const/16 v22, 0x0

    .line 606
    .local v22, "$i$f$unpackInt2":I
    const-wide v27, 0xffffffffL

    move/from16 v23, v2

    move/from16 v29, v3

    .end local v3    # "$i$f$getHeight-impl":I
    .local v29, "$i$f$getHeight-impl":I
    and-long v2, v20, v27

    long-to-int v2, v2

    .line 605
    .end local v20    # "value$iv$iv":J
    .end local v22    # "$i$f$unpackInt2":I
    nop

    .line 232
    .end local v18    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v29    # "$i$f$getHeight-impl":I
    add-int v2, v23, v2

    .local v2, "y$iv":I
    move/from16 v3, v17

    .local v3, "x$iv":I
    const/16 v17, 0x0

    .line 607
    .local v17, "$i$f$packXY":I
    move-wide/from16 v18, v4

    .end local v4    # "screenOffset":J
    .local v18, "screenOffset":J
    int-to-long v4, v3

    shl-long v4, v4, v24

    move/from16 v20, v3

    move-wide/from16 v21, v4

    .end local v3    # "x$iv":I
    .local v20, "x$iv":I
    int-to-long v3, v2

    and-long v3, v3, v27

    or-long v2, v21, v3

    .line 231
    .end local v2    # "y$iv":I
    .end local v17    # "$i$f$packXY":I
    .end local v20    # "x$iv":I
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setBottomRight(J)V

    .line 234
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

    .line 234
    move-wide/from16 v4, v18

    move-wide/from16 v2, v25

    move-wide/from16 v17, v7

    move-wide/from16 v7, p1

    .end local v7    # "offsetFromRoot":J
    .end local v18    # "screenOffset":J
    .end local v25    # "windowOffset":J
    .local v2, "windowOffset":J
    .restart local v4    # "screenOffset":J
    .local v17, "offsetFromRoot":J
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->fire-WY9HvpM(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    .line 241
    nop

    .line 602
    .end local v1    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v13    # "$i$a$-linkedForEach-ThrottledCallbacks$fireGlobalChangeEntries$1":I
    .end local v14    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v15    # "lastSize":J
    .end local v17    # "offsetFromRoot":J
    nop

    .line 608
    invoke-virtual {v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v12

    move-object/from16 v0, p0

    goto :goto_0

    .line 610
    :cond_0
    nop

    .line 242
    .end local v9    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v10    # "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v11    # "$i$f$linkedForEach":I
    .end local v12    # "node$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :cond_1
    return-void
.end method

.method public final fireOnRectChangedEntries(J)V
    .locals 32
    .param p1, "currentMillis"    # J

    .line 205
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 206
    .local v2, "windowOffset":J
    iget-wide v4, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 207
    .local v4, "screenOffset":J
    iget-object v6, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 208
    .local v6, "viewToWindowMatrix":[F
    iget-object v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .local v1, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    move-object/from16 v9, p0

    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    move-object v10, v1

    .end local v1    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v10, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    const/4 v11, 0x0

    .line 569
    .local v11, "$i$f$multiForEach":I
    move-object v12, v10

    check-cast v12, Landroidx/collection/IntObjectMap;

    .local v12, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v13, 0x0

    .line 570
    .local v13, "$i$f$forEachValue":I
    iget-object v14, v12, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 572
    .local v14, "v$iv$iv":[Ljava/lang/Object;
    move-object v15, v12

    .local v15, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    const/16 v16, 0x0

    .line 573
    .local v16, "$i$f$forEachIndexed":I
    iget-object v1, v15, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 574
    .local v1, "m$iv$iv$iv":[J
    array-length v7, v1

    add-int/lit8 v7, v7, -0x2

    .line 576
    .local v7, "lastIndex$iv$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv$iv":I
    if-gt v8, v7, :cond_5

    .line 577
    :goto_0
    aget-wide v17, v1, v8

    .line 578
    .local v17, "slot$iv$iv$iv":J
    move-wide/from16 v19, v17

    .local v19, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v21, 0x0

    .line 579
    .local v21, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v22, v1

    move-wide/from16 v0, v19

    move-wide/from16 v19, v2

    .end local v1    # "m$iv$iv$iv":[J
    .end local v2    # "windowOffset":J
    .local v0, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v19, "windowOffset":J
    .local v22, "m$iv$iv$iv":[J
    not-long v2, v0

    const/16 v23, 0x7

    shl-long v2, v2, v23

    and-long/2addr v2, v0

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v2, v23

    .line 578
    .end local v0    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v21    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v23

    if-eqz v0, :cond_4

    .line 580
    sub-int v0, v8, v7

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 581
    .local v0, "bitCount$iv$iv$iv":I
    const/4 v2, 0x0

    .local v2, "j$iv$iv$iv":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 582
    const-wide/16 v23, 0xff

    and-long v23, v17, v23

    .local v23, "value$iv$iv$iv$iv":J
    const/4 v3, 0x0

    .line 583
    .local v3, "$i$f$isFull":I
    const-wide/16 v25, 0x80

    cmp-long v21, v23, v25

    if-gez v21, :cond_0

    const/16 v21, 0x1

    goto :goto_2

    :cond_0
    const/16 v21, 0x0

    .line 582
    .end local v3    # "$i$f$isFull":I
    .end local v23    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v21, :cond_2

    .line 584
    shl-int/lit8 v3, v8, 0x3

    add-int v21, v3, v2

    .line 585
    .local v21, "index$iv$iv$iv":I
    move/from16 v23, v21

    .local v23, "index$iv$iv":I
    const/16 v24, 0x0

    .line 572
    .local v24, "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv$iv":I
    aget-object v3, v14, v23

    move-object/from16 v25, v3

    check-cast v25, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .local v25, "it$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/16 v26, 0x0

    .line 586
    .local v26, "$i$a$-forEachValue-ThrottledCallbacks$multiForEach$1$iv":I
    move-object/from16 v3, v25

    move-object/from16 v27, v3

    .line 587
    .local v27, "entry$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_3
    if-eqz v27, :cond_1

    .line 588
    move v3, v1

    move-object/from16 v1, v27

    .local v1, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/16 v28, 0x0

    .line 209
    .local v28, "$i$a$-multiForEach-ThrottledCallbacks$fireOnRectChangedEntries$1":I
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 209
    move/from16 v30, v2

    move/from16 v29, v11

    move-object/from16 v31, v12

    move v11, v0

    move v12, v3

    move-wide/from16 v2, v19

    move-object/from16 v0, p0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move v9, v7

    move v10, v8

    move-wide/from16 v7, p1

    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v8    # "i$iv$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v2, "windowOffset":J
    .local v9, "lastIndex$iv$iv$iv":I
    .local v10, "i$iv$iv$iv":I
    .local v11, "bitCount$iv$iv$iv":I
    .local v19, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v20, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v29, "$i$f$multiForEach":I
    .local v30, "j$iv$iv$iv":I
    .local v31, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->fire-WY9HvpM(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    .line 216
    nop

    .line 588
    .end local v1    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v28    # "$i$a$-multiForEach-ThrottledCallbacks$fireOnRectChangedEntries$1":I
    nop

    .line 589
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v27

    move v7, v9

    move v8, v10

    move v0, v11

    move v1, v12

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v11, v29

    move-object/from16 v12, v31

    move-wide/from16 v19, v2

    move/from16 v2, v30

    goto :goto_3

    .line 591
    .end local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v29    # "$i$f$multiForEach":I
    .end local v30    # "j$iv$iv$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v0    # "bitCount$iv$iv$iv":I
    .local v2, "j$iv$iv$iv":I
    .restart local v7    # "lastIndex$iv$iv$iv":I
    .restart local v8    # "i$iv$iv$iv":I
    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v10, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v11, "$i$f$multiForEach":I
    .restart local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v19, "windowOffset":J
    :cond_1
    move/from16 v30, v2

    move/from16 v29, v11

    move-object/from16 v31, v12

    move-wide/from16 v2, v19

    move v11, v0

    move v12, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move v9, v7

    move v10, v8

    .line 572
    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v8    # "i$iv$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v25    # "it$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v26    # "$i$a$-forEachValue-ThrottledCallbacks$multiForEach$1$iv":I
    .end local v27    # "entry$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .local v2, "windowOffset":J
    .local v9, "lastIndex$iv$iv$iv":I
    .local v10, "i$iv$iv$iv":I
    .local v11, "bitCount$iv$iv$iv":I
    .local v19, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .restart local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v29    # "$i$f$multiForEach":I
    .restart local v30    # "j$iv$iv$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    nop

    .line 585
    .end local v23    # "index$iv$iv":I
    .end local v24    # "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv$iv":I
    goto :goto_4

    .line 582
    .end local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v21    # "index$iv$iv$iv":I
    .end local v29    # "$i$f$multiForEach":I
    .end local v30    # "j$iv$iv$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v0    # "bitCount$iv$iv$iv":I
    .local v2, "j$iv$iv$iv":I
    .restart local v7    # "lastIndex$iv$iv$iv":I
    .restart local v8    # "i$iv$iv$iv":I
    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v10, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v11, "$i$f$multiForEach":I
    .restart local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v19, "windowOffset":J
    :cond_2
    move/from16 v30, v2

    move/from16 v29, v11

    move-object/from16 v31, v12

    move-wide/from16 v2, v19

    move v11, v0

    move v12, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move v9, v7

    move v10, v8

    .line 592
    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v8    # "i$iv$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v2, "windowOffset":J
    .local v9, "lastIndex$iv$iv$iv":I
    .local v10, "i$iv$iv$iv":I
    .local v11, "bitCount$iv$iv$iv":I
    .local v19, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .restart local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v29    # "$i$f$multiForEach":I
    .restart local v30    # "j$iv$iv$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :goto_4
    shr-long v17, v17, v12

    .line 581
    add-int/lit8 v0, v30, 0x1

    move v7, v9

    move v8, v10

    move v1, v12

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v12, v31

    move-wide/from16 v19, v2

    move v2, v0

    move v0, v11

    move/from16 v11, v29

    .end local v30    # "j$iv$iv$iv":I
    .local v0, "j$iv$iv$iv":I
    goto/16 :goto_1

    .end local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v29    # "$i$f$multiForEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v0, "bitCount$iv$iv$iv":I
    .local v2, "j$iv$iv$iv":I
    .restart local v7    # "lastIndex$iv$iv$iv":I
    .restart local v8    # "i$iv$iv$iv":I
    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v10, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v11, "$i$f$multiForEach":I
    .restart local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v19, "windowOffset":J
    :cond_3
    move/from16 v30, v2

    move/from16 v29, v11

    move-object/from16 v31, v12

    move-wide/from16 v2, v19

    move v11, v0

    move v12, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move v9, v7

    move v10, v8

    .line 594
    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v8    # "i$iv$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v2, "windowOffset":J
    .local v9, "lastIndex$iv$iv$iv":I
    .local v10, "i$iv$iv$iv":I
    .local v11, "bitCount$iv$iv$iv":I
    .local v19, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .restart local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v29    # "$i$f$multiForEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    if-ne v11, v12, :cond_7

    goto :goto_5

    .line 578
    .end local v2    # "windowOffset":J
    .end local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v29    # "$i$f$multiForEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v7    # "lastIndex$iv$iv$iv":I
    .restart local v8    # "i$iv$iv$iv":I
    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v10, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v11, "$i$f$multiForEach":I
    .restart local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v19, "windowOffset":J
    :cond_4
    move/from16 v29, v11

    move-object/from16 v31, v12

    move-wide/from16 v2, v19

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move v9, v7

    move v10, v8

    .line 576
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v8    # "i$iv$iv$iv":I
    .end local v11    # "$i$f$multiForEach":I
    .end local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v17    # "slot$iv$iv$iv":J
    .restart local v2    # "windowOffset":J
    .local v9, "lastIndex$iv$iv$iv":I
    .local v10, "i$iv$iv$iv":I
    .local v19, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .restart local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v29    # "$i$f$multiForEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :goto_5
    if-eq v10, v9, :cond_6

    add-int/lit8 v8, v10, 0x1

    move-object/from16 v0, p0

    move v7, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v1, v22

    move/from16 v11, v29

    move-object/from16 v12, v31

    .end local v10    # "i$iv$iv$iv":I
    .restart local v8    # "i$iv$iv$iv":I
    goto/16 :goto_0

    .end local v19    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v22    # "m$iv$iv$iv":[J
    .end local v29    # "$i$f$multiForEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v1, "m$iv$iv$iv":[J
    .restart local v7    # "lastIndex$iv$iv$iv":I
    .local v9, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v10, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v11    # "$i$f$multiForEach":I
    .restart local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_5
    move-object/from16 v22, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v29, v11

    move-object/from16 v31, v12

    move v9, v7

    .line 597
    .end local v1    # "m$iv$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v8    # "i$iv$iv$iv":I
    .end local v10    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v11    # "$i$f$multiForEach":I
    .end local v12    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v9, "lastIndex$iv$iv$iv":I
    .restart local v19    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .restart local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v22    # "m$iv$iv$iv":[J
    .restart local v29    # "$i$f$multiForEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_6
    nop

    .line 598
    .end local v9    # "lastIndex$iv$iv$iv":I
    .end local v15    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v16    # "$i$f$forEachIndexed":I
    .end local v22    # "m$iv$iv$iv":[J
    :cond_7
    nop

    .line 599
    .end local v13    # "$i$f$forEachValue":I
    .end local v14    # "v$iv$iv":[Ljava/lang/Object;
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    nop

    .line 217
    .end local v19    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v20    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v29    # "$i$f$multiForEach":I
    return-void
.end method

.method public final fireOnUpdatedRect(IJJJ)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "topLeft"    # J
    .param p4, "bottomRight"    # J
    .param p6, "currentMillis"    # J

    .line 186
    iget-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .local v0, "$this$runFor$iv":Landroidx/collection/MutableIntObjectMap;
    move/from16 v1, p1

    .local v1, "id$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    const/4 v3, 0x0

    .line 538
    .local v3, "$i$f$runFor":I
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 539
    .local v4, "entry$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_0
    if-eqz v4, :cond_0

    .line 540
    invoke-virtual {v4}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v5

    .line 541
    .local v5, "next$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    move-object v7, v4

    .local v7, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v14, 0x0

    .line 187
    .local v14, "$i$a$-runFor-ThrottledCallbacks$fireOnUpdatedRect$1":I
    move-object v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v6 .. v13}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->fireWithUpdatedRect$ui(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJJ)V

    .line 188
    nop

    .line 541
    .end local v7    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v14    # "$i$a$-runFor-ThrottledCallbacks$fireOnUpdatedRect$1":I
    nop

    .line 542
    move-object v4, v5

    .end local v5    # "next$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    goto :goto_0

    .line 544
    :cond_0
    nop

    .line 189
    .end local v0    # "$this$runFor$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v1    # "id$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v3    # "$i$f$runFor":I
    .end local v4    # "entry$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    return-void
.end method

.method public final fireWithUpdatedRect$ui(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJJ)V
    .locals 23
    .param p1, "entry"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .param p2, "topLeft"    # J
    .param p4, "bottomRight"    # J
    .param p6, "currentMillis"    # J

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v11, p6

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getLastInvokeMillis()J

    move-result-wide v13

    .line 285
    .local v13, "lastInvokeMillis":J
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getThrottleMillis()J

    move-result-wide v15

    .line 286
    .local v15, "throttleMillis":J
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getDebounceMillis()J

    move-result-wide v17

    .line 290
    .local v17, "debounceMillis":J
    sub-long v2, v11, v13

    cmp-long v2, v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v2, v13, v5

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 289
    :goto_1
    move/from16 v19, v2

    .line 291
    .local v19, "pastThrottleDeadline":Z
    const-wide/16 v5, 0x0

    cmp-long v2, v17, v5

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    move/from16 v20, v2

    .line 292
    .local v20, "zeroDebounce":Z
    cmp-long v2, v15, v5

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    move/from16 v21, v2

    .line 294
    .local v21, "zeroThrottle":Z
    invoke-virtual/range {p1 .. p3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setTopLeft(J)V

    .line 295
    move-wide/from16 v7, p4

    invoke-virtual {v1, v7, v8}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setBottomRight(J)V

    .line 310
    if-nez v20, :cond_4

    if-eqz v21, :cond_5

    :cond_4
    if-eqz v20, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    move/from16 v22, v3

    .line 312
    .local v22, "canInvoke":Z
    if-eqz v19, :cond_7

    if-eqz v22, :cond_7

    .line 313
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastUninvokedFireMillis(J)V

    .line 314
    invoke-virtual {v1, v11, v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastInvokeMillis(J)V

    .line 315
    iget-wide v6, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    iget-wide v8, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    iget-object v10, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->fire-9b-9wPM(JJJJ[F)V

    goto :goto_4

    .line 316
    :cond_7
    if-nez v20, :cond_8

    .line 317
    invoke-virtual {v1, v11, v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->setLastUninvokedFireMillis(J)V

    .line 318
    iget-wide v2, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 319
    .local v2, "currentMinDeadline":J
    add-long v7, v11, v17

    .line 320
    .local v7, "thisDeadline":J
    cmp-long v4, v2, v5

    if-lez v4, :cond_8

    cmp-long v4, v7, v2

    if-gez v4, :cond_8

    .line 321
    iput-wide v2, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 324
    .end local v2    # "currentMinDeadline":J
    .end local v7    # "thisDeadline":J
    :cond_8
    :goto_4
    return-void
.end method

.method public final forEachNewCallbackNeverInvoked(Lkotlin/jvm/functions/Function1;)V
    .locals 24
    .param p1, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$f$forEachNewCallbackNeverInvoked":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->getRectChangedMap()Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    check-cast v1, Landroidx/collection/IntObjectMap;

    .local v1, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v2, 0x0

    .line 545
    .local v2, "$i$f$forEachValue":I
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 547
    .local v3, "v$iv":[Ljava/lang/Object;
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v5, 0x0

    .line 548
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 549
    .local v6, "m$iv$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 551
    .local v7, "lastIndex$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    if-gt v8, v7, :cond_6

    .line 552
    :goto_0
    aget-wide v9, v6, v8

    .line 553
    .local v9, "slot$iv$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v13, 0x0

    .line 554
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 553
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v16

    if-eqz v11, :cond_5

    .line 555
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 556
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 557
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 558
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v17, v14, v17

    if-gez v17, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 557
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_3

    .line 559
    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 560
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 547
    .local v16, "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv":I
    aget-object v17, v3, v15

    move/from16 v18, v12

    move-object/from16 v12, v17

    check-cast v12, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .local v12, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/16 v17, 0x0

    .line 193
    .local v17, "$i$a$-forEachValue-ThrottledCallbacks$forEachNewCallbackNeverInvoked$1":I
    move-object/from16 v19, v12

    .line 194
    .local v19, "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_3
    if-eqz v19, :cond_2

    .line 195
    invoke-virtual {v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getLastInvokeMillis()J

    move-result-wide v20

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 196
    move/from16 v20, v0

    move-object/from16 v0, p1

    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .local v20, "$i$f$forEachNewCallbackNeverInvoked":I
    invoke-interface {v0, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 195
    .end local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_1
    move/from16 v20, v0

    move-object/from16 v0, p1

    .line 198
    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v19

    move/from16 v0, v20

    goto :goto_3

    .line 200
    .end local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_2
    move/from16 v20, v0

    move-object/from16 v0, p1

    .line 547
    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .end local v12    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v17    # "$i$a$-forEachValue-ThrottledCallbacks$forEachNewCallbackNeverInvoked$1":I
    .end local v19    # "next":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .restart local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    nop

    .line 560
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv":I
    goto :goto_5

    .line 557
    .end local v14    # "index$iv$iv":I
    .end local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_3
    move/from16 v20, v0

    move/from16 v18, v12

    move-object/from16 v0, p1

    .line 562
    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    :goto_5
    shr-long v9, v9, v18

    .line 556
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v18

    move/from16 v0, v20

    goto :goto_1

    .end local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_4
    move/from16 v20, v0

    move/from16 v18, v12

    move-object/from16 v0, p1

    .line 564
    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .end local v13    # "j$iv$iv":I
    .restart local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    if-ne v11, v12, :cond_8

    goto :goto_6

    .line 553
    .end local v11    # "bitCount$iv$iv":I
    .end local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_5
    move/from16 v20, v0

    move-object/from16 v0, p1

    .line 551
    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .end local v9    # "slot$iv$iv":J
    .restart local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    :goto_6
    if-eq v8, v7, :cond_7

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v20

    goto/16 :goto_0

    .end local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    .restart local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_6
    move/from16 v20, v0

    move-object/from16 v0, p1

    .line 567
    .end local v0    # "$i$f$forEachNewCallbackNeverInvoked":I
    .end local v8    # "i$iv$iv":I
    .restart local v20    # "$i$f$forEachNewCallbackNeverInvoked":I
    :cond_7
    nop

    .line 568
    .end local v4    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    :cond_8
    nop

    .line 201
    .end local v1    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v2    # "$i$f$forEachValue":I
    .end local v3    # "v$iv":[Ljava/lang/Object;
    return-void
.end method

.method public final getGlobalChangeEntries()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    return-object v0
.end method

.method public final getMinDebounceDeadline()J
    .locals 2

    .line 97
    iget-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    return-wide v0
.end method

.method public final getRectChangedMap()Landroidx/collection/MutableIntObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    return-object v0
.end method

.method public final getScreenOffset-nOcc-ac()J
    .locals 2

    .line 99
    iget-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    return-wide v0
.end method

.method public final getViewToWindowMatrix-3i98HWw()[F
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    return-object v0
.end method

.method public final getWindowOffset-nOcc-ac()J
    .locals 2

    .line 98
    iget-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    return-wide v0
.end method

.method public final getWindowSize()J
    .locals 2

    .line 100
    iget-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowSize:J

    return-wide v0
.end method

.method public final registerOnGlobalChange(IJJLandroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;
    .locals 11
    .param p1, "id"    # I
    .param p2, "throttleMillis"    # J
    .param p4, "debounceMillis"    # J
    .param p6, "node"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p7, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;"
        }
    .end annotation

    .line 168
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    move-wide v0, p4

    :goto_0
    move-wide v7, v0

    .line 171
    .local v7, "debounceToUse":J
    new-instance v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 171
    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;-><init>(Landroidx/compose/ui/spatial/ThrottledCallbacks;IJJLandroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function1;)V

    .line 170
    nop

    .line 178
    .local v2, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    invoke-direct {p0, v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->addToGlobalEntries(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V

    .line 179
    move-object v0, v2

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-object v0
.end method

.method public final registerOnRectChanged(IJJLandroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;
    .locals 10
    .param p1, "id"    # I
    .param p2, "throttleMillis"    # J
    .param p4, "debounceMillis"    # J
    .param p6, "node"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p7, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;"
        }
    .end annotation

    .line 144
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-nez v0, :cond_0

    move-wide v5, p2

    goto :goto_0

    :cond_0
    move-wide v5, p4

    .line 146
    .local v5, "debounceToUse":J
    :goto_0
    iget-object v9, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 147
    nop

    .line 149
    new-instance v0, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 149
    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;-><init>(Landroidx/compose/ui/spatial/ThrottledCallbacks;IJJLandroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function1;)V

    .line 146
    invoke-direct {p0, v9, p1, v0}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->multiPut(Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-object v0
.end method

.method public final setGlobalChangeEntries(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 93
    iput-object p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    return-void
.end method

.method public final setMinDebounceDeadline(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 97
    iput-wide p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    return-void
.end method

.method public final setScreenOffset--gyyYBs(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-<set-?>$0"    # J

    .line 99
    iput-wide p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    return-void
.end method

.method public final setViewToWindowMatrix-Q8lPUPs([F)V
    .locals 0
    .param p1, "<set-?>"    # [F

    .line 101
    iput-object p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    return-void
.end method

.method public final setWindowOffset--gyyYBs(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-<set-?>$0"    # J

    .line 98
    iput-wide p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    return-void
.end method

.method public final setWindowSize(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 100
    iput-wide p1, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowSize:J

    return-void
.end method

.method public final triggerDebounced(J)V
    .locals 36
    .param p1, "currentMillis"    # J

    .line 248
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-wide v2, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 250
    .local v2, "windowOffset":J
    iget-wide v4, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 251
    .local v4, "screenOffset":J
    iget-object v6, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 252
    .local v6, "viewToWindowMatrix":[F
    const-wide/16 v7, 0x0

    .local v7, "minDeadline":J
    const-wide v7, 0x7fffffffffffffffL

    .line 253
    iget-object v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .local v1, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    move-object v12, v1

    .end local v1    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v12, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    const/4 v13, 0x0

    .line 611
    .local v13, "$i$f$multiForEach":I
    move-object v14, v12

    check-cast v14, Landroidx/collection/IntObjectMap;

    .local v14, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v15, 0x0

    .line 612
    .local v15, "$i$f$forEachValue":I
    iget-object v1, v14, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 614
    .local v1, "v$iv$iv":[Ljava/lang/Object;
    move-object v9, v14

    .local v9, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    const/16 v16, 0x0

    .line 615
    .local v16, "$i$f$forEachIndexed":I
    iget-object v10, v9, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 616
    .local v10, "m$iv$iv$iv":[J
    array-length v0, v10

    add-int/lit8 v0, v0, -0x2

    .line 618
    .local v0, "lastIndex$iv$iv$iv":I
    move-object/from16 v17, v1

    .end local v1    # "v$iv$iv":[Ljava/lang/Object;
    .local v17, "v$iv$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i$iv$iv$iv":I
    if-gt v1, v0, :cond_6

    .line 619
    :goto_0
    aget-wide v18, v10, v1

    .line 620
    .local v18, "slot$iv$iv$iv":J
    move-wide/from16 v20, v18

    .local v20, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v22, 0x0

    .line 621
    .local v22, "$i$f$maskEmptyOrDeleted":I
    move/from16 v23, v0

    move/from16 v24, v1

    move-wide/from16 v0, v20

    move-wide/from16 v20, v2

    .end local v1    # "i$iv$iv$iv":I
    .end local v2    # "windowOffset":J
    .local v0, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v20, "windowOffset":J
    .local v23, "lastIndex$iv$iv$iv":I
    .local v24, "i$iv$iv$iv":I
    not-long v2, v0

    const/16 v25, 0x7

    shl-long v2, v2, v25

    and-long/2addr v2, v0

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v2, v25

    .line 620
    .end local v0    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v22    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v25

    if-eqz v0, :cond_5

    .line 622
    sub-int v1, v24, v23

    not-int v0, v1

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 623
    .local v0, "bitCount$iv$iv$iv":I
    const/4 v2, 0x0

    .local v2, "j$iv$iv$iv":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 624
    const-wide/16 v25, 0xff

    and-long v25, v18, v25

    .local v25, "value$iv$iv$iv$iv":J
    const/4 v3, 0x0

    .line 625
    .local v3, "$i$f$isFull":I
    const-wide/16 v27, 0x80

    cmp-long v22, v25, v27

    if-gez v22, :cond_1

    const/16 v22, 0x1

    goto :goto_2

    :cond_1
    const/16 v22, 0x0

    .line 624
    .end local v3    # "$i$f$isFull":I
    .end local v25    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v22, :cond_3

    .line 626
    shl-int/lit8 v3, v24, 0x3

    add-int v22, v3, v2

    .line 627
    .local v22, "index$iv$iv$iv":I
    move/from16 v25, v22

    .local v25, "index$iv$iv":I
    const/16 v26, 0x0

    .line 614
    .local v26, "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv$iv":I
    aget-object v3, v17, v25

    move-object/from16 v27, v3

    check-cast v27, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .local v27, "it$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/16 v28, 0x0

    .line 628
    .local v28, "$i$a$-forEachValue-ThrottledCallbacks$multiForEach$1$iv":I
    move-object/from16 v3, v27

    move-object/from16 v29, v3

    .line 629
    .local v29, "entry$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_3
    if-eqz v29, :cond_2

    .line 630
    move v3, v1

    move-object/from16 v1, v29

    .local v1, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/16 v30, 0x0

    .line 254
    .local v30, "$i$a$-multiForEach-ThrottledCallbacks$triggerDebounced$1":I
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 255
    move/from16 v31, v23

    move-object/from16 v23, v11

    move/from16 v11, v31

    move/from16 v31, v24

    move-object/from16 v24, v12

    move/from16 v12, v31

    move/from16 v32, v2

    move/from16 v31, v13

    move-object/from16 v33, v14

    move v13, v0

    move v14, v3

    move-wide/from16 v2, v20

    move-object/from16 v0, p0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-wide v9, v7

    move-wide/from16 v7, p1

    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v7    # "minDeadline":J
    .end local v10    # "m$iv$iv$iv":[J
    .end local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v2, "windowOffset":J
    .local v9, "minDeadline":J
    .local v11, "lastIndex$iv$iv$iv":I
    .local v12, "i$iv$iv$iv":I
    .local v13, "bitCount$iv$iv$iv":I
    .local v20, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .local v21, "m$iv$iv$iv":[J
    .local v23, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v24, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v31, "$i$f$multiForEach":I
    .local v32, "j$iv$iv$iv":I
    .local v33, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->debounceEntry-b8qMvQI(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJJ)J

    move-result-wide v34

    .line 254
    move-wide/from16 v7, v34

    .line 263
    .end local v9    # "minDeadline":J
    .restart local v7    # "minDeadline":J
    nop

    .line 630
    .end local v1    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v30    # "$i$a$-multiForEach-ThrottledCallbacks$triggerDebounced$1":I
    nop

    .line 631
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v29

    move-object/from16 v0, v23

    move/from16 v23, v11

    move-object v11, v0

    move-object/from16 v0, v24

    move/from16 v24, v12

    move-object v12, v0

    move v0, v13

    move v1, v14

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v13, v31

    move-object/from16 v14, v33

    move-wide/from16 v20, v2

    move/from16 v2, v32

    goto :goto_3

    .line 633
    .end local v21    # "m$iv$iv$iv":[J
    .end local v31    # "$i$f$multiForEach":I
    .end local v32    # "j$iv$iv$iv":I
    .end local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v0    # "bitCount$iv$iv$iv":I
    .local v2, "j$iv$iv$iv":I
    .local v9, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v10    # "m$iv$iv$iv":[J
    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v12, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v13, "$i$f$multiForEach":I
    .restart local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v20, "windowOffset":J
    .local v23, "lastIndex$iv$iv$iv":I
    .local v24, "i$iv$iv$iv":I
    :cond_2
    move/from16 v3, v23

    move-object/from16 v23, v11

    move v11, v3

    move/from16 v3, v24

    move-object/from16 v24, v12

    move v12, v3

    move/from16 v32, v2

    move/from16 v31, v13

    move-object/from16 v33, v14

    move-wide/from16 v2, v20

    move v13, v0

    move v14, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v0, p0

    move-wide v9, v7

    .line 614
    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v7    # "minDeadline":J
    .end local v10    # "m$iv$iv$iv":[J
    .end local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v27    # "it$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v28    # "$i$a$-forEachValue-ThrottledCallbacks$multiForEach$1$iv":I
    .end local v29    # "entry$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .local v2, "windowOffset":J
    .local v9, "minDeadline":J
    .local v11, "lastIndex$iv$iv$iv":I
    .local v12, "i$iv$iv$iv":I
    .local v13, "bitCount$iv$iv$iv":I
    .local v20, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v21    # "m$iv$iv$iv":[J
    .local v23, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v24, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v31    # "$i$f$multiForEach":I
    .restart local v32    # "j$iv$iv$iv":I
    .restart local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    nop

    .line 627
    .end local v25    # "index$iv$iv":I
    .end local v26    # "$i$a$-forEachIndexed-IntObjectMap$forEachValue$1$iv$iv":I
    goto :goto_4

    .line 624
    .end local v21    # "m$iv$iv$iv":[J
    .end local v22    # "index$iv$iv$iv":I
    .end local v31    # "$i$f$multiForEach":I
    .end local v32    # "j$iv$iv$iv":I
    .end local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v0    # "bitCount$iv$iv$iv":I
    .local v2, "j$iv$iv$iv":I
    .restart local v7    # "minDeadline":J
    .local v9, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v10    # "m$iv$iv$iv":[J
    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v12, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v13, "$i$f$multiForEach":I
    .restart local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v20, "windowOffset":J
    .local v23, "lastIndex$iv$iv$iv":I
    .local v24, "i$iv$iv$iv":I
    :cond_3
    move/from16 v3, v23

    move-object/from16 v23, v11

    move v11, v3

    move/from16 v3, v24

    move-object/from16 v24, v12

    move v12, v3

    move/from16 v32, v2

    move/from16 v31, v13

    move-object/from16 v33, v14

    move-wide/from16 v2, v20

    move v13, v0

    move v14, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v0, p0

    .line 634
    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "m$iv$iv$iv":[J
    .end local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v2, "windowOffset":J
    .local v11, "lastIndex$iv$iv$iv":I
    .local v12, "i$iv$iv$iv":I
    .local v13, "bitCount$iv$iv$iv":I
    .local v20, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v21    # "m$iv$iv$iv":[J
    .local v23, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v24, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v31    # "$i$f$multiForEach":I
    .restart local v32    # "j$iv$iv$iv":I
    .restart local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :goto_4
    shr-long v18, v18, v14

    .line 623
    add-int/lit8 v1, v32, 0x1

    move-object/from16 v0, v23

    move/from16 v23, v11

    move-object v11, v0

    move-object/from16 v0, v24

    move/from16 v24, v12

    move-object v12, v0

    move v0, v13

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v13, v31

    move-wide/from16 v20, v2

    move v2, v1

    move v1, v14

    move-object/from16 v14, v33

    .end local v32    # "j$iv$iv$iv":I
    .local v1, "j$iv$iv$iv":I
    goto/16 :goto_1

    .end local v1    # "j$iv$iv$iv":I
    .end local v21    # "m$iv$iv$iv":[J
    .end local v31    # "$i$f$multiForEach":I
    .end local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v0    # "bitCount$iv$iv$iv":I
    .local v2, "j$iv$iv$iv":I
    .restart local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v10    # "m$iv$iv$iv":[J
    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v12, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v13, "$i$f$multiForEach":I
    .restart local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v20, "windowOffset":J
    .local v23, "lastIndex$iv$iv$iv":I
    .local v24, "i$iv$iv$iv":I
    :cond_4
    move/from16 v3, v23

    move-object/from16 v23, v11

    move v11, v3

    move/from16 v3, v24

    move-object/from16 v24, v12

    move v12, v3

    move/from16 v32, v2

    move/from16 v31, v13

    move-object/from16 v33, v14

    move-wide/from16 v2, v20

    move v13, v0

    move v14, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v0, p0

    .line 636
    .end local v0    # "bitCount$iv$iv$iv":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "m$iv$iv$iv":[J
    .end local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v2, "windowOffset":J
    .local v11, "lastIndex$iv$iv$iv":I
    .local v12, "i$iv$iv$iv":I
    .local v13, "bitCount$iv$iv$iv":I
    .local v20, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v21    # "m$iv$iv$iv":[J
    .local v23, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v24, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v31    # "$i$f$multiForEach":I
    .restart local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    if-ne v13, v14, :cond_8

    goto :goto_5

    .line 620
    .end local v2    # "windowOffset":J
    .end local v21    # "m$iv$iv$iv":[J
    .end local v31    # "$i$f$multiForEach":I
    .end local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v10    # "m$iv$iv$iv":[J
    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v12, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .local v13, "$i$f$multiForEach":I
    .restart local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v20, "windowOffset":J
    .local v23, "lastIndex$iv$iv$iv":I
    .local v24, "i$iv$iv$iv":I
    :cond_5
    move/from16 v0, v23

    move-object/from16 v23, v11

    move v11, v0

    move/from16 v0, v24

    move-object/from16 v24, v12

    move v12, v0

    move-object/from16 v0, p0

    move/from16 v31, v13

    move-object/from16 v33, v14

    move-wide/from16 v2, v20

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 618
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "m$iv$iv$iv":[J
    .end local v13    # "$i$f$multiForEach":I
    .end local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v18    # "slot$iv$iv$iv":J
    .restart local v2    # "windowOffset":J
    .local v11, "lastIndex$iv$iv$iv":I
    .local v12, "i$iv$iv$iv":I
    .local v20, "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v21    # "m$iv$iv$iv":[J
    .local v23, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v24, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v31    # "$i$f$multiForEach":I
    .restart local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :goto_5
    if-eq v12, v11, :cond_7

    add-int/lit8 v1, v12, 0x1

    move v0, v11

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v13, v31

    move-object/from16 v14, v33

    .end local v12    # "i$iv$iv$iv":I
    .local v1, "i$iv$iv$iv":I
    goto/16 :goto_0

    .end local v20    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v21    # "m$iv$iv$iv":[J
    .end local v23    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v24    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v31    # "$i$f$multiForEach":I
    .end local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v0, "lastIndex$iv$iv$iv":I
    .restart local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v10    # "m$iv$iv$iv":[J
    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .local v12, "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v13    # "$i$f$multiForEach":I
    .restart local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_6
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v31, v13

    move-object/from16 v33, v14

    move v11, v0

    move-object/from16 v0, p0

    .line 639
    .end local v0    # "lastIndex$iv$iv$iv":I
    .end local v1    # "i$iv$iv$iv":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "m$iv$iv$iv":[J
    .end local v12    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v13    # "$i$f$multiForEach":I
    .end local v14    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .local v11, "lastIndex$iv$iv$iv":I
    .restart local v20    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .restart local v21    # "m$iv$iv$iv":[J
    .restart local v23    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .restart local v24    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .restart local v31    # "$i$f$multiForEach":I
    .restart local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    :cond_7
    nop

    .line 640
    .end local v11    # "lastIndex$iv$iv$iv":I
    .end local v16    # "$i$f$forEachIndexed":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v21    # "m$iv$iv$iv":[J
    :cond_8
    nop

    .line 641
    .end local v15    # "$i$f$forEachValue":I
    .end local v17    # "v$iv$iv":[Ljava/lang/Object;
    .end local v33    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    nop

    .line 264
    .end local v23    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v24    # "$this$multiForEach$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v31    # "$i$f$multiForEach":I
    iget-object v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    if-eqz v1, :cond_a

    .local v1, "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    move-object v12, v1

    .end local v1    # "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .local v12, "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v13, 0x0

    .line 642
    .local v13, "$i$f$linkedForEach":I
    move-object v14, v1

    move-wide v9, v7

    .line 643
    .end local v7    # "minDeadline":J
    .local v9, "minDeadline":J
    .local v14, "node$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    :goto_6
    if-eqz v14, :cond_9

    .line 644
    move-object v1, v14

    .local v1, "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    const/4 v15, 0x0

    .line 265
    .local v15, "$i$a$-linkedForEach-ThrottledCallbacks$triggerDebounced$2":I
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
    nop

    .line 271
    nop

    .line 272
    nop

    .line 266
    move-wide/from16 v7, p1

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->debounceEntry-b8qMvQI(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJJ)J

    move-result-wide v16

    .line 265
    move-wide/from16 v9, v16

    .line 274
    nop

    .line 644
    .end local v1    # "entry":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v15    # "$i$a$-linkedForEach-ThrottledCallbacks$triggerDebounced$2":I
    nop

    .line 645
    invoke-virtual {v14}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->getNext()Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-result-object v14

    goto :goto_6

    .line 647
    :cond_9
    move-wide v7, v9

    .line 275
    .end local v9    # "minDeadline":J
    .end local v11    # "this_$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks;
    .end local v12    # "$this$linkedForEach$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .end local v13    # "$i$f$linkedForEach":I
    .end local v14    # "node$iv":Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;
    .restart local v7    # "minDeadline":J
    :cond_a
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v1, v7, v9

    if-nez v1, :cond_b

    const-wide/16 v9, -0x1

    goto :goto_7

    :cond_b
    move-wide v9, v7

    :goto_7
    iput-wide v9, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 276
    return-void
.end method

.method public final updateOffsets-LDcG7Xg(JJ[FII)Z
    .locals 16
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-screen$0"    # J
    .param p3, "$v$c$androidx-compose-ui-unit-IntOffset$-window$0"    # J
    .param p5, "matrix"    # [F
    .param p6, "windowWidth"    # I
    .param p7, "windowHeight"    # I

    .line 110
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const/4 v6, 0x0

    .line 111
    .local v6, "updated":Z
    iget-wide v7, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    iput-wide v3, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 113
    const/4 v6, 0x1

    .line 115
    :cond_0
    iget-wide v7, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    iput-wide v1, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 117
    const/4 v6, 0x1

    .line 119
    :cond_1
    if-eqz v5, :cond_2

    .line 120
    iput-object v5, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 121
    const/4 v6, 0x1

    .line 123
    :cond_2
    move/from16 v7, p7

    .local v7, "y$iv":I
    move/from16 v8, p6

    .local v8, "x$iv":I
    const/4 v9, 0x0

    .line 537
    .local v9, "$i$f$packXY":I
    int-to-long v10, v8

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    int-to-long v12, v7

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    or-long v7, v10, v12

    .line 123
    .end local v7    # "y$iv":I
    .end local v8    # "x$iv":I
    .end local v9    # "$i$f$packXY":I
    nop

    .line 124
    .local v7, "size":J
    iget-wide v9, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowSize:J

    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    .line 125
    iput-wide v7, v0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowSize:J

    .line 126
    const/4 v6, 0x1

    .line 128
    :cond_3
    return v6
.end method
