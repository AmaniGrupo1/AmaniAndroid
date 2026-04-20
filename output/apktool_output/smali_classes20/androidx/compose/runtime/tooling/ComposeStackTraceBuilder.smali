.class public abstract Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;
.super Ljava/lang/Object;
.source "ComposeStackTraceBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeStackTraceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeStackTraceBuilder.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,373:1\n1#2:374\n35#3,5:375\n35#3,5:380\n*S KotlinDebug\n*F\n+ 1 ComposeStackTraceBuilder.kt\nandroidx/compose/runtime/tooling/ComposeStackTraceBuilder\n*L\n97#1:375,5\n177#1:380,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008!\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0002J&\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0013\u001a\u00020\u0001H\u0002J\u000c\u0010\u0014\u001a\u00020\u0015*\u00020\u000eH\u0002J,\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001J \u0010\u001a\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0001H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001dH&R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;",
        "",
        "<init>",
        "()V",
        "_trace",
        "",
        "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
        "trace",
        "",
        "appendTraceFrame",
        "",
        "groupKey",
        "",
        "groupSourceInformation",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "child",
        "extractTraceFrame",
        "targetChild",
        "sourceInformationOf",
        "group",
        "isCall",
        "",
        "processEdge",
        "objectKey",
        "sourceInformation",
        "childData",
        "appendGroupSourceInformation",
        "target",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "groupKeyOf",
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
.field private final _trace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->_trace:Ljava/util/List;

    .line 46
    return-void
.end method

