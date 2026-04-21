.class final Landroidx/compose/foundation/text/selection/MultiSelectionLayout;
.super Ljava/lang/Object;
.source "SelectionLayout.kt"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/MultiSelectionLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionLayout.kt\nandroidx/compose/foundation/text/selection/MultiSelectionLayout\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,739:1\n51#2,4:740\n51#2,4:744\n51#2,4:749\n1#3:748\n71#4,5:753\n*S KotlinDebug\n*F\n+ 1 SelectionLayout.kt\nandroidx/compose/foundation/text/selection/MultiSelectionLayout\n*L\n147#1:740,4\n224#1:744,4\n264#1:749,4\n281#1:753,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001c\u0010+\u001a\u00020,2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020,0.H\u0016J\u0012\u0010/\u001a\u00020\u000b2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u0016J\u0010\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u0000H\u0002J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u00020\r032\u0006\u00104\u001a\u00020\rH\u0016J2\u00105\u001a\u00020,*\u0008\u0012\u0004\u0012\u00020\r062\u0006\u00104\u001a\u00020\r2\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u0008H\u0002J\u0008\u0010:\u001a\u00020;H\u0016J\u0018\u0010<\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u00082\u0006\u0010>\u001a\u00020\u000bH\u0002J\u0018\u0010?\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u00082\u0006\u0010@\u001a\u00020\u000bH\u0002J\u0010\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020CH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\t\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0017R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\"R\u0014\u0010%\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\"R\u0014\u0010\'\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\"R\u0014\u0010)\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\"\u00a8\u0006D"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/MultiSelectionLayout;",
        "Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "selectableIdToInfoListIndex",
        "Landroidx/collection/LongIntMap;",
        "infoList",
        "",
        "Landroidx/compose/foundation/text/selection/SelectableInfo;",
        "startSlot",
        "",
        "endSlot",
        "isStartHandle",
        "",
        "previousSelection",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "<init>",
        "(Landroidx/collection/LongIntMap;Ljava/util/List;IIZLandroidx/compose/foundation/text/selection/Selection;)V",
        "getSelectableIdToInfoListIndex",
        "()Landroidx/collection/LongIntMap;",
        "getInfoList",
        "()Ljava/util/List;",
        "getStartSlot",
        "()I",
        "getEndSlot",
        "()Z",
        "getPreviousSelection",
        "()Landroidx/compose/foundation/text/selection/Selection;",
        "size",
        "getSize",
        "crossStatus",
        "Landroidx/compose/foundation/text/selection/CrossStatus;",
        "getCrossStatus",
        "()Landroidx/compose/foundation/text/selection/CrossStatus;",
        "startInfo",
        "getStartInfo",
        "()Landroidx/compose/foundation/text/selection/SelectableInfo;",
        "endInfo",
        "getEndInfo",
        "currentInfo",
        "getCurrentInfo",
        "firstInfo",
        "getFirstInfo",
        "lastInfo",
        "getLastInfo",
        "forEachMiddleInfo",
        "",
        "block",
        "Lkotlin/Function1;",
        "shouldRecomputeSelection",
        "other",
        "shouldAnyInfoRecomputeSelection",
        "createSubSelections",
        "Landroidx/collection/LongObjectMap;",
        "selection",
        "createAndPutSubSelection",
        "Landroidx/collection/MutableLongObjectMap;",
        "info",
        "minOffset",
        "maxOffset",
        "toString",
        "",
        "startOrEndSlotToIndex",
        "slot",
        "isStartSlot",
        "slotToIndex",
        "isMinimumSlot",
        "getInfoListIndexBySelectableId",
        "id",
        "",
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
.field private final endSlot:I

.field private final infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/text/selection/SelectableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isStartHandle:Z

.field private final previousSelection:Landroidx/compose/foundation/text/selection/Selection;

.field private final selectableIdToInfoListIndex:Landroidx/collection/LongIntMap;

.field private final startSlot:I


