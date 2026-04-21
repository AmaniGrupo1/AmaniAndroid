.class Landroidx/transition/ChangeImageTransform$Listener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeImageTransform.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeImageTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field private final mEndMatrix:Landroid/graphics/Matrix;

.field private final mImageView:Landroid/widget/ImageView;

.field private mIsBeforeAnimator:Z

.field private final mStartMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "startMatrix"    # Landroid/graphics/Matrix;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    .line 263
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mIsBeforeAnimator:Z

    .line 264
    iput-object p1, p0, Landroidx/transition/ChangeImageTransform$Listener;->mImageView:Landroid/widget/ImageView;

    .line 265
    iput-object p2, p0, Landroidx/transition/ChangeImageTransform$Listener;->mStartMatrix:Landroid/graphics/Matrix;

    .line 266
    iput-object p3, p0, Landroidx/transition/ChangeImageTransform$Listener;->mEndMatrix:Landroid/graphics/Matrix;

    .line 267
    return-void
.end method

.method private restoreMatrix()V
    .locals 4

    .line 325
    iget-object v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mImageView:Landroid/widget/ImageView;

    sget v1, Landroidx/transition/R$id;->transition_image_transform:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 326
    .local v0, "pauseMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Landroidx/transition/ChangeImageTransform$Listener;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Landroidx/transition/ImageViewUtils;->animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 328
    iget-object v1, p0, Landroidx/transition/ChangeImageTransform$Listener;->mImageView:Landroid/widget/ImageView;

    sget v2, Landroidx/transition/R$id;->transition_image_transform:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 330
    :cond_0
    return-void
.end method

.method private saveMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "pauseMatrix"    # Landroid/graphics/Matrix;

    .line 333
    iget-object v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mImageView:Landroid/widget/ImageView;

    sget v1, Landroidx/transition/R$id;->transition_image_transform:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/transition/ChangeImageTransform$Listener;->mEndMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroidx/transition/ImageViewUtils;->animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 335
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mIsBeforeAnimator:Z

    .line 311
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 305
    iput-boolean p2, p0, Landroidx/transition/ChangeImageTransform$Listener;->mIsBeforeAnimator:Z

    .line 306
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 315
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 316
    .local v0, "pauseMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v0}, Landroidx/transition/ChangeImageTransform$Listener;->saveMatrix(Landroid/graphics/Matrix;)V

    .line 317
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 321
    invoke-direct {p0}, Landroidx/transition/ChangeImageTransform$Listener;->restoreMatrix()V

    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mIsBeforeAnimator:Z

    .line 301
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mIsBeforeAnimator:Z

    .line 296
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 279
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 275
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 283
    iget-boolean v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mIsBeforeAnimator:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroidx/transition/ChangeImageTransform$Listener;->mStartMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroidx/transition/ChangeImageTransform$Listener;->saveMatrix(Landroid/graphics/Matrix;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 290
    invoke-direct {p0}, Landroidx/transition/ChangeImageTransform$Listener;->restoreMatrix()V

    .line 291
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 271
    return-void
.end method