.method private final appendGroupSourceInformation(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "groupKey"    # I
    .param p2, "sourceInformation"    # Landroidx/compose/runtime/GroupSourceInformation;
    .param p3, "target"    # Ljava/lang/Object;

    .line 154
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    .local v0, "children":Ljava/util/ArrayList;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 156
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getClosed()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 159
    invoke-direct {p0, p1, p2, v4}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V

    .line 160
    return v2

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getDataStartOffset()I

    move-result v3

    .line 164
    .local v3, "slotStart":I
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getDataEndOffset()I

    move-result v5

    .line 165
    .local v5, "slotEnd":I
    instance-of v6, p3, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 168
    move-object v6, p3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-gt v3, v6, :cond_1

    if-ge v6, v5, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-nez v6, :cond_3

    .line 169
    if-ne v3, v5, :cond_4

    instance-of v6, p3, Ljava/lang/Integer;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, p3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_4

    :cond_3
    move v1, v2

    .line 167
    :cond_4
    :goto_1
    nop

    .line 170
    .local v1, "found":Z
    if-eqz v1, :cond_5

    .line 171
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getKey()I

    move-result v2

    invoke-direct {p0, v2, p2, v4}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V

    .line 173
    :cond_5
    return v1

    .line 175
    .end local v1    # "found":Z
    :cond_6
    return v1

    .line 177
    .end local v3    # "slotStart":I
    .end local v5    # "slotEnd":I
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 380
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_b

    .line 381
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 382
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "child":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 179
    .local v9, "$i$a$-fastForEach-ComposeStackTraceBuilder$appendGroupSourceInformation$1":I
    nop

    .line 180
    instance-of v10, v8, Landroidx/compose/runtime/Anchor;

    if-eqz v10, :cond_8

    .line 182
    invoke-static {v8, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 183
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getKey()I

    move-result v1

    invoke-direct {p0, v1, p2, v8}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V

    .line 184
    return v2

    .line 187
    :cond_8
    instance-of v10, v8, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v10, :cond_a

    .line 188
    move-object v10, v8

    check-cast v10, Landroidx/compose/runtime/GroupSourceInformation;

    invoke-direct {p0, p1, v10, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendGroupSourceInformation(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)Z

    move-result v10

    .line 189
    .local v10, "found":Z
    if-eqz v10, :cond_9

    .line 190
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupSourceInformation;->getKey()I

    move-result v1

    invoke-direct {p0, v1, p2, v8}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V

    .line 191
    return v2

    .line 196
    .end local v10    # "found":Z
    :cond_9
    nop

    .line 382
    .end local v8    # "child":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ComposeStackTraceBuilder$appendGroupSourceInformation$1":I
    nop

    .line 380
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 191
    .restart local v7    # "item$iv":Ljava/lang/Object;
    .restart local v8    # "child":Ljava/lang/Object;
    .restart local v9    # "$i$a$-fastForEach-ComposeStackTraceBuilder$appendGroupSourceInformation$1":I
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected child source info "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    .end local v5    # "index$iv":I
    .end local v7    # "item$iv":Ljava/lang/Object;
    .end local v8    # "child":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ComposeStackTraceBuilder$appendGroupSourceInformation$1":I
    :cond_b
    nop

    .line 197
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    return v1
.end method

.method private final appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V
    .locals 2
    .param p1, "groupKey"    # I
    .param p2, "groupSourceInformation"    # Landroidx/compose/runtime/GroupSourceInformation;
    .param p3, "child"    # Ljava/lang/Object;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->extractTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    move-result-object v0

    .line 57
    .local v0, "frame":Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->_trace:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    return-void
.end method

.method private final extractTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;
    .locals 20
    .param p1, "groupKey"    # I
    .param p2, "groupSourceInformation"    # Landroidx/compose/runtime/GroupSourceInformation;
    .param p3, "targetChild"    # Ljava/lang/Object;

    .line 68
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 374
    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-let-ComposeStackTraceBuilder$extractTraceFrame$parsed$1":I
    invoke-static {v4}, Landroidx/compose/runtime/tooling/SourceInformationKt;->parseSourceInformation(Ljava/lang/String;)Landroidx/compose/runtime/tooling/SourceInformation;

    move-result-object v4

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-ComposeStackTraceBuilder$extractTraceFrame$parsed$1":I
    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 69
    .local v4, "parsed":Landroidx/compose/runtime/tooling/SourceInformation;
    :goto_0
    if-eqz v4, :cond_d

    .line 70
    if-nez v2, :cond_1

    .line 72
    new-instance v5, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-direct {v5, v1, v4, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    return-object v5

    .line 75
    :cond_1
    const/4 v5, 0x0

    .line 76
    .local v5, "callCount":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v6

    .line 77
    .local v6, "children":Ljava/util/ArrayList;
    if-eqz v6, :cond_c

    .line 78
    const/4 v7, 0x0

    .local v7, "childIndex":I
    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_c

    .line 79
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 80
    .local v9, "child":Ljava/lang/Object;
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 81
    invoke-direct {v0, v9}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->sourceInformationOf(Ljava/lang/Object;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v10

    .line 86
    .local v10, "sourceInfo":Landroidx/compose/runtime/GroupSourceInformation;
    if-eqz v10, :cond_3

    .line 87
    invoke-virtual {v10}, Landroidx/compose/runtime/GroupSourceInformation;->getKey()I

    move-result v13

    const/16 v14, -0x7f

    if-eq v13, v14, :cond_2

    .line 88
    invoke-virtual {v10}, Landroidx/compose/runtime/GroupSourceInformation;->getKey()I

    move-result v13

    if-nez v13, :cond_3

    .line 89
    instance-of v13, v9, Landroidx/compose/runtime/Anchor;

    if-eqz v13, :cond_3

    .line 90
    move-object v13, v9

    check-cast v13, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->groupKeyOf(Landroidx/compose/runtime/Anchor;)I

    move-result v13

    if-ne v13, v14, :cond_3

    :cond_2
    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    .line 85
    :goto_2
    nop

    .line 94
    .local v13, "isDefaultGroup":Z
    if-eqz v13, :cond_9

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_4
    move-object v14, v3

    :goto_3
    if-nez v14, :cond_9

    .line 97
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_b

    check-cast v14, Ljava/util/List;

    .local v14, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 375
    .local v15, "$i$f$fastForEach":I
    const/16 v16, 0x0

    .local v16, "index$iv":I
    move-object/from16 v17, v14

    check-cast v17, Ljava/util/Collection;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v11

    move/from16 v3, v16

    .end local v16    # "index$iv":I
    .local v3, "index$iv":I
    :goto_4
    if-ge v3, v11, :cond_8

    .line 376
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 377
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 98
    .local v19, "$i$a$-fastForEach-ComposeStackTraceBuilder$extractTraceFrame$1":I
    move-object/from16 v12, v18

    .end local v18    # "it":Ljava/lang/Object;
    .local v12, "it":Ljava/lang/Object;
    invoke-direct {v0, v12}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->sourceInformationOf(Ljava/lang/Object;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {v0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->isCall(Landroidx/compose/runtime/GroupSourceInformation;)Z

    move-result v2

    move/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "index$iv":I
    .local v18, "index$iv":I
    if-ne v2, v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    .end local v18    # "index$iv":I
    .restart local v3    # "index$iv":I
    :cond_5
    move/from16 v18, v3

    .end local v3    # "index$iv":I
    .restart local v18    # "index$iv":I
    :cond_6
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_7

    .line 99
    add-int/lit8 v5, v5, 0x1

    .line 101
    :cond_7
    nop

    .line 377
    .end local v12    # "it":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ComposeStackTraceBuilder$extractTraceFrame$1":I
    nop

    .line 375
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v2, p3

    .end local v18    # "index$iv":I
    .restart local v3    # "index$iv":I
    goto :goto_4

    :cond_8
    move/from16 v18, v3

    .line 379
    .end local v3    # "index$iv":I
    nop

    .end local v14    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v15    # "$i$f$fastForEach":I
    goto :goto_7

    .line 103
    :cond_9
    if-eqz v10, :cond_a

    invoke-direct {v0, v10}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->isCall(Landroidx/compose/runtime/GroupSourceInformation;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    move v11, v3

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_b

    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 78
    .end local v9    # "child":Ljava/lang/Object;
    .end local v10    # "sourceInfo":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v13    # "isDefaultGroup":Z
    :cond_b
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 109
    .end local v7    # "childIndex":I
    :cond_c
    new-instance v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v4, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    return-object v2

    .line 111
    .end local v5    # "callCount":I
    .end local v6    # "children":Ljava/util/ArrayList;
    :cond_d
    new-instance v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    return-object v2
.end method

.method private final isCall(Landroidx/compose/runtime/GroupSourceInformation;)Z
    .locals 5
    .param p1, "$this$isCall"    # Landroidx/compose/runtime/GroupSourceInformation;

    .line 122
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "C"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private final sourceInformationOf(Ljava/lang/Object;)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 3
    .param p1, "group"    # Ljava/lang/Object;

    .line 115
    nop

    .line 116
    instance-of v0, p1, Landroidx/compose/runtime/Anchor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->sourceInformationOf(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/GroupSourceInformation;

    .line 119
    :goto_0
    return-object v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected child source info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract groupKeyOf(Landroidx/compose/runtime/Anchor;)I
.end method

.method public final processEdge(ILjava/lang/Object;Landroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V
    .locals 2
    .param p1, "groupKey"    # I
    .param p2, "objectKey"    # Ljava/lang/Object;
    .param p3, "sourceInformation"    # Landroidx/compose/runtime/GroupSourceInformation;
    .param p4, "childData"    # Ljava/lang/Object;

    .line 130
    nop

    .line 131
    if-nez p3, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    if-eqz p4, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendGroupSourceInformation(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)Z

    move-result v0

    .line 140
    .local v0, "found":Z
    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroidx/compose/runtime/GroupSourceInformation;->getClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    invoke-direct {p0, p1, p3, p4}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    .end local v0    # "found":Z
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->appendTraceFrame(ILandroidx/compose/runtime/GroupSourceInformation;Ljava/lang/Object;)V

    .line 147
    :cond_3
    :goto_1
    return-void
.end method

.method public abstract sourceInformationOf(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/GroupSourceInformation;
.end method

.method public final trace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->_trace:Ljava/util/List;

    return-object v0
.end method
