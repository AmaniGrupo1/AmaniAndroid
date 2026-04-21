.class public final Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/SelectStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/SelectStage$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1328:1\n11165#2:1329\n11500#2,3:1330\n37#3,2:1333\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/SelectStage$Companion\n*L\n907#1:1329\n907#1:1330,3\n907#1:1333,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\nJ)\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/google/firebase/firestore/pipeline/SelectStage;",
        "selection",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "additionalSelections",
        "",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;",
        "fieldName",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs of(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;
    .locals 16
    .param p1, "selection"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .param p2, "additionalSelections"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "selection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalSelections"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    nop

    .line 907
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/firebase/firestore/pipeline/Selectable;->Companion:Lcom/google/firebase/firestore/pipeline/Selectable$Companion;

    move-object/from16 v4, p2

    .local v4, "$this$map$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1329
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1330
    .local v8, "$i$f$mapTo":I
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_0

    aget-object v12, v7, v11

    .line 1331
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "p0":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "$i$f$of$stub_for_inlining":I
    const/4 v15, 0x0

    .line 907
    .local v15, "$i$a$-map-SelectStage$Companion$of$1":I
    invoke-virtual {v3, v13}, Lcom/google/firebase/firestore/pipeline/Selectable$Companion;->toSelectable(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Selectable;

    move-result-object v13

    .line 1331
    .end local v13    # "p0":Ljava/lang/Object;
    .end local v14    # "$i$f$of$stub_for_inlining":I
    .end local v15    # "$i$a$-map-SelectStage$Companion$of$1":I
    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1330
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1332
    :cond_0
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$mapTo":I
    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 1329
    nop

    .end local v4    # "$this$map$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$map":I
    check-cast v3, Ljava/util/Collection;

    .line 907
    nop

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 1333
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 1334
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    new-array v6, v10, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 907
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 908
    sget-object v3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 906
    new-instance v4, Lcom/google/firebase/firestore/pipeline/SelectStage;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lcom/google/firebase/firestore/pipeline/SelectStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 909
    return-object v4
.end method

.method public final varargs of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "additionalSelections"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalSelections"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Selectable;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object v0

    return-object v0
.end method
