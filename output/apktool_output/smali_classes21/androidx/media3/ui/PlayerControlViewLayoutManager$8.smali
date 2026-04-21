.class Landroidx/media3/ui/PlayerControlViewLayoutManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/ui/PlayerControlViewLayoutManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 329
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 341
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$1000(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$1000(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 332
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 335
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 337
    :cond_0
    return-void
.end method
