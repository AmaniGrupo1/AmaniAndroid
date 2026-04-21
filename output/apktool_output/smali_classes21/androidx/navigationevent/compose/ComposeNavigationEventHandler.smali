.class final Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "NavigationEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">",
        "Landroidx/navigationevent/NavigationEventHandler<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B%\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0008\u0010\u001e\u001a\u00020\u0008H\u0014J\u0008\u0010\u001f\u001a\u00020\u0008H\u0014J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0010\u0010!\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0008\u0010\"\u001a\u00020\u0008H\u0014J\u0008\u0010#\u001a\u00020\u0008H\u0014R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R \u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R \u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/navigationevent/compose/ComposeNavigationEventHandler;",
        "T",
        "Landroidx/navigationevent/NavigationEventInfo;",
        "Landroidx/navigationevent/NavigationEventHandler;",
        "initialInfo",
        "onTransitionStateChanged",
        "Lkotlin/Function1;",
        "Landroidx/navigationevent/NavigationEventTransitionState;",
        "",
        "<init>",
        "(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V",
        "currentOnForwardCancelled",
        "Lkotlin/Function0;",
        "getCurrentOnForwardCancelled",
        "()Lkotlin/jvm/functions/Function0;",
        "setCurrentOnForwardCancelled",
        "(Lkotlin/jvm/functions/Function0;)V",
        "currentOnForwardCompleted",
        "getCurrentOnForwardCompleted",
        "setCurrentOnForwardCompleted",
        "currentOnBackCancelled",
        "getCurrentOnBackCancelled",
        "setCurrentOnBackCancelled",
        "currentOnBackCompleted",
        "getCurrentOnBackCompleted",
        "setCurrentOnBackCompleted",
        "onForwardStarted",
        "event",
        "Landroidx/navigationevent/NavigationEvent;",
        "onForwardProgressed",
        "onForwardCancelled",
        "onForwardCompleted",
        "onBackStarted",
        "onBackProgressed",
        "onBackCancelled",
        "onBackCompleted",
        "navigationevent-compose"
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
.field private currentOnBackCancelled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentOnBackCompleted:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentOnForwardCompleted:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransitionStateChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "initialInfo"    # Landroidx/navigationevent/NavigationEventInfo;
    .param p2, "onTransitionStateChanged"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V

    .line 203
    iput-object p2, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    .line 211
    new-instance v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

    .line 212
    new-instance v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lkotlin/jvm/functions/Function0;

    .line 213
    new-instance v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

    .line 214
    new-instance v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    .line 201
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 201
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 203
    new-instance p2, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler$$ExternalSyntheticLambda0;-><init>()V

    .line 201
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V

    .line 204
    return-void
.end method

.method static final _init_$lambda$0(Landroidx/navigationevent/NavigationEventTransitionState;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Landroidx/navigationevent/NavigationEventTransitionState;

    .line 203
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final currentOnBackCancelled$lambda$3()Lkotlin/Unit;
    .locals 1

    .line 213
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final currentOnBackCompleted$lambda$4()Lkotlin/Unit;
    .locals 1

    .line 214
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final currentOnForwardCancelled$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 211
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final currentOnForwardCompleted$lambda$2()Lkotlin/Unit;
    .locals 1

    .line 212
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getCurrentOnBackCancelled()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getCurrentOnBackCompleted()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getCurrentOnForwardCancelled()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getCurrentOnForwardCompleted()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method protected onBackCancelled()V
    .locals 2

    .line 243
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 245
    return-void
.end method

.method protected onBackCompleted()V
    .locals 2

    .line 248
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 250
    return-void
.end method

.method protected onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2
    .param p1, "event"    # Landroidx/navigationevent/NavigationEvent;

    .line 239
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method protected onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2
    .param p1, "event"    # Landroidx/navigationevent/NavigationEvent;

    .line 235
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method protected onForwardCancelled()V
    .locals 2

    .line 225
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 227
    return-void
.end method

.method protected onForwardCompleted()V
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 232
    return-void
.end method

.method protected onForwardProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2
    .param p1, "event"    # Landroidx/navigationevent/NavigationEvent;

    .line 221
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method protected onForwardStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 2
    .param p1, "event"    # Landroidx/navigationevent/NavigationEvent;

    .line 217
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public final setCurrentOnBackCancelled(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCurrentOnBackCompleted(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCurrentOnForwardCancelled(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCurrentOnForwardCompleted(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lkotlin/jvm/functions/Function0;

    return-void
.end method
