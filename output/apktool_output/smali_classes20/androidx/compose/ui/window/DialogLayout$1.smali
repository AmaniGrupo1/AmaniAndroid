.class public final Landroidx/compose/ui/window/DialogLayout$1;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "AndroidDialog.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/DialogLayout$1\n+ 2 AndroidDialog.android.kt\nandroidx/compose/ui/window/DialogLayout\n*L\n1#1,766:1\n429#2,12:767\n429#2,12:779\n*S KotlinDebug\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/DialogLayout$1\n*L\n268#1:767,12\n274#1:779,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/compose/ui/window/DialogLayout$1",
        "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;",
        "onStart",
        "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;",
        "animation",
        "Landroidx/core/view/WindowInsetsAnimationCompat;",
        "bounds",
        "onProgress",
        "Landroidx/core/view/WindowInsetsCompat;",
        "insets",
        "runningAnimations",
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


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/window/DialogLayout;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/DialogLayout;)V
    .locals 1
    .param p1, "$receiver"    # Landroidx/compose/ui/window/DialogLayout;

    iput-object p1, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroidx/compose/ui/window/DialogLayout;

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 16
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p2, "runningAnimations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroidx/compose/ui/window/DialogLayout;

    .local v1, "this_$iv":Landroidx/compose/ui/window/DialogLayout;
    move-object/from16 v2, p1

    .local v2, "unchangedValue$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 779
    .local v3, "$i$f$insetValue":I
    invoke-static {v1}, Landroidx/compose/ui/window/DialogLayout;->access$getDecorFitsSystemWindows$p(Landroidx/compose/ui/window/DialogLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    move-object/from16 v14, p1

    goto :goto_1

    .line 782
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/compose/ui/window/DialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 783
    .local v5, "child$iv":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 784
    .local v6, "left$iv":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 785
    .local v7, "top$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogLayout;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 786
    .local v8, "right$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogLayout;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 787
    .local v4, "bottom$iv":I
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    .line 788
    move-object/from16 v14, p1

    move-object v15, v2

    goto :goto_0

    .line 790
    :cond_1
    move v9, v6

    .local v9, "l":I
    move v10, v8

    .local v10, "r":I
    move v11, v7

    .local v11, "t":I
    move v12, v4

    .local v12, "b":I
    const/4 v13, 0x0

    .line 274
    .local v13, "$i$a$-insetValue-DialogLayout$1$onProgress$1":I
    move-object/from16 v14, p1

    invoke-virtual {v14, v9, v11, v10, v12}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v15

    .line 790
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    .end local v12    # "b":I
    .end local v13    # "$i$a$-insetValue-DialogLayout$1$onProgress$1":I
    :goto_0
    nop

    .line 787
    move-object v2, v15

    .line 274
    .end local v1    # "this_$iv":Landroidx/compose/ui/window/DialogLayout;
    .end local v2    # "unchangedValue$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$insetValue":I
    .end local v4    # "bottom$iv":I
    .end local v5    # "child$iv":Landroid/view/View;
    .end local v6    # "left$iv":I
    .end local v7    # "top$iv":I
    .end local v8    # "right$iv":I
    :goto_1
    return-object v2
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 16
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "bounds"    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroidx/compose/ui/window/DialogLayout;

    .local v1, "this_$iv":Landroidx/compose/ui/window/DialogLayout;
    move-object/from16 v2, p2

    .local v2, "unchangedValue$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 767
    .local v3, "$i$f$insetValue":I
    invoke-static {v1}, Landroidx/compose/ui/window/DialogLayout;->access$getDecorFitsSystemWindows$p(Landroidx/compose/ui/window/DialogLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    move-object/from16 v15, p2

    goto :goto_1

    .line 770
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/compose/ui/window/DialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 771
    .local v5, "child$iv":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 772
    .local v6, "left$iv":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 773
    .local v7, "top$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogLayout;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 774
    .local v8, "right$iv":I
    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogLayout;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 775
    .local v4, "bottom$iv":I
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    .line 776
    move-object/from16 v15, p2

    move-object v14, v2

    goto :goto_0

    .line 778
    :cond_1
    move v9, v6

    .local v9, "l":I
    move v10, v8

    .local v10, "r":I
    move v11, v7

    .local v11, "t":I
    move v12, v4

    .local v12, "b":I
    const/4 v13, 0x0

    .line 268
    .local v13, "$i$a$-insetValue-DialogLayout$1$onStart$1":I
    invoke-static {v9, v11, v10, v12}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->inset(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v14

    .line 778
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    .end local v12    # "b":I
    .end local v13    # "$i$a$-insetValue-DialogLayout$1$onStart$1":I
    :goto_0
    nop

    .line 775
    move-object v2, v14

    .line 268
    .end local v1    # "this_$iv":Landroidx/compose/ui/window/DialogLayout;
    .end local v2    # "unchangedValue$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$insetValue":I
    .end local v4    # "bottom$iv":I
    .end local v5    # "child$iv":Landroid/view/View;
    .end local v6    # "left$iv":I
    .end local v7    # "top$iv":I
    .end local v8    # "right$iv":I
    :goto_1
    return-object v2
.end method