# direct methods
.method public static synthetic $r8$lambda$pajnAe26Gsbv6PeF8wRLc1rNhPY(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->createSubSelections$lambda$1$1(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/collection/LongIntMap;Ljava/util/List;IIZLandroidx/compose/foundation/text/selection/Selection;)V
    .locals 5
    .param p1, "selectableIdToInfoListIndex"    # Landroidx/collection/LongIntMap;
    .param p2, "infoList"    # Ljava/util/List;
    .param p3, "startSlot"    # I
    .param p4, "endSlot"    # I
    .param p5, "isStartHandle"    # Z
    .param p6, "previousSelection"    # Landroidx/compose/foundation/text/selection/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongIntMap;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/text/selection/SelectableInfo;",
            ">;IIZ",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->selectableIdToInfoListIndex:Landroidx/collection/LongIntMap;

    .line 140
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    .line 141
    iput p3, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->startSlot:I

    .line 142
    iput p4, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->endSlot:I

    .line 143
    iput-boolean p5, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->isStartHandle:Z

    .line 144
    iput-object p6, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    .line 146
    nop

    .line 147
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v0, 0x0

    .line 740
    .local v0, "$i$f$checkPrecondition":I
    if-nez v1, :cond_1

    .line 741
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$a$-checkPrecondition-MultiSelectionLayout$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MultiSelectionLayout requires an infoList size greater than 1, was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 741
    .end local v2    # "$i$a$-checkPrecondition-MultiSelectionLayout$1":I
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 743
    :cond_1
    nop

    .line 150
    .end local v0    # "$i$f$checkPrecondition":I
    .end local v1    # "value$iv":Z
    nop

    .line 138
    return-void
.end method

.method private final createAndPutSubSelection(Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;II)V
    .locals 6
    .param p1, "$this$createAndPutSubSelection"    # Landroidx/collection/MutableLongObjectMap;
    .param p2, "selection"    # Landroidx/compose/foundation/text/selection/Selection;
    .param p3, "info"    # Landroidx/compose/foundation/text/selection/SelectableInfo;
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableLongObjectMap<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Landroidx/compose/foundation/text/selection/SelectableInfo;",
            "II)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p3, p5, p4}, Landroidx/compose/foundation/text/selection/SelectableInfo;->makeSingleLayoutSelection(II)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p3, p4, p5}, Landroidx/compose/foundation/text/selection/SelectableInfo;->makeSingleLayoutSelection(II)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    .line 256
    :goto_0
    nop

    .line 255
    nop

    .line 264
    .local v0, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    if-gt p4, p5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_1
    const/4 v2, 0x0

    .line 749
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_2

    .line 750
    const/4 v3, 0x0

    .line 265
    .local v3, "$i$a$-checkPrecondition-MultiSelectionLayout$createAndPutSubSelection$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minOffset should be less than or equal to maxOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 750
    .end local v3    # "$i$a$-checkPrecondition-MultiSelectionLayout$createAndPutSubSelection$1":I
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 752
    :cond_2
    nop

    .line 268
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Landroidx/collection/MutableLongObjectMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method private static final createSubSelections$lambda$1$1(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)Lkotlin/Unit;
    .locals 6
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/MultiSelectionLayout;
    .param p1, "$this_apply"    # Landroidx/collection/MutableLongObjectMap;
    .param p2, "$selection"    # Landroidx/compose/foundation/text/selection/Selection;
    .param p3, "info"    # Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 242
    const/4 v4, 0x0

    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLength()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p0    # "this$0":Landroidx/compose/foundation/text/selection/MultiSelectionLayout;
    .end local p1    # "$this_apply":Landroidx/collection/MutableLongObjectMap;
    .end local p2    # "$selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local p3    # "info":Landroidx/compose/foundation/text/selection/SelectableInfo;
    .local v0, "this$0":Landroidx/compose/foundation/text/selection/MultiSelectionLayout;
    .local v1, "$this_apply":Landroidx/collection/MutableLongObjectMap;
    .local v2, "$selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v3, "info":Landroidx/compose/foundation/text/selection/SelectableInfo;
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->createAndPutSubSelection(Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;II)V

    .line 243
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getInfoListIndexBySelectableId(J)I
    .locals 4
    .param p1, "id"    # J

    .line 312
    nop

    .line 313
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->selectableIdToInfoListIndex:Landroidx/collection/LongIntMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongIntMap;->get(J)I

    move-result v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid selectableId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final shouldAnyInfoRecomputeSelection(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;)Z
    .locals 6
    .param p1, "other"    # Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    .line 208
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 209
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 210
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 211
    .local v3, "thisInfo":Landroidx/compose/foundation/text/selection/SelectableInfo;
    iget-object v4, p1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 212
    .local v4, "otherInfo":Landroidx/compose/foundation/text/selection/SelectableInfo;
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/SelectableInfo;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectableInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    return v2

    .line 209
    .end local v3    # "thisInfo":Landroidx/compose/foundation/text/selection/SelectableInfo;
    .end local v4    # "otherInfo":Landroidx/compose/foundation/text/selection/SelectableInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final slotToIndex(IZ)I
    .locals 2
    .param p1, "slot"    # I
    .param p2, "isMinimumSlot"    # Z

    .line 307
    xor-int/lit8 v0, p2, 0x1

    .line 308
    .local v0, "slotAdjustment":I
    sub-int v1, p1, v0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private final startOrEndSlotToIndex(IZ)I
    .locals 2
    .param p1, "slot"    # I
    .param p2, "isStartSlot"    # Z

    .line 294
    nop

    .line 295
    nop

    .line 297
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/CrossStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 302
    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    :pswitch_1
    move v1, p2

    goto :goto_0

    .line 300
    :pswitch_2
    nop

    .line 294
    :goto_0
    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->slotToIndex(IZ)I

    move-result v0

    .line 304
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createSubSelections(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/collection/LongObjectMap;
    .locals 9
    .param p1, "selection"    # Landroidx/compose/foundation/text/selection/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Landroidx/collection/LongObjectMap<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 225
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v1

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 224
    :goto_0
    nop

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 744
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_3

    .line 745
    const/4 v2, 0x0

    .line 228
    .local v2, "$i$a$-checkPrecondition-MultiSelectionLayout$createSubSelections$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpectedly miss-crossed selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 745
    .end local v2    # "$i$a$-checkPrecondition-MultiSelectionLayout$createSubSelections$1":I
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 747
    :cond_3
    nop

    .line 230
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroidx/collection/LongObjectMapKt;->longObjectMapOf(JLjava/lang/Object;)Landroidx/collection/LongObjectMap;

    move-result-object v0

    move-object v3, p1

    goto :goto_3

    .line 232
    :cond_4
    invoke-static {}, Landroidx/collection/LongObjectMapKt;->mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;

    move-result-object v0

    move-object v2, v0

    .local v2, "$this$createSubSelections_u24lambda_u241":Landroidx/collection/MutableLongObjectMap;
    const/4 v7, 0x0

    .line 233
    .local v7, "$i$a$-apply-MultiSelectionLayout$createSubSelections$2":I
    move-object v1, p1

    .line 748
    .local v1, "$this$createSubSelections_u24lambda_u241_u240":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v3, 0x0

    .line 233
    .local v3, "$i$a$-with-MultiSelectionLayout$createSubSelections$2$minAnchor$1":I
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    .end local v1    # "$this$createSubSelections_u24lambda_u241_u240":Landroidx/compose/foundation/text/selection/Selection;
    .end local v3    # "$i$a$-with-MultiSelectionLayout$createSubSelections$2$minAnchor$1":I
    :goto_1
    move-object v8, v4

    .line 234
    .local v8, "minAnchor":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    nop

    .line 235
    nop

    .line 236
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getFirstInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v4

    .line 237
    invoke-virtual {v8}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v5

    .line 238
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getFirstInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLength()I

    move-result v6

    .line 234
    move-object v1, p0

    move-object v3, p1

    .end local p1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v3, "selection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->createAndPutSubSelection(Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;II)V

    .line 241
    new-instance p1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2, v3}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->forEachMiddleInfo(Lkotlin/jvm/functions/Function1;)V

    .line 245
    move-object p1, v3

    .line 748
    .local p1, "$this$createSubSelections_u24lambda_u241_u242":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v4, 0x0

    .line 245
    .local v4, "$i$a$-with-MultiSelectionLayout$createSubSelections$2$maxAnchor$1":I
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    .end local v4    # "$i$a$-with-MultiSelectionLayout$createSubSelections$2$maxAnchor$1":I
    .end local p1    # "$this$createSubSelections_u24lambda_u241_u242":Landroidx/compose/foundation/text/selection/Selection;
    :goto_2
    move-object p1, v5

    .line 246
    .local p1, "maxAnchor":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getLastInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->createAndPutSubSelection(Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;II)V

    .line 247
    nop

    .line 232
    .end local v2    # "$this$createSubSelections_u24lambda_u241":Landroidx/collection/MutableLongObjectMap;
    .end local v7    # "$i$a$-apply-MultiSelectionLayout$createSubSelections$2":I
    .end local v8    # "minAnchor":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local p1    # "maxAnchor":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    check-cast v0, Landroidx/collection/LongObjectMap;

    .line 247
    :goto_3
    return-object v0
.end method

.method public forEachMiddleInfo(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/SelectableInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getFirstInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getSelectableId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getInfoListIndexBySelectableId(J)I

    move-result v0

    .line 188
    .local v0, "minIndex":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getLastInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getSelectableId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getInfoListIndexBySelectableId(J)I

    move-result v1

    .line 189
    .local v1, "maxIndex":I
    add-int/lit8 v2, v0, 0x1

    if-lt v2, v1, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 194
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;
    .locals 2

    .line 160
    nop

    .line 161
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndSlot()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Landroidx/compose/foundation/text/selection/CrossStatus;->NOT_CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndSlot()I

    move-result v1

    if-le v0, v1, :cond_1

    sget-object v0, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectableInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0
.end method

.method public getCurrentInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEndInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 3

    .line 175
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndSlot()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->startOrEndSlotToIndex(IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-object v0
.end method

.method public getEndSlot()I
    .locals 1

    .line 142
    iget v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->endSlot:I

    return v0
.end method

.method public getFirstInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/text/selection/SelectableInfo;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    return-object v0
.end method

.method public getLastInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPreviousSelection()Landroidx/compose/foundation/text/selection/Selection;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    return-object v0
.end method

.method public final getSelectableIdToInfoListIndex()Landroidx/collection/LongIntMap;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->selectableIdToInfoListIndex:Landroidx/collection/LongIntMap;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStartInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 3

    .line 172
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->startOrEndSlotToIndex(IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-object v0
.end method

.method public getStartSlot()I
    .locals 1

    .line 141
    iget v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->startSlot:I

    return v0
.end method

.method public isStartHandle()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->isStartHandle:Z

    return v0
.end method

.method public shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z
    .locals 2
    .param p1, "other"    # Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 199
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getPreviousSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    if-eqz p1, :cond_1

    .line 201
    instance-of v0, p1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->isStartHandle()Z

    move-result v0

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->isStartHandle()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndSlot()I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndSlot()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 205
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->shouldAnyInfoRecomputeSelection(Landroidx/compose/foundation/text/selection/MultiSelectionLayout;)Z

    move-result v0

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

.method public toString()Ljava/lang/String;
    .locals 15

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MultiSelectionLayout(isStartHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->isStartHandle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getStartSlot()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    nop

    .line 272
    const-string v1, ", endPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getEndSlot()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    nop

    .line 272
    const-string v1, ", crossed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    nop

    .line 272
    const-string v1, ", infos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    .local v2, "$this$toString_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 278
    .local v3, "$i$a$-buildString-MultiSelectionLayout$toString$1":I
    const-string/jumbo v4, "[\n\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v4, 0x0

    .local v4, "first":Z
    const/4 v4, 0x1

    .line 280
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->infoList:Ljava/util/List;

    .line 281
    nop

    .local v5, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 753
    .local v6, "$i$f$fastForEachIndexed":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    .line 754
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 755
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .local v10, "info":Landroidx/compose/foundation/text/selection/SelectableInfo;
    move v11, v7

    .local v11, "index":I
    const/4 v12, 0x0

    .line 282
    .local v12, "$i$a$-fastForEachIndexed-MultiSelectionLayout$toString$1$1":I
    if-eqz v4, :cond_0

    .line 283
    const/4 v4, 0x0

    goto :goto_1

    .line 285
    :cond_0
    const-string v13, ",\n\t"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    nop

    .line 755
    .end local v10    # "info":Landroidx/compose/foundation/text/selection/SelectableInfo;
    .end local v11    # "index":I
    .end local v12    # "$i$a$-fastForEachIndexed-MultiSelectionLayout$toString$1$1":I
    nop

    .line 753
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 757
    .end local v7    # "index$iv":I
    :cond_1
    nop

    .line 289
    .end local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    const-string v5, "\n]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    nop

    .line 277
    .end local v2    # "$this$toString_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-MultiSelectionLayout$toString$1":I
    .end local v4    # "first":Z
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    return-object v0
.end method
